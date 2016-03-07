class ExamOption < ActiveRecord::Base
  extend Enumerize
  enumerize :flag, in: {right: 1, error: 0}

  # 考题选项
  belongs_to :subject

  validates_presence_of :subject_id, :title

end
