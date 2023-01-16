defmodule SumRPGAbilityPointsTest do
    require SumRPGAbilityPoints
    use ExUnit.Case

    test "Max score" do
        abilities = %{Strength: 18,
                      Intelligence: 18,
                      Dexterity: 18,
                      Wisdom: 18,
                      Constitution: 18,
                      Charisma: 18}
        assert SumRPGAbilityPoints.sum_points(abilities) == 108
    end
    test "Min score" do
        abilities = %{Strength: 1,
                      Intelligence: 1,
                      Dexterity: 1,
                      Wisdom: 1,
                      Constitution: 1,
                      Charisma: 1}
        assert SumRPGAbilityPoints.sum_points(abilities) == 6
    end
    test "Zero score" do
        abilities = %{Strength: 0,
                      Intelligence: 0,
                      Dexterity: 0,
                      Wisdom: 0,
                      Constitution: 0,
                      Charisma: 0}
        assert SumRPGAbilityPoints.sum_points(abilities) == 0
    end
    test "Realistic score" do
        abilities = %{Strength: 9,
                      Intelligence: 15,
                      Dexterity: 8,
                      Wisdom: 10,
                      Constitution: 8,
                      Charisma: 3}
        assert SumRPGAbilityPoints.sum_points(abilities) == 53
    end
    test "Malformed struct" do
        abilities = %{Strength: 9,
                      Dexterity: 8,
                      Wisdom: 10,
                      Constitution: 8,
                      Charisma: 3}
        assert_raise ArgumentError, "SumRPGAbilityPoints map must be properly constructed", fn ->
            SumRPGAbilityPoints.sum_points(abilities)
        end
    end
end


