class CreateUserPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_posts do |t|
      t.references :user, index: true, foreign_key: true
      t.references :graph, index: true, foreign_key: true

      t.timestamps
    end
  end
end
