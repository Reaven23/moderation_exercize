class Comment < ApplicationRecord
  include Moderable

  belongs_to :user
  belongs_to :post

  validates :content, presence: true


end
