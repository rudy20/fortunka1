class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :fortune

      t.timestamps
    end
    add_index :tags, :fortune_id
  end
end
