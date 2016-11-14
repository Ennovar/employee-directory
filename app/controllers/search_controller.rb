class SearchController < ApplicationController
  def skills
    @skills = Skill.all
  end

  def search
    @skills = Skill.where(id: search_params)
    @employees = []
    @skills.each do |s|
      @employees.push(*s.employees)
    end
    render json: @employees
  end


  private

  def search_params
    params[:skill_ids]
  end
end
