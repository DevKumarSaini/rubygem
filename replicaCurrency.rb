require 'money'


# def conversion

  # def hashBox
module Curconv
  I18n.config.available_locales = :en

  # puts "Displaying currency code\n"

      rates = {
      'INR'=> {
        'USD' => 0.0122,
        'EUR' => 0.011,
        'JPY' => 1.6294,
        'GBP' => 0.0098
      },
      'USD'=> {
        'INR' => 81.97,
        'EUR' => 0.805,
        'JPY' => 133.56,
        'GBP' => 0.805
      },
      'EUR'=> {
        'INR' => 89.9676,
        'USD' => 1.098,
        'JPY' => 146.65,
        'GBP' => 0.8839
      },
      'JPY'=> {
        'INR' => 0.6138,
        'USD' => 0.0075,
        'EUR' => 0.0068,
        'GBP' => 0.006
      },
      'GBP'=> {
        'INR' => 101.828,
        'USD' => 1.2423,
        'EUR' => 1.1314,
        'JPY' => 165.91
      }
}

        # rates.each do
        #  |key,values|

        #     print "#{key}"

        #     values.each do
        #       |key1,value1|
        #         puts "\n    #{key1} --> #{value1}"
        #     end

        #     puts ""
        # end

        puts "Choose your currency code --"
        puts "1)  INR "
        puts "2)  USD "
        puts "3)  Eur"
        puts "4)  JPY"
        puts "5)  GBP"
        @currencyCode = gets.chomp.upcase

        puts "\nEnter your Amount Which you want to convert "
        @Amount = gets.chomp.to_i

        # current_curr = gets.chomp.upcase
        puts "\nEnter your target Currency code"
        puts "1)  INR "
        puts "2)  USD "
        puts "3)  Eur"
        puts "4)  JPY"
        puts "5)  GBP"
        @changeCurrencyCode = gets.chomp.upcase



        # puts "\nEnter your Currency code"
        # puts "#{@currencyCode}"



        # currencyRate = rates[@currencyCode][@changeCurrencyCode]
        # puts currencyRate

        rates.each do
          |currcodehave,currencycodetarget|

          currencycodetarget.each do
            |finalcurr,ratevalue|

            Money.add_rate(currcodehave,finalcurr,ratevalue)
          end
        end
# ````````````````````````````````````````````````````````
        # currencyRate = rates[@currencyCode][@changeCurrencyCode]
        # puts "\nCurrent conversion rate --> #{currencyRate}\n"


        # Money.add_rate(@currencyCode,@changeCurrencyCode,currencyRate)
        # rs = Money.from_amount(@Amount, "INR").exchange_to("USD")
        peesa = Money.from_amount(@Amount, @currencyCode)
        rs = peesa.exchange_to(@changeCurrencyCode)
        puts "Conveterd Currency is -->  #{rs.format}"


    # end
# end

  # obj1 = conversion.new
  # obj1.hashContainer
end
