class CreateJoinTableCivicTechApplicationTag < ActiveRecord::Migration[5.2]
  def change
    create_join_table :civic_tech_applications, :tags do |t|
      # t.index [:civic_tech_application_id, :tag_id]
      # t.index [:tag_id, :civic_tech_application_id]
    end
  end
end
