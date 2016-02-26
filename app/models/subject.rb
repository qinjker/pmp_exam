class Subject < ActiveRecord::Base
  # 考题
  belongs_to :exam_paper
  has_many :exam_options
  validates_presence_of :title, :exam_paper_id

end
