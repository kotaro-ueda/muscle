class CreateNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :numbers do |t|
      t.integer :weight,    null: false
      t.integer :parsent,   null: false
      t.integer :result
      t.timestamps
    end
  end
end
