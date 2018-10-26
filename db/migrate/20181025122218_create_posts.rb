class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :tag_ids
      t.boolean :archived

      t.timestamps
    end
  end
end
