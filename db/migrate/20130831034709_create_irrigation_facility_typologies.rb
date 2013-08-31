class CreateIrrigationFacilityTypologies < ActiveRecord::Migration
  def change
    create_table :irrigation_facility_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
