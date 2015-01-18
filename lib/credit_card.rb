require 'pry'
require 'date'

class CreditCard
  def initialize(card_type, name, exp_date, ccv, zipcode, card_number)
    @card_type = card_type
    @name = name
    @exp_date = exp_date
    @ccv = ccv
    @zipcode = zipcode
    @card_number = card_number
  end

  def card_type
    @card_type
  end

  def name
    @name
  end

  def name_length
    @name.length
  end

  def ccv
    @ccv
  end

  def ccv_length
    @ccv.length
  end

  def zipcode
    @zipcode
  end

  def zipcode_length
    @zipcode.length
  end

  def card_number
    @card_number
  end

  def card_number_length
    @card_number.length
  end

  def exp_date
    @exp_date
  end

  def exp_validate
    Date.parse(@exp_date) > Date.today
  end

end

#pry experimentation:

    # current_year = Date.today.strftime("%y").to_i
    # current_month = Date.today.strftime("%m").to_i

    # exp_year = Date.parse("Apr 2016").strftime("%y").to_i
    # exp_month = Date.parse("Apr 2016").strftime("%m").to_i

    # exp_year > current_year || (exp_year < current_year && exp_month > current_month)

  # new_cc = CreditCard.new("Mastercard", "Jason Wharff", "Apr 2016", "123", "02169", "5555555555554444")

# binding.pry
# puts "---"
