class SubjectsController < ApplicationController
  before_action :exam_paper
  def index
    @subjects = Subject.where(exam_paper: @exam_paper).page(params[:page]).per(1)
  end

  private

  def exam_paper
    @exam_paper = ExamPaper.find_by_id(params[:exam_paper_id])
    if @exam_paper.blank?
      redirect_to root_path
    end
  end
end
