class ActiveLine < ActiveRecord::Base
  belongs_to :line
  after_validation :geocode
  geocoded_by :place

  def place
    #the address or place
  end

end
