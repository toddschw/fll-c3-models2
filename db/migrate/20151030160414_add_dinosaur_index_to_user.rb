class AddDinosaurIndexToUser < ActiveRecord::Migration
  def change
    add_index :users, :dinosaur
  end
end
