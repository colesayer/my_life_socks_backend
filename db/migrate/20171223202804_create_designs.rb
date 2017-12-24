class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :name
      t.string :design_url
      t.integer :needle_count
      t.string :construction
      t.integer :date
      t.timestamps
    end
  end
end
