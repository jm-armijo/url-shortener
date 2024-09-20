require 'base62'

RSpec.describe Base62 do
    it 'should not encode negative number' do
        response = Base62.encode(-1)
        expect(response).to eq nil
    end

    it 'should encode number 0' do
        response = Base62.encode(0)
        expect(response).to eq "0"
    end

    it 'should encode number 10' do
        response = Base62.encode(10)
        expect(response).to eq "A"
    end

    it 'should encode number 36' do
        response = Base62.encode(36)
        expect(response).to eq "a"
    end

    it 'should encode number 62' do
        response = Base62.encode(62)
        expect(response).to eq "10"
    end

    it 'should encode number 100' do
        response = Base62.encode(100)
        expect(response).to eq "1c"
    end

    it 'should encode number 543' do
        response = Base62.encode(543)
        expect(response).to eq "8l"
    end

    it 'should encode number 1000000000000' do
        response = Base62.encode(1000000000000)
        expect(response).to eq "HbXm5a4"
    end

    it 'should encode max_int 64 as per bits' do
        max_int = 18446744073709551615
        response = Base62.encode(max_int)
        expect(response).to eq "LygHa16AHYF"
    end
end
