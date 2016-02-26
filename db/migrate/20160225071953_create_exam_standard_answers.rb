class CreateExamStandardAnswers < ActiveRecord::Migration
  def change
    create_table :exam_standard_answers do |t|
      t.integer :exam_paper_id
      t.integer :exam_option_id
      t.integer :subject_id
      t.text :reson

      t.timestamps null: false
    end
  end
end
