class Skill < ActiveRecord::Base
  has_many :proficiences
  has_many :users, through: :proficiences
  validates :name, uniqueness: true
end

def user_with_proficiency(number)
  users.where(proficiences: {rating: number}).first
end