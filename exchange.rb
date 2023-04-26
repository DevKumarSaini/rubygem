require 'money'
# require 'colorize'
# require 'colorized_string'


# dollar to INR
class Exchange
  def initialize()
    I18n.config.available_locales = :en
    convert
  end

  def convert

    # currencyValueContainer = {
    #   "USD" => 0.0122,
    #   "IQR" => 0.0037,
    #   "GBP" => 0.0098,
    #   "JPY" => 1.634,
    #   "EUR" => 0.0111
    # }
    rates = {
      'INR' => {
        'USD' => 0.0122,
        'EUR' => 0.011,
        'JPY' => 1.6294,
        'GBP' => 0.0098
      },
      'USD' => {
        'INR' => 81.97,
        'EUR' => 0.805,
        'JPY' => 133.56,
        'GBP' => 0.805
      },
      'EUR' => {
        'INR' => 89.9676,
        'USD' => 1.098,
        'JPY' => 146.65,
        'GBP' => 0.8839
      },
      'JPY' => {
        'INR' => 0.6138,
        'USD' => 0.0075,
        'EUR' => 0.0068,
        'GBP' => 0.006
      },
      'GBP' => {
        'INR' => 101.828,
        'USD' => 1.2423,
        'EUR' => 1.1314,
        'JPY' => 165.91
      }
    }
    # puts "iterating hash  --------->/"

    # county = ["United State of America","Kuwait","Bretain","Japnees","Europe"]

    # count=0
    # for i in county
    #   puts  "#{count} #{i}"
    #       count += 1
    # end


    # currencyValueContainer.each do |key,value|
    # puts "#{key} -->  #{value}"
    # end


    case availableOption
    when 1
      Money.add_rate("INR","USD",0.0122)
      #  Money.round_half_up = Money.from_cents(indianMoney, "USD").with_currency("EUR")
      # puts Money.from_amount(indianMoney, "INR").exchange_to("USD").format
      rs = Money.from_amount(@indianMoney, "INR").exchange_to("USD")
      puts rs.format

    when 2
      # puts "vijay baba"
      Money.add_rate("INR","IQD",0.0037)
      rs1 = Money.from_amount(@indianMoney,"INR").exchange_to("IQD")


    when 3
      Money.add_rate("INR","GBP",0.0098)
      rs1 = Money.from_amount(@indianMoney,"INR").exchange_to("GBP")
      puts rs1.format

    when 4
      Money.add_rate("INR","JPY",1.634)
      rs1 = Money.from_amount(@indianMoney,"INR").exchange_to("JPY")
      puts rs1.format

    when 5
      Money.add_rate("INR","EUR",0.0111)
      rs1 = Money.from_amount(@indianMoney,"INR").exchange_to("EUR")
      puts rs1.format
    end

    # puts money.cents
    # puts money.currency
    # @amount * 80
  end
end

## driver logic
ex = Exchange.new
# ex.convert

# require 'money'
# # dollar to INR
# class Exchange
#   def initialize(amount, target_currency)
#     I18n.config.available_locales = :en
#     @amount = amount
#     @target_currency = target_currency
#   end
#   def inr_to_usd
#     Money.add_rate("INR", "USD", 0.012)
#     rs = Money.from_amount(@amount, "INR").exchange_to(@target_currency)
#     puts rs.format
#   end
#   def inr_to_euro
# end
# ## driver logic
# ex = Exchange.new(8976, "USD")
# ex.inr_to_usd
