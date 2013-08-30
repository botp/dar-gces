class CreateArcTypes < ActiveRecord::Migration
  def change
    create_table :arc_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
