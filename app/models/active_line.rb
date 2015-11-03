class ActiveLine < ActiveRecord::Base
  belongs_to :line

  # validations
  # ...

  # set up methods (outside gems)
  geocoded_by :place

  # hooks!
  before_create :set_started_at
  after_validation :geocode

  def is_up?
    finished_at.nil?
  end

  def set_started_at
    self.started_at = Time.now
  end

  def place
    #the address or place
  end

end
