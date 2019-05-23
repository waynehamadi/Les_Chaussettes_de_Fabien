class AddPriceToSock < ActiveRecord::Migration[5.2]
  def change
    add_column :socks, :price, :integer
  end
end
