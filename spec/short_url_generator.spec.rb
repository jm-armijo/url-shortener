# require 'rails_helper'
# require 'spec_helper'

require 'short_url_generator'

RSpec.describe ShortUrlGenerator do
    base_url = 'https://test.com'

    it 'should not generate url for negative id' do
        id = -1
        short_url = ShortUrlGenerator.generate(base_url, id)

        expect(short_url).to eq nil
    end

    it 'should generate url for id 1' do
        id = 1
        short_url = ShortUrlGenerator.generate(base_url, id)

        expect(short_url).to eq "#{base_url}/1"
    end

    it 'should generate url for id 10' do
        id = 10
        short_url = ShortUrlGenerator.generate(base_url, id)

        expect(short_url).to eq "#{base_url}/A"
    end

    it 'should generate url for id 1,000,000' do
        id = 1000000
        short_url = ShortUrlGenerator.generate(base_url, id)

        expect(short_url).to eq "#{base_url}/4C92"
    end
end
