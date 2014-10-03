class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :chartboost_instances, :formato_click_timestamp, :format_click_timestamp
  end
end
