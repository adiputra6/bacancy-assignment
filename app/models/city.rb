class City < ActiveRecord::Base
  belongs_to :state

  def self.all_by_state_name(state_name)
    joins(:state).where('states.name' => state_name)
  end
end
