class AddEmailNotNullToUser < ActiveRecord::Migration
  def up
    User.all.each do |u|
      if u.email.blank?
        u.email = "#{u.name}@example.com"
        u.save
      end
    end

    change_column :users, :email, :string, null: false
  end

  def down
    change_column :users, :email, :string, null: true
  end
end
