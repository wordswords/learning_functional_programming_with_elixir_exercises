
defmodule Bob do

    def main do
        total_distance_km = 200
        total_time_hours = 4
        average_velocity_kmperhr = total_distance_km / total_time_hours

        IO.inspect "Bob's total distance in KM #{total_distance_km}"
        IO.inspect "Bob's total time in hours #{total_time_hours}"
        IO.inspect "Bob's average velocity in KM/hour #{average_velocity_kmperhr}"
    end

end

Bob.main()

