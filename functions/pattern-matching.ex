handle_request = fn
  {:ok, result} -> IO.puts "Handling results..."
  {:ok, _} -> IO.puts "This will not run"
  {:error} -> IO.puts "An erorr has occurred"
end

some_result = 1
IO.puts handle_request.({:ok, some_result})
IO.puts handle_request.({:error})
