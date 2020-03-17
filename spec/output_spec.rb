require_relative '../lib/output'

RSpec.describe Output do
  let(:lint) { Output.new }

  describe 'closed_pair' do
    it 'returns a string with concat line numbers' do
      expect(lint.closed_pair(1).is_a?(String)). to eql(true)
    end
  end
  describe 'all_good' do
    it 'returns a string' do
      expect(lint.all_good.is_a?(String)). to eql(true)
    end
  end
  describe 'open_errors' do
    it 'returns a string with concat line numbers' do
      expect(lint.open_errors([1, "in here"]).is_a?(String)). to eql(true)
    end
  end
  describe 'all_good_inner' do
    it 'returns a string with concat line numbers' do
      expect(lint.all_good_inner.is_a?(String)). to eql(true)
    end
  end
  describe 'missing_colon' do
    it 'returns a string with concat line numbers' do
      expect(lint.missing_colon([1, "something", 23]).is_a?(String)). to eql(true)
    end
  end
  describe 'warning_space' do
    it 'returns a string with concat line numbers' do
      expect(lint.warning_space([1, "something", 23]).is_a?(String)). to eql(true)
    end
  end
end
