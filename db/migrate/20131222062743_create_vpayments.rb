class CreateVpayments < ActiveRecord::Migration
  def change
    create_table :vpayments do |t|
      t.date :pdate
      t.decimal :amount
      t.string :reference
      t.string :details
      t.references :MeansPayment, index: true
      t.references :Village, index: true

      t.timestamps
    end
  end
end
