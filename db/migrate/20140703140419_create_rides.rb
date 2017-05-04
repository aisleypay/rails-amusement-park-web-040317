class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |a|
      a.integer :user_id
      a.integer :attraction_id
    end
  end
end
