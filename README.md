# dime :coin:

[![Package Version](https://img.shields.io/hexpm/v/dime)](https://hex.pm/packages/dime)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/dime/)

A currency library based on the [ISO-4217 standard](https://en.wikipedia.org/wiki/ISO_4217) for Gleam.

```sh
gleam add dime@1
```

```gleam
import dime

pub fn main() {
  let gbp = dime.from_alpha_code("Gbp")

  gbp
  |> dime.display_name // "Pound Sterling"

  gbp
  |> dime.symbol // "£"

  gbp
  |> dime.numeric_code // "826"
}
```

Further documentation can be found at <https://hexdocs.pm/dime>.

## Development

```sh
gleam test  # Run the tests
```

## Roadmap

- [ ] localisation?
