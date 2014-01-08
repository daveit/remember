class CreateVcats < ActiveRecord::Migration
  def change
    create_table :vcats do |t|
      t.string :name

      t.timestamps
    end
  end
end
