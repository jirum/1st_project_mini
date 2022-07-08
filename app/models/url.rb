class Url < ApplicationRecord
  validates_presence_of :description
  validates_presence_of :long_url
  validates_format_of :long_url, :with => /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i
  belongs_to :user

end
