# TimeFormat

Show all formatted a date/time value.

```elixir
~N[2019-08-09 01:02:03.456789]
|> Timex.to_datetime("Asia/Tokyo")
|> TimeFormat.format_all()
```

```elixir
~N[2019-08-09 01:02:03.456789]
|> Timex.to_datetime("Asia/Tokyo")
|> TimeFormat.lformat_all("ja")
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `time_format` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:time_format, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/time_format](https://hexdocs.pm/time_format).

