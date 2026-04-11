# Prompt-Archäologie: 5-Stufen-Protokoll

> Konzept: LG, 11.04.2026
> Zweck: Vollständige Dokumentation aller Prompts als methodischer Beitrag zur KI-gestützten Forschung

---

## Prinzip

Jede Eingabe des Menschen zählt als Prompt — auch Nachfragen, Korrekturen, einzelne Wörter ("weiter", "ja"). Der Prompt ist das primäre Steuerungsinstrument in der Mensch-KI-Forschung. Seine Dokumentation ist genauso wichtig wie die Dokumentation der Ergebnisse.

---

## Die 5 Aggregationsstufen

### Stufe 0: `prompt-protocol.md` — Rohdaten
Alle Prompts, chronologisch, ungefiltert. Jeder User-Input und jeder LLM-to-Agent-Prompt.

Felder:
- Timestamp
- Absender (Human / Claude / Copilot / Gemini)
- Empfänger (Claude / Sub-Agent / Gemini / Copilot)
- Wortlaut (exakt oder rekonstruiert, mit Konfidenz)
- Session-ID

### Stufe 1: `filtered-prompt-protocol.md` — Themenfilter
Nur Prompts die das Regress-Melder-Projekt betreffen. Alles andere (Website-Technik, Mail-Versand, andere Projekte) wird entfernt.

### Stufe 2: `categorized-prompt-protocol.md` — Klassifikation
Jeder Prompt wird kategorisiert nach:

| Feld | Beschreibung | Beispielwerte |
|------|-------------|---------------|
| **Typ** | Funktionale Kategorie | Startprompt / Nachfrage / Korrektur / Bestätigung / Richtungsänderung |
| **Zweck** | Was soll erreicht werden? | Analyse starten / Prüfung einleiten / Hypothese testen / Fehler korrigieren |
| **Absicht** | Strategische Intention | Erkenntnisgewinn / Qualitätssicherung / Nachsteuerung / Richtungswechsel |
| **Methodenauslösung** | Welche Methode wurde dadurch ausgelöst? | WebSearch / Multi-Agent / Review / Cross-Model / Prior-Art-Check |
| **Folge** | Unmittelbare Konsequenz | Recherche gestartet / Hypothese revidiert / CORE erstellt / Dokument editiert |
| **Ergebnis** | Finales Ergebnis der Kette | CORE3 etabliert / Bayern-Daten gefunden / Einwand 5 formuliert |

**Prompt-Typen im Detail:**

| Typ | Beschreibung | Beispiel |
|-----|-------------|---------|
| **Startprompt** | Initiiert eine neue Analyse oder Phase | "Ich dachte das Richtgrößenverfahren wurde abgeschafft?" |
| **Nachfrage-Thema** | Vertieft ein Thema | "Die ein Prozent sind auch zufällig oder?" |
| **Nachfrage-Methode** | Löst methodischen Schritt aus | "recherchiere du mal noch selbst ob diese Dinge wirklich nicht bekannt sind" |
| **Nachfrage-Steuerung** | Lenkt die Richtung | "warte noch wir müssen das ja auch verteilen" |
| **Korrektur** | Berichtigt einen Fehler | "pass auf das du es nicht vermischst" (§29 BMV-Ä) |
| **Bestätigung** | Validiert einen Zwischenstand | "sehr gut" / "ja weiter" |
| **Richtungsänderung** | Fundamentaler Kurswechsel | "was bleibt dann noch von unserer Studie" |
| **Meta-Prompt** | Prompt über den Prozess | "sind die methoden spezifischen rechercheaufträge festgehalten?" |

### Stufe 3: `aggregated-prompt-protocol.md` — Verdichtung pro Analyse
Zusammenfassung pro Analyseeinheit:

```
## Analyse: CORE3 (V1-Schutzstufenmodell)
- Startprompt: "Ich dachte das Richtgrößenverfahren wurde abgeschafft?"
- Nachfragen: 4 (2× Thema, 1× Korrektur, 1× Steuerung)
- Methodenauslösungen: WebSearch → V1-Ablauf, V2-Unterkategorien, §29 BMV-Ä
- Richtungsänderung: "Ja gut wir müssen das differenzierter darstellen"
- Ergebnis: CORE3.md erstellt, 5 Dokumente korrigiert
```

### Stufe 4: `statistical-prompt-aggregation.md` — Kennzahlen

Quantitative Auswertung:
- Nachfragen pro Analyse (Median, Verteilung)
- Anteil Startprompts vs. Nachfragen vs. Korrekturen
- Durchschnittliche Prompt-Kette bis zum Ergebnis
- Anteil Human-Korrekturen die zu Hypothesenrevisionen führten
- Verhältnis Bestätigungen zu Korrekturen (Zustimmungs-Bias-Indikator)
- Häufigste Methodenauslösungen pro Prompt-Typ

---

## Quellen für die Rekonstruktion

1. **JSONL Session-Logs** (10 Dateien, ~90 MB) — exakte Wortlaute
2. **Session-Berichte** (9 relevante) — Zusammenfassungen mit Kontext
3. **METHODIK_RECHERCHE_PROTOKOLL.md** — Suchstrategien pro Forschungsfrage
4. **WALK_OF_ANALYSIS_EXTENDED.md** — Phasen-Dokumentation
5. **Conversation Summaries** — komprimierte Gesprächsverläufe
6. **Haiku-Schwarm-Extraktion** — Prompt-Kerne aus Recherche-Dateien

## Bekannte Lücken

- Copilot/Gemini-Prompts wurden von LG manuell eingegeben → nicht in Claude-Logs
- Frühe Sessions (vor 08.04.) haben möglicherweise keine JSONL-Logs mehr
- Haiku-Schwarm-Extraktion erfasst Ergebnisse, nicht Input-Prompts
- Mündliche Überlegungen von LG zwischen Sessions sind nicht dokumentiert

---

*Konzept: LG, 11.04.2026 | Implementierung: CL*
