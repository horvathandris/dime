import dime.{InvalidFormat, UnrecognizedCode}
import gleeunit/should

pub fn parse_from_alpha_success__test() {
  let assert Ok(cad) = dime.from_alpha_code("Cad")

  cad
  |> should.equal(dime.cad)
}

pub fn parse_from_alpha_fail__test() {
  dime.from_alpha_code("x")
  |> should.equal(Error(InvalidFormat))

  dime.from_alpha_code("xxx")
  |> should.equal(Error(UnrecognizedCode))
}

pub fn parse_from_numeric_success__test() {
  let assert Ok(aed) = dime.from_numeric_code("784")

  aed
  |> should.equal(dime.aed)
}

pub fn parse_from_numeric_fail__test() {
  dime.from_numeric_code("0")
  |> should.equal(Error(InvalidFormat))

  dime.from_numeric_code("000")
  |> should.equal(Error(UnrecognizedCode))
}
