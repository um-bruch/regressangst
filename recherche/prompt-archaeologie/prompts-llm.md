# Prompt-Archäologie: LLM-generierte Prompts

> Projekt: Regress-Melder / ST-001 / PP-003
> Zeitraum: 07.04.2026 - 11.04.2026
> Quelle: Session-Berichte + WALK_OF_ANALYSIS_EXTENDED.md + METHODIK_RECHERCHE_PROTOKOLL.md
> Erstellt: 11.04.2026 | CL

---

## 1. Agent-Prompts (Claude an Sub-Agenten)

| # | Datum | Prompt (rekonstruiert) | Ziel-Agent | Phase/Analyse | Quelle |
|---|-------|----------------------|------------|---------------|--------|
| A01 | 08.04. ~01:48 | "Welche empirischen Basisdaten zum Regress-System lassen sich verifizieren?" | Claude-Recherche | Phase I: RECHERCHE_REGRESS_FAKTEN | Walk of Analysis |
| A02 | 08.04. ~01:48 | "Wie manifestiert sich die Regressangst in einer realen Patientensituation mit Tirzepatid?" | Claude-Fallbericht | Phase I: ANONYMER_FALL_GLP1 | Walk of Analysis |
| A03 | 08.04. ~01:48 | "Welche empirischen Daten zur Regressquote sollten in einem Faktenblatt kommuniziert werden?" | Claude-Redaktion | Phase I: ENTWURF_Faktenblatt | Walk of Analysis |
| A04 | 08.04. ~01:48 | "Wie erklären wir Patienten verständlich, warum ihr Arzt ein Medikament verweigert?" | Claude-Redaktion | Phase I: ENTWURF_Patienteninfo | Walk of Analysis |
| A05 | 08.04. ~04:53 | "Akademische Quellen zu Regressangst und Defensivmedizin in Deutschland" | Claude-PubMed+Web | Phase II: AKADEMISCHE_EINORDNUNG | Walk of Analysis |
| A06 | 08.04. ~04:53 | "Formfehler als Regressgrund — Eigentumsrechtliche Dimension" | Claude-Rechtsanalyse | Phase II: FORMFEHLER_EIGENTUMSRECHT | Walk of Analysis |
| A07 | 08.04. ~04:53 | "Pipeline-Analyse: Wie viele Prüfverfahren enden tatsächlich in Regress?" | Claude-Datenanalyse | Phase II: REGRESSSYSTEM_TIEFENANALYSE | Walk of Analysis |
| A08 | 08.04. ~04:53 | "IFG-Anfrage an BMG: Prüfstatistiken 2020-2025" | Claude-IFG | Phase II: IFG_ENTWURF | Walk of Analysis |
| A09 | 08.04. ~04:53 | "Bürokratiekosten im Gesundheitswesen — Kodierungsaufwand" | Claude-Webrecherche | Phase II: BUEROKRATIE_KODIERUNG | Walk of Analysis |
| A10 | 08.04. ~04:53 | "Widersprechen sich Auffälligkeitsprüfung und Einzelfallprüfung?" | Claude+LG-Eigenanalyse | Phase II: SYSTEMWIDERSPRUCH | Walk of Analysis |
| A11 | 08.04. ~06:33 | "Gibt es Software zur Regress-Prävention? PVS-Integration?" | Claude-Marktanalyse | Phase III: SOFTWARE_REGRESS | Walk of Analysis |
| A12 | 08.04. ~06:33 | "Folgekosten der Regressangst — Quantifizierung" | Claude-Modellrechnung | Phase III: FOLGEKOSTEN | Walk of Analysis |
| A13 | 08.04. ~06:33 | "Wie machen es UK, NL, Frankreich?" | Claude-Vergleich | Phase III: INTERNATIONAL | Walk of Analysis |
| A14 | 08.04. ~06:33 | "Geschichte Prüfverfahren seit 1911" | Claude-Rechtshistorie | Phase III: GESCHICHTE | Walk of Analysis |
| A15 | 08.04. ~06:33 | "Was kostet ein PVS? Open-Source?" | Claude-Kostenanalyse | Phase III: PVS_KOSTEN | Walk of Analysis |
| A16 | 08.04. ~06:33 | "Regress-Folgekosten vs. andere Kostentreiber" | Claude-Vergleich | Phase III: VERGLEICH_KOSTENTREIBER | Walk of Analysis |
| A17 | 08.04. ~06:58 | "Wie funktioniert die Einzelfallprüfung rechtlich und praktisch — und wie interpretiert sie ihre eigene 97-99% Dropout-Quote?" | Claude-Mechanik | Phase IV: EINZELFALLPRUEFUNG_MECHANIK | Walk of Analysis |
| A18 | 08.04. ~06:58 | "Welche empirischen Effizienzbelege hat der GKV-SV vorgelegt?" | Claude-Dokumenten | Phase IV: GKV_BELEGE | Walk of Analysis |
| A19 | 08.04. ~06:58 | "Wie entstand die Einzelfallprüfung historisch?" | Claude-Rechtsforschung | Phase IV: CHANGELOG | Walk of Analysis |
| A20 | 08.04. ~06:58 | "Ist ein fokussiertes Open-Source-Tool zur Regress-Prävention machbar?" | Claude-Machbarkeit | Phase IV: PVS_TOOL | Walk of Analysis |
| A21 | 08.04. ~06:58 | "Wie sind die Prüfverfahren über SGB-V-Container genealogisch verteilt?" (**Container-Analyse**) | Claude-Containerlogik | Phase IV: CONTAINER_GENEALOGIE | Walk of Analysis |
| A22 | 08.04. ~07:31 | "Phänotyp des regress-ängstlichen Arztes ableiten" | Claude-Synthese | Phase V: MODELLARZT | Walk of Analysis |
| A23 | 08.04. ~07:31 | "Regress-System als spieltheoretisches Modell" | Claude-Spieltheorie | Phase V: SPIELTHEORIE | Walk of Analysis |
| A24 | 08.04. ~07:31 | "Top-Maßnahmen gegen Regress empirisch und juristisch" | Claude-BSG+Web | Phase V: TOP_VERHINDERER | Walk of Analysis |
| A25 | 08.04. ~07:31 | "Technische Bruchstellen im SGB-V-Prüfverfahrensrecht" (**Bug-Report-Prompt**) | Claude-Gesetzesprüfung | Phase V: CONTAINER_BUGS | Walk of Analysis |
| A26 | 08.04. ~07:31 | "Struktureller Virus im SGB V — gegensätzliche Zielsetzungen?" (**Virus-Analyse**) | Claude-Systemtheorie | Phase V: CONTAINER_VIRUS | Walk of Analysis |
| A27 | 08.04. ~08:10 | "Du bist ein erfahrener BVerfG-Anwalt. 5 Angriffsvektoren gegen das Prüfverfahren" (**Persona-Prompt**) | Claude-Verfassungsrecht | Phase VI: VERFASSUNGSRECHT | Walk of Analysis |
| A28 | 08.04. ~08:10 | "Sind die GPE eine Niskanen-Bürokratie? 6 Kriterien prüfen" | Claude-Institutionen | Phase VI: GPE_SELBSTERHALTUNG | Walk of Analysis |
| A29 | 10.04. ~14:00 | "Inventarisiere 31 Recherche-Dateien aus infomaterial/" | Hintergrund-Agent | Phase X: WALK_OF_ANALYSIS | Session 10.04. |
| A30 | 10.04. ~14:00 | "Prüfe ST-001 gegen 7 CORE-Referenzpunkte" | Kohärenz-Agent 1 | Phase X: Core-Kohärenz-Review | Session 10.04. |
| A31 | 10.04. ~14:00 | "Prüfe PP-003 gegen 7 CORE-Referenzpunkte" | Kohärenz-Agent 2 | Phase X: Core-Kohärenz-Review | Session 10.04. |
| A32 | 10.04. ~14:00 | "Prüfe LF-001/002/003 gegen 7 CORE-Referenzpunkte" | Kohärenz-Agent 3 | Phase X: Core-Kohärenz-Review | Session 10.04. |
| A33 | 10.04. ~14:30 | "Thematisches Review: Strukturprobleme in ST-001" | Review-Agent | Phase X: Thematisches Review | Session 10.04. |
| A34 | 10.04. ~14:30 | "Designprüfung: Tabellen, Captions, Labels" | Design-Agent | Phase X: Designprüfung | Session 10.04. |
| A35 | 10.04. ~15:00 | "Wissenschaftlicher Review: Methodik, Bias, Quellen (streng)" | Wissenschaftl. Reviewer | Phase X: Wiss. Review | Session 10.04. |
| A36 | 10.04. ~15:30 | "Zweiter unabhängiger Reviewer" | Unabh. Reviewer | Phase X: Zweiter Review | Session 10.04. |
| A37 | 10.04. ~16:00 | "Devil's Advocate: Systematisch versuchen die Kernthesen zu widerlegen" (**Widerleger**) | Widerleger-Agent | Phase X: Widerleger | Session 10.04. |
| A38 | 10.04. ~16:30 | "Heilungsplan: 5 Strategien für die Verwundbarkeiten" | Heilungs-Agent | Phase X: Heilungsplan | Session 10.04. |
| A39 | 10.04. ~17:00 | "Konstruktiver Reviewer + Abschlussreview" | Konstruktiver Reviewer | Phase X: Abschluss | Session 10.04. |
| A40 | 11.04. ~01:30 | "30 offene Review-Kommentare thematisch geblockt einarbeiten" | Edit-Agent | Phase XII: Batch 2 | Session 11.04. (Batch 2) |
| A41 | 11.04. ~02:00 | "Unabhängiger Policy-Analyst: ST-001 kalt lesen, 7 Lösungen formulieren" | Policy-Analyst | Phase XII: Interventionspfade | Session 11.04. (Batch 2) |
| A42 | 11.04. ~02:33 | "Wissenschaftlicher Reviewer (streng, v0.10)" | Wiss. Reviewer | Phase XIII: 4-Review | Session 11.04. (v0.11) |
| A43 | 11.04. ~02:33 | "Kohärenz-Reviewer: Konsistenz gegen CORE-7" | Kohärenz-Agent | Phase XIII: 4-Review | Session 11.04. (v0.11) |
| A44 | 11.04. ~02:33 | "Design/Quellen-Reviewer: Formale Qualität" | Design-Agent | Phase XIII: 4-Review | Session 11.04. (v0.11) |
| A45 | 11.04. ~02:33 | "Naiver Lösungs-Agent: Frische Vorschläge ohne Vorkenntnisse" | Naiver Agent | Phase XIII: 4-Review | Session 11.04. (v0.11) |
| A46 | 11.04. ~11:20 | "3 Review-Agenten: Major→Minor Revision prüfen" | 3 Reviewer | Phase 3-4 Masterplan | Session 11.04. (CORE3) |
| A47 | 11.04. ~14:30 | "5 parallele Agenten: ST-001, PP-003, 3 Textgrundlagen gegen CORE3 prüfen" | 5 CORE3-Agenten | CORE3-Einarbeitung | Session 11.04. (CORE3) |
| A48 | 11.04. ~16:38 | "Agent 1: Systematische Datensammlung Regresshäufigkeit, 8 Suchstrings" | Sonnet-Datenagent | CORE4: Datenpunkte | Methodik-Protokoll |
| A49 | 11.04. ~16:38 | "Agent 2: Impressum-Verifizierung aller 14 Domains" | Sonnet-Impressum | CORE4: Impressum | Methodik-Protokoll |
| A50 | 11.04. ~16:38 | "Agent 3: Kategorisierung + Tenor-Analyse (Kassennahe/Ärztenahe/Neutral)" | Sonnet-Kategorisierung | CORE4: Analyse | Methodik-Protokoll |
| A51 | 11.04. ~16:52 | "Agent A: Widerspruchs-Erklärungen der Quellen einsammeln" | Sonnet-Widerspruch | CORE4: Widerspruch | Methodik-Protokoll |
| A52 | 11.04. ~16:52 | "Agent B: Naive Suche 'Wie viel Prozent Regress Arzt'" (**Bubble-Test**) | Sonnet-Naiv | CORE4: Naive Suche | Methodik-Protokoll |
| A53 | 11.04. ~16:52 | "Versorgungsforscher: V1/V2-Einführung, KEINE Tipps, V2-Zahlen finden" | **Opus**-Unabhängig | CORE4: V2-Zahlen | Methodik-Protokoll |
| A54 | 11.04. ~17:17 | "20+ Suchanfragen: Existiert unsere Synthese (Definitionsdivergenz) bereits?" (**Prior-Art**) | **Opus**-Prior-Art | CORE4: Prior-Art | Methodik-Protokoll |
| A55 | 11.04. ~17:25 | "Websites der Top-10-Kassen bewerten, ohne zu wissen worum es geht" (**Blind-Bewertung**) | Sonnet KK-1 (vorwärts) | CORE4: KK-Digitalisierung | Methodik-Protokoll |
| A56 | 11.04. ~17:25 | "Gleiche Bewertung, umgekehrte Reihenfolge" (**Reihenfolge-Bias-Kontrolle**) | Sonnet KK-2 (rückwärts) | CORE4: KK-Digitalisierung | Methodik-Protokoll |
| A57 | 11.04. ~17:25 | "Versichertenzahlen, Digital-Auszeichnungen, Besonderheiten" | Sonnet KK-3 | CORE4: Kassengröße | Methodik-Protokoll |
| A58 | 11.04. ~17:25 | "Tech-Stack der Kassen-Websites" | Sonnet KK-4 | CORE4: Tech-Stack | Methodik-Protokoll |
| A59 | 11.04. ~17:47 | "KVBW Prüfthemen zu Einzelfallprüfungen und Medikamenten einsammeln" | Sonnet EFP-1 | CORE4: KVBW-Daten | Methodik-Protokoll |
| A60 | 11.04. ~17:47 | "Alternative Hypothese H2 testen: System als Evidenzsteuerung" | **Opus** EFP-2 | CORE4: Alternative Hypothese | Methodik-Protokoll |
| A61 | 11.04. ~18:02 | "Suche nach These: Evidenzsteuerung durch formale Verkleidung" | **Opus**-Evidenz | CORE4: Evidenzsteuerung | Methodik-Protokoll |

