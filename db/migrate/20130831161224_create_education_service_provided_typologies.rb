class CreateEducationServiceProvidedTypologies < ActiveRecord::Migration
  def change
    create_table :education_service_provided_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
