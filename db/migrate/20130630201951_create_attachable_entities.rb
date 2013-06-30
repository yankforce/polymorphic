class CreateAttachableEntities < ActiveRecord::Migration
  def change
    create_table :attachable_entities do |t|
      t.integer :attachable_id
      t.string :attachable_type
      t.integer :entity_id
      t.string :entity_type

      t.timestamps
    end
  end
end
