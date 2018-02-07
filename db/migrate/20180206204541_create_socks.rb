class CreateSocks < ActiveRecord::Migration[5.1]
  def change
    create_table :socks do |t|
      t.timestamps
      t.string :name
      t.string :construction
      t.string :toe_color
      t.string :heel_color
      t.string :welt_color
      t.integer :design_id
      t.integer :bump_id
      t.text :image
    end
  end
end
