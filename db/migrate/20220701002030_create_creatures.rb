class CreateCreatures < ActiveRecord::Migration[7.0]
  def change
    create_table :creatures do |t|
      t.string :api_index
      t.string :api_type
      t.string :name
      t.integer :campaign_id

      t.timestamps
    end
  end
end
