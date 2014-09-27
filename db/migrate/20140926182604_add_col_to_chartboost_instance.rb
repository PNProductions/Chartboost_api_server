class AddColToChartboostInstance < ActiveRecord::Migration
  def change
    remove_column :chartboost_instances, :testAdvertiserGame
  end
end
