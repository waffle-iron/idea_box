class Idea < ActiveRecord::Base
  belongs_to :user

  enum quality: [:swill, :plausible, :genius]

end
