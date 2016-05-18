class Accounts::ExamAnswers::ErrorController < ApplicationController
  before_action :authenticate_user!
  def index
    @exam_paper = ExamPaper.find_by_id(params[:exam_paper_id])
    if @exam_paper.present?
      @current_exam_answers = current_user.exam_answers.error.where({exam_paper_id: @exam_paper.id})
    else
      @current_exam_answers = current_user.exam_answers.error
    end
  end
end
