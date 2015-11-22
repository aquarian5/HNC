class User < ActiveRecord::Base
  has_secure_password

  validates :username, { presence: true }
      has_many :posts
      has_many :comments

  def self.most_recent
    Entry.order(created_at: :asc).limit(3)
  end
end
