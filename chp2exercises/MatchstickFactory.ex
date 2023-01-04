defmodule MatchstickFactory do

    def boxes(sticks) do

        big_box_holds = 50
        medium_box_holds = 20
        small_box_holds = 5

        big_box_count = div(sticks, big_box_holds)
        sticks = rem(sticks, big_box_holds)

        medium_box_count = div(sticks, medium_box_holds)
        sticks = rem(sticks, medium_box_holds)

        small_box_count = div(sticks, small_box_holds)
        sticks = rem(sticks, small_box_holds)

        IO.puts("big: #{big_box_count}, medium: #{medium_box_count}, remaining_matchsticks: #{sticks}, small: #{small_box_count}")
    end
end

MatchstickFactory.boxes(98)
MatchstickFactory.boxes(39)

