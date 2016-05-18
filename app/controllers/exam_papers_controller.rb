class ExamPapersController < ApplicationController
  before_action :authenticate_user!
  def index
    @exam_papers = ExamPaper.page(params[:page])
  end

  def show
    @exam_paper = ExamPaper.find_by_id(params[:id])
  end

  def new
  end

  def create
  end

end
