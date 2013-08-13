class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  before_create :set_initial_rating

  def set_initial_rating
    self.rating = 0
  end
end
