defmodule Emporium.CommonPlugs do
  import Plug.Conn, only: [get_req_header: 2, put_resp_header: 3, halt: 1, put_status: 2]
  import Phoenix.Controller, only: [json: 2]

  def return_error(conn, status, message) do
    conn |> put_status(status) |> json(%{error: message}) |> halt
  end
end