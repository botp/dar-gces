class CreateWomensOrganizationTypologies < ActiveRecord::Migration
  def change
    create_table :womens_organization_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
