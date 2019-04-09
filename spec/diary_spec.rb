require 'diary'

describe SecretDiary do

  describe '#initialize' do
    context "diary is locked when created" do
      it "status is set to locked" do
      expect(subject.status).to eq "locked"
      end
    end
  end

describe '#lock' do
    it 'locks the diary' do
      expect(subject.status).to eq "locked"
      expect(subject.lock).to eq "Diary locked!"
    end
  end

  describe '#unlock' do
    it 'unlocks the diary' do
      expect(subject.unlock).to eq "Diary unlocked!"
      expect(subject.status).to eq "unlocked"
    end
  end
end
