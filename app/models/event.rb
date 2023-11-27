class Event < ApplicationRecord
  attr_accessor :has_begun, :has_ended, :time_until_string, :full_title, :season_length

  has_one_attached :banner
  belongs_to :created_by, class_name: 'User', foreign_key: 'created_by_id'

  has_many :event_contestants
  has_many :contestants, through: :event_contestants

  def has_began
    season_start > Date.today ? true : false
  end

  def has_ended
    season_start > Date.today ? true : false
  end

  def full_title
    "#{title} - Season: #{season}"
  end

  def season_length
     (season_end - season_start).ceil
  end 

  def time_until_string
    case season_start
    when Date.today
      "Starts today!"
    when Date.tomorrow
      "Starts tomorrow!"
    when Date.today..Date.tomorrow
      "Starts within the next two days!"
    when Date.today..(Date.today + 6)
      "Starts within the next week!"
    when Date.new(1899, 1, 1)..Date.yesterday
      "Already started!"
    else
      "Starts in #{(season_start - Date.today).ceil} days"
    end
  end
end
