class CreateMeansPayments < ActiveRecord::Migration
  def change
    create_table :means_payments do |t|
      t.string :name

      t.timestamps
    end
  end
end
