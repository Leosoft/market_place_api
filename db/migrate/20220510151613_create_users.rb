class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true # email es no null y unico
      t.string :password_digest, null: false # password es no null

      t.timestamps
    end
  end
end
