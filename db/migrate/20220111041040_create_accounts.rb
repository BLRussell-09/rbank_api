class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.references :member, null: false, foreign_key: true
      t.decimal :balance
      t.date :close_date
      t.string :account_type

      t.timestamps
    end
  end
end
