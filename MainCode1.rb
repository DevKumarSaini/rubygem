require 'money'
require 'colorize'
require_relative 'replicaCurrency'


class Exchange
  include Curconv

end



puts "\nPlease Enter your Currency CODE  --\n".colorize(:blue)
        puts "\n    COUNTRY         CURRENCY      CURRENCY-CODE\n\n".colorize(:red)
        puts "1)  Indian          (Rupees)          INR ".colorize(:blue)
        puts "2)  United State    (Dollar)          USD ".colorize(:blue)
        puts "3)  Europe          (Euro)            Eur".colorize(:blue)
        puts "4)  Japnees         (Yen)             JPY".colorize(:blue)
        puts "5)  Britain         (Pound)           GBP\n\n".colorize(:blue)
        currencyCode = gets.chomp.upcase

        puts "\nEnter Amoutn to CONVERT \n\n".colorize(:red)
        amount = gets.chomp.to_i

        # current_curr = gets.chomp.upcase
        puts "\nSelect target currency CODE to convert your Money\n".colorize(:green)
        puts "    COUNTRY         CURRENCY      CURRENCY-CODE\n".colorize(:green)
        puts "1)  Indian          (Rupees)          INR ".colorize(:green)
        puts "2)  United State    (Dollar)          USD ".colorize(:green)
        puts "3)  Europe          (Euro)            Eur".colorize(:green)
        puts "4)  Japnees         (Yen)             JPY".colorize(:green)
        puts "5)  Britain         (Pound)           GBP\n\n".colorize(:green)
        changeCurrencyCode = gets.chomp.upcase


ex = Exchange.new
ex.valueConveter(amount,currencyCode,changeCurrencyCode)
