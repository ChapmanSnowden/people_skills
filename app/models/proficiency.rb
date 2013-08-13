class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  before_create :set_initial_value

  def set_initial_value
    self.score = 0
  end
  
end
