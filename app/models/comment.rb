class Comment < ApplicationRecord
  include Moderable

  belongs_to :user
  belongs_to :post

  validates :content, presence: true

  before_save :moderate_content

end
