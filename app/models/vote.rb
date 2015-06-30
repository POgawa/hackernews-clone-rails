class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :link
  validates_presence_of :link_id
end
