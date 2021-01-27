class CreateThoughts < ActiveRecord::Migration[6.1]
  def change
    create_table :thoughts do |t|
      t.string :commenter
      t.text :body
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
