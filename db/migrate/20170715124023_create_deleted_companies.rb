class CreateDeletedCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :deleted_companies do |t|
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
      t.integer :old_id
      t.text :reason
      t.integer :deleted_by_id

      t.timestamps
    end
    add_index :deleted_companies, :old_id
    add_index :deleted_companies, :deleted_by_id
  end
end
