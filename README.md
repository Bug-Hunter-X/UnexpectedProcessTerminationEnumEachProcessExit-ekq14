# Elixir Enum.each and Process.exit Bug

This repository demonstrates an uncommon bug in Elixir related to the unexpected termination of a process when using `Enum.each` along with `Process.exit` within the enumeration function. The `Process.exit` call unexpectedly halts the loop, instead of gracefully letting it continue.

## Bug Description
The provided Elixir code uses `Enum.each` to iterate through a list.  However, an `if` condition triggers `Process.exit(self(), :normal)`, causing the current process to exit prematurely, potentially before the loop finishes processing all elements.

## Solution
The solution demonstrates how to handle such situations appropriately, ensuring the loop completes even if exceptions occur within the enumeration function.