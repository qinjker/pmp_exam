class ExamAnswersController < ApplicationController
  protect_from_forgery except: :create
  before_action :authenticate_user!
  def create
    query_opts = params.require(:exam_answer).permit(:exam_paper_id, :subject_id)
    query_opts.merge!({ user_id: current_user.id})
    @exam_answer = ExamAnswer.find_or_initialize_by(query_opts)
    @exam_answer.
  end
end
