defmodule TicTacToeIsWinnerTest do
    require TicTacToeIsWinner
    use ExUnit.Case

    test "Top row x win" do
        board = [":x",":x",":x",
                  ":o",":o",":x",
                  ":x",":x",":o"]
        IO.Inspect TicTacToeIsWinner.check_winner(board)
    end
end
