class State < ActiveRecord::Base
  attr_accessible :abbr, :id, :state
  
  def self.get_states
    states = []
    s = State.all(:select => 'state')
    s.each do |n|
      states << n[:state]
    end
  end
end
