class CreatePowerSupplyTypologies < ActiveRecord::Migration
  def change
    create_table :power_supply_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
