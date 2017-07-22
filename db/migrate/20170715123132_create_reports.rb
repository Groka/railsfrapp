class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.references :company, foreign_key: true
      t.references :event, foreign_key: true
      t.references :member, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
