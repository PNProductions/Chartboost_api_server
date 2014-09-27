class AddColsToChartboostInstance < ActiveRecord::Migration
  def change
    add_column :chartboost_instances, :from, :text
    add_column :chartboost_instances, :uuid, :integer
    add_column :chartboost_instances, :campaign, :text
    add_column :chartboost_instances, :testCampaign, :string
    add_column :chartboost_instances, :text, :string
    add_column :chartboost_instances, :macid, :integer
    add_column :chartboost_instances, :to, :text
    add_column :chartboost_instances, :ifa, :integer
    add_column :chartboost_instances, :type, :text
  end
end
