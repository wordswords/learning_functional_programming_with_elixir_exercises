defmodule Sarah do

    def main do
        IO.inspect "Sarah has bought ten slices of bread for ten cents each, three bottles of milk for two dollars each, and a cake for fifteen dollars. How many dollars has Sarah spent?"
        bread = 0.10
        milk = 2
        cake = 15

        IO.inspect "Sarah has spent: #{(bread * 10) + (milk * 3) + cake}"
    end
    
end

Sarah.main()

