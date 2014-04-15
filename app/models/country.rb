class Country < ActiveRecord::Base
  belongs_to :continent
  has_many :states

  validates :name, presence: true

   def self.all_by_continent_name(continent_name)
    joins(:continent).where('continents.name' => continent_name)
  end
end
