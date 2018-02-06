require 'action_view'
include ActionView::Helpers::DateHelper
class Cat < ApplicationRecord

  CAT_COLORS = %w(red, white, grey, pink, orange, black).freeze

  validates :color, inclusion: CAT_COLORS
  validates :sex, inclusion: %w(M,F)

  def age
    time_ago_in_words(birth_date)
  end

end
