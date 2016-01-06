class Post < ActiveRecord::Base

  validates :title, :content, :name, presence: true
  validates :title, :content, format: {
    without: /fl([aueio]|\|_\|)rb/i ,
    message: "can't include the word \"flurb\" or a variation thereof"
  }
  validates :name, format: {
    with: /\A[\p{L} \.\-,]+\z/i ,
    message: "isn't a valid name (only letters, spaces, periods, dashes, and commas allowed)"
  }
end
