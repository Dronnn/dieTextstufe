#!/usr/bin/env python3
"""Validate the String Catalog: equal key sets, no empty values, stable placeholders."""
import json
import re
import sys
from pathlib import Path

root = Path(__file__).resolve().parents[1]
catalog_path = root / "Textstufe" / "Resources" / "Localizable.xcstrings"
catalog = json.loads(catalog_path.read_text())

source = catalog["sourceLanguage"]
strings = {key: entry for key, entry in catalog["strings"].items() if key}
languages = sorted({lang for entry in strings.values() for lang in entry.get("localizations", {})})
expected = set(languages)
placeholder = re.compile(r"%(?:\d+\$)?[@dsf]")

problems = []
for key, entry in strings.items():
    localizations = entry.get("localizations", {})
    present = set(localizations)
    if present != expected:
        problems.append(f"{key}: languages {sorted(expected - present)} missing")
    for lang, unit in localizations.items():
        value = unit.get("stringUnit", {}).get("value", "")
        if not value.strip():
            problems.append(f"{key}/{lang}: empty value")
    base = placeholder.findall(localizations[source]["stringUnit"]["value"])
    for lang, unit in localizations.items():
        if placeholder.findall(unit["stringUnit"]["value"]) != base:
            problems.append(f"{key}/{lang}: placeholder mismatch")

if problems:
    print("\n".join(problems))
    sys.exit(1)

print(f"{len(strings)} keys × {len(languages)} languages OK: {', '.join(languages)}")
