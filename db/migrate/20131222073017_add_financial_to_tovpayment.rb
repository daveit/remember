class AddFinancialToTovpayment < ActiveRecord::Migration
  def change
    add_column :vpayments, :financial_to, :date
  end
end
