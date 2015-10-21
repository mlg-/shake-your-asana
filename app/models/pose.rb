class Pose < ActiveRecord::Base
  validates :english_name, presence: true
  validates :sanskrit_name, presence: true
  validates :primary_photo, presence: true
end
