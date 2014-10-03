class AddColumn < ActiveRecord::Migration
  def change
    add_column :chartboost_instances, :user_id, :string, null: false
    add_column :chartboost_instances, :platform, :string, null: false
    add_column :chartboost_instances, :to_app_name, :string, null: false
    add_column :chartboost_instances, :to_app_id, :string, null: false
    add_column :chartboost_instances, :to_company_name, :string, null: false
    add_column :chartboost_instances, :from_app_name, :string, null: false
    add_column :chartboost_instances, :from_app_id, :string, null: false
    add_column :chartboost_instances, :from_company_name, :string, null: false
    add_column :chartboost_instances, :event_type, :string, null: false
    add_column :chartboost_instances, :gaid, :string, null: false
    add_column :chartboost_instances, :formatted_ifa, :string, null: false
    add_column :chartboost_instances, :device_country_code, :string, null: false
    add_column :chartboost_instances, :device_model, :string, null: false
    add_column :chartboost_instances, :device_os, :string, null: false
    add_column :chartboost_instances, :device_language, :string, null: false
    add_column :chartboost_instances, :device_type, :string, null: false
    add_column :chartboost_instances, :to_store_id, :string, null: false
    add_column :chartboost_instances, :from_store_id, :string, null: false
    add_column :chartboost_instances, :to_bundle_id, :string, null: false
    add_column :chartboost_instances, :side_of_event, :string, null: false
    add_column :chartboost_instances, :format_of_timestamp, :string, null: false
    add_column :chartboost_instances, :formato_click_timestamp, :string, null: false
    remove_column :chartboost_instances, :to, :string
    remove_column :chartboost_instances, :from, :string
    remove_column :chartboost_instances, :my_type, :string
  end
end