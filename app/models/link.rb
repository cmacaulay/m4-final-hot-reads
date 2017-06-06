class Link < ApplicationRecord
  validates :url, presence: true

  after_save :hottest_read

  def self.top_ten
    time_range = (Time.now - 1.day)..Time.now
    self.where(:updated_at => time_range)
    .order("count DESC")
    .limit(10)
  end


  def hottest_read
    if self == Link.top_ten.first
      self.hot = true
    end
  end
end
