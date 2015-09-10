# Change Log
All notable changes to this project will be documented in this file. This file
follows the formatting recommendations from [Keep a
CHANGELOG](http://keepachangelog.com/). This project adheres to [Semantic
Versioning](http://semver.org/).

[Unreleased][unreleased]
### Removed
- `smallcheck` specific modules from
  [`smallcheck-lens-0.1`](https://hackage.haskell.org/package/smallcheck-lens-0.1).
  This package now contains `Tasty` specific modules.

### Changed
- Simplify module hierarchy: `Test.Tasty.SmallCheck.Lens` -> `Test.Tasty.Lens`

## [0.1] - 2015-05-27
### Added
- `SmallCheck` properties for each lens laws.
- `tasty` test trees for each `Lens` type.
- Tests for some `Lens`.

[0.1]: https://github.com/jdnavarro/smallcheck-series/compare/1df060..v0.1
