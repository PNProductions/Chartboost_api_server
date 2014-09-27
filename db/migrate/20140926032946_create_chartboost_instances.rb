class CreateChartboostInstances < ActiveRecord::Migration
  def change
    create_table :chartboost_instances do |t|

      t.timestamps
    end
  end
end
