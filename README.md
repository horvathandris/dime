# dime :coin:

[![Package Version](https://img.shields.io/hexpm/v/dime)](https://hex.pm/packages/dime)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/dime/)

A currency library based on the [ISO-4217 standard](https://en.wikipedia.org/wiki/ISO_4217) for Gleam.

```sh
gleam add dime@1
```

## Usage

```gleam
import dime

pub fn main() {
  // parse alpha-3 code
  let gbp = dime.from_alpha_code("Gbp")

  // parse numeric code
  let huf = dime.from_numeric_code("348")

  // use exported constants
  let pln = dime.pln

  gbp
  |> dime.display_name // "Pound Sterling"

  gbp
  |> dime.symbol // "£"

  huf
  |> dime.minor_units // 2

  huf
  |> dime.alpha_code // "HUF"

  pln
  |> dime.numeric_code // "985"
}
```

Further documentation can be found at <https://hexdocs.pm/dime>.

## Development

### Updating the ISO-4217 dataset

To update the [dataset](test/data/currencies.json) that is used to [test the ISO-4217 compliance](test/iso_4217_test.gleam#L32) of the library,
first run the script below.

```sh
./scripts/extract_data.sh
```

It downloads the latest currency dataset from the website of the standard's maintainer
and converts it to a JSON file at `test/data/currencies.json`.

Then, to validate the compliance of the library, run the test suite for all targets and runtimes.

```sh
./scripts/matrix-test.sh
```

## Roadmap

- [ ] localisation?
