class Subject < ActiveRecord::Base
  # 考题
  belongs_to :exam_paper, counter_cache: true
  has_many :exam_options
  validates_presence_of :content, :exam_paper_id

end
