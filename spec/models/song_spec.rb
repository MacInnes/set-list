RSpec.describe Song do
  describe 'Validations' do
    it 'is invalid without a title' do
      song = Song.new(length: 180, play_count: 4)
      expect(song).to_not be_valid
    end
    it 'is invalid without a length' do
      song = Song.new(title: "something", play_count: 4)
      expect(song).to_not be_valid
    end
  end
  describe 'Class Methods' do
    describe '.total_play_count' do
      it 'returns total play counts for all songs' do
        Song.create(title: "Song 1", length: 180, play_count: 3)
        Song.create(title: "Song 2", length: 220, play_count: 4)

        expect(Song.total_play_count).to eq(7)
      end
    end
    describe '.average_play_count' do
      it 'returns the average play count for all songs' do
        Song.create(title: "Song 1", length: 180, play_count: 2)
        Song.create(title: "Song 2", length: 220, play_count: 4)

        expect(Song.average_play_count).to eq(3)
      end
    end
  end
end
