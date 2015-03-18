class SyllabusesController < ApplicationController

  def index
    @syllabuses = Syllabus.all
  end

  def create
    @course = Course.find(params[:course_id])
    @syllabus = @course.syllabuses.create(syllabus_params)
    redirect_to course_path(@course)
  end

  def show
    raise params.inspect
  end

  private
    def syllabus_params
      params.require(:syllabus).permit(:name)
    end
end
