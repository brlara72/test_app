class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_name
      t.string :name
      t.string :email
      t.string :salt
      t.string :encrypted_password
      t.date :dob
      t.string :public_name

      t.timestamps
    end
  end
end
