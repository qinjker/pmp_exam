class CreateExamPapers < ActiveRecord::Migration
  def change
    create_table :exam_papers do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
