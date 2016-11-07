class Sale < ActiveRecord::Base

  def self.import_sales(file)
    sales = File.open(file)  { |f| SmarterCSV.process(f, :col_sep => "\t") }
    Sale.create(sales)
  end

end
