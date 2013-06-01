class Founder < ActiveRecord::Base
  attr_accessible :facebook_url, :linkedin_url, :name, :twitter_url

  validates :name, presence: true

  has_and_belongs_to_many :startups
end
