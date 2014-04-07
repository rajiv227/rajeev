class CreateBookedSlots < ActiveRecord::Migration
  def change
    create_table :booked_slots do |t|
      t.integer :slot_id
      t.string :bookee_name
      t.string :bookee_school

      t.timestamps
    end
  end
end
