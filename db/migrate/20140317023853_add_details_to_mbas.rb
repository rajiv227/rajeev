class AddDetailsToMbas < ActiveRecord::Migration
  def change
    add_column :mbas, :mba_type, :string
    add_column :mbas, :company, :string
    add_column :mbas, :function, :string
  end
end
