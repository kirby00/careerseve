class FixColumnName < ActiveRecord::Migration
  def self.up
  	rename_column :users, :password, :password_digest
  end

  def down
  end
end
