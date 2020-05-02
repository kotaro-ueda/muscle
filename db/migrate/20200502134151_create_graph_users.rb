class CreateGraphUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :graph_users do |t|
      t.references :user, foreign_key: true
      t.references :graph, foreign_key: true

      t.timestamps
    end
  end
end
