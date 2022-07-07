class Url < ApplicationRecord
  validates_presence_of :description
  validates_presence_of :long_url

  belongs_to :user
end
