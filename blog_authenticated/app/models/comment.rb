class Comment < ActiveRecord::Base
  validates :detail, :entry_id, presence: true
end
