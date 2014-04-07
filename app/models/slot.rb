class Slot < ActiveRecord::Base
  belongs_to :mba
  has_one :booked_slot
end
