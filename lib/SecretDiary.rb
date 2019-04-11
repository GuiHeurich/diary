require_relative 'diary'

class SecretDiary
  attr_reader :unlocked

  def initialize
    @unlocked = false
  end

  def lock
    @unlocked = false
    "Diary locked!"
  end

  def unlock
    @unlocked = true
    "Diary unlocked!"
  end
end
