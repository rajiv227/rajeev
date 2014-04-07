collection @slots

attributes :appointment => :available_slot, :appointmenttype => :meeting_type

child @mba => :mbas do
attributes  :name
end



