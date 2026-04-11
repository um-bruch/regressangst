# Regressangst — Systemtheoretische Aufarbeitung der deutschen Wirtschaftlichkeitsprüfung

> **Um:bruch — Denkfabrik für gesellschaftlichen Wandel**
> Arbeitsversion v0.12, April 2026 | CC BY 4.0

## Worum geht es?

Das deutsche Wirtschaftlichkeitsprüfsystem (§§ 106 ff. SGB V) erzeugt eine Regressangst unter Vertragsärzten, deren Folgekosten die durchgesetzten Regresse nach Modellrechnung um das 100- bis 1.000-fache übersteigen könnten. Diese Studie untersucht eine auffällige Diskrepanz: Die offizielle Regressquote liegt „unter 1 %" — dennoch berichten 72 % der Hausärzte, mindestens einmal einen Regress erlebt zu haben (Ribbat et al. 2023).

**Zentraler Befund:** Die Diskrepanz ist kein Wahrnehmungsfehler der Ärzte, sondern eine **Definitionsdivergenz** — der Begriff „Regress" wird auf drei verschiedenen Schichten gemessen (Faktor ~500× zwischen engster und weitester Definition). Dieser Befund ist nach systematischem Prior-Art-Check originär.

## Dokumente

### Publikationen (in `paper/` und `pdf/`)
| Dokument | Version | Seiten | Beschreibung |
|----------|---------|--------|--------------|
| **ST-001** | v0.12 | 87 | Hauptstudie: Systemtheoretische Aufarbeitung der Regressangst |
| **ST-001 ES** | v1.0 | 13 | Executive Summary mit 15 Befunden |
| **PP-003** | v2.8 | 32 | Konzeptpapier: Regress-Transparenzportal |

### Textgrundlagen für Broschüren (in `textgrundlagen/`)
| Dokument | Zielgruppe | Seiten |
|----------|-----------|--------|
| Die Regress-Firewall | Ärzte (Prävention) | 10 |
| Der Architekturplan gegen den Regress | Ärzte (nach Bescheid) | 8 |
| Mein Arzt hat Angst | Patienten | 7 |

### Forschungsdokumentation (in `recherche/`)
- **CORE3.md** — Differenzierte Verfahrensrealität (V1-Schutzstufenmodell, V2a/V2b-Trennung)
- **CORE4.md** — Kommunikationsasymmetrie, Definitionsdivergenz, Doppelfunktion
- **METHODIK_RECHERCHE_PROTOKOLL.md** — Dokumentation aller 15 Agenten-Einsätze
- **WALK_OF_ANALYSIS_EXTENDED.md** — Vollständiger Analyseverlauf (14 Phasen)
- **40 Einzelanalysen** in `recherche/einzelanalysen/`

## Zentrale Befunde

1. **Definitionsdivergenz:** „Unter 1 %" (Schicht 1, nur V1) vs. ~47.000 V2-Verfahren/Jahr (Schicht 3, BMG 2024). Faktor ~500×.
2. **Doppelter Zertifikatsfehler:** Gilt in voller Schärfe nur für V2b (Formfehler). V1 hat Schutzstufenmodell.
3. **Doppelfunktion:** ~35 % der V2-Prüfungen sind evidenzbasierte Steuerung (Kategorie A), ~40 % reine Formalkontrolle (Kategorie B).
4. **Zwei parallele Evidenzkanäle:** CME (edukativ, vor Fehler) vs. V2 (punitiv, nach Fehler) — ohne Verbindung.
5. **Beide Synthesen originär:** Prior-Art-Checks (20+ Suchanfragen) bestätigen: Definitionsdivergenz und Evidenz-in-formaler-Verkleidung sind nirgends publiziert.

## Methodik

KI-gestützter Multi-Stream-Analyseprozess mit 4 Modellen (Claude Opus 4.6, Copilot GPT-4o, Gemini Deep Research, Mensch) und 15 spezialisierten Agenten. Cross-Source-Divergenz (14 Domains, 25 Datenpunkte) statt nur Cross-Model-Divergenz. Naive-Suche-Tests und Prior-Art-Checks als Pflichtschritte.

## Kompilierung

```bash
# Voraussetzung: MiKTeX oder TeX Live mit inputenc utf8
cd paper
pdflatex ST-001_Studie_Regressangst.tex
bibtex ST-001_Studie_Regressangst
pdflatex ST-001_Studie_Regressangst.tex
pdflatex ST-001_Studie_Regressangst.tex
```

## Lizenz

CC BY 4.0 — [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/)

## Kontakt

Um:bruch — Denkfabrik für gesellschaftlichen Wandel
- Web: [um-bruch.org](https://um-bruch.org)
- Mail: hallo@um-bruch.org
