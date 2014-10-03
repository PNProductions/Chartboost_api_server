class ChartboostInstance < ActiveRecord::Base
  extend ChartboostInstancesParameters
  validates(*mandatory, presence: true)
  validates :uuid, uniqueness: true
end
