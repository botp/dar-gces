class CreateArcs < ActiveRecord::Migration
  def change
    create_table :arcs do |t|
      t.string :tag
      t.string :name
      t.text :description
      t.date :date_confirmed
      t.string :classification
      t.boolean :arc_profiled
      t.boolean :dev_plan_available
      t.boolean :dev_plan_mainstream
      t.integer :alda_rating
      t.string :faps_coverage

      t.timestamps
    end
  end
end
