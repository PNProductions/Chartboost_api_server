class AddAndDeleteCol < ActiveRecord::Migration
  def change
    add_column :chartboost_instances, :campaign_type, :string, null: true
    add_column :chartboost_instances, :from_bundle_id, :string, null: true
    add_column :chartboost_instances, :target_name, :string, null: true
    add_column :chartboost_instances, :bid_type, :string, null: true
    remove_column :chartboost_instances, :format_of_timestamp, :string
    remove_column :chartboost_instances, :format_click_timestamp, :string
  end
end
