class CreateNpcs < ActiveRecord::Migration[7.0]
  def change
    create_table :npcs do |t|
      t.string :name
      t.string :race
      t.string :api_class
      t.string :alignment
      t.integer :level
      t.integer :campaign_id

      t.timestamps
    end
  end
end
