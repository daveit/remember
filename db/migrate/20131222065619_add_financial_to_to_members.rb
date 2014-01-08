class AddFinancialToToMembers < ActiveRecord::Migration
  def change
    add_column :members, :financial_to, :date
  end
end
