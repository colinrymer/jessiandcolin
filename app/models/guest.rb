class Guest < ActiveRecord::Base
  belongs_to :rsvp
  validates_presence_of :first_name, :last_name
end
