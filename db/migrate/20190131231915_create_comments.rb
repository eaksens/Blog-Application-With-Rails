class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      # creates an integer column called article_id, an index for it, and a foreign key constraint that points to the id column of the articles table. Go ahead and run the migration:
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
