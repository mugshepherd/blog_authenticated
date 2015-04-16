class Entry < ActiveRecord::Base
  has_many :comments
  validates :title, :detail, presence: true
end
