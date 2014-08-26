class CreateMbas < ActiveRecord::Migration
  def change
    create_table :mbas do |t|
      t.string :name
      t.integer :user_id
      t.string :school
      t.string :mbatype
      t.string :function
      t.string :company
    end
  end
end
