class CreateFapsCoverages < ActiveRecord::Migration
  def change
    create_table :faps_coverages do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