---

## 2. Prompts für Gemini (zum Kopieren/Einfügen)

| # | Datum | Prompt-Datei / Inhalt | Zweck | Quelle |
|---|-------|----------------------|-------|--------|
| G01 | 07.04. 23:51 | `PROMPT_Regress_Leitfaeden_Gemini.md` — LaTeX-Setzprompt für LF-001/002/003 | Gemini soll 3 Leitfäden in LaTeX setzen | Session 08.04. (Kampagne) |
| G02 | 07.04. | `Kampagnen/PROMPT_PP003_Gemini.md` — Gemini-Handoff für PP-003 v1.0 | Gemini soll Konzeptpapier in LaTeX konvertieren | Session 08.04. (Kampagne) |
| G03 | 08.04. | Gemini: PP-003 v1.1 TikZ-Diagramme + 5 Fallbeispiele | Gemini soll Diagramme + Fälle einfügen | Session 08.04. (Kampagne) |
| G04 | 08.04. ~09:42 | "GPE-Etats, BRH-Berichte, Kostenstruktur" | Gemini-Recherche (2 hängengebliebene Claude-Agenten) | Walk of Analysis Phase VII |
| G05 | 08.04. ~09:42 | "Ribbat medial, internationale Parallelen" | Gemini-Recherche (Backup) | Walk of Analysis Phase VII |
| G06 | 08.04. 10:27 | Gemini Deep Research: "Theoretische und internationale Rekontextualisierung" (9 Kapitel) | Theorierahmen für ST-001 v0.4 | Session 08.04. (Gemini-Review) |
| G07 | 09.04. 23:31 | `GEMINI_INFOGRAFIK_AUFTRAG.md` — 5 Infografiken (Pipeline V1, V2, Vergleich, Container-Genealogie, Vier Messebenen) | SVG-Grafiken im Um:bruch-Design | Session 09.04. |
| G08 | 11.04. ~10:00 | Container-Genealogie als Zeitachse-Balkendiagramm (PDF) | Gemini ersetzt TikZ-Platzhalter | Session 11.04. (v0.11) |
| G09 | 11.04. ~09:08 | Gemini Deep Research ~15.000 Wörter zu ST-001 | Theorieergänzungen (4 Nuggets) | Session 11.04. (v0.11) |

