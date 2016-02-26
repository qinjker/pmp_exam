class ExamPaper < ActiveRecord::Base
  # PMP试卷
  has_many :subjects
  validates_presence_of :title

end
