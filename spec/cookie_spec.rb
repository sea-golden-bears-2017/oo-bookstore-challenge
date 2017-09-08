require_relative '../cookie'

describe Cookie do
  let(:cookie) { Cookie.new({ flavor: 'Chocolate Chip', count: '20', price: '4.99', cost: '0.75' })}
  it 'has flavor' do
    expect(cookie.flavor).to_not eq nil
  end

  it 'has count' do
    expect(cookie.count).to_not eq nil
  end

  it 'has price' do
    expect(cookie.price).to_not eq nil
  end

  it 'has cost' do
    expect(cookie.cost).to_not eq nil
  end

end
