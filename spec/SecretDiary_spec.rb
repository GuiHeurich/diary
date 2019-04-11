require 'SecretDiary'

describe SecretDiary do

  describe '#initialize' do
    context "diary is locked when created" do
      it "status is set to locked" do
      expect(subject.unlocked).to eq false
      end
    end
  end

describe '#lock' do
    it 'locks the diary' do
      subject.unlock
      subject.lock
      expect(subject.unlocked).to eq false
    end
  end

  describe '#unlock' do
    it 'unlocks the diary' do
      subject.unlock
      expect(subject.unlocked).to eq true
    end
  end
end
