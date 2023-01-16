defmodule TicTacToeIsWinner do

    defp mark_seq(side, sequence) when side == :x do 
            if sequence == 3 do
                throw(:x_winner)
            else
                :no_return
            end
    end

    defp mark_seq(side, sequence) when side == :o do 
            if sequence == 3 do
                throw(:o_winner)
            else
                :no_return
            end
    end

    defp count_seq(seq, side) do
        Enum.reduce(seq, 0, fn x, acc -> if x == side do acc + 1 else acc end end)
    end

    defp process_seq(board, side, line) when line == 'row' do
        all_rows = Enum.chunk_every(board, 3)
        _ = Enum.each(all_rows, fn row -> 
            mark_seq(side, (count_seq(row, side)))
        end)
        :no_return
    end

    defp process_seq(board, side, line) when line == 'col' do
        all_rows = Enum.chunk_every(board, 3)
        all_cols = Enum.zip_with(all_rows, & &1)
        _ = Enum.each(all_cols, fn col -> 
            _ = mark_seq(side, count_seq(col, side))
        end)
        :no_return
    end

    defp process_seq(board, side, line) when line == 'dig' do

        all_rows = Enum.chunk_every(board, 3)
        diagtopdown = for {row, idx} <- Enum.with_index(all_rows),
                {col, ^idx} <- Enum.with_index(row), do: col 
        diagdowntop = for {row, idx} <- Enum.with_index(all_rows),
                {col, ^idx} <- Enum.with_index(Enum.reverse(row)), do: col 
        digs = [diagtopdown, diagdowntop]

        _ = Enum.each(digs, fn dig ->
            _ = mark_seq(side, count_seq(dig, side))
        end)
        :no_return
    end

    defp check_side_winner(board, side) do
        _ = Enum.each(['row','col','dig'], fn line ->
            _ = process_seq(board, side, line)
        end)
        :no_return
    end

    def check_winner(board) do
        try do
            _ = check_side_winner(board, :x)
            _ = check_side_winner(board, :o)
            :no_winner
        catch 
            :x_winner -> :x
            :o_winner -> :o
        end
    end


end
