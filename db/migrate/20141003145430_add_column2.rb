class AddColumn2 < ActiveRecord::Migration
  def change
    add_column :chartboost_instances, :currency_name, :string, null: false, default: ''
    add_column :chartboost_instances, :award_amount, :string, null: false, default: ''
  end
end
