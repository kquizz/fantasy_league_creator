class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
  validates :username, presence: true, uniqueness: true

  has_many :leagues, foreign_key: 'commissioner_id', class_name: 'League'
  has_many :teams, foreign_key: 'owner_id', class_name: 'Team'
end
