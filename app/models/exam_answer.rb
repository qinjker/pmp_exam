class ExamAnswer < ActiveRecord::Base
  enum flag: { error: 0, right: 1}
  belongs_to :exam_paper
  belongs_to :subject
  belongs_to :exam_option
  belongs_to :user
  # 用户考试答题卡

  def update_flag
    if changes[:exam_option_id].present? && exam_option.present?
      if exam_option.flag.right?
        self.flag = ExamAnswer.flags[:right]
      else
        self.flag = ExamAnswer.flags[:error]
      end
    end
  end
end
