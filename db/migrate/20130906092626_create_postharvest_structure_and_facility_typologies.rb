class CreatePostharvestStructureAndFacilityTypologies < ActiveRecord::Migration
  def change
    create_table :postharvest_structure_and_facility_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
