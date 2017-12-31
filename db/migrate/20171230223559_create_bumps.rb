class CreateBumps < ActiveRecord::Migration[5.1]
  def change
    create_table :bumps do |t|
      t.string :name
      t.string :bump_url
      t.integer :needle_count
      t.string :construction
      t.string :cushion
      t.timestamps
    end
  end
end
