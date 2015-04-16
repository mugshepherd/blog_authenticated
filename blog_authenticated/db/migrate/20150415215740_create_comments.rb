class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :detail #content of comment
      t.belongs_to :entry #foreign key for related entry
    end
  end
end
