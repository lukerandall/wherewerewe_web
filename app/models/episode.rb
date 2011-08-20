class Episode < ActiveRecord::Base
  validates_presence_of :tvdb_id, :name, :overview, :last_updated, :series_id, :season_id
  validates_uniqueness_of :tvdb_id

  belongs_to :series
  belongs_to :season
  has_many :viewings, :dependent => :destroy
  has_many :users, :through => :viewings
end