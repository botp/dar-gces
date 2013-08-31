class CreateRegisteringAgencies < ActiveRecord::Migration
  def change
    create_table :registering_agencies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
