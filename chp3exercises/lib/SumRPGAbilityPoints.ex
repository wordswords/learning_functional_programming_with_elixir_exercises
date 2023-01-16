defmodule SumRPGAbilityPoints do
    
    def sum_points(value) do
        if map_has_keys?(value, [:Strength, :Intelligence, :Dexterity, :Wisdom, :Constitution, :Charisma]) do
           Enum.reduce(value, 0, fn {_, v}, acc -> acc + v end)
        else
           raise ArgumentError, "SumRPGAbilityPoints map must be properly constructed"
        end
    end

    defp map_has_keys?(map, keys) do
        Enum.all?(keys, fn(key) -> Map.has_key?(map, key) end)
    end

end

