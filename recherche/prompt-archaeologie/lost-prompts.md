# Prompt-Archäologie: Verlorene und rekonstruierte Prompts

> Projekt: Regress-Melder / ST-001 / PP-003
> Zeitraum: 07.04.2026 - 11.04.2026
> Quelle: Session-Berichte + WALK_OF_ANALYSIS + JSONL-Logs (Lückenanalyse)
> Erstellt: 11.04.2026 | CL

---

## 1. Rekonstruierbare Prompts (Wortlaut verloren, Inhalt ableitbar)

| # | Datum | Rekonstruierter Inhalt | Phase/Analyse | Konfidenz | Rekonstruktionsmethode | Quelle |
|---|-------|----------------------|---------------|-----------|----------------------|--------|
| R01 | 08.04. ~01:00 | "Recherchiere Quellenangaben in LF-001, LF-002, LF-003: Alle 40 Referenzen verifizieren" | Phase I: Quellencheck LF | 85% | Session-Bericht dokumentiert "40 Referenzen, 7 Korrekturen" als Ergebnis eines dedizierten Agenten | Session 08.04. (Tiefenanalyse) |
| R02 | 08.04. ~01:00 | "Quellencheck PP-003: Alle Quellen gegen Originalpublikationen verifizieren" | Phase I: Quellencheck PP-003 | 85% | Session-Bericht: "Sauber, 3 Korrekturen (MVP-Kosten, BSG-Formulierung, Fall 5)" | Session 08.04. (Tiefenanalyse) |
| R03 | 08.04. ~01:00 | "Recherchiere Onkologie Off-Label Quellen: DGHO, KBV, Ärzteblatt 2002-2024" | Phase I: Onkologie | 80% | Session-Bericht: "6 hochrangige Quellen" als Agenten-Ergebnis | Session 08.04. (Tiefenanalyse) |
| R04 | 08.04. ~06:33 | 20 parallele Recherche-Agenten: Individuelle Prompt-Kerne für Agent 1-20 | Phase III-IV: Cluster B | 70% | Die Prompt-Kerne sind in Walk of Analysis rekonstruiert, aber der exakte Auslöse-Prompt der die 20 Agenten parallel startete ist verloren | Session 08.04. (Tiefenanalyse) |
| R05 | 08.04. ~09:00 | "Akteurs-Cleanup: Alle Passagen neutralisieren die Um:bruch als Träger referenzieren" | Akteurs-Cleanup | 90% | Session-Bericht: "Alle Passagen neutralisiert". LG-Entscheidung "Konzept wird angeboten" dokumentiert | Session 08.04. (Tiefenanalyse) |
| R06 | 08.04. ~09:30 | "Mailtext erstellen, Testmail an Lukas, Dry Run, Versand an Top-4" | Versand | 90% | Session-Bericht: "Testmail-Variante OKFN → Feedback → Korrektur → 4 Mails" | Session 08.04. (Tiefenanalyse) |
| R07 | 08.04. ~09:42 | Gemini-Übergabeprompt für die 2 hängengebliebenen Agenten (#3 GPE-Kosten, #10 Ribbat-Medien) | Phase VII: Gemini-Handoff | 75% | Session-Bericht: "Zwei hängende Agenten an Gemini übergeben" | Session 08.04. (Tiefenanalyse) |
| R08 | 08.04. 10:27 | Gemini Deep Research: Vollständiger Original-Prompt für die "Theoretische Rekontextualisierung" | Phase VIII: Theorie | 60% | Nur das Ergebnis (9 Kapitel) ist im JSONL als User-Input dokumentiert, nicht der originale Gemini-Prompt | Session 08.04. (Gemini-Review) |
| R09 | 09.04. ~17:00 | "Rundmail an 14 Organisationen: Erstelle Mailtext, Dry Run, Versand" | Versand | 85% | Session-Bericht 10.04. und JSONL dokumentieren den Versand | Session 09.04. |
| R10 | 09.04. ~22:40 | "Eskalationstabellen V1 + V2 mit Quellen in Fußnoten, Copilot-Vergleich einbeziehen" | Phase IX: Pipeline-Tabellen | 80% | Continuation-Prompt erwähnt dies als erledigte Aufgabe | Session 09.04. |
| R11 | 10.04. ~13:30 | "Starte 13-Phasen-Review-Zyklus autonom mit 9 parallelen Agenten" | Phase X: Review-Zyklus | 75% | Session-Bericht 10.04. dokumentiert den Zyklus detailliert, aber der Start-Prompt fehlt (Continuation) | Session 10.04. |
| R12 | 10.04. ~16:00 | "Normativer Schadensbegriff recherchieren: BSG B 6 KA 5/09 R, 9/24 R, 5/23 R" | Phase XI: Formfehler | 80% | Session-Bericht: "BSG-verifiziert, Kausalkette geschlossen" | Session 10.04. |
| R13 | 10.04. ~16:30 | "Firewall-Strategie für LF-001: 5-Punkte-Organisationsplan" | Phase XI: Firewall | 85% | Session-Bericht: "Komplett neuer Abschnitt mit 5-Punkte-Plan" | Session 10.04. |
| R14 | 11.04. ~09:00 | Gemini Deep Research v2: Vollständiger Prompt für die zweite ~15.000-Wörter-Analyse | Phase XIII: Gemini | 50% | Nur das Ergebnis wurde in den Chat eingefügt; der originale Gemini-Prompt ist nicht dokumentiert | Session 11.04. (v0.11) |
| R15 | 11.04. ~10:00 | "Container-Genealogie als TikZ-Platzhalter → Gemini-Prompt für Balkendiagramm" | Phase XIII: Gemini-Grafik | 70% | Session-Bericht: "Gemini liefert neue PDF-Grafik". Prompt-Text unbekannt | Session 11.04. (v0.11) |

---

## 2. Echte Lücken (nicht rekonstruierbar)

| # | Datum | Beschreibung der Lücke | Warum verloren | Schweregrad |
|---|-------|----------------------|---------------|------------|
| L01 | 07.04.-08.04. | **Gemini-Session-Prompts komplett**: LG hat mindestens 3 separate Gemini-Sessions durchgeführt (PP-003 v1.0 LaTeX, v1.1 TikZ, LF-001/002/003). Die Prompts an Gemini sind nur indirekt bekannt (durch die Prompt-Dateien PROMPT_PP003_Gemini.md und PROMPT_Regress_Leitfaeden_Gemini.md), aber LGs tatsächliche Eingaben an Gemini fehlen | Gemini-Sessions haben kein JSONL-Logging im Claude-Projekt | Mittel |
| L02 | 07.04.-11.04. | **Copilot-Session-Prompts komplett**: LG hat mindestens 11 separate Copilot-Dialoge geführt und die Ergebnisse per Copy-Paste an Claude gegeben. Die originalen LG→Copilot-Prompts fehlen vollständig | Copilot-Sessions haben kein JSONL-Logging | Mittel |
| L03 | 08.04. | **20-Agenten-Orchester-Prompt**: Der exakte Prompt der die 20 parallelen Recherche-Agenten ausgelöst hat (nach dem Cluster-B-Befehl H23) fehlt als einzelner Textblock. Nur die Einzelergebnisse sind dokumentiert | Wahrscheinlich in einer Continuation verloren oder als mehrteiliger Dialog ohne einzelnen Auslöser | Niedrig (Walk of Analysis rekonstruiert die Kerne) |
| L04 | 08.04. ~10:27 | **Gemini Deep Research Eingabe-Prompt**: Der Prompt der die 9-Kapitel-Analyse auslöste ist unbekannt. Nur das Ergebnis (~10.000 Wörter) wurde an Claude übergeben | Gemini-Interface, kein Log | Mittel |
| L05 | 09.04. | **NotebookLM-Prompts**: LG hat NotebookLM für den KI-Podcast genutzt (Datei "Wie_Regressangst_die_ärztliche_Versorgung_lähmt.m4a"). Der Upload- und Konfigurationsprozess bei NotebookLM ist nicht dokumentiert | NotebookLM hat kein Prompt-Logging | Niedrig |
| L06 | 09.04. 20:01-21:10 | **Copilot-Claude-Dialog**: In der Phase der Zertifikatsfehler-Erarbeitung (CORE #4) fanden mindestens 6 schnelle Wechsel LG→Copilot→Claude statt. Die Reihenfolge der Erkenntnis (wer hatte die Idee zuerst?) ist nur approximativ rekonstruierbar | Schnelles Copy-Paste zwischen Interfaces, keine Meta-Dokumentation in Echtzeit | Hoch (methodisch relevant) |
| L07 | 10.04. 13:28 | **Exact Session-Start-Prompt**: Die Session 10.04. (Review-Zyklus) begann mit einem umfangreichen Onboarding. Der erste inhaltliche Regress-Prompt nach dem Onboarding fehlt durch Continuation | Continuation-Summary ersetzt Originaltext | Niedrig |
| L08 | 11.04. | **NotebookLM Broschüren-Generierung**: LG hat 3 Präsentationen mit NotebookLM generiert (Die Regress-Firewall, Der Architekturplan, Mein Arzt hat Angst). Die Eingabedaten und Konfiguration sind nicht dokumentiert | NotebookLM-Interface, kein Log | Niedrig |
| L09 | 11.04. ~16:38 | **15-Agenten-Orchester genaue Verteilung**: Der CORE4-Schwarm hatte 15 Agenten (7 Sonnet, 3 Opus, 5 weitere). Der exakte Moment und Wortlaut der Orchestrierung aller 15 ist nicht als einzelner Prompt erfassbar — es waren mindestens 3 separate Befehle (H116, H117, H119) | Mehrstufige Beauftragung durch den User | Niedrig (Methodik-Protokoll dokumentiert alle Suchstrategien) |
| L10 | 07.04.-11.04. | **Haiku-Schwarm-Prompts**: Für die Walk-of-Analysis-Extraktion wurde ein "Haiku-Schwarm" eingesetzt. Die genauen Prompt-Templates für die Haiku-Agenten fehlen | Intern generiert, nicht explizit als User-Prompt dokumentiert | Niedrig |

---

## 3. Continuation-Verluste (systematisch)

Mindestens **8 Continuations** fanden statt im Untersuchungszeitraum. Jede Continuation ersetzt die vorherigen User-Prompts durch eine zusammenfassende Summary. Die verlorenen Originale:

| # | Datum | Session-ID | Verlorene Prompts (geschätzt) | Rekonstruierbarkeit |
|---|-------|-----------|------------------------------|---------------------|
| CC01 | 08.04. ~04:02 | 5584492c | ~5-10 Prompts zwischen H21 und H23 (Wissenseinarbeitung) | Mittel (Session-Bericht beschreibt Phase 1a/1b) |
| CC02 | 08.04. ~09:36 | 5584492c | ~3-5 Prompts (Akteurs-Cleanup, Deploy, Letzte Edits) | Hoch (Session-Bericht detailliert) |
| CC03 | 09.04. ~20:55 | 07405903 | ~5-8 Prompts (Pipeline-Tabellen, Eskalation, Copilot-Integration) | Mittel |
| CC04 | 09.04. ~22:40 | 07405903 | ~3-5 Prompts (Fußnoten, Copilot-Vergleich, TODO-Planung) | Mittel |
| CC05 | 09.04. ~23:15 | 07405903 | ~2-3 Prompts (Strategie, CHANGELOG) | Hoch (JSONL hat die Continuation-Summary) |
| CC06 | 10.04. ~15:49 | 0d0ebdac | ~10-15 Prompts (13-Phasen-Review, alle autonomen Schritte) | Mittel (Session-Bericht sehr detailliert) |
| CC07 | 11.04. ~01:59 | 26d72556 | ~3-5 Prompts (Batch 2 letzte Blöcke) | Hoch |
| CC08 | 11.04. ~19:11 | c2a40e6d | ~10-15 Prompts (CORE3-Nacharbeiten, Deploy, Zwischenschritte) | Mittel |

**Geschätzte Gesamtverluste durch Continuations:** 40-65 Prompts (Originale), davon ca. 80% aus Session-Berichten rekonstruierbar, 20% nur als vage Paraphrase.

---

## 4. Zusammenfassung

| Kategorie | Anzahl | Wortlaut erhalten |
|-----------|--------|-------------------|
| **Human-Prompts (prompts-human.md)** | 127 | Ja (JSONL) |
| **Agent-Prompts (prompts-llm.md)** | 61 | Nein (rekonstruiert aus Walk/Sessions) |
| **Gemini-Prompts (prompts-llm.md)** | 9 | Teilweise (Prompt-Dateien existieren für G01/G02/G07) |
| **Copilot-Inputs (prompts-llm.md)** | 11 | Nur Ergebnisse (per Copy-Paste an Claude) |
| **Rekonstruierbare Prompts (diese Datei)** | 15 | Nein (Paraphrase, 50-90% Konfidenz) |
| **Echte Lücken (diese Datei)** | 10 | Nein (nicht rekonstruierbar) |
| **Continuation-Verluste (diese Datei)** | ~40-65 | Nein (80% aus Session-Berichten ableitbar) |

**Gesamtschätzung identifizierter Prompts:** ~250-300 (direkt + rekonstruiert)
**Geschätzte Dunkelziffer:** ~50-80 (Copilot-Originale, Gemini-Originale, NotebookLM, Haiku-Schwärme)

### Methodische Bemerkung

Die Prompt-Archäologie profitiert stark von der Dokumentationskultur des Projekts (Session-Berichte, Walk of Analysis, Methodik-Protokoll, CORE-Dokumente). Ohne diese Metadokumentation wären nur die JSONL-Logs verfügbar, und die enthaltenen Continuations, Tool-Results und Meta-Messages machen eine saubere Extraktion schwierig. Die Kombination aus JSONL-Mining (für Human-Prompts) und Session-Bericht-Analyse (für Agent-Prompts und Workflow-Kontext) ist der robusteste Ansatz.

---

*Erstellt: 11.04.2026 | CL | Auftrag: H127 (JSONL c2a40e6d, 21:17)*
