class User < ActiveRecord::Base
 has_many :proficiences
 has_many :skills, through: :proficiences

  def proficiency_for(skill)
    proficiences.where(skill_id: skill.id).first.score
  end

  def set_proficiency_for(skill, number)
    proficiences.where(skill_id: skill.id).first.update_attributes(:score => number)
  end
end
