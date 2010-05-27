class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :email
      t.integer :class_year
      t.integer :phone_number

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
