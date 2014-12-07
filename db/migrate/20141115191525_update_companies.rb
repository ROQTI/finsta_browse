class UpdateCompanies < ActiveRecord::Migration
  def change
    change_table :companies do |t|
    	add_column :companies, :company_name, :string
    	add_column :companies, :city, :string
    	add_column :companies, :state, :string
    	add_column :companies, :country, :string
    	add_column :companies, :year_founded, :string
    	add_column :companies, :ticker_symbol, :string
    end
  end
end
