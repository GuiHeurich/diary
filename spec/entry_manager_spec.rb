require 'entry_manager'

describe EntryManager do
  describe '#locked?' do
    it "checks the diary's initial status is locked" do
      expect(subject.locked?).to eq true
    end
  end

  describe '#add_entry' do
    it "add entries" do
      subject.add_entry
      expect(subject.locked?).to eq false
      expect(subject.add_entry).to eq("Entry added")
    end
end

  describe '#get_entries' do
    it "lists entries from the diary" do
      subject.get_entries
      expect(subject.locked?).to eq false
      expect(subject.get_entries).to eq("Your entries are: ")
    end
  end
end
