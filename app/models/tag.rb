class Tag < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true

  has_many :startups
end
