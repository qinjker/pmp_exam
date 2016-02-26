require "administrate/base_dashboard"

class ExamAnswerDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    user_id: Field::Number,
    exam_paper_id: Field::Number,
    exam_option_id: Field::Number,
    subject_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    flag: Field::String.with_options(searchable: false),
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :user_id,
    :exam_paper_id,
    :exam_option_id,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :user_id,
    :exam_paper_id,
    :exam_option_id,
    :subject_id,
    :created_at,
    :updated_at,
    :flag,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user_id,
    :exam_paper_id,
    :exam_option_id,
    :subject_id,
    :flag,
  ]

  # Overwrite this method to customize how exam answers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(exam_answer)
  #   "ExamAnswer ##{exam_answer.id}"
  # end
end