---

## 3. Prompts für Copilot (zum Kopieren/Einfügen)

| # | Datum | Inhalt (Kurzform) | Zweck | Quelle |
|---|-------|-------------------|-------|--------|
| C01 | 08.04. 07:35 | ST-001 v0.2 zur Review vorgelegt | Copilot-Review 1 (9 Verbesserungen) | JSONL |
| C02 | 08.04. 07:43 | PP-003 v2.1 zur Review vorgelegt | Copilot-Review 2 (DSGVO-Matrix, Anti-Fake) | JSONL |
| C03 | 09.04. ~18:26 | "Regressquote definiert? V1/V2-Differenzierung" | Copilot-Begriffsklärung | JSONL |
| C04 | 09.04. ~19:38 | "Kanonische Zusammenfassung Regress-System" (Kurzgutachten) | Cross-Model-Validierung | JSONL |
| C05 | 09.04. ~20:01 | "Zertifikatsfehler-Diagnose" + Kausalkette | Cross-Model-Erarbeitung | JSONL |
| C06 | 09.04. ~20:25 | "Negativ-Bilanz Zertifikatserzeugung" (final konsolidiert) | Copilot-Synthese an Claude | JSONL |
| C07 | 09.04. ~20:39 | Begriffsklärung Auffälligkeitsprüfung/Einzelfallprüfung | Copilot-Definitionen | JSONL |
| C08 | 09.04. ~20:42 | Zertifikatslandkarte (Tabelle Instanz/Selbstanspruch/Gemessen) | Copilot-Visualisierung | JSONL |
| C09 | 09.04. ~20:48 | Flowcharts V1 + V2 (ASCII) | Copilot-Prozessdiagramme | JSONL |
| C10 | 09.04. ~21:06 | "Optionen B und C in Anhang 2 — vergessene Ausgleichmechanismen?" | Copilot-Rechtsanalyse | JSONL |
| C11 | 09.04. ~21:21 | Broschüren-Input: Begriffsklärung + Patientenrechte + Handlungsempfehlungen | Copilot-Broschüren | JSONL |

