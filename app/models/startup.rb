# encoding: utf-8
class Startup < ActiveRecord::Base
  attr_accessible :address, :description, :dimension, :funding_amount, :hiring_url, :is_dead, :is_hiring, :logo_url, :name, :twitter_username, :url, :tag_1_id, :tag_2_id, :founder_ids, :foundation_date, :facebook_url, :angel_list_url, :city

  CITIES = %w(Aveiro Braga Coimbra Faro Guimarães Lisboa Porto)
  FOUNDATION_DATES = (2000..2013).to_a
  DIMENSIONS = ["1-4", "5-10", "11-20", "21-50", "50+"]
  FUNDING_AMOUNTS = ["<49", "50-149", "150-299", "300+"]

  validates :name, presence: true
  validates :url, presence: true
  validates :tag_1, presence: true
  validates :tag_2, presence: true
  validates :foundation_date, presence: true
  validates :city, presence: true

  has_and_belongs_to_many :founders

  belongs_to :tag_1, class_name: "Tag"
  belongs_to :tag_2, class_name: "Tag"

end
