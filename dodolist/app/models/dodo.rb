class Dodo < ActiveRecord::Base
  has_many :links
  validates :name, :presence => true	
  acts_as_taggable
  acts_as_commentable
end
