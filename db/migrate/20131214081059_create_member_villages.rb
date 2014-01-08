class CreateMemberVillages < ActiveRecord::Migration
  def change
    create_table :member_villages do |t|
      t.string :name

      t.timestamps
    end
  end
end
