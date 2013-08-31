class CreateBridgeProjectTypologies < ActiveRecord::Migration
  def change
    create_table :bridge_project_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
