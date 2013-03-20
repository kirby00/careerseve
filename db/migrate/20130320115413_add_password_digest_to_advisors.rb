class AddPasswordDigestToAdvisors < ActiveRecord::Migration
  def change
    add_column :advisors, :password_digest, :string
  end
end
