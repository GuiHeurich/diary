require 'diary'

describe Diary do

  describe '#initialize' do
    it "@entries is empty when created" do
      expect(subject.entries).to be_empty
    end
  end

  describe '#add_entry' do
    it "creates entries" do
      subject.add_entry("I went for a walk today")
      expect(subject.entries.count).to eq(1)
    end
  end

  describe '#get_entries' do
    it "lists entries from the diary" do
      subject.add_entry("I went for a walk today")
      expect(subject.get_entries).to eq("Your entries are: #{subject.entries}")
    end
  end

end
