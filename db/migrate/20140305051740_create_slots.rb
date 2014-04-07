class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.date :appointment
      t.string :appointmenttype
      t.integer :mba_id


      t.timestamps
    end
  end

  def self.down
    drop_table :slots
  end
end
