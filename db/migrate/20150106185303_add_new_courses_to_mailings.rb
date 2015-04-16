class AddNewCoursesToMailings < ActiveRecord::Migration
  def up
  	add_column :mailings, :popular_five, :string
  	add_column :mailings, :popular_six, :string
  	add_column :mailings, :popular_seven, :string
  	add_column :mailings, :popular_eight, :string
  	add_column :mailings, :popular_nine, :string
  	add_column :mailings, :popular_ten, :string
  	add_column :mailings, :popular_eleven, :string
  	add_column :mailings, :popular_twelve, :string
  	add_column :mailings, :popular_url_five, :string
  	add_column :mailings, :popular_url_six, :string
  	add_column :mailings, :popular_url_seven, :string
  	add_column :mailings, :popular_url_eight, :string
  	add_column :mailings, :popular_url_nine, :string
  	add_column :mailings, :popular_url_ten, :string
  	add_column :mailings, :popular_url_eleven, :string
  	add_column :mailings, :popular_url_twelve, :string
  end
  def down
  	remove_column :mailings, :popular_five
  	remove_column :mailings, :popular_six
  	remove_column :mailings, :popular_seven
  	remove_column :mailings, :popular_eight
  	remove_column :mailings, :popular_nine
  	remove_column :mailings, :popular_ten
  	remove_column :mailings, :popular_eleven
  	remove_column :mailings, :popular_twelve
  	remove_column :mailings, :popular_url_five
  	remove_column :mailings, :popular_url_six
  	remove_column :mailings, :popular_url_seven
  	remove_column :mailings, :popular_url_eight
  	remove_column :mailings, :popular_url_nine
  	remove_column :mailings, :popular_url_ten
  	remove_column :mailings, :popular_url_eleven
  	remove_column :mailings, :popular_url_twelve
  end
end
