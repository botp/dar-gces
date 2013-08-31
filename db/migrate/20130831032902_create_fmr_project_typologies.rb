class CreateFmrProjectTypologies < ActiveRecord::Migration
  def change
    create_table :fmr_project_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
