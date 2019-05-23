class AddColumnToSock < ActiveRecord::Migration[5.2]
  def change
    add_reference :socks, :user, foreign_key: true
  end
end
