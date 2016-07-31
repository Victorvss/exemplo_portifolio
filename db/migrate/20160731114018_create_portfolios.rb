class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :degree
      t.string :phone
      t.string :professional_history
      t.string :avatar

      t.timestamps null: false
    end
  end
end
