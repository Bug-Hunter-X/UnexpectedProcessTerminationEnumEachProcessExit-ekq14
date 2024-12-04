```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:exit_condition)
    end
    IO.puts(x)
  end)
catch
  :exit_condition -> IO.puts("Process exiting gracefully")
end
```