class CreateJoinTableViilageVcat < ActiveRecord::Migration
  def change
    create_join_table :villages, :vcats do |t|
      # t.index [:village_id, :vcat_id]
      # t.index [:vcat_id, :village_id]
    end
  end
end
