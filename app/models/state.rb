class State < ActiveRecord::Base
  has_many :cities
  belongs_to :country

  validates_presence_of :name

  def self.all_by_country_name(country_name)
    joins(:country).where('countries.name' => country_name)
  end
end
