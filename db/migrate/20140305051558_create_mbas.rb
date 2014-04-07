class CreateMbas < ActiveRecord::Migration
  def change
    create_table :mbas do |t|
      t.integer :user_id
      t.string :name
      t.string :school
      t.timestamps
    end
  end

  def self.down
    drop_table :mbas
  end
end
