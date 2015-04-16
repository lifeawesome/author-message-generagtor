class FixColumnName < ActiveRecord::Migration
 def self.up
    rename_column :mailings, :popular_ninteen, :popular_nineteen
    rename_column :mailings, :popular_url_ninteen, :popular_url_nineteen
  end

  def self.down
    # rename back if you need or do something else or do nothing
    rename_column :mailings, :popular_nineteen, :popular_ninteen
    rename_column :mailings, :popular_url_nineteen, :popular_url_ninteen
  end
end
