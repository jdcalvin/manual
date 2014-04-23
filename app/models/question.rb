class Question < ActiveRecord::Base
  belongs_to :chapter
  validates :chapter, presence: true
end
