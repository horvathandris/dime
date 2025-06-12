import dime
import glance.{Call, Constant, Definition, Module, Public, Variable}
import gleam/list
import gleam/string
import gleeunit
import gleeunit/should
import simplifile

pub fn main() {
  gleeunit.main()
}

pub fn each_known_currency_is_parsable__test() {
  use currency <- list.each(dime.known_currencies())

  currency
  |> dime.alpha_code
  |> dime.from_alpha_code
  |> should.be_ok

  currency
  |> dime.numeric_code
  |> dime.from_numeric_code
  |> should.be_ok
}

pub fn static_integrity_checks__test() {
  let assert Ok(contents) = simplifile.read("src/dime.gleam")

  let assert Ok(Module(_, _, _, const_definitions, _)) = glance.module(contents)

  const_definitions
  |> list.filter_map(fn(definition) {
    let Definition(_, Constant(_, name, visibility, _, expression)) = definition
    case visibility, expression {
      Public, Call(_, Variable(_, "Currency"), _) -> Ok(name)
      _, _ -> Error(Nil)
    }
  })
  |> list.each(fn(const_name) {
    assert_defined_const_has_alpha_code_as_name(const_name)
    assert_defined_const_is_in_known_currencies(const_name)
  })
}

fn assert_defined_const_has_alpha_code_as_name(const_name: String) {
  const_name
  |> dime.from_alpha_code
  |> should.be_ok
  |> dime.alpha_code
  |> string.lowercase
  |> should.equal(const_name)
}

fn assert_defined_const_is_in_known_currencies(const_name: String) {
  dime.known_currencies()
  |> list.find(fn(currency) {
    const_name
    == currency
    |> dime.alpha_code
    |> string.lowercase
  })
  |> should.be_ok
}
