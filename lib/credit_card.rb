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

  def current_year
    @current_year = Date.today.strftime("%y").to_i
  end

  def current_month
    @current_month = Date.today.strftime("%m").to_i
  end

  def exp_year
    @exp_year = Date.parse(@expiration).strftime("%y").to_i
  end

  def exp_valid?
    @exp_year > @current_year || @exp_year < @current_year && @exp_month > @current_month
  end

end

#pry experimentation:
    # current_year = Date.today.strftime("%y").to_i
    # current_month = Date.today.strftime("%m").to_i

    # exp_year = Date.parse("Apr 2016").strftime("%y").to_i
    # exp_month = Date.parse("Apr 2016").strftime("%m").to_i

    # exp_year > current_year || (exp_year < current_year && exp_month > current_month)

# binding.pry
# puts "---"
