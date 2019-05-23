class AddDirtynessToSock < ActiveRecord::Migration[5.2]
  def change
    add_column :socks, :dirtyness, :string
  end
end
