require 'entry_manager'

describe EntryManager do
  describe '#locked?' do
    it "checks the diary's initial status is locked" do
      expect(subject.locked?).to eq true
    end
  end

  describe '#add_entry' do
    it "add entries" do
      subject.add_entry("I went for a walk today")
      expect(subject.locked?).to eq false
      expect(subject.add_entry("I went for a walk today")).to eq("Entry added: 'I went for a walk today'")
    end
end

  describe '#get_entries' do
    it "lists entries from the diary" do
      subject.add_entry("I went for a walk today")
      subject.get_entries
      expect(subject.locked?).to eq false
      expect(subject.get_entries).to eq("Your entries are: 'I went for a walk today'")
    end
  end
end
