class CreateExamAnswers < ActiveRecord::Migration
  def change
    create_table :exam_answers do |t|
      t.integer :user_id
      t.integer :exam_paper_id
      t.integer :exam_option_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
