class State < ActiveRecord::Base
  attr_accessible :name, :acronym

	has_many :cities
end