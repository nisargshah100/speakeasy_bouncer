class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.string :name
      t.string :token

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end