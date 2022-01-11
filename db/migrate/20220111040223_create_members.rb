class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :ssn
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
