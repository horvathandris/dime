import dime
import gleam/list
import gleam/regex
import gleam/string
import gleeunit
import gleeunit/should
import simplifile

pub fn main() {
  gleeunit.main()
}

pub fn each_known_currency_is_parsable__test() {
  use currency <- list.each(dime.known_currencies)

  currency
  |> dime.alpha_code
  |> dime.from_alpha_code
  |> should.be_ok

  currency
  |> dime.numeric_code
  |> dime.from_numeric_code
  |> should.be_ok
}

pub fn static_code_checks__test() {
  let assert Ok(contents) = simplifile.read("src/dime.gleam")

  let assert Ok(re) = regex.from_string("pub const ([a-z]{3}) = Currency\\(")

  use match <- list.each(regex.scan(re, contents))

  let const_name =
    match.submatches
    |> list.first
    |> should.be_ok
    |> should.be_some

  defined_const_has_alpha_code_as_name__test(const_name)
  defined_const_is_in_known_currencies__test(const_name)
}

fn defined_const_has_alpha_code_as_name__test(const_name: String) {
  const_name
  |> dime.from_alpha_code
  |> should.be_ok
  |> dime.alpha_code
  |> string.lowercase
  |> should.equal(const_name)
}

fn defined_const_is_in_known_currencies__test(const_name: String) {
  dime.known_currencies
  |> list.find(fn(currency) {
    const_name
    == currency
    |> dime.alpha_code
    |> string.lowercase
  })
  |> should.be_ok
}
