RSpec.describe MeadStringHelper do
  subject { MeadStringHelper }

  it "has a version number" do
    expect(MeadStringHelper::VERSION).not_to be nil
  end

  describe 'manipulate strings' do 
    let(:str) { 'My String' }
    it 'reverses a string' do 
      expect(subject.reverisfy(str)).to eq('gnirtS yM')

    it 'adds spaces' do
      expect(subject.spacify(str, 1)).to eq('M y  S t r i n g')
    end 
  end 

end
