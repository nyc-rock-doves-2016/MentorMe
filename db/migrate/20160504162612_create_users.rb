class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type , default: 'Student'
      t.integer :phase, null: false
      t.string :email, null: false, unique: true, index: true
      t.string :password_digest, null: false
      t.string :phone, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false

      t.timestamps null: false
    end
  end
end
