class CreateProficiency < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.references :user
      t.references :skill
      t.integer :proficiency_rating

      t.timestamps
    end
  end
end
