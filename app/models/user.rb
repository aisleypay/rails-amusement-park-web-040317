class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  validates :password, presence: true

  def mood
    if self.happiness < self.nausea
      'sad'
    else
      'happy'
    end
  end
end
