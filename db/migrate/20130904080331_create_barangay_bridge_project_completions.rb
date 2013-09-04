class CreateBarangayBridgeProjectCompletions < ActiveRecord::Migration
  def change
    create_table :barangay_bridge_project_completions do |t|
      t.integer :barangay_bridge_project_id
      t.string :tag
      t.string :name
      t.text :description
      t.integer :percentage_completion
      t.date :date_confirmed
      t.integer :user_id
      t.datetime :datetime_edited

      t.timestamps
    end
  end
end
