
class Hello

  def myhash
    def initialize (@valuestring)

    hashContainer={ first: "one",
                    sedond: "two",
                    third: "third",
                    fourth: "fourth",
                    fifth: "five",
                    sixth: "six",
                    seventh: "seven",
                    eighth: "eight",
                    nine: "nine",
                    ten: "ten"}

                    # Iterating this hash
      firstarr = Array.new

      puts "Iterating the hash and its value\n"

      hashContainer.each do
                      |key ,value|
                      firstarr.push(value)    # poush method is used to insert value in an array
                      puts "#{key} --> #{value}"
                    end

      puts "Iterating the Array which holds the value of my hash value"
      # x = ["Blue", "Red", "Green", "Yellow", "White"]
      # for i in x do
      #   puts i
      # end
      for i in firstarr
        puts i
      end


  end


end

 obj = Hello.new
 java = Hello.new("Google")
 obj.myhash


