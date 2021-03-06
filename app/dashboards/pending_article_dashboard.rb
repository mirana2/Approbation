require "administrate/base_dashboard"

class PendingArticleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    category: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    lien: Field::String,
    image_url: Field::String,
    icon_url: Field::String,
    description: Field::String,
    tuto: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :category,
    :id,
    :title,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :category,
    :id,
    :title,
    :lien,
    :image_url,
    :icon_url,
    :description,
    :tuto,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :category,
    :title,
    :lien,
    :image_url,
    :icon_url,
    :description,
    :tuto,
  ].freeze

  # Overwrite this method to customize how pending articles are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(pending_article)
  #   "PendingArticle ##{pending_article.id}"
  # end
end
