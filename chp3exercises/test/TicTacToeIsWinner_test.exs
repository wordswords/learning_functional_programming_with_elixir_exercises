defmodule TicTacToeIsWinnerTest do
    require TicTacToeIsWinner
    use ExUnit.Case

    test "Top row x win" do
        board = [:x,:x,:x,
                  :o,:o,:x,
                  :x,:x,:o ]
        assert TicTacToeIsWinner.check_winner(board) == :x
    end
    test "Top row o win" do
        board = [:o,:o,:o,
                  :o,:o,:x,
                  :x,:x,:o ]
        assert TicTacToeIsWinner.check_winner(board) == :o
    end
    test "Diag o win" do
        board = [:o,:x,:x,
                  :o,:o,:x,
                  :x,:x,:o ]
        assert TicTacToeIsWinner.check_winner(board) == :o
    end
    test "Draw" do
        board = [:o,:x,:o,
                  :o,:x,:x,
                  :x,:o,:o ]
        assert TicTacToeIsWinner.check_winner(board) == :no_winner
    end
end
