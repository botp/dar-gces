class CreateManagedByTypologies < ActiveRecord::Migration
  def change
    create_table :managed_by_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
