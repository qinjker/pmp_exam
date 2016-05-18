class Accounts::ExamAnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :exam_paper
  def index
    @exam_answer = current_user.exam_answers.error.where({exam_paper_id: @exam_paper.id})
  end

  private
  def exam_paper
    @exam_paper = ExamPaper.find_by_id(params[:exam_paper_id])
    if @exam_paper.blank?
      redirect_to exam_papers_path
    end
  end
end
