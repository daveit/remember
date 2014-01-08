class CreateJoinTableViilageVillageCategory < ActiveRecord::Migration

  def change
    create_table 'villages_village_categories', :id => false do |t|
      t.column :village_id, :integer
      t.column :village_category_id, :integer
    end
  end

end
