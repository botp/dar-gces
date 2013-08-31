class CreateAgriBasedEnterpriseTypologies < ActiveRecord::Migration
  def change
    create_table :agri_based_enterprise_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
