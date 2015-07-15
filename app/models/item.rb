class Item<ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :morality
  has_and_belongs_to_many :users

  def self.search(search)
    if search
      where('name iLIKE ?', "%#{search}%")
    else
      where(nil)
    end
  end
end
