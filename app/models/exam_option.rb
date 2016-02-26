class ExamOption < ActiveRecord::Base
  # 考题选项
  belongs_to :subject

  validates_presence_of :subject_id, :content

end
