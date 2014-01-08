class AddNameTocommittees < ActiveRecord::Migration
  def change
  	add_column :committees, :name, :string
  end
end
