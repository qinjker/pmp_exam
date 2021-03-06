class ExamAnswersController < ApplicationController
  protect_from_forgery except: :create
  before_action :authenticate_user!
  before_action :exam_paper
  def create
    subject_id = params[:exam_answer][:subject_id]
    exam_option_id = params[:exam_answer][:exam_option_id]
    @subject = Subject.find_by_id(subject_id)
    @exam_option = @subject.exam_options.find_by_id(exam_option_id)
    if @subject.present? && @exam_option.present?
      @exam_answer = current_user.exam_answers.find_or_initialize_by({subject_id: @subject.id})
      @exam_answer.exam_option = @exam_option
      @exam_answer.exam_paper = @exam_paper
      @exam_answer.update_flag
      @exam_answer.save
    end
    render text: 'done'
  end

  def result
    @user_answers_right_count = current_user.exam_answers.right.where({exam_paper_id: @exam_paper.id}).count
    @user_answers_error_count = current_user.exam_answers.error.where({exam_paper_id: @exam_paper.id}).count
  end

  private
  def exam_paper
    @exam_paper = ExamPaper.find_by_id(params[:exam_paper_id])
    if @exam_paper.blank?
      redirect_to exam_papers_path
    end
  end

end
