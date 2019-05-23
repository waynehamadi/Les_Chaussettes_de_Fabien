class CreateSocks < ActiveRecord::Migration[5.2]
  def change
    create_table :socks do |t|
      t.string :size
      t.string :color
      t.string :title
      t.text :description
      t.string :category
      t.string :photo

      t.timestamps
    end
  end
end
