class Dodo < ActiveRecord::Base
  validates :name, :presence => true	
  acts_as_taggable
  acts_as_commentable
end
