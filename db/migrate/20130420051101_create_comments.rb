class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :blog
      t.references :user

      t.timestamps
    end
  end
end
