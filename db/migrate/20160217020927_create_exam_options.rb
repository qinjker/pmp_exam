class CreateExamOptions < ActiveRecord::Migration
  def change
    create_table :exam_options do |t|
      t.text :content
      t.references :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
