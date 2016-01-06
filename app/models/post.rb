class Post < ActiveRecord::Base

  validates :title,   presence: true
  validates :content, presence: true
  validates :name,    presence: true
  validates :name, format: {
    with: /\A[\p{L} \.\-,]+\z/i ,
    message: "isn't a valid name (only letters, spaces, periods, dashes, and commas allowed)"
  }
end
