require 'money'
module Curconv
  I18n.config.available_locales = :en

  RATES = {
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


def valueConveter(amount,currencyCode,changeCurrencyCode)
  RATES.each do
    |currcodehave,currencycodetarget|

    currencycodetarget.each do
      |finalcurr,ratevalue|

      Money.add_rate(currcodehave,finalcurr,ratevalue)
    end
  end


  peesa = Money.from_amount(amount, currencyCode)
        rs = peesa.exchange_to(changeCurrencyCode)
        puts "Conveterd Currency is -->  #{rs.format}"

      end
    end
