require_relative '../lib/bracket'

RSpec.describe Bracket do
  let(:lint) { Bracket.new }
  describe 'linter_pairs?' do
    it 'returns true if open and closing bracket' do
      expect(lint.linter_pairs?('{}')). to eql true
    end
    it 'returns true if open and closing bracket' do
      expect(lint.linter_pairs?('{')). to eql false
    end
    it 'returns true if open and closing bracket' do
      expect(lint.linter_pairs?('}')). to eql false
    end
  end
end
