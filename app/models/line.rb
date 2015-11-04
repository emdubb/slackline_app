class Line < ActiveRecord::Base
  belongs_to :user
  has_many :active_lines

  def is_active_line?
    active_lines.any? {|al| al.is_up? }
  end

  def activate!
    active_lines.create unless is_active_line?
  end

  def deactivate!
    cal = current_active_line
    cal.finished_at = Time.now if is_active_line?
    cal.save
  end

  def current_active_line
    active_lines.find {|al| al.is_up? }
  end
end
