class CreateMarketingAreaOutletTypologies < ActiveRecord::Migration
  def change
    create_table :marketing_area_outlet_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
