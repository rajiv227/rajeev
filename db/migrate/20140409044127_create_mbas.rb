class CreateMbas < ActiveRecord::Migration
  def change
    create_table :mbas do |t|
      t.user_id :integer
      t.name :string
      t.mba_type :string
      t.company :string
      t.function :string
      t.school :string
    end
  end
end