---

## 4. Besondere Prompt-Formen (methodisch relevant)

| Typ | Beschreibung | Anwendung | Prompt-Beispiel |
|-----|-------------|-----------|-----------------|
| **Container-Analyse** | Normen als "Container" für Konzepte kartieren | A21: Container-Genealogie (7 SGB-V-Container) | "Wie sind die Prüfverfahren über SGB-V-Container genealogisch verteilt? Verschleierungstiefe?" |
| **Bug-Report** | Gesetze wie Software auf technische Defekte prüfen | A25: Container-Bugs (10 Bug-Klassen) | "Wo befinden sich die technischen Bruchstellen im SGB-V-Prüfverfahrensrecht?" |
| **Virus-Analyse** | Unauflösbare Zielkonflikte identifizieren | A26: Container-Virus (§12 SGB V) | "Gibt es einen strukturellen Virus — gegensätzliche Zielsetzungen die sich blockieren?" |
| **Persona-Prompt** | Agent nimmt Expertenrolle ein | A27: BVerfG-Anwalt (5 Angriffsvektoren) | "Du bist ein erfahrener BVerfG-Anwalt. 5 Angriffsvektoren gegen das Prüfverfahren" |
| **Devil's Advocate** | Systematische Widerlegung versuchen | A37: Widerleger (5 Verwundbarkeiten) | "Versuche systematisch die Kernthesen zu widerlegen" |
| **Bubble-Test** | Naiver Agent googelt ohne Vorwissen | A52: Naive Suche ("Unter 1%" dominiert) | "Finde heraus wie viel Prozent Regresse es bei deutschen Ärzten gibt" |
| **Blind-Bewertung** | Agent bewertet ohne Kontextwissen | A55/A56: KK-Websites ohne Regresskontext | "Bewerte Websites, ohne zu wissen worum es geht" |
| **Reihenfolge-Bias-Kontrolle** | Zwei Agenten, umgekehrte Listen | A55 vs. A56: Konvergenztest | Gleiche Aufgabe, umgekehrte Reihenfolge |
| **Cross-Model-Divergenz** | Abweichungen zwischen Modellen als Signal | C01-C11 + G04-G09 + Claude | Gemini-Halluzinationen als Korrektursignal |
| **Prior-Art-Check** | Gezielte Suche nach eigener These | A54: 20+ Suchanfragen nach Definitionsdivergenz | "Existiert unsere Synthese bereits?" |
| **Alternative-Hypothese-Test** | Gegenthese aktiv prüfen | A60: H2 Evidenzsteuerung (35% Erklärungskraft) | "Teste diese alternative Hypothese" |

---

## Anmerkungen

- **61 Agent-Prompts** dokumentiert (A01-A61), davon 15 allein für das CORE4-Multi-Agenten-Experiment
- **9 Gemini-Prompts** (G01-G09), davon 2 Deep-Research-Sessions und 1 Infografik-Auftrag
- **11 Copilot-Inputs** (C01-C11), alle von LG per Copy-Paste an Claude weitergereicht
- **12 besondere Prompt-Formen** identifiziert und dokumentiert
- Die Agent-Prompts sind rekonstruiert aus Session-Berichten und Walk of Analysis. Die exakten Wortlaute der Sub-Agenten-Aufträge sind in den JSONL-Logs nicht als separate Human-Messages sichtbar (sie werden als Tool-Calls innerhalb von Assistant-Messages generiert)
