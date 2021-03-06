class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.references :account, null: false, foreign_key: true
      t.string :originator
      t.decimal :amount
      t.string :transaction_type

      t.timestamps
    end
  end
end
