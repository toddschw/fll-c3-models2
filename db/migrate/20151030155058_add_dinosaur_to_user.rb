class AddDinosaurToUser < ActiveRecord::Migration
  def change
    add_column :users, :dinosaur, :string
  end
end
