class AddEmailColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :email, :string
  end
end
