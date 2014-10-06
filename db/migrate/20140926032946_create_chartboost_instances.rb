class CreateChartboostInstances < ActiveRecord::Migration
  def change
    create_table :chartboost_instances do |t|
      t.timestamps
      t.text :from, null: true
      t.string :uuid, null: false
      t.string :campaign_id, null: true
      t.string :campaign, null: true
      t.string :macid, null: true
      t.string :to, null: true
      t.string :ifa, null: true
      t.string :my_type, null: true
    end
    add_index :chartboost_instances, :uuid, unique: true
  end
end
