defmodule MySet do
    defstruct items: []

    def push(set = %{items: items}, item) do
        if Enum.member?(items, item) do
            set
        else
            %{set | items: [item | items]}
        end
    end
end

defmodule Main do
    def main do
        StringList
        #IO.inspect StringList.upcase(["dogs", "hot dogs", "bananas"])
        #set = %MySet{}
#        set = MySet.push(set, "apple")
#
#        new_set = %MySet{}
#        new_set = MySet.push(new_set, "pie")
#
#        IO.inspect MySet.push(set, "apple")
#        IO.inspect MySet.push(new_set, "apple")
    end
end

defmodule StringList do
    list = ["dogs", "hot dogs", "bananas"]
    IO.inspect Enum.map(list, &String.upcase/1)
end


Main.main


