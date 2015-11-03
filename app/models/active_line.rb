class ActiveLine < ActiveRecord::Base

  after_validation :geocode
  geocoded_by :place

  def place
    #the address or place
  end

end
