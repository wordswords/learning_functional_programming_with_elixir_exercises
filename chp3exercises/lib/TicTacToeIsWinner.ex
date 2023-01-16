defmodule TicTacToeIsWinner do
    def check_seq(sequence) do sequence == 3 end

    def count_seq(seq, side) do
        Enum.reduce(seq, 0, fn {v}, acc -> acc + boolean_to_integer(v == side) end)
    end

    def process_seq(board, side, line) when line == 'row' do
        Enum.each(Enum.split(board, 3), fn row ->
            check_seq(count_seq(row, side))
        end)
    end

    def process_seq(board, side, line) when line == 'col' do
        all_cols = Enum.reduce(board, [], fn({value}, acc) -> [value] ++ acc end)

        Enum.each((all_cols), fn col ->
            check_seq(count_seq(col, side))
        end)
    end

    def process_seq(board, side, line) when line == 'dig' do

        digs = [ [board[0], board[4], board[8]], 
                 [board[2], board[4], board[6]] ]

        Enum.each(digs, fn dig ->
                   check_seq(count_seq(dig, side))
        end)
    end

    def check_side_winner(board, side) do
        Enum.each(['row','col','dig'], fn line ->
            process_seq(board, side, line)
        end)
    end

    def check_winner(board) do
        check_side_winner(board, ':x') 
        check_side_winner(board, ':o')
    end

    defp boolean_to_integer(true), do: 1
    defp boolean_to_integer(false), do: 0

end
