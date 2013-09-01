class CreateWomensDeskServiceTypologies < ActiveRecord::Migration
  def change
    create_table :womens_desk_service_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
