require_relative 'SecretDiary'
require 'date'

class Diary

  attr_reader :entries

  def initialize
    @diary = SecretDiary.new
    @entries = {}
  end

  def add_entry(entry)
    @diary.unlock
    date = DateTime.now
    @entries[date.strftime "%d/%m/%Y"] = entry
  end

  def get_entries
    @diary.unlock
    "Your entries are: #{@entries.each { |key, value| "#{key.to_s}: #{value.to_s}" } }"
  end
end
