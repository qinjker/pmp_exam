class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.text :content
      t.references :exam_paper, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
