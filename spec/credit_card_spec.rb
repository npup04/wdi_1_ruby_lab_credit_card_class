require_relative '../lib/credit_card'

# Note: We put the name of the class here instead of a string
RSpec.describe CreditCard do
  # We use `let` for setting local variables
  let(:card_type) { "Mastercard" }
  let(:name) { "Jason Wharff" }
  let(:expiration) { "0416" }
  let(:ccv) { "123" }
  let(:zipcode) { "02169" }
  let(:card_number) { "5555555555554444" }

  # Similarly, we use `subject` to create an instance
  # of the main object we are testing
  subject(:credit_card) { CreditCard.new(card_type, name, expiration, ccv, zipcode, card_number)}

  # Test the initialize method
  # For this one, we mostly check that it creates a new credit card
  describe '#initialize' do
  it 'creates a new instance of CreditCard' do
    expect(credit_card).to be_a CreditCard
    end
  end

  # Test that the credit card is an accepted card type
  describe '#card_type' do
  it 'tests the credit card type' do
    expect(credit_card.card_type).to be card_type
    end
  end

  # Test name length
  describe '#name' do
  it 'tests that the credit card has a name length between 1 - 20 ' do
    expect(credit_card.name).to be_between(1, 20).inclusive
    end
  end

  # Test expiration length
  describe '#expiration' do
  it 'tests that the credit card has an expiration length of 4' do
    expect(credit_card.expiration).to be 4
    end
  end

  # Test the ccv length
  describe '#ccv' do
  it 'tests that the credit card has a ccv length of 3' do
    expect(credit_card.ccv).to be 3
    end
  end

  # Test the zipcode length
  describe '#zipcode' do
  it 'tests that the credit card has a zipcode length of 5' do
    expect(credit_card.zipcode).to be 5
    end
  end

  # Test the card_number length
  describe '#card_number' do
  it 'tests that the credit card has a card_number length of 16' do
    expect(credit_card.card_number).to be 16
    end
  end

    # Test the card_number length
  describe '#current_year' do
  it 'returns the current year integer' do
    expect(credit_card.current_year).to be 15
    end
  end

  describe '#current_month' do
  it 'returns the current month integer' do
    expect(credit_card.current_month).to be 1
    end
  end

  describe '#exp_year' do
  it 'returns the exp month integer' do
    expect(credit_card.exp_year).to be 15
    end
  end

  # Test if expiration date is in the future
  describe '#exp_valid?' do
    subject(:exp_valid) { CreditCard.new(card_type, name, expiration, ccv, zipcode, card_number)}
    it 'returns if the exp_valid is in the future' do
      # expect(credit_card.expiration_date?).to be false
      expect(credit_card.exp_valid?).to be true
    end
  end

end
