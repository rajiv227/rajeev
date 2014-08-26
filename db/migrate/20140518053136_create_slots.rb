class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.integer :mba_id
      t.boolean :booked
      t.date :slotdate
    end
  end
end
