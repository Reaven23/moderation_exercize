class Comment < ApplicationRecord
  include Moderable

  belongs_to :user
  belongs_to :post

  validates :content, presence: true

  before_save :moderate_content

  private

  def check_moderation
    errors.add(:base, 'Comment is not accepted') unless is_accepted
  end
end
