module ReviewsHelper
  def star_rating(rating)
    return rating unless rating.respond_to?(:round)
    remainder = 6 - rating
    "★" * rating + '☆' * remainder
  end
end
