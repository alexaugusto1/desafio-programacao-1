class SalesController < ApplicationController
  before_action :set_sale, only: :destroy

  def index
    @sales = Sale.all
    @total = @sales.map { |sale| sale.purchase_count * sale.item_price}.inject(0, :+)
  end

  def new
    @sale = Sale.new
  end

  def create
    if params[:sale].present? and params[:sale][:file].present?
      imported = Sale.import_sales(sale_file_params)
    end
    respond_to do |format|
      if imported
        format.html { redirect_to({:action => :index}, {notice: 'Sales were successfully imported.'}) }
      else
        format.html { redirect_to({:action => :new}, {notice: 'There was a problem importing.'}) }
      end
    end
  end

  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_sale
      @sale = Sale.find(params[:id])
    end

    def sale_file_params
      params[:sale][:file].tempfile
    end
end
