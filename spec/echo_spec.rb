require 'echo'

describe Echo do


  describe '.output' do
    let(:input) { 'Hello World! '}
  
    it 'returns the string you input' do
      expect(subject.output(input)).to eq "You said: #{input}!"
    end
  end

  describe '.get_string' do
    it 'prompts the user for a string' do
      allow($stdin).to receive(:gets).and_return 'Hello World!'
      subject.get_string
      expect(subject.input).to eq 'Hello World!'
    end
  end

  describe '.date_and_time' do
    it 'returns the date & time' do
      date = Time.now.strftime('%d-%m-%Y')
      time = Time.now.strftime('%H:%M')
    expect(subject.date_and_time).to eq "#{date} | #{time} | "
    end
  end

  describe '.loop' do
    xit 'returns the date, time and input' do
      date = Time.now.strftime('%d-%m-%Y')
      time = Time.now.strftime('%H:%M')
      allow($stdin).to receive(:gets).and_return 'Hello World!'
      expect(subject.say_something).to eq "#{date} | #{time} | You said: Hello World!"
    end
  end

  describe '.break?' do
    it 'returns true if exit' do
      subject.input = 'exit'
      expect(subject.break?).to eq true
    end
    it 'returns false if not exit' do
      subject.input = 'not exit'
      expect(subject.break?).to eq false
    end
  end
end