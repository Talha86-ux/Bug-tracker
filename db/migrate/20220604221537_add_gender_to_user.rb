class AddGenderToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gender, :char
  end
end
