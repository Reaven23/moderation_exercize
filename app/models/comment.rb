class Comment < ApplicationRecord
  include Moderable

  belongs_to :user
  belongs_to :post

  validates :content, presence: true

  after_create :moderate_content

end
