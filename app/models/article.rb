class Article < ActiveRecord::Base
  # Relationships
  belongs_to :category
  
  validates_presence_of :title, :content
  
  scope :alphabetical, order('title')
  scope :active, where('active = ?', true) 
end
