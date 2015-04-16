class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name #user name
    end
  end
end
