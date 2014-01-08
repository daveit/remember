class CreateMpayments < ActiveRecord::Migration
  def change
    create_table :mpayments do |t|
      t.date :pdate
      t.decimal :amount
      t.string :reference
      t.string :details
      t.references :MeansPayment, index: true
      t.references :Member, index: true

      t.timestamps
    end
  end
end
