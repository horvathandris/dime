import dime.{type Currency}
import gleam/dynamic.{field, int, list, string}
import gleam/io
import gleam/json
import gleam/list
import gleam/result
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
  |> list.each(test_from_alpha_code)

  test_currencies
  |> list.each(test_from_numeric_code)
}

fn test_from_alpha_code(test_currency: TestCurrency) {
  dime.from_alpha_code(test_currency.alpha_code)
  |> result.map_error(fn(error) {
    io.println("Failed to parse \"" <> test_currency.alpha_code <> "\"")
    error
  })
  |> should.be_ok
  |> common_assertions(test_currency)
}

fn test_from_numeric_code(test_currency: TestCurrency) {
  dime.from_numeric_code(test_currency.numeric_code)
  |> result.map_error(fn(error) {
    io.println("Failed to parse \"" <> test_currency.numeric_code <> "\"")
    error
  })
  |> should.be_ok
  |> common_assertions(test_currency)
}

fn common_assertions(actual: Currency, expected: TestCurrency) {
  actual
  |> dime.alpha_code
  |> should.equal(expected.alpha_code)

  actual
  |> dime.numeric_code
  |> should.equal(expected.numeric_code)
}
