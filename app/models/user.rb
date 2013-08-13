class User < ActiveRecord::Base
 has_many :proficiencies
 has_many :skills, through: :proficiencies

  def proficiency_for(skill)
    proficiencies.where(skill_id: skill.id).first.rating
  end

  def set_proficiency_for(skill, number)
    proficiencies.where(skill_id: skill.id).first.update_attributes(:rating => number)
  end
end
