class User < ApplicationRecord
  has_many :addresses

  def full_name
    @full_name ||= _full_name
  end

  private

  def _full_name
    [title, first_name, last_name].reject(&:blank?).join(' ')
  end
end
