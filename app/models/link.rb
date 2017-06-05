class Link < ApplicationRecord
  validates :url, presence: true

  def self.top_ten
    time_range = (Time.now - 1.day)..Time.now
    self.where(:updated_at => time_range)
    .order("count DESC")
    .limit(10)
  end
end
