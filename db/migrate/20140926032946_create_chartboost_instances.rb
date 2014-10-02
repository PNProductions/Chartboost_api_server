class CreateChartboostInstances < ActiveRecord::Migration
  def change
    create_table :chartboost_instances do |t|
      t.timestamps
      t.text :from, null: false
      t.string :uuid, null: false
      t.string :campaign_id, null: false
      t.string :campaign, null: false
      t.string :macid, null: false
      t.string :to, null: false
      t.string :ifa, null: false
      t.string :my_type, null: false
    end
    add_index :chartboost_instances, :uuid, unique: true
  end
end
