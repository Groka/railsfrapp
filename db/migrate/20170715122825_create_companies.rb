class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.references :activity, foreign_key: true
      t.text :contact
      t.text :number
      t.text :email
      t.string :address
      t.string :web
      t.references :status, foreign_key: true
      t.references :member, foreign_key: true
      t.references :event, foreign_key: true
      t.boolean :allowed
      t.text :note

      t.timestamps
    end
  end
end
