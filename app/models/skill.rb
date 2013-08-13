class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :proficiencies
  validates :name, uniqueness: true

  def user_with_proficiency(number)
    users.where(proficiencies: {rating: number}).first
  end

end