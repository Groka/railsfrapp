class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :member, foreign_key: true
      t.references :company, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
