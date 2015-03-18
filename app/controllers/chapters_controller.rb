class ChaptersController < ApplicationController


  def index
    @syllabus = Syllabus.find(params[:format])
    @chapters = @syllabus.chapters
  end

  def new
    @chapter = Chapter.new
    @syllabus = Syllabus.find(params[:format])
  end

  def create
    @syllabus = Syllabus.find(params[:chapter][:syllabus_id])
    @chapter = @syllabus.chapters.create(chapter_params)
    #redirect_to course_path(@course)
    redirect_to courses_path
  end

  private
    def chapter_params
      params.require(:chapter).permit(:name)
    end
end
