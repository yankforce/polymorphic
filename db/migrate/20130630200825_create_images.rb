class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.integer :size
      t.boolean :hidden

      t.timestamps
    end
  end
end
