require_relative 'entry_manager'

class SecretDiary
  attr_reader :status

  def initialize
    @status = "locked"
  end

  def lock
    @status = "locked"
    "Diary locked!"
  end

  def unlock
    @status = "unlocked"
    "Diary unlocked!"
  end
end
