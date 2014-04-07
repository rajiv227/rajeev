class Mba < ActiveRecord::Base
  has_many :slots
  belongs_to :user
end
