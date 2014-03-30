class AddDetailsToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :author, :string
  	add_column :books, :ISBN, :integer
  end
end
