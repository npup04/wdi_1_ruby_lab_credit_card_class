require "pry"
require 'date'

class CreditCard
  def initialize(card_type, name, expiration, ccv, zipcode, card_number)
    @card_type = card_type
    @name = name
    @expiration = expiration
    @ccv = ccv
    @zipcode = zipcode
    @card_number = card_number
  end

  def card_type
    @card_type
  end

  def name
    @name.length
  end

  def expiration
    @expiration.length
  end

  def ccv
    @ccv.length
  end

  def zipcode
    @zipcode.length
  end

  def card_number
    @card_number.length
  end

  def expiration_date?
    current_year = Date.today.strftime("%y").to_i
    current_month = Date.today.strftime("%m").to_i
    exp_future_year = 14
    exp_future_month = 03

    exp_future_year > current_year || (exp_future_year < current_year && exp_future_month > current_month)
  end
end
# binding.pry
# puts "---"
