class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, :hourly_rate, presence: true
  validates :hourly_rate, numericality: true
  validates_inclusion_of :hourly_rate, in: 40..200
end
