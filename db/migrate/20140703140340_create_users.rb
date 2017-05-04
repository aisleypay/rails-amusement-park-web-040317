class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |a|
      a.string :name
      a.string :password
      a.integer :happiness
      a.integer :nausea
      a.integer :height
      a.integer :tickets
      a.boolean :admin, default: false
    end
  end
end
