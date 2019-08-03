defmodule TimeFormat do
  @moduledoc """
  Documentation for TimeFormat.
  """

  @directives ~w(
    YYYY
    YY
    C
    WYYYY
    WYY
    M
    0M
    Mfull
    Mshort
    D
    0D
    Dord
    Wiso
    Wmon
    Wsun
    WDmon
    WDsun
    WDshort
    WDfull
    h24
    h12
    0h12
    m
    s
    s-epoch
    ss
    am
    AM
    Zname
    Zabbr
    Z
    Z:
    Z::
    ISO:Extended
    ISO:Extended:Z
    ISO:Basic
    ISO:Basic:Z
    ISOdate
    ISOtime
    ISOweek
    ISOweek-day
    ISOord
    RFC822
    RFC822z
    RFC1123
    RFC1123z
    RFC3339
    RFC3339z
    ANSIC
    UNIX
    ASN1:UTCtime
    ASN1:GeneralizedTime
    ASN1:GeneralizedTime:Z
    ASN1:GeneralizedTime:TZ
    kitchen
  )

  def directives, do: @directives

  def format_all(%DateTime{} = datetime) do
    @directives
    |> Enum.each(fn directive ->
      {:ok, formatted} = Timex.format(datetime, "{#{directive}}")
      directive |> String.pad_leading(25) |> IO.write()
      IO.write(" ")
      formatted |> IO.puts()
    end)
  end

  def lformat_all(%DateTime{} = datetime, locale) do
    @directives
    |> Enum.each(fn directive ->
      {:ok, formatted} = Timex.lformat(datetime, "{#{directive}}", locale)
      directive |> String.pad_leading(25) |> IO.write()
      IO.write(" ")
      formatted |> IO.puts()
    end)
  end
end
