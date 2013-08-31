class CreateLoanAccessTypologies < ActiveRecord::Migration
  def change
    create_table :loan_access_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
