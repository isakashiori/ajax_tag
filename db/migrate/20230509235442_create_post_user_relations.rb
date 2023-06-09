class CreatePostUserRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :post_user_relations do |t|
      t.references :post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :post_user_relations, [:user_id, :board_id], unique: true
  end
end
