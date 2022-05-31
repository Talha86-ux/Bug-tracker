class AddEmployementStatusToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :employement_status, :integer
  end
end
