class AddContinentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :continent, :string
  end
end
