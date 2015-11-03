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
    current_active_line.finished_at = Time.now if is_active_line?
  end

  def current_active_line
    active_lines.find {|al| al.is_up? }
  end
end
