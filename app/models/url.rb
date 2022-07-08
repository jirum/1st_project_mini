class Url < ApplicationRecord
  validates_presence_of :description
  validates_presence_of :long_url
  validates_format_of :long_url, :with => /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i
  belongs_to :user

  before_create :generate_short_url

  def generate_short_url
    loop do
      @short = SecureRandom.base64(6)
      break if not Url.exists?(short_url: @short)
    end
    self.short_url=@short
  end
end
