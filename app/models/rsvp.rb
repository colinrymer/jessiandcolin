class Rsvp < ActiveRecord::Base
  has_many :guests
  has_many :kids
  accepts_nested_attributes_for :guests, :kids

  validates_inclusion_of :can_attend, :in => [true, false]
end
