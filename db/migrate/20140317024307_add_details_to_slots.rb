class AddDetailsToSlots < ActiveRecord::Migration
  def change
    add_column :slots, :name, :string
    add_column :slots, :mba_type, :string
    add_column :slots, :company, :string
    add_column :slots, :function, :string
    add_column :slots, :booked, :boolean
  end
end
