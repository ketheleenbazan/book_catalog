class User < ApplicationRecord
  #devise provides builtin user authentication methods such as
    #sign up, login, password recovery, and remembering sessions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #a user can create many books. If a user is deleted,
  #then all of their books are also removed from the database
  has_many :books, dependent: :destroy
end
