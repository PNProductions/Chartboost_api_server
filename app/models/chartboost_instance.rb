class ChartboostInstance < ActiveRecord::Base
  validates :from, :uuid, :campaign, :campaign_id, :macid, :to, :ifa, :my_type,
            presence: true
  validates :uuid, uniqueness: true
  validates :uuid, :campaign_id, :macid, :ifa, numericality: { only_integer: true }
end
