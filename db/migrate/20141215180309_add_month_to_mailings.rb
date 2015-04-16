class AddMonthToMailings < ActiveRecord::Migration
  def up
  	add_column :mailings, :month, :date, null:false, default:Date.today
  	remove_column :mailings, :date_month
  end
  def down
  	remove_column :mailings, :month
  	add_column :mailings, :date_month, :string
  end
end
