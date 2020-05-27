class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.datetime :start_time
      t.references :user, foreign_key: true,             null: false
      t.timestamps
    end
  end
end
