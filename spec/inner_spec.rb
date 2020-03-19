require_relative '../lib/inner'

RSpec.describe Inner do
  let(:lint) { Inner.new }
  describe 'cleanup' do
    it 'returns true an empty log if no errors' do
      lint.cleanup('.container {
            display: grid;
            }')
      expect(lint.log.empty?). to eql true
    end
    it 'returns not an empty log if errors' do
      lint.cleanup('.container {
          display: grid
          }')
      expect(lint.log.empty?). to eql false
    end
    it 'returns not an empty log if errors' do
      lint.cleanup('.container {
          display grid;
          }')
      expect(lint.log.empty?). to eql false
    end
  end
end
