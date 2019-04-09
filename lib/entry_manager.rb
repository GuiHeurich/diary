require_relative 'diary'

class EntryManager

  def initialize
    @diary = SecretDiary.new
  end

  def locked?
    @diary.status == "locked"
  end

  def add_entry
    @diary.unlock
    "Entry added"
  end

  def get_entries
    @diary.unlock
    "Your entries are: "
  end

end
