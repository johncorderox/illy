class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :password_digest
      t.references :location, foreign_key: true
      t.string :status
      t.string :phone_numer
      t.string :twitter
      t.text :bio
      t.boolean :permod

      t.timestamps
    end
  end
end
