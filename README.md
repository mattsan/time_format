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

## Format

| format string             | example of `format`                | example of `lformat`
|---|---|---|
| `YYYY`                    | `2019`                             | `2019`                             |
| `YY`                      | `19`                               | `19`                               |
| `C`                       | `20`                               | `20`                               |
| `WYYYY`                   | `2019`                             | `2019`                             |
| `WYY`                     | `19`                               | `19`                               |
| `M`                       | `8`                                | `8`                                |
| `0M`                      | `08`                               | `08`                               |
| `Mfull`                   | `August`                           | `8月`                              |
| `Mshort`                  | `Aug`                              | `8月`                              |
| `D`                       | `9`                                | `9`                                |
| `0D`                      | `09`                               | `09`                               |
| `Dord`                    | `221`                              | `221`                              |
| `Wiso`                    | `32`                               | `32`                               |
| `Wmon`                    | `31`                               | `31`                               |
| `Wsun`                    | `31`                               | `31`                               |
| `WDmon`                   | `5`                                | `5`                                |
| `WDsun`                   | `5`                                | `5`                                |
| `WDshort`                 | `Fri`                              | `金`                               |
| `WDfull`                  | `Friday`                           | `金曜日`                           |
| `h24`                     | `01`                               | `01`                               |
| `h12`                     | `1`                                | `1`                                |
| `0h12`                    | `01`                               | `01`                               |
| `m`                       | `02`                               | `02`                               |
| `s`                       | `03`                               | `03`                               |
| `s-epoch`                 | `1565280123`                       | `1565280123`                       |
| `ss`                      | `.456789`                          | `.456789`                          |
| `am`                      | `am`                               | `午前`                             |
| `AM`                      | `AM`                               | `午前`                             |
| `Zname`                   | `Asia/Tokyo`                       | `Asia/Tokyo`                       |
| `Zabbr`                   | `JST`                              | `JST`                              |
| `Z`                       | `+0900`                            | `+0900`                            |
| `Z:`                      | `+09:00`                           | `+09:00`                           |
| `Z::`                     | `+09:00:00`                        | `+09:00:00`                        |
| `ISO:Extended`            | `2019-08-09T01:02:03.456789+09:00` | `2019-08-09T01:02:03.456789+09:00` |
| `ISO:Extended:Z`          | `2019-08-08T16:02:03.456789Z`      | `2019-08-08T16:02:03.456789Z`      |
| `ISO:Basic`               | `20190809T010203.456789+0900`      | `20190809T010203.456789+0900`      |
| `ISO:Basic:Z`             | `20190808T160203.456789Z`          | `20190808T160203.456789Z`          |
| `ISOdate`                 | `2019-08-09`                       | `2019-08-09`                       |
| `ISOtime`                 | `01:02:03.456789`                  | `01:02:03.456789`                  |
| `ISOweek`                 | `2019-W32`                         | `2019-W32`                         |
| `ISOweek-day`             | `2019-W32-5`                       | `2019-W32-5`                       |
| `ISOord`                  | `2019-221`                         | `2019-221`                         |
| `RFC822`                  | `Fri, 09 Aug 19 01:02:03 +0900`    | `金, 09 8月 19 01:02:03 +0900`     |
| `RFC822z`                 | `Thu, 08 Aug 19 16:02:03 Z`        | `木, 08 8月 19 16:02:03 Z`         |
| `RFC1123`                 | `Fri, 09 Aug 2019 01:02:03 +0900`  | `金, 09 8月 2019 01:02:03 +0900`   |
| `RFC1123z`                | `Thu, 08 Aug 2019 16:02:03 Z`      | `木, 08 8月 2019 16:02:03 Z`       |
| `RFC3339`                 | `2019-08-09T01:02:03.456789+09:00` | `2019-08-09T01:02:03.456789+09:00` |
| `RFC3339z`                | `2019-08-08T16:02:03.456789Z`      | `2019-08-08T16:02:03.456789Z`      |
| `ANSIC`                   | `Fri Aug  9 01:02:03 2019`         | `金 8月  9 01:02:03 2019`          |
| `UNIX`                    | `Fri Aug  9 01:02:03 JST 2019`     | `金 8月  9 01:02:03 JST 2019`      |
| `ASN1:UTCtime`            | `190808160203Z`                    | `190808160203Z`                    |
| `ASN1:GeneralizedTime`    | `20190809010203`                   | `20190809010203`                   |
| `ASN1:GeneralizedTime:Z`  | `20190808160203Z`                  | `20190808160203Z`                  |
| `ASN1:GeneralizedTime:TZ` | `20190809010203+0900`              | `20190809010203+0900`              |
| `kitchen`                 | `1:02AM`                           | `1:02午前`                         |

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

