class UpdateMarkets < ActiveRecord::Migration
  def change
    change_table :markets do |t|
    	add_column :markets, :exchange, :string
    	add_column :markets, :comp_name, :string
    	add_column :markets, :trading_date, :string
    	add_column :markets, :end_price, :string
    end
  end
end
