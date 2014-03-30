class CreateFrees < ActiveRecord::Migration
  def change
    create_table :frees do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :frees, [:user_id, :created_at]
  end
end
