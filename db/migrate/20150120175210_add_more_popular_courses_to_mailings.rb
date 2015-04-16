class AddMorePopularCoursesToMailings < ActiveRecord::Migration
  def up
    add_column :mailings, :popular_ninteen, :string
    add_column :mailings, :popular_twenty, :string
    add_column :mailings, :popular_twentyone, :string
    add_column :mailings, :popular_twentytwo, :string
    add_column :mailings, :popular_twentythree, :string
    add_column :mailings, :popular_twentyfour, :string
    add_column :mailings, :popular_url_ninteen, :string
    add_column :mailings, :popular_url_twenty, :string
    add_column :mailings, :popular_url_twentyone, :string
    add_column :mailings, :popular_url_twentytwo, :string
    add_column :mailings, :popular_url_twentythree, :string
    add_column :mailings, :popular_url_twentyfour, :string
  end
  def down
    remove_column :mailings, :popular_ninteen
    remove_column :mailings, :popular_twenty
    remove_column :mailings, :popular_twentyone
    remove_column :mailings, :popular_twentytwo
    remove_column :mailings, :popular_twentythree
    remove_column :mailings, :popular_twentyfour
    remove_column :mailings, :popular_url_ninteen
    remove_column :mailings, :popular_url_twenty
    remove_column :mailings, :popular_url_twentyone
    remove_column :mailings, :popular_url_twentytwo
    remove_column :mailings, :popular_url_twentythree
    remove_column :mailings, :popular_url_twentyfour
  end
end
