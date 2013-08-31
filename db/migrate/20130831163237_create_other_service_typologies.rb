class CreateOtherServiceTypologies < ActiveRecord::Migration
  def change
    create_table :other_service_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
