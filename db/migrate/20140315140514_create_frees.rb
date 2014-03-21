class CreateFrees < ActiveRecord::Migration
  def change
    create_table :frees do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
