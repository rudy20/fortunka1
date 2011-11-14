class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :fortune

      t.timestamps
    end
    add_index :comments, :fortune_id
  end
end
