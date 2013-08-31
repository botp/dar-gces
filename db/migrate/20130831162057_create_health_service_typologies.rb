class CreateHealthServiceTypologies < ActiveRecord::Migration
  def change
    create_table :health_service_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
