import dime
import gleam/dynamic.{field, int, list, string}
import gleam/io
import gleam/json
import gleam/list
import gleeunit/should
import simplifile

type TestCurrency {
  TestCurrency(
    country: String,
    display_name: String,
    alpha_code: String,
    numeric_code: String,
    minor_units: Int,
  )
}

pub fn iso_4217__test() {
  let assert Ok(data) = simplifile.read("test/data/currencies.json")

  let test_currency_decoder =
    dynamic.decode5(
      TestCurrency,
      field("country", of: string),
      field("display_name", of: string),
      field("alpha_code", of: string),
      field("numeric_code", of: string),
      field("minor_units", of: int),
    )
    |> list

  let assert Ok(test_currencies) =
    json.decode(from: data, using: test_currency_decoder)

  test_currencies
  |> list.each(fn(test_currency) {
    io.print(test_currency.alpha_code)
    let curr =
      dime.from_alpha_code(test_currency.alpha_code)
      |> should.be_ok

    curr
    |> dime.alpha_code
    |> should.equal(test_currency.alpha_code)

    curr
    |> dime.numeric_code
    |> should.equal(test_currency.numeric_code)

    io.println(" ok")
  })
}
