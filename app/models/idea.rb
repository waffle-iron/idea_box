class Idea < ActiveRecord::Base
  belongs_to :user

  enum quality: [:swill, :plausible, :genius]
  # By default, the idea's "quality" should default to the lowest setting (i.e. "swill"). (2 points)
end
