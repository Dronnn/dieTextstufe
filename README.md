# Textstufe

Offline German reading-difficulty estimator for iPhone and iPad. Paste a German text and get an approximate CEFR reading level, a ZIX-compatible understandability score, and the metrics behind them. Everything runs on device.

## Features

- Native SwiftUI app for iOS 17+, iPhone and iPad.
- On-device analysis with Apple's `NaturalLanguage` framework. No accounts, no network, no analytics.
- ZIX-compatible scoring: the features and trained coefficients of the Zurich Verständlichkeitsindex (ZIX) v0.2.5, ported to Swift.
- Constrained German lemmatization (spaCy lookup table plus suffix rules, restricted to the ZIX vocabulary) so inflected words map to reference lemmas even though Apple's German lemma tagger currently returns nothing.
- Hard guard: fewer than 50 words or fewer than 3 sentences never receives a CEFR level. `Hallo` stays unrated.
- Language check: the text must be German; anything else is rejected with an explanation.
- Uncertainty band: results close to a level boundary show the neighbouring level as well.
- Interface localized to the device language; English is the default.
- Optional consumable tips through StoreKit 2. Donations unlock nothing.

## Interface languages

English (default), German, French, Spanish, Italian, Polish, Russian, Ukrainian, Japanese, Simplified Chinese, Portuguese, Turkish. Only the interface is localized — the analyzed text is always German.

## Requirements

- macOS with Xcode 16 or newer.
- iOS 17+ simulator or device.

## Build and run

```sh
open Textstufe.xcodeproj
```

Select the `Textstufe` scheme and an iOS 17+ simulator, then run. The shared scheme uses `Configuration/Textstufe.storekit` for local purchases.

Run the core tests (macOS or Linux, no Xcode needed):

```sh
swift test
```

Check localization completeness:

```sh
python3 scripts/check_localizations.py
```

Regenerate the Xcode project after adding or removing files:

```sh
python3 scripts/generate_project.py
```

## How the score works

The scorer reproduces the published ZIX model: mean sentence length, RIX (long words per sentence), the share of lemmas covered by the Goethe A1/A2/B1 vocabularies, and a frequency-based common-word score. Those six features are standardized and passed through the published Ridge regression; the raw prediction is mapped to the -10…+10 ZIX scale and to a rough CEFR band.

On top of the calibrated model, Textstufe adds rejection rules that ZIX does not have: a minimum text length, a German-language check, an uncertainty band at level boundaries, and explanatory indicators (sentence length, long words, vocabulary coverage). Indicators never silently change the calibrated score.

The app bundles only the model coefficients and the vocabulary/word-frequency lists from the ZIX repository (MIT). No cantonal text data is included. German lemmas are resolved offline; the lookup table is generated from spaCy's German lemmatizer output and restricted to the reference vocabulary. `ß` is folded to `ss` to match the Swiss spelling of the ZIX lists. Results can therefore differ slightly from the Python implementation.

## Donations

The support screen loads six consumable products from the App Store:

- `com.mrmaier.textstufe.tip.small`
- `com.mrmaier.textstufe.tip.medium`
- `com.mrmaier.textstufe.tip.large`
- `com.mrmaier.textstufe.tip.generous`
- `com.mrmaier.textstufe.tip.patron`
- `com.mrmaier.textstufe.tip.extraordinary`

Prices come from StoreKit and are formatted for the user's storefront. Fallback prices are shown only while products cannot be loaded. Nothing is unlocked or persisted.

## Limitations

This is a pragmatic readability indication, not a certified CEFR measurement. It cannot judge the writer's proficiency and must not be used for grading, exams, admissions, or other consequential decisions. The underlying ZIX model is tuned on administrative German and its training labels are partly synthetic. Accuracy on literature, chat, dialect, or technical prose is unknown.

## License

Application source: MIT. ZIX model data and vocabularies: MIT, © Statistisches Amt Kanton Zürich. Lemma data: MIT, © Explosion. See `THIRD_PARTY_NOTICES.md`.
