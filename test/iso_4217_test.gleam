import dime.{type Currency}
import gleam/dynamic/decode
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

fn test_currency_decoder() {
  use country <- decode.field("country", decode.string)
  use display_name <- decode.field("display_name", decode.string)
  use alpha_code <- decode.field("alpha_code", decode.string)
  use numeric_code <- decode.field("numeric_code", decode.string)
  use minor_units <- decode.field("minor_units", decode.int)
  TestCurrency(
    country:,
    display_name:,
    alpha_code:,
    numeric_code:,
    minor_units:,
  )
  |> decode.success
}

pub fn iso_4217__test() {
  let assert Ok(data) = simplifile.read("test/data/currencies.json")

  let assert Ok(test_currencies) =
    json.parse(from: data, using: decode.list(test_currency_decoder()))

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

  actual
  |> dime.minor_units
  |> should.equal(expected.minor_units)
}
