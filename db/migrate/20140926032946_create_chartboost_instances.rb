class CreateChartboostInstances < ActiveRecord::Migration
  def change
    create_table :chartboost_instances do |t|
      t.timestamps
      t.text :from, null: false, default: ''
      t.string :uuid, null: false, default: ''
      t.string :campaign_id, null: false, default: ''
      t.string :campaign, null: false, default: ''
      t.string :macid, null: true
      t.string :to, null: false, default: ''
      t.string :ifa, null: true
      t.string :my_type, null: false, default: ''
    end
    add_index :chartboost_instances, :uuid, unique: true
  end
end
