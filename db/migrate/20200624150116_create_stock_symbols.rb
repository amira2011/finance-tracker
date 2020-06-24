class CreateStockSymbols < ActiveRecord::Migration[6.0]
  def change
    create_table :stock_symbols do |t|
      t.string :name
      t.string :symbol

      t.timestamps
    end
  end
end
