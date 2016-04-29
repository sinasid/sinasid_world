class Article < ActiveRecord::Base
  belongs_to :category

  validates_inclusion_of :title, :content
  scope :active, where('active = ?', true)
  scope :alphabetical, order('title')
end
