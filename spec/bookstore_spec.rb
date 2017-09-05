require 'rspec'
require_relative '../book'
require_relative '../bookstore'

describe BookStore do
  let (:book_store) { BookStore.new({hours: "10 AM - 10 PM",
                              sections: {"Fiction" => [],
                                        "Non-Fiction" => []}}) }

  it 'lists hours from 10 am to 10pm' do
    expect(book_store.hours).to eq("10 AM - 10 PM")
  end

  it 'has two large sections of fiction and non-fiction' do
    expect(book_store.sections.keys).to eq(["Fiction", "Non-Fiction"])
  end
end
