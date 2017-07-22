class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :surname
      t.string :password
      t.string :email
      t.references :member_type, foreign_key: true

      t.timestamps
    end
    add_index :members, :email, unique: true
  end
end
