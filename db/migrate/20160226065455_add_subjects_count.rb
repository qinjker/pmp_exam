class AddSubjectsCount < ActiveRecord::Migration
  def change
    add_column :exam_papers, :subjects_count, :integer, default: 0
  end
end
