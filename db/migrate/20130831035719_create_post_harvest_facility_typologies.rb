class CreatePostHarvestFacilityTypologies < ActiveRecord::Migration
  def change
    create_table :post_harvest_facility_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
