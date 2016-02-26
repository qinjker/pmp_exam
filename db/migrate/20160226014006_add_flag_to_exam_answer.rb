class AddFlagToExamAnswer < ActiveRecord::Migration
  def change
    add_column :exam_answers, :flag, :integer, default: 0

    add_index :exam_answers, :user_id
    add_index :exam_answers, :exam_paper_id
    add_index :exam_answers, :exam_option_id
    add_index :exam_answers, :subject_id
  end
end
