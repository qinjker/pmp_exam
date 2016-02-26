class AddFlagAndReasonToExamOption < ActiveRecord::Migration
  def change
    add_column :exam_options, :flag, :integer, default: 0
    add_column :exam_options, :reason, :text
  end
end
