class CreateAdvisors < ActiveRecord::Migration
  def change
    create_table :advisors do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :university
      t.string :field

      t.timestamps
    end
  end
end
