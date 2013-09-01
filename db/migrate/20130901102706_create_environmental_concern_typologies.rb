class CreateEnvironmentalConcernTypologies < ActiveRecord::Migration
  def change
    create_table :environmental_concern_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
