defmodule Elxframe do
  # called when server is started
  def init(default_opts) do
    IO.puts "starting up ElxFrame..."
    default_opts
  end

  #called everytime a request comes in
  # _opts the output of init(does not change from request to request) 
  def call(conn, _opts) do
    IO.puts "ping ping!"
    # send_resp and any Conn functions returns a mutated copy of the conn
    conn 
      |> Plug.Conn.put_resp_header("server", "plug") 
      |> Plug.Conn.send_resp(200, "Hellow!!")
  end
end
