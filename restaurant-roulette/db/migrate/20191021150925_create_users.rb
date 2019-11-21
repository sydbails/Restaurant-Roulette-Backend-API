class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password_digest
      t.integer :zipcode
      t.integer :radius

      t.timestamps
    end
  end
end