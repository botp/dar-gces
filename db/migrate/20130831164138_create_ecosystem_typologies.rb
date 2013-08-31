class CreateEcosystemTypologies < ActiveRecord::Migration
  def change
    create_table :ecosystem_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
