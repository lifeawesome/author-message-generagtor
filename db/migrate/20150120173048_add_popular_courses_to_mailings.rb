class AddPopularCoursesToMailings < ActiveRecord::Migration
  def up
    add_column :mailings, :popular_thirteen, :string
    add_column :mailings, :popular_fourteen, :string
    add_column :mailings, :popular_fifteen, :string
    add_column :mailings, :popular_sixteen, :string
    add_column :mailings, :popular_seventeen, :string
    add_column :mailings, :popular_eighteen, :string
    add_column :mailings, :popular_url_thirteen, :string
    add_column :mailings, :popular_url_fourteen, :string
    add_column :mailings, :popular_url_fifteen, :string
    add_column :mailings, :popular_url_sixteen, :string
    add_column :mailings, :popular_url_seventeen, :string
    add_column :mailings, :popular_url_eighteen, :string
  end

  def down
    remove_column :mailings, :popular_thirteen
    remove_column :mailings, :popular_fourteen
    remove_column :mailings, :popular_fifteen
    remove_column :mailings, :popular_sixteen
    remove_column :mailings, :popular_seventeen
    remove_column :mailings, :popular_eighteen
    remove_column :mailings, :popular_url_thirteen
    remove_column :mailings, :popular_url_fourteen
    remove_column :mailings, :popular_url_fifteen
    remove_column :mailings, :popular_url_sixteen
    remove_column :mailings, :popular_url_seventeen
    remove_column :mailings, :popular_url_eighteen
  end

end
