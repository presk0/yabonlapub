class CreateFunders < ActiveRecord::Migration[7.1]
  def change
    create_table :funders do |t|
      t.string :name
      t.string :website
      t.string :logo_address
      t.timestamps
    end
  end
end
