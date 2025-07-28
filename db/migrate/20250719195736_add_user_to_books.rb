class AddUserToBooks < ActiveRecord::Migration[8.0]
  def change
    add_reference :books, :user, null: true, foreign_key: true
  end
end
