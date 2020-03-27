class ProfessorStudentsController < ApplicationController
  def index
    @professor_student = Professor.find(params[:id])
  end
end
