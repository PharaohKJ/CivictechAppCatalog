class CreateCivicTechApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :civic_tech_applications do |t|
      t.string :name
      t.string :url
      t.text :description

      t.timestamps
    end
    add_index :civic_tech_applications, :name
  end
end
