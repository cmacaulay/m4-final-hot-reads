class Link < ApplicationRecord
  validates :url, presence: true
  after_save :set_hottest_read

  def self.top_ten
    time_range = (Time.now - 1.day)..Time.now
    self.where(:updated_at => time_range)
    .order("count DESC")
    .limit(10)
  end

  def set_hottest_read
    Link.last.update_attribute(hot, true) if Link.last == Link.top_ten.first
  end
end
