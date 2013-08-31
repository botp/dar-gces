class CreateLoanStatusTypologies < ActiveRecord::Migration
  def change
    create_table :loan_status_typologies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
