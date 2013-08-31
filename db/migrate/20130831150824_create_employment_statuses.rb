class CreateEmploymentStatuses < ActiveRecord::Migration
  def change
    create_table :employment_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
