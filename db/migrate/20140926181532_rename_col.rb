class RenameCol < ActiveRecord::Migration
  def change
    rename_column :chartboost_instances, :type, :my_type
  end
end
