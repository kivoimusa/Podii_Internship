defmodule Blogger do
  use HTTPoison.Base

  @blog_url "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"

  def fetch_blog do
    case get(@blog_url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        body
      {:ok, %HTTPoison.Response{status_code: status_code}} ->
        raise "Unexpected status code: #{status_code}"
      {:error, reason} ->
        raise "Failed to fetch blog: #{inspect reason}"
    end
  end
end
