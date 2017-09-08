require_relative '../cookie'

describe Cookie do
  let(:cookie) { Cookie.new({ id: '1', flavor: 'Chocolate Chip', count: '20', price: '4.99', cost: '0.75' })}

  it 'has an id' do
    expect(cookie.id).to eq "1"
  end

  it 'has flavor' do
    expect(cookie.flavor).to eq 'Chocolate Chip'
  end

  it 'has count' do
    expect(cookie.count).to eq '20'
  end

  it 'has price' do
    expect(cookie.price).to eq '4.99'
  end

  it 'has cost' do
    expect(cookie.cost).to eq '0.75'
  end

end
