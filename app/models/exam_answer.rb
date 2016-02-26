class ExamAnswer < ActiveRecord::Base
  enum flag: { error: 0, right: 1}
  # 用户考试答题卡

end
