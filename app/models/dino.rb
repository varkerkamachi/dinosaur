class Dino < ActiveRecord::Base
  belongs_to :era
  belongs_to :location
end
