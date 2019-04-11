require_relative 'diary'

class EntryManager

  attr_reader :diary, :entries

  def initialize
    @diary = SecretDiary.new
    @entries = []
  end

  def locked?
    @diary.status == "locked"
  end

  def add_entry(entry)
    @diary.unlock
    @entries << entry
    "Entry added: '#{@entries[-1]}'"
  end

  def get_entries
    @diary.unlock
    entry_list = @entries.each { |entry| puts entry }
    "Your entries are: #{entry_list}"
  end

end
