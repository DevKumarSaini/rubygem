require 'money'
require 'colorize'
require_relative 'replicaCurrency'


class Exchange
  include Curconv

  def displayMenu

    puts "===============================================================================".colorize(:red)
      puts "\nPlease Enter your Currency CODE  --\n".colorize(:blue)
      puts "\n    COUNTRY         CURRENCY      CURRENCY-CODE\n\n".colorize(:red)
      puts "1)  Indian          (Rupees)          INR ".colorize(:blue)
      puts "2)  United State    (Dollar)          USD ".colorize(:blue)
      puts "3)  Europe          (Euro)            Eur".colorize(:blue)
      puts "4)  Japnees         (Yen)             JPY".colorize(:blue)
      puts "5)  Britain         (Pound)           GBP\n\n".colorize(:blue)
      puts "===============================================================================".colorize(:red)


      code = ['INR','USD','EUR','JPY','GBP']

      begin
      currencyCode = gets.chomp.upcase
      raise "your enter a invalid input "  unless code.include?(currencyCode)
      rescue
        puts "Enter the correct Currency Code of your Money"
        retry
      end


      begin
        puts "===============================================================================".colorize(:red)
      puts "\nEnter Amoutn to CONVERT \n\n".colorize(:red)
      amount = Float(gets)
      rescue
        puts "Please Enter current amount"
        retry
      end
      puts "===============================================================================".colorize(:red)


    # current_curr = gets.chomp.upcase
    puts "===============================================================================".colorize(:green)
      puts "\nSelect target currency CODE to convert your Money\n".colorize(:green)
      puts "    COUNTRY         CURRENCY      CURRENCY-CODE\n".colorize(:green)
      puts "1)  Indian          (Rupees)          INR ".colorize(:green)
      puts "2)  United State    (Dollar)          USD ".colorize(:green)
      puts "3)  Europe          (Euro)            Eur".colorize(:green)
      puts "4)  Japnees         (Yen)             JPY".colorize(:green)
      puts "5)  Britain         (Pound)           GBP\n\n".colorize(:green)
      puts "===============================================================================".colorize(:green)


      begin
      changeCurrencyCode = gets.chomp.upcase
        raise "Your entered wrong cuntry code" unless code.include?(changeCurrencyCode)
    rescue
      puts "Please Enter valid input"
      retry
    end
    call = Exchange.new
    call.valueConveter(amount,currencyCode,changeCurrencyCode)
  end
end


ex = Exchange.new
ex.displayMenu

