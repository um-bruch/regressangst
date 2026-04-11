# Walk of Analysis — Erweiterte Methodendokumentation

> Vollständige methodische Dokumentation für ST-001 „Systemtheoretische Aufarbeitung der Regressangst"
> Dieses Dokument ergänzt den Appendix B in ST-001 mit Details zu jedem Analyseschritt.
> Stand: 2026-04-11 (Phase XIII ergänzt) | Verantwortung: LG + CL
> Status: In Bearbeitung — Prompt-Extraktion aus Session-Logs ausstehend (TODO #18)

---

## 1. Forschungsdesign

### 1.1 Gesamtarchitektur

Die Begleitstudie ST-001 entstand in einem mehrstufigen, KI-gestützten Analyseprozess. Zeitraum: 08.–11. April 2026. Gesamtumfang: 31 Recherche-Dateien, 67 Seiten Hauptdokument, 9 IFG-Anfragen, 5 Ableger-Dokumente.

### 1.2 Multi-Modell-Architektur

| Modell | Version | Rolle | Stärken | Schwächen |
|---|---|---|---|---|
| **Claude** (Anthropic) | Opus 4.6, 1M context | Primäranalyse, Rechtsstruktur, Synthese, Dokumentenerstellung | Konsistenz, LaTeX, lange Kontexte, Rechtsanalyse | Neigt zu Advocacy-Sprache ohne Gegenprüfung |
| **Copilot** (Microsoft/OpenAI) | GPT-4o | Konzeptschärfung, Begriffsprüfung, Kostenschätzungs-Review | Fehlkonzept-Erkennung, Begriffsklärung | Kürzere Kontextfenster, keine Session-Persistenz |
| **Gemini** (Google) | Deep Research | Theorierahmen, Quellenergänzung, Visualisierung (SVG) | Breite Literatursuche, Grafikgenerierung | Halluziniert bei aktuellen politischen Ereignissen |
| **LG** (Mensch) | — | Fragestellungen, Richtungsentscheidungen, Erfahrungswissen, Sichtprüfung | Domänenwissen (Gesundheitswesen), Plausibilitätsprüfung, finale Freigabe | Zeitlich begrenzt verfügbar |

### 1.3 Besondere Prompt-Formen

| Prompt-Typ | Beschreibung | Beispiel-Einsatz |
|---|---|---|
| **Container-Analyse** | Rechtsstrukturanalyse: Wie wandern Konzepte zwischen Normstandorten? | RECHERCHE_CONTAINER_GENEALOGIE (7 SGB-V-Container kartiert) |
| **Bug-Report** | Identifikation handwerklicher Normdefekte | NACHANALYSE_CONTAINER_BUGS (10 Bug-Klassen dokumentiert) |
| **Virus-Analyse** | Unauflösbare Zielkonflikte in einer Norm | NACHANALYSE_CONTAINER_VIRUS (§ 12 SGB V: 4 Anforderungen ohne Vorrangregel) |
| **Persona-Prompt** | BVerfG-Anwalt simulieren für Verfassungsrecht | NACHANALYSE_VERFASSUNGSRECHTLICHER_ANGRIFF (5 Angriffsvektoren) |
| **Gegenposition** | Devil's Advocate: Systematische Widerlegung versuchen | 13-Phasen-Review, Phase 10 (5 echte Verwundbarkeiten) |
| **Cross-Model-Divergenz** | Abweichungen zwischen Modellen als Signal nutzen | Copilot identifizierte Kostenschätzungs-Inkonsistenz → Dreistufenmodell |

### 1.4 Qualitätssicherung

- **Quellenverifikation:** Jede externe Quelle per WebSearch gegen Originalpublikation geprüft (DOI, ISBN, Aktenzeichen). Gemini-Quellen erhielten systematischen Double-Check durch Claude.
- **Hypothesenrevision:** Ausgangshypothesen dokumentiert verworfen wenn Evidenz dagegen sprach.
- **13-Phasen-Review-Zyklus:** 9 parallele Agenten, ca. 15 Minuten Laufzeit. Ergebnisse in CORE_REVIEW_BEFUNDE.md, REVIEW_GESAMT.md, HEILUNGSPLAN.md.
- **108 manuelle PDF-Kommentare** (LG-Sichtprüfung): Jeder Kommentar einzeln eingearbeitet.

---

## 2. Teilanalysen — Vollständige Auflistung

> **Hinweis:** Die Prompt-Kerne wurden durch einen Haiku-Schwarm aus den Headern und Inhalten aller 31 Recherche-Dateien extrahiert (11.04.2026). Die echten Session-Prompts (die tatsächlichen User-Messages) werden in einer Folgeanalyse (TODO #18: Sender-Empfänger-Modell) aus den JSONL-Session-Logs extrahiert und mit den rekonstruierten Prompt-Kernen verglichen.
>
> **Methode der Extraktion:** Haiku-Agent las die ersten 30 Zeilen jeder Datei und rekonstruierte aus Headern, Metadaten und Einleitungstexten die auslösende Fragestellung. Ergebnis: 31/31 Dateien erfolgreich extrahiert.

### Phase I: Empirische Grundlegung (08.04., 01:48–03:19)

**Leitfrage:** Was wissen wir gesichert über das Regresssystem? Welche Fakten sind belastbar?

| # | Datei | Prompt-Kern (rekonstruiert) | Modell | Methode | Schlüsselbefund |
|---|---|---|---|---|---|
| 1 | RECHERCHE_REGRESS_FAKTEN.md | „Welche empirischen Basisdaten zum Regress-System lassen sich verifizieren?" | Claude | Webrecherche + Primärquellen | Regressquote 0,065% (Virchowbund), 0,097% (KV BaWü). Wahrnehmung:Realität ≈ 50:1 |
| 2 | ANONYMER_FALL_GLP1.md | „Wie manifestiert sich die Regressangst in einer realen Patientensituation mit Tirzepatid (Mounjaro) trotz G-BA-Zusatznutzen?" | LG → Claude | Fallbericht (real, anonymisiert) | Patient mit Diabetes + Leberzirrhose unterversorgt. TK-Paradoxon (Kasse darf nicht genehmigen) |
| 3 | ENTWURF_Faktenblatt_Aerzte.md | „Welche empirischen Daten zur Regressquote sollten in einem Faktenblatt für Ärzte kommuniziert werden?" | Claude | Redaktionelle Synthese | Regressquote <1%, gefühlte Bedrohung 100%. 4 Fallbeispiele |
| 4 | ENTWURF_Patienteninfo.md | „Wie erklären wir Patienten verständlich, warum ihr Arzt ein medizinisch notwendiges Medikament verweigert?" | Claude | Redaktionelle Synthese | Laiensprache-Erklärung: Angst vor Kostenrückzahlung, nicht medizinische Gründe |

**Ableitung Phase I:** Diskrepanz zwischen objektiver Regressquote (<1%) und subjektiver Bedrohung (>85%) → Hypothese: Systemstruktur erzeugt Angst unabhängig von tatsächlichem Regressrisiko.

**Human-in-the-Loop:** LG lieferte den anonymisierten GLP-1-Fall aus eigener Erfahrung (Datei #2). Dieser Fall wurde zum wiederkehrenden Referenzbeispiel in PP-003.

---

### Phase II: Akademische Einordnung + Rechtsstruktur (08.04., 04:53–05:39)

**Leitfrage:** Ist das Phänomen in der Literatur bekannt? Wie ist es rechtlich eingebettet?

| # | Datei | Prompt-Kern (rekonstruiert) | Modell | Methode | Schlüsselbefund |
|---|---|---|---|---|---|
| 5 | RECHERCHE_AKADEMISCHE_EINORDNUNG.md | „Akademische Quellen zu Regressangst und Defensivmedizin in Deutschland" | Claude | PubMed + Web | Goetz 2024 (27% Rechtsangst), Zheng 2023 (75,8% Defensivmedizin weltweit). Lücke: Kein Konzept „Governance-Pharmakovigilanz" |
| 6 | RECHERCHE_FORMFEHLER_EIGENTUMSRECHT.md | „Formfehler als Regressgrund — Eigentumsrechtliche Dimension" | Claude | Rechtsanalyse | BSG B 6 KA 9/24 R: 491.000 EUR wegen Stempel. „Küchen-Paradoxon" |
| 7 | RECHERCHE_REGRESSSYSTEM_TIEFENANALYSE.md | „Pipeline-Analyse: Wie viele Prüfverfahren enden tatsächlich in Regress?" | Claude | Datenanalyse + Web | KV Hessen: 916→3 (0,3%). 6-stufige Pipeline dokumentiert |
| 8 | IFG_ENTWURF_Pruefstatistiken.md | „IFG-Anfrage an BMG: Prüfstatistiken 2020–2025" | Claude | IFG-Antragsentwurf | 7 Fragen. Meta-Frage: Werden die Daten überhaupt erhoben? |
| 9 | IFG_LINKS_FRAGDENSTAAT.md | „FragDenStaat-URLs vorbereiten" | Claude | Operativ | Klickfertige URLs für BMG + GPE RLP |
| 10 | RECHERCHE_BUEROKRATIE_KODIERUNG.md | „Bürokratiekosten im Gesundheitswesen — Kodierungsaufwand" | Claude | Webrecherche | 3h/Tag Bürokratie (44% Arbeitszeit). 4,33 Mrd EUR/Jahr. Einzige Branche ohne Fehlertoleranz |
| 11 | ANALYSE_SYSTEMWIDERSPRUCH_PRUEFVERFAHREN.md | „Widersprechen sich Auffälligkeitsprüfung und Einzelfallprüfung?" | Claude + LG | Eigenanalyse | Ja, fundamental: wissenschaftlich (Reliabilität), ökonomisch (Stichprobe vs. Mikromanagement), rechtlich (Interessenkonflikt) |

**Ableitung Phase II:** Die Regressangst hat eine rationale Komponente — nicht wegen der Eintrittswahrscheinlichkeit, sondern wegen der Schadenshöhe und der Systemintransparenz.

**Korrektur:** „Moosazadeh 2023" → korrigiert auf Zheng et al. 2023 (Fehlzuordnung in einer Sekundärquelle).

---

### Phase III: Marktanalyse + Kostenmodellierung (08.04., 06:33–06:58)

**Leitfrage:** Existiert Software zur Regress-Prävention? Was kostet das System?

| # | Datei | Prompt-Kern (rekonstruiert) | Modell | Methode | Schlüsselbefund |
|---|---|---|---|---|---|
| 12 | RECHERCHE_SOFTWARE_REGRESS_PRAEVENTION.md | „Gibt es Software zur Regress-Prävention? PVS-Integration?" | Claude | Marktanalyse | 132 zertifizierte PVS. Keine öffentliche Frühwarnsoftware. ifap praxisCENTER proprietär |
| 13 | RECHERCHE_FOLGEKOSTEN_PATIENTENSCHAEDEN.md | „Folgekosten der Regressangst — Quantifizierung" | Claude | Literatur + Modellrechnung | Ribbat 2023: 85% Unterlassungen. Kifmann/HCHE: 14% Rückgang Quartalsende. Attributionsmodell: 0,9–1,7 Mrd EUR |
| 14 | RECHERCHE_INTERNATIONAL_WISSENSCHAFTLICH.md | „Wie machen es UK, NL, Frankreich? Gibt es ein Äquivalent?" | Claude | Internationaler Vergleich | UK: QOF (positive Anreize). NL: DBC (kein Regress). FR: „délit statistique" 2024 |
| 15 | RECHERCHE_GESCHICHTE_PRUEFVERFAHREN.md | „Wie hat sich das Prüfverfahren seit 1911 entwickelt?" | Claude | Rechtshistorisch | RVO 1911 → GKAR 1955 → GRG 1989 → GSG 1992 → GKV-VSG 2015. 30-jährige Schichtung |
| 16 | RECHERCHE_PVS_KOSTEN_OPENSOURCE.md | „Was kostet ein PVS? Gibt es Open-Source-Alternativen?" | Claude | Kostenanalyse | CGM/medatixx dominant. Open-Source ohne KBV-Zertifizierung. 60-120 PJ für Voll-PVS |
| 17 | RECHERCHE_VERGLEICH_KOSTENTREIBER.md | „Regress-Folgekosten im Vergleich zu anderen Kostentreibern" | Claude | Vergleichsanalyse | 0,9–1,7 Mrd EUR ≈ Größenordnung Krankenhauskeime |

**Modellrechnung — Rechenweg:**
1. Systemrahmen: Gesamte Arzneimittelausgaben GKV × Anteil potenziell betroffener Verordnungen → 17–27 Mrd EUR
2. Attributionsrate: 5% konservativ (wie viel davon ist Regress-induziert?) → 0,85–1,35 Mrd EUR
3. Direkte + anteilige Folgekosten: Hospitalisierungen (DRG-Fallpauschale), Mehrfachuntersuchungen, Produktivitätsverlust → 0,9–1,7 Mrd EUR
4. Sensitivitätsanalyse: 3 Szenarien (konservativ/mittel/hoch) mit expliziten Annahmen

**Korrektur (Copilot):** Die 7–17 Mrd im Text wirkten wie attributierte Kosten, waren aber der Systemrahmen. → Dreistufenmodell eingeführt.

---

### Phase IV: Rechtsstruktur-Tiefenbohrung (08.04., 06:58–07:21)

**Leitfrage:** Wie funktioniert die Einzelfallprüfung genau? Was sagt die GKV-Seite?

| # | Datei | Prompt-Kern (rekonstruiert) | Modell | Methode | Schlüsselbefund |
|---|---|---|---|---|---|
| 18 | RECHERCHE_EINZELFALLPRUEFUNG_MECHANIK.md | „Wie funktioniert die Einzelfallprüfung rechtlich und praktisch — und wie interpretiert sie ihre eigene 97–99% Dropout-Quote?" | Claude | Systematische Verfahrensmechanik | V2 versteht sich als Verdachtsfallprüfung; 97–99% Dropout = „gute ärztliche Arbeit" (Eigeninterpretation), nicht schlechte Trefferquote |
| 19 | RECHERCHE_GKV_BELEGE_EINZELFALLPRUEFUNG.md | „Welche empirischen Effizienzbelegungen hat der GKV-SV für die Einzelfallprüfung vorgelegt?" | Claude | Dokumentenanalyse | **Keine einzige.** 2024er-Papier stützt sich auf fehlende Folgenabschätzungen der Alternative |
| 20 | RECHERCHE_EINZELFALLPRUEFUNG_CHANGELOG.md | „Wie entstand die Einzelfallprüfung historisch und wann wurde sie in welcher Form Gesetz?" | Claude | Historische Rechtsforschung | **Hypothesenrevision:** Bereits GRG 1988 (Blüm), nicht erst GSG 1992 (Seehofer) |
| 21 | RECHERCHE_PVS_TOOL_MACHBARKEIT_DETAIL.md | „Ist ein fokussiertes Open-Source-Tool zur Regress-Prävention (nur ICD-Plausibilität, Kodierung, Risiko-Warnung) machbar?" | Claude | Modulare Machbarkeitsstudie | Machbar (3-6 PM), aber wirkungslos gegen AM-RL-basierte Einzelfallprüfung |
| 22 | RECHERCHE_CONTAINER_GENEALOGIE_PRUEFVERFAHREN.md | „Wie sind die 7+ Prüfverfahren über SGB-V-Container genealogisch verteilt? Verschleierungstiefe?" | Claude | Container-Logik (Eigenentwicklung) | 9 Container kartiert. „Gesetzesabstand"-Konzept: größerer Abstand = größere Verschleierung |

**Ableitung:** V2 ist nahezu deterministisch nach Schritt 0. → CORE-Referenzpunkt 6 und 7.

**Besondere Prompt-Form: Container-Analyse.** Die Metapher „Container" für Normen wurde in dieser Phase als analytisches Werkzeug etabliert. Sie erlaubt es, die Wanderung von Konzepten zwischen Normstandorten zu verfolgen — z.B. wie die Einzelfallprüfung von § 106 Abs. 2 Nr. 2 SGB V (1992) nach § 106b Abs. 1 SGB V (2015) „umzog", dabei den Beratungsschutz verlor, und gleichzeitig auf die regionale Ebene (Prüfvereinbarungen) ausgelagert wurde.

---

### Phase V: Modellierung + Synthese (08.04., 07:31–07:56)

**Leitfrage:** Kann man das Verhalten der Akteure formal modellieren?

| # | Datei | Prompt-Kern (rekonstruiert) | Modell | Methode | Schlüsselbefund |
|---|---|---|---|---|---|
| 23 | MODELL_REGRESSAENGSTLICHER_ARZT.md | „Lässt sich ein statistisch belegbarer Phänotyp des ‚regress-ängstlichen Arztes' aus der Studienlage ableiten?" | Claude | Syntheseforschung (Ribbat, Goetz, KBV, OECD) | Idealtypischer Modellarzt: 27% starke Rechtsangst. Schaden~100:1 vs. Regress-Einnahmen |
| 24 | MODELL_SPIELTHEORIE_REGRESS.md | „Lässt sich das deutsche Regress-System als Spiel modellieren und welche Strategien wählen die Spieler?" | Claude | Spieltheoretische Strukturanalyse | Defensive Unter-Verordnung = Nash-Gleichgewicht. Jeder Spieler handelt individuell rational, aber systemisch destruktiv |
| 25 | RECHERCHE_TOP_REGRESS_VERHINDERER.md | „Welche empirischen und juristischen Maßnahmen verhindern Regresse am wirksamsten?" | Claude | BSG-Analyse + Webrecherche | TOP 5: Dokumentation, Praxisbesonderheiten, Vorab-Genehmigung, AM-RL-Plausibilität, Begründungspflicht |
| 26 | NACHANALYSE_CONTAINER_BUGS.md | „Wo befinden sich die technischen Bruchstellen und logischen Fehler im SGB-V-Prüfverfahrensrecht?" (**Bug-Report-Prompt**) | Claude | Systematische Gesetzesprüfung | **9 Bug-Klassen** dokumentiert. „Wirtschaftlichkeit" undefiniert, 3 Schadensbegriffe ohne Legaldefinition. 7/10 trivial fixbar |
| 27 | NACHANALYSE_CONTAINER_VIRUS_ZIELKONFLIKTE.md | „Gibt es einen strukturellen ‚Virus' im SGB V — gegensätzliche Zielsetzungen die sich blockieren?" (**Virus-Analyse-Prompt**) | Claude | Systemtheoretisch-rechtsdogmatisch | § 12 SGB V: „ausreichend + zweckmäßig + wirtschaftlich" nicht simultan optimierbar = Doppelbind |

**Modellrechnung Spieltheorie — Verfahren:**
- Bayessches Spiel mit asymmetrischer Information (Arzt weiß Gesundheitszustand, Kasse nicht)
- Payoff-Matrix für 4 Strategien: {Verschreiben, Nicht-Verschreiben} × {Prüfen, Nicht-Prüfen}
- Nash-Gleichgewicht: Defensive Unter-Verordnung dominiert für risikoaversen Arzt
- Sensitivitätsparameter: P_perceived (subjektive Prüfwahrscheinlichkeit), C_regress (Regresshöhe), B_medical (medizinischer Nutzen)

---

### Phase VI: Verfassungsrecht + Institutionenanalyse (08.04., 08:10–08:44)

| # | Datei | Prompt-Kern (rekonstruiert) | Modell | Methode | Schlüsselbefund |
|---|---|---|---|---|---|
| 28 | NACHANALYSE_VERFASSUNGSRECHTLICHER_ANGRIFF.md | **Persona-Prompt:** „Du bist ein erfahrener BVerfG-Anwalt. 5 Angriffsvektoren gegen das Prüfverfahren" | Claude | Verfassungsrecht (Persona) | Art. 2 Abs. 2 S. 1 = stärkster Hebel (Patientenschutzpflicht) |
| 29 | NACHANALYSE_GPE_SELBSTERHALTUNG.md | „Sind die GPE eine Niskanen-Bürokratie? 6 Kriterien prüfen" | Claude | Institutionenanalyse | 6/6 Kriterien erfüllt. Drehtür-Effekt belegt |

**Besondere Prompt-Form: Persona.** Für die Verfassungsrechtsanalyse wurde Claude als „erfahrener BVerfG-Anwalt" gepromptet. Diese Technik erzwang eine praxisnähere Analyse als ein neutraler akademischer Prompt — inklusive Erfolgswahrscheinlichkeiten und Strategieempfehlungen.

---

### Phase VII: Gemini-Ergänzungen (08.04., 09:42–09:43)

| # | Datei | Prompt-Kern | Modell | Schlüsselbefund |
|---|---|---|---|---|
| 30 | RECHERCHE_KOSTEN_PRUEFINFRASTRUKTUR.md | „GPE-Etats, BRH-Berichte, Kostenstruktur" | **Gemini** | GPE-Kosten nicht verifizierbar = Niskanen-Kriterium (c) bestätigt |
| 31 | RECHERCHE_RIBBAT_MEDIEN_INTERNATIONALE_DRUCKSTUDIEN.md | „Ribbat medial, internationale Parallelen" | **Gemini** | Ribbat medial „still". Kessler/McClellan 1996 als US-Parallele |

**Cross-Model-Divergenz Gemini ↔ Claude:**
- Gemini lieferte „125 GPs protestierten in Frankreich 2024" → Claude-Faktencheck: Halluzination. Echte CNAM-Zahlen: 745 MSO-Verfahren, 106 vor Strafkommission.
- Gemini nannte „MPD" als Urheber des Begriffs „délit statistique" → Korrektur: MG France + FMF
- **Methodische Regel daraus:** Etablierte Klassiker (Freidson, Power) bei Gemini zuverlässig. Aktuelle politische Ereignisse mit spezifischen Akteuren kritisch prüfen.

---

### Phase VIII: Theorierahmen (Gemini Deep Research, 08.04.)

| Quelle | Modell | Ergebnis | Verifikationsstatus |
|---|---|---|---|
| Freidson (1970, 2001) | Gemini → Claude | Professional Dominance, Deprofessionalisierung durch Audit | ✅ via Sociology of Health & Illness 2006 |
| Power (1997) | Gemini → Claude | Audit Society, Rituals of Verification | ✅ Oxford UP, ISBN verifiziert |
| Lipsky (1980/2010) | Gemini → Claude | Street-Level Bureaucracy, Coping-Strategien | ✅ Russell Sage Foundation |
| Herd/Moynihan (2018) | Gemini → Claude | Administrative Burden als Policymaking by Other Means | ✅ Louis Brownlow Award 2019 |
| Bernstein (2012) | Gemini → Claude | Transparency Paradox — Selbstkritik für PP-003 | ✅ ASQ 57(2), DOI verifiziert |

---

### Phase IX: Core-Etablierung (Session 10.04., Copilot + Claude + LG)

| Problem | Methode | Lösung |
|---|---|---|
| „Regress" undifferenziert | Copilot-Claude-Dialog | 4 Messebenen (Prüfquote → Verfahrenquote → Durchsetzungsquote → Volumen) |
| V1 und V2 vermischt | Strukturanalyse | Zwei Prüfdomänen klar getrennt: V1 = probabilistisch, V2 = deterministisch |
| 1%-Zahl ohne Caveat | Quellenprüfung | 1% gilt für V1+V2 zusammen |
| Kostenschätzung inkonsistent | Copilot-Identifikation | Dreistufenmodell: Systemrahmen → Attribution → Folgekosten |

**Output:** 7 CORE-Referenzpunkte als kanonische Wahrheit etabliert.

---

### Phase X: 13-Phasen-Review-Zyklus (Session 10.04.)

| Schritt | Agent/Rolle | Ergebnis |
|---|---|---|
| 1 | Walk of Analysis (dieser Text) | 31 Dateien in 9 Phasen dokumentiert |
| 2 | 3 parallele Core-Kohärenz-Agenten | 19 Maßnahmen, CORE-Matrix |
| 3 | Korrekturen Prio 1+2 | 19 Fixes in 5 Dateien |
| 4 | Thematisches Review | 10 Strukturprobleme |
| 5 | Designprüfung | booktabs OK, ~50 Captions fehlen |
| 6 | Wissenschaftlicher Reviewer | 10 Major Issues, Major Revision |
| 7 | 26+ LaTeX-Korrekturen | Tonalität, Advocacy-Sprache entschärft |
| 8 | Zweiter unabhängiger Reviewer | Bestätigt Stärken + Schwächen |
| 10 | Widerleger / Devil's Advocate | 5 echte Verwundbarkeiten |
| 11 | Heilungsplan | 5 Heilungsstrategien |
| 12+13 | Konstruktiver Reviewer + Abschluss | „Das Paper wird stärker durch Ehrlichkeit" |

**Human-in-the-Loop:** LG traf während des Review-Zyklus mehrere Richtungsentscheidungen:
- „ST-001 ist Anwendungsstudie, nicht generischer Journalartikel → Verfassungsrecht gehört dazu"
- „Keine Paperspaltung. Ein Dokument, drei Zugänge über die Gliederung"
- „Tabellarische Erstdifferenzierung V1/V2 ist die übersehene Stärke"

---

### Phase XI: Späte Erkenntnisse (Session 10.04., spät)

Aus Rechtsrecherche + analytischer Diskussion LG + CL:
- **Drei Scanner, null Qualitätsprüfung** (V1 scannt Kosten, V2 scannt Formfehler, Retax scannt Abrechnung)
- **Lesart C** / Das System als Formfehler-Erkennung
- **Prüfkatalog-Asymmetrie** (Kassen + Apotheken: scanacs; Ärzte: nichts)
- **GPE-Interessenkonflikt** (ARGE, keine Rechtspersönlichkeit, Kasse = Antragstellerin + Trägerin + Empfängerin)
- **Screening-Legalitätsfrage** (§ 106b Abs. 1 setzt zufälligen Verdacht voraus)

---

### Phase XII: LG-Sichtprüfung + Korrekturen (Session 11.04.)

- **108 PDF-Kommentare** manuell in ST-001.pdf eingefügt
- Automatisiert ausgelesen mit PyMuPDF (neuer PDF-Review-Workflow)
- Hauptkorrekturen: V1/V2 Trennung, Stufenmodell gestrichen, Machtungleichgewicht, Hessendata-Verfassungsrecht
- **3 Recherchen** parallel (V1-Messgegenstand, Formfehler-Regress, Ribbat/KBV-Quellen)
- **4 weitere Recherchen** (Verfassungsrecht Screening, Sanktionen Kasse, Verordnungsanstieg 2017, Gewinner Gericht)

---

### Phase XIII: 4-Review-Zyklus + Gemini-Analyse + KNV (v0.10→v0.11, Session 11.04.)

**Leitfrage:** Wie robust ist ST-001 v0.10 gegen unabhängige Review-Agenten? Welche Lücken bleiben nach 108 PDF-Kommentaren?

#### 4 parallele Review-Agenten

| Agent | Auftrag | Befund | Verdikt |
|---|---|---|---|
| **Wissenschaftlicher Reviewer** | Strenger Methodik-/Bias-/Quellen-Review | 5 Major Issues: (1) Fehlender Methodenteil, (2) Ribbat-Klumpenrisiko, (3) Kausalitätslücke, (4) Advocacy-Bias (Gegeneinwände nach 50+ Seiten), (5) Verhältnisrechnung ohne Nutzenabschätzung | **Major Revision** |
| **Kohärenz-Reviewer** | Konsistenz gegen CORE-7 | 3 kritisch: §106/§106b Verwechslung (Sachfehler), Ribbat ohne V1/V2-Caveat an 3 Stellen, 99,7% nicht als V1 markiert. 7 mittel (490k/491k, n=770/800, leere Überleitung, Redundanz Beratungsschutz) | 17 Befunde |
| **Design/Quellen-Reviewer** | Formale Qualität, Quellennachweise | Kein BibTeX-Verzeichnis, 7 unbelegte Behauptungen, ~22 Tabellen ohne \caption/\label, absolute Grafik-Pfade, Encoding-Mix (escaped + UTF-8), 4 Tippfehler | Systematische Nacharbeit |
| **Naiver Lösungs-Agent** | Frische Lösungsvorschläge ohne Vorkenntnisse | 7 Vorschläge (Patientenverbände, OpenPrescribing, Parlamentarische Anfragen, Versicherungsmathematik, EU-Hebel, Investigativ-Journalismus, Peer-Support) | Von LG verworfen (Deckeneffekt) |

#### Einarbeitung: 28 Edits in ST-001 (v0.10→v0.11)

- **9 Sofort-Fixes:** Tippfehler, §106/§106b Sachfehler, 490k→491k, n≈800→770, leere Überleitung
- **4 CORE-Kohärenz:** Ribbat V1/V2-Caveats an 3 Stellen, 99,7% als V1 markiert
- **4 Szenario-Kennzeichnung:** Folgekostenrechnung $^\star$, Abschreckungswirkung als fehlender Nenner
- **7 Quellenergänzungen:** KBV 2018, SG Mainz S 3 KA 14/19, Himmel/Schneider 2017, OECD 2025, 70-80% als Schätzung, Monitor Versorgungsforschung als unsicher

#### Gemini Deep Research Analyse (~15.000 Wörter)

Redundanz mit ST-001: ~80%. 5 Nuggets identifiziert, 4 eingearbeitet:

| Nugget | Quelle | Einbau in ST-001 | Status |
|---|---|---|---|
| **Goodhart's/Campbell's Law** | Sozialwissenschaftliche Standardtheorie | Zertifikatsfehler-Abschnitt: Proxy-Versagen als bekannte Pathologie | ✅ |
| **Noordegraaf Connective Professionalism** | Noordegraaf 2015, Public Administration | Neuer Unterabschnitt: Konnektivität scheitert bei punitiver Struktur | ✅ |
| **USA vs. DE Fehlversorgung bidirektional** | Tort-Reform-Literatur | Teil VI erweitert: „Unterbehandlung" → „Fehlversorgung in zwei Richtungen" + Patient trägt Last | ✅ |
| **Governance-Pharmakovigilanz** | Eigenkonzept, inspiriert durch WHO-Pharmakovigilanz | Neuer Unterabschnitt im Lösungsraum: Monitoring regulatorischer Nebenwirkungen | ✅ |
| **Frankreich PLFSS 2026** (75% weiblich, 15.700 EUR) | Gemini-Angabe | Nicht eingebaut — Halluzinationsrisiko zu hoch, Detaildaten nicht verifizierbar | ❌ |

**Methodische Regel:** Gemini Deep Research liefert bei ~15k Wörtern ca. 4 verwertbare Nuggets. Signal-to-Noise-Ratio schlecht, aber die verwertbaren Funde (Goodhart/Campbell, Fehlversorgung-Reframing) waren substanziell.

#### KNV-Bewertung: 14 Maßnahmen

Kosten-Nutzen-Tabelle mit 14 Interventionen (A+ bis C) am Ende von Teil VII eingefügt. Zentrale Erkenntnis: Halbsatz-Streich (§ 106b Abs. 2 S. 4: Beratungsschutz auch für V2) = Rang 1, effizientester Einzelhebel. PP-003 (Transparenzportal) = Rang 7, „Plan B der Plan A erzwingen soll".

#### PDF-Kommentarrunden (2 Runden, 11 Kommentare)

| Runde | Kommentare | Wichtigste Änderungen |
|---|---|---|
| Runde 1 (6) | Pipeline-Grafiken V1+V2 entfernt (passen nicht mehr zum Textstil). Container-Genealogie durch Gemini-Grafik ersetzt (Balkendiagramm mit Zeitachse, `container_genealogie_zeitachse.pdf`). Vier-Messebenen-Tabelle: Spaltenproblem gefixt. V1 Kernaussage ergänzt. 2× Rand-Überlauf gefixt. |
| Runde 2 (5) | Datei umbenannt → `ST-001_Studie_Regressangst.tex`. cls erweitert: `\dokumenttyp{}` (Default: Positionspapier, ST-001: Studie). **KNV-Tabelle** (14 Maßnahmen, A+ bis C) eingefügt. PP-003 Einordnung: Rang 7. Rand S.6 Trennhilfe. |

**Human-in-the-Loop:** LG verwarf den naiven Lösungs-Agenten („Deckeneffekt, bestehende Lösungen besser"), bestätigte Verfassungsrechtskapitel („wichtig für den Gegenstand"), entschied „Fehlversorgung statt Unterversorgung" (bidirektional), ordnete KNV-Tabelle in Teil VII statt Appendix ein.

---

### Phase XIV: CORE3 + CORE4 — Differenzierte Verfahrensrealität und Definitionsdivergenz (v0.11→v0.12)

> Auslöser: Zwei Fragen von LG während der Sichtprüfung (11.04.2026)
> Ergebnis: Fundamentale Erkenntnisse, Masterplan v2 erstellt

#### Auslöser 1: CORE3 — „Ich dachte, das Richtgrößenverfahren wurde abgeschafft?"

LG stellte diese Frage bei der Sichtprüfung der Broschüren. Recherche ergab: Richtgrößen wurden 2017 abgeschafft, V1 nutzt jetzt regionale Schwellenwerte. Daraufhin tiefere Recherche zum V1-Ablauf → **Schutzstufenmodell** entdeckt (Anhörung, medizinische Berücksichtigung, Beratung vor Regress, Karenzzeit, Deckel 25.000 EUR, 5-Jahres-Regel). Weiter: V2 zerfällt in **V2a** (Unwirtschaftlichkeit, medizinische Verteidigung möglich) und **V2b** (Formfehler, medizinisch irrelevant). Ergebnis: CORE3.md erstellt, alle 5 Dokumente korrigiert.

#### Auslöser 2: CORE4 — „Die ein Prozent sind auch zufällig oder?"

LG hinterfragte die „unter 1%"-Zahl → Recherche → V1 ist kein Zufall, sondern Schwellenwert-Screening → Die „unter 1%"-Zahl misst nur V1-Regresse → V2-Vergleiche werden nicht gezählt → Bayern hat 13.000 Regresse/Jahr. Dies löste ein Multi-Agenten-Experiment aus.

#### Multi-Agenten-Experiment (15 Agenten)

| Agent | Modell | Aufgabe | Schlüsselbefund |
|---|---|---|---|
| Agent 1 | Sonnet | Systematische Datensammlung | 25 Datenpunkte, 14 Domains. SpiFa Bayern: 12.930–13.332 Regresse/Jahr |
| Agent 2 | Sonnet | Impressum-Verifizierung | 14 Betreiber identifiziert und kategorisiert |
| Agent 3 | Sonnet | Kategorisierung + Tenor | Dreischichtige Perspektivdivergenz. Stärkste Verzerrung: Regressbegriff selbst |
| Agent A | Sonnet | Widerspruchs-Erklärungen | 6/14 thematisieren Widerspruch. Alle erklären ihn als Wahrnehmungsfehler |
| Agent B | Sonnet | Naive Suche (Bubble-Test) | „Unter 1%" dominiert erste 5 Treffer. Journalist würde sie übernehmen |
| Agent C | Opus | V2-Zahlen unabhängig | BMG GVSG-Entwurf: 47.000 V2-Verfahren. KBV: „V1 de facto bedeutungslos" |
| Prior-Art | Opus | Existiert unsere Synthese? | Kein Prior Art. Synthese (Definitionsdivergenz) ist originär |
| EFP-1 | Sonnet | KVBW Prüfthemen | 30+ Medikamente/Prüfanlässe. AOK BaWü 2025 Prüfthemen |
| EFP-2 | Opus | Alternative Hypothese | H2 (Steuerungsinstrument) hat 35–40% Erklärungskraft |
| KK-1/KK-2 | Sonnet | Website-Bewertung Kassen | TK + BARMER führen. Konvergenz bestätigt (Reihenfolge-Bias-Kontrolle) |
| KK-3 | Sonnet | Kassengröße | BKK Pfalz: 141k Versicherte, Platz 2 → 85× überproportional |
| KK-4 | Sonnet | Tech-Stack | TK: proprietär (9/10). BKK PFAFF: WordPress (4/10) |
| Evidenz | Opus | Evidenzsteuerung | These originär. Alle Einzelteile publiziert, Synthese nirgends |

#### Methodische Erkenntnisse

1. **Cross-Model ≠ Cross-Source:** Alle KI-Modelle schöpften aus denselben Quellen (Ärzteblatt, Virchowbund). Erst 14-Domain-Recherche brachte Bayern-Zahlen.
2. **Die „unter 1%"-Bubble ist real:** Naiver Agent landete in 20 Minuten bei „unter 1%".
3. **Alternative Hypothesen TESTEN:** H2 (Steuerungsinstrument) hat 35% Erklärungskraft — Studie wird stärker wenn sie das anerkennt.
4. **Prior-Art vor Originalitätsbehauptung:** Beide Synthesen geprüft, beide originär.
5. **Reihenfolge-Bias-Kontrolle:** Zwei Agenten, umgekehrte Listen → konvergiert.

#### Zwei originäre wissenschaftliche Beiträge (Prior-Art-Check bestanden)

1. **Definitionsdivergenz:** „Unter 1%" vs. „72%" ist kein Wahrnehmungsfehler, sondern ein Messproblem (drei Schichten des Regressbegriffs, Faktor 500×)
2. **Evidenz in formaler Verkleidung:** Regress und Fortbildung sind zwei parallele Evidenzkanäle — punitiv vs. edukativ

#### Bilanz: Was bleibt, was fällt, was kommt dazu

**Was wegfällt/sich abschwächt:**
- „Das System misst nicht medizinische Qualität" → zu pauschal (~35% der V2-Prüfungen sind evidenzbasiert)
- „V1 ist unfair" → widerlegt (Schutzstufenmodell)
- „Unter 1% ist Täuschung" → zu scharf (Definitionsproblem, nicht Lüge)
- „Keine V2-Daten" → falsch (BMG hat 47.000, werden nur nicht integriert publiziert)

**Was stärker wird:**
- V2b (Formfehler) ist isoliert betrachtet noch problematischer (chirurgischeres Argument)
- Kommunikationsasymmetrie jetzt empirisch belegt (BMG, Bayern, Poisson)
- Ribbat 72% rechnerisch plausibel (nicht mehr „überraschend" sondern „erwartbar")
- Fehlende Transparenz stärker — Daten EXISTIEREN und werden TROTZDEM nicht publiziert

**Was dazukommt:**
- Definitionsdivergenz als zentraler originärer Befund
- Zwei Schichten der Formalität (echte Form vs. codierte Evidenz)
- Punitiver vs. edukativer Evidenzkanal (V2 vs. CME)
- Kassenspezifisches Prüfverhalten (BKK Pfalz 85× überproportional)
- Bubble-Diagnose der öffentlichen Diskussion

**Human-in-the-Loop:** LG stellte beide auslösenden Fragen, verwarf „Täuschungs"-Framing zugunsten von „Definitionsproblem", bestand auf Test alternativer Hypothese (H2).

---

## 3. Abhängigkeitsstruktur

```
Schicht 1 — Empirie (#1-4)
  REGRESS_FAKTEN → ANONYMER_FALL → AKADEMISCHE_EINORDNUNG
       ↓
Schicht 2 — Vertiefung (#5-22)
  TIEFENANALYSE → EINZELFALLPRÜFUNG_MECHANIK → GKV_BELEGE
  GESCHICHTE → CHANGELOG → CONTAINER_GENEALOGIE
  SOFTWARE → PVS_KOSTEN → PVS_TOOL_MACHBARKEIT
  FOLGEKOSTEN → VERGLEICH_KOSTENTREIBER
       ↓
Schicht 3 — Synthese (#23-27)
  MODELLARZT ← FOLGEKOSTEN + AKADEMISCHE_EINORDNUNG
  SPIELTHEORIE ← SYSTEMWIDERSPRUCH + FOLGEKOSTEN
  CONTAINER_BUGS ← CONTAINER_GENEALOGIE
  CONTAINER_VIRUS ← CONTAINER_BUGS
       ↓
Schicht 4 — Bewertung (#28-29)
  VERFASSUNGSRECHT ← alle Vorarbeiten
  GPE_SELBSTERHALTUNG ← CONTAINER_GENEALOGIE + Niskanen
       ↓
Schicht 5 — Theorierahmen + Core (#30-31 + Review)
  Freidson/Power/Lipsky/Herd/Bernstein (Gemini → Claude)
  7 CORE-Referenzpunkte (Copilot + Claude + LG)
       ↓
Schicht 6 — Review + Korrektur (Phase X-XII)
  13-Phasen-Review → 108 PDF-Kommentare → Korrekturen
       ↓
Schicht 7 — Zweiter Review-Zyklus + Heilung (Phase XIII)
  4 Review-Agenten → Gemini Deep Research → KNV-Bewertung → PDF-Korrekturrunden
       ↓
Schicht 8 — CORE3 + CORE4 (Phase XIV)
  Differenzierte Verfahrensrealität → Multi-Agenten-Experiment → Definitionsdivergenz → Doppelfunktion → Prior-Art-Checks
```

---

## 4. Offene Aufgaben für erweiterte Methodendokumentation

- [ ] **TODO #18:** Echte Prompts aus Session-Logs extrahieren (Haiku-Schwärme auf ~90 JSONL-Dateien)
- [ ] Sender-Empfänger-Modell: Prompt-Intention vs. Analyse-Ergebnis vergleichen
- [ ] Multi-Modell-Inputs getrennt dokumentieren (welche Passage stammt von welchem Modell?)
- [ ] Copilot-Review-Sessions: Originaltext vs. Korrekturvorschläge gegenüberstellen

---

---

## 5. Meta-Methode: Rekonstruktion der Analyse durch die analysierten Werkzeuge

Die Dokumentation des eigenen Analyseprozesses wurde selbst mehrstufig erstellt:

| Schritt | Werkzeug | Was es lieferte |
|---|---|---|
| 1 | **Haiku-Schwarm** (31 Dateien) | Prompt-Kerne aus allen Recherche-Dateien extrahiert (Header-Analyse) |
| 2 | **Opus-Synthese** (Session-Kontext) | Chronologische Einordnung, Ableitungsketten, Hypothesenrevisionen |
| 3 | **Session-Berichte** (3 Stück) | Phasen-Übergänge, Agenten-Koordination, Entscheidungspunkte |
| 4 | **LG (menschliche Erinnerung)** | Richtungsentscheidungen, Bewertungen, Korrekturen am Narrativ |
| 5 | **PDF-Review-Workflow** (PyMuPDF) | 108 Kommentare automatisiert extrahiert und eingearbeitet |

**Methodische Reflexion:** Diese Rekonstruktion ist selbstreferenziell — die Werkzeuge, die den Analyseprozess durchgeführt haben, dokumentieren ihn rückwirkend. Das erzeugt einen epistemischen Zirkel: Die Dokumentation ist so zuverlässig wie die Werkzeuge, deren Zuverlässigkeit sie dokumentiert. Die einzige Brechung dieses Zirkels ist der menschliche Reviewer (LG), der unabhängig vom KI-System bewerten kann, ob die Rekonstruktion plausibel ist.

**Offener Schritt:** Die echten User-Prompts (die tatsächlichen Chat-Messages) sind in den JSONL-Session-Logs archiviert (~90 Dateien). Ein Vergleich zwischen dem rekonstruierten Prompt-Kern (Haiku-Extraktion aus Dateien) und dem echten Prompt (JSONL-Extraktion) würde das Sender-Empfänger-Modell vervollständigen: Wie viel ging zwischen Intention (Prompt) und Ergebnis (Analyse) verloren oder wurde hinzugefügt?

---

*Dokument erstellt: 2026-04-11 | CL + LG*
*Quellen: 31 Recherche-Dateien, 5 Session-Berichte, 1 Haiku-Schwarm-Extraktion, 108+11 PDF-Kommentare, 4 Review-Agenten*
*Erweitert gegenüber WALK_OF_ANALYSIS.md (v1, 2026-04-10). Phase XIII ergänzt 2026-04-11. Phase XIV ergänzt 2026-04-11.*
