class AddFinancialToTompayment < ActiveRecord::Migration
  def change
    add_column :mpayments, :financial_to, :date
  end
end
