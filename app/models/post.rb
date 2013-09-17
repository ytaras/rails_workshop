class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
  acts_as_commentable
end
