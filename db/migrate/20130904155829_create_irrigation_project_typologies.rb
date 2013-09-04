class CreateIrrigationProjectTypologies < ActiveRecord::Migration
  def change
    create_table :irrigation_project_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
