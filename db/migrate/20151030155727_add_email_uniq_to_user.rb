class AddEmailUniqToUser < ActiveRecord::Migration
  def change
    User.all.each do |u|
      u.email = "#{u.name}@example.com"
      u.save
    end

    add_index :users, :email, unique: true
  end
end
