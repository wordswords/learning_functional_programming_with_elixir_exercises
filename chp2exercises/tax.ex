defmodule ApplyTax do
    def main do
        apply_tax = fn price -> IO.inspect "Price #{price * 1.12} - Tax: #{price * 0.12}" end
        Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
    end
end

ApplyTax.main()


