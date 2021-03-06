class CreateJoinTableSkillsEmployees < ActiveRecord::Migration[5.0]
  def change
    create_join_table :skills, :employees do |t|
      t.index [:skill_id, :employee_id]
      t.index [:employee_id, :skill_id]
    end
  end
end
