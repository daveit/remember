class CreateComTypes < ActiveRecord::Migration
  def change
    create_table :com_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
