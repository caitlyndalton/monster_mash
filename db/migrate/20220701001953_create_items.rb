class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :api_index
      t.string :equipment_category
      t.string :name
      t.integer :campaign_id

      t.timestamps
    end
  end
end
