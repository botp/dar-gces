class CreateMicrofinanceServiceProviderTypologies < ActiveRecord::Migration
  def change
    create_table :microfinance_service_provider_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
