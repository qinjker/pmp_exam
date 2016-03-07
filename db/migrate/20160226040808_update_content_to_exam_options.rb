class UpdateContentToExamOptions < ActiveRecord::Migration
  def change
    rename_column :exam_options, :content, :title
  end
end
