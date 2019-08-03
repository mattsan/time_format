defmodule TimeFormatTest do
  use ExUnit.Case

  setup do
    %{datetime: Timex.to_datetime(~N[2019-08-01 01:23:45.6], "Asia/Tokyo")}
  end

  @expected [
    "2019",
    "19",
    "20",
    "2019",
    "19",
    "8",
    "08",
    "August",
    "Aug",
    "1",
    "01",
    "213",
    "31",
    "30",
    "30",
    "4",
    "4",
    "Thu",
    "Thursday",
    "01",
    "1",
    "01",
    "23",
    "45",
    "1564590225",
    ".6",
    "am",
    "AM",
    "Asia/Tokyo",
    "JST",
    "+0900",
    "+09:00",
    "+09:00:00",
    "2019-08-01T01:23:45.6+09:00",
    "2019-07-31T16:23:45.6Z",
    "20190801T012345.6+0900",
    "20190731T162345.6Z",
    "2019-08-01",
    "01:23:45.6",
    "2019-W31",
    "2019-W31-4",
    "2019-213",
    "Thu, 01 Aug 19 01:23:45 +0900",
    "Wed, 31 Jul 19 16:23:45 Z",
    "Thu, 01 Aug 2019 01:23:45 +0900",
    "Wed, 31 Jul 2019 16:23:45 Z",
    "2019-08-01T01:23:45.6+09:00",
    "2019-07-31T16:23:45.6Z",
    "Thu Aug  1 01:23:45 2019",
    "Thu Aug  1 01:23:45 JST 2019",
    "190731162345Z",
    "20190801012345",
    "20190731162345Z",
    "20190801012345+0900",
    "1:23AM"
  ]

  TimeFormat.directives()
  |> Enum.zip(@expected)
  |> Enum.each(fn {d, exp} ->
    @tag directive: d, expected: exp
    test d, %{datetime: datetime, directive: directive, expected: expected} do
      assert Timex.format(datetime, "{#{directive}}") == {:ok, expected}
    end
  end)
end
