class CreateFarmPracticeTypologies < ActiveRecord::Migration
  def change
    create_table :farm_practice_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
