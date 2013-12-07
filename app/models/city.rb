class City < ActiveRecord::Base
  belongs_to :state

  validates_presence_of :name

  def self.all_by_state_name(state_name)
    joins(:state).where('states.name' => state_name)
  end
end
