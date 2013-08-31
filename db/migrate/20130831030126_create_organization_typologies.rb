class CreateOrganizationTypologies < ActiveRecord::Migration
  def change
    create_table :organization_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
