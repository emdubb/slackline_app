class Line < ActiveRecord::Base
  belongs_to :user
  belongs_to :activeline
end
