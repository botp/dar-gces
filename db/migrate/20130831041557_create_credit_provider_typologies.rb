class CreateCreditProviderTypologies < ActiveRecord::Migration
  def change
    create_table :credit_provider_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
