handle_request = fn
  {:ok, result} -> IO.puts "Handling results..."
  {:ok, _} -> IO.puts "This will not run"
  {:error} -> IO.puts "An erorr has occurred"
end

