class Action<ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :morality
  has_and_belongs_to_many :users
end
