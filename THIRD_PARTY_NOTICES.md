# Third-party notices

## Zurich Verständlichkeitsindex (ZIX)

This app ports the scoring model and bundles reference data from:

- Project: ZIX — Zürcher Verständlichkeitsindex
- Source: https://github.com/machinelearningZH/zix_understandability-index
- Version: 0.2.5

Bundled artifacts:

- `ridge_regressor.pkl` → coefficients and intercept
- `standard_scaler.pkl` → feature means and scales
- `cefr_vocab.parq` → A1/A2/B1 lemmas
- `word_scores_final_0728.parq` → common-word frequencies

The upstream repository's README states that cantonal text data (court decisions, news bulletins) is copyrighted and is not part of the MIT license. None of that text data is included here — only the model parameters and vocabulary lists that the upstream project distributes under the MIT license.

```
MIT License

Copyright (c) 2025 Canton of Zurich / Department of Justice and Home Affairs / Office for Statistics and Data / Team Data

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
