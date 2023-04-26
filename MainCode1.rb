require 'money'
require_relative 'replicaCurrency'


class Exchange
  include Curconv

end



puts "\nPlease Enter your Currency CODE  --\n"
        puts "\n    COUNTRY         CURRENCY      CURRENCY-CODE\n\n"
        puts "1)  Indian          (Rupees)          INR "
        puts "2)  United State    (Dollar)          USD "
        puts "3)  Europe          (Euro)            Eur"
        puts "4)  Japnees         (Yen)             JPY"
        puts "5)  Britain         (Pound)           GBP\n\n"
        currencyCode = gets.chomp.upcase

        puts "\nEnter Amoutn to CONVERT \n\n"
        amount = gets.chomp.to_i

        # current_curr = gets.chomp.upcase
        puts "\nSelect target currency CODE to convert your Money\n"
        puts "    COUNTRY         CURRENCY      CURRENCY-CODE\n"
        puts "1)  Indian          (Rupees)          INR "
        puts "2)  United State    (Dollar)          USD "
        puts "3)  Europe          (Euro)            Eur"
        puts "4)  Japnees         (Yen)             JPY"
        puts "5)  Britain         (Pound)           GBP\n\n"
        changeCurrencyCode = gets.chomp.upcase


ex = Exchange.new
ex.valueConveter(amount,currencyCode,changeCurrencyCode)
