class Line < ActiveRecord::Base
  belongs_to :user
  has_many :active_lines
end
