class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title #title of blog entry
      t.string :detail #detail of blog entry
    end
  end
end
