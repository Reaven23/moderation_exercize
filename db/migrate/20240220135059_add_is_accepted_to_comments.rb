class AddIsAcceptedToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :is_accepted, :boolean
  end
end
