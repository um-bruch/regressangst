# Methoden-Kniffe: Vollständige Inventarisierung aller Steuerungstechniken

> **Projekt:** Regress-Melder / ST-001 / PP-003
> **Zeitraum:** 07.04.2026 – 11.04.2026
> **Methode:** Systematische Extraktion aus 127 Human-Prompts, 81 LLM-Prompts, 9 Meta-Agenten-Prompts
> **Erstellt:** 11.04.2026 | CL (Methodologie-Analytiker)

---

## Gesamttabelle

| # | Kategorie | Technik | Prompt-Beispiel (Kurzform) | Prompt-ID | Wiss. Pendant | Neuheitsgrad |
|---|-----------|---------|---------------------------|-----------|---------------|-------------|
| **A. AGENTENSTEUERUNG** | | | | | | |
| 01 | A. Steuerung | **Parallele Agenten-Schwärme** — Mehrere Sub-Agenten gleichzeitig mit verschiedenen Aufträgen losschicken | "4 parallele Review-Agenten: Wissenschaft, Kohärenz, Design, Naive" | H91, A42-A45 | Ensemble Methods, Multi-Agent-Debate (Du et al. 2023) | ADAPTIERT |
| 02 | A. Steuerung | **Gestaffelte Wellen** — Erste Agentenwelle liefert Daten, zweite Welle vertieft auf Basis der Ergebnisse | "Agent 1 Datenpunkte + Agent 2 Impressum + Agent 3 Kategorisierung" → dann "Naiver Agent + Opus V2 + Widersprüche" | H116→H117 | Sequential experimental design | ADAPTIERT |
| 03 | A. Steuerung | **Arbeitsteilung nach Kompetenz** — Verschiedene Agenten für verschiedene Aspekte: Datensammlung, Verifizierung, Analyse | Agent 1: Suchstrings. Agent 2: Impressum. Agent 3: Kategorisierung | A48/A49/A50 | Division of labor in distributed systems | STANDARD |
| 04 | A. Steuerung | **Modell-Eskalation** — Routine-Aufgaben an billigeres Modell (Sonnet), Urteilsaufgaben an teureres (Opus) | "Sonnet für Datensammlung, Opus für V2-Zahlen unabhängig finden" | A48 vs. A53 | Tiered computing, Cost-aware ML | ADAPTIERT |
| 05 | A. Steuerung | **Cross-Model-Handoff per Copy-Paste** — Mensch als Brücke zwischen Modellen die nicht direkt kommunizieren | "Copilot-Review einfügen" / "Gemini-Ergebnisse übergeben" | H34, H35, H36, H42, H51-H57, H93 | Human-mediated multi-agent systems | ADAPTIERT |
| 06 | A. Steuerung | **Gemini als Backup-System** — Wenn Claude-Agenten hängen, gleiche Aufgabe an Gemini | "GPE-Etats, BRH-Berichte" (Gemini, weil 2 Claude-Agenten hängten) | G04, G05 | Redundancy / Failover | STANDARD |
| 07 | A. Steuerung | **Haiku-Schwarm-Extraktion** — Billigstes Modell liest Dateien und rekonstruiert Prompt-Kerne aus Headern | "31 Dateien → Prompt-Kerne" (Haiku für Routine-Inventarisierung) | A29 (M17 in Bewertung) | Summarization pipelines | STANDARD |
| 08 | A. Steuerung | **Übergabe-/Continuation-Prompts** — Strukturierte Wissenspakete für Session-Übergang mit Leseliste | "Wissenspaket: CORE3 + CORE4 + SOURCE + MASTERPLAN lesen" | H97, H125 | Session continuity protocols | ADAPTIERT |
| 09 | A. Steuerung | **5+1 Parallelstruktur** — 5 Agenten bearbeiten je ein Dokument, 1 Executive-Summary-Agent fasst zusammen | "5 Agenten (Studie + PP-003 + 3 Broschüren) + Executive Summary" | H110, A47 | Map-Reduce-Paradigma | ADAPTIERT |
| 10 | A. Steuerung | **Batch-Priorisierung** — 108 Kommentare nach Aufwand sortiert, schnelle zuerst | "52 offene Kommentare, schnelle Textänderungen zuerst" | H90 | Triage / Priority queuing | STANDARD |
| **B. ROLLENZUWEISUNGEN** | | | | | | |
| 11 | B. Rollen | **Persona-Prompt mit Expertise** — Agent bekommt spezifische Berufsrolle zugewiesen | "Du bist ein erfahrener BVerfG-Anwalt. 5 Angriffsvektoren" | H33, A27 | Role prompting (Shanahan et al. 2023) | STANDARD |
| 12 | B. Rollen | **Versorgungsforscher-Persona** — Agent sucht als Fachexperte ohne Vorkenntnisse des Projekts | "Versorgungsforscher: V1/V2-Einführung, KEINE Tipps, V2-Zahlen finden" | A53 | Expert elicitation | STANDARD |
| 13 | B. Rollen | **Unabhängiger Policy-Analyst** — Agent liest Studie "kalt" und formuliert Lösungen | "Unabhängiger Policy-Analyst: ST-001 kalt lesen, 7 Lösungen" | A41 | Independent peer review | STANDARD |
| 14 | B. Rollen | **Naiver Lösungs-Agent** — Agent ohne Vorkenntnisse soll frische Ideen bringen | "Naiver Lösungs-Agent: Frische Vorschläge ohne Vorkenntnisse" | A45 | Beginner's mind / Outsider perspective | ADAPTIERT |
| 15 | B. Rollen | **Perspektivwechsel: Kassen-Sicht** — Explizit die Gegenposition einnehmen | "GKV-SV verteidigt Einzelfallprüfung als effizient — welche Belege?" | H26 | Steelmanning / Principle of charity | STANDARD |
| 16 | B. Rollen | **Rollendifferenzierung im Review-Panel** — Verschiedene Reviewer-Rollen parallel: Wissenschaft, Kohärenz, Design, Naiv, Widerleger | 4-Agenten-Panel mit getrennten Aufträgen | H91, A42-A45 | Multi-perspectival review (aus Peer Review adaptiert) | ADAPTIERT |
| 17 | B. Rollen | **Journalist-ohne-Vorwissen-Persona** — Simulierter Laie googelt Kernfrage | "Finde heraus wie viel Prozent Regresse es bei Ärzten gibt" | A52 | Audit studies (Noble 2018) | NEU |
| **C. EXPERIMENTELLE DESIGNS** | | | | | | |
| 18 | C. Experiment | **Naive-Suche / Bubble-Test** — Verblindeter Agent sucht die Kernfrage und dokumentiert, welche Narrative die Treffer dominieren | "Naive Suche: 'Wie viel Prozent Regress Arzt'" → "Unter 1%" dominiert | H117, A52 | Filter Bubble Research (Pariser 2011), Search Audit Studies | NEU |
| 19 | C. Experiment | **Reihenfolge-Bias-Kontrolle** — Zwei Agenten bewerten dieselbe Liste, einer vorwärts, einer rückwärts | "Gleiche Bewertung, umgekehrte Reihenfolge" | H119, A55/A56 | Order-effect control (Krosnick 1999) | ADAPTIERT |
| 20 | C. Experiment | **Blind-Bewertung ohne Kontext** — Agent bewertet Websites ohne zu wissen, warum | "Websites bewerten ohne zu wissen worum es geht" | H119, A55 | Single-blind assessment | ADAPTIERT |
| 21 | C. Experiment | **Prior-Art-Check als Experiment** — 20+ Suchanfragen nach der eigenen Synthese vor Originalitätsbehauptung | "Existiert unsere Synthese (Definitionsdivergenz) bereits?" | H118, A54 | Patent novelty search / Prior art review | ADAPTIERT |
| 22 | C. Experiment | **Alternative-Hypothese-Test** — Gegenthese aktiv und ernsthaft prüfen, Erklärungskraft quantifizieren | "Alternative Hypothese: Gesetzgeber steuert Medizin über Verordnung" → 35% Erklärungskraft | H120, A60 | Strong inference (Platt 1964) | STANDARD |
| 23 | C. Experiment | **Cross-Model-Divergenz als Signal** — Abweichungen zwischen Claude/Copilot/Gemini als Hinweis auf unsichere Befunde | "Prüfe Copilot-Kurzgutachten, ob ihr euch einig seid" → Konvergenz 5/7, Divergenz 2/7 | H52 | Inter-rater reliability | ADAPTIERT |
| 24 | C. Experiment | **Cross-Source-Divergenz (14-Domain-Analyse)** — Nicht nur verschiedene Modelle, sondern verschiedene Quellen-Domains systematisch vergleichen | Agent 2: 14 Impressums, Agent 3: Kassennahe/Ärztenahe/Neutral | A49, A50 | Source triangulation (Denzin 1978) | ADAPTIERT |
| 25 | C. Experiment | **Modellkontrolle: Opus vs. Sonnet für gleiche Aufgabe** — Prüfen ob teureres Modell bei urteilsintensiven Aufgaben andere Ergebnisse liefert | Sonnet für Datensammlung, Opus für Interpretationsaufgaben | A48 vs. A53, A54 | Model comparison studies | STANDARD |
| 26 | C. Experiment | **Multi-Agenten-Konvergenztest** — Mehrere Agenten bearbeiten unabhängig dieselbe Frage, Konvergenz = Robustheit | 4 Review-Agenten → Konvergenz bei Major Issues prüfen | A42-A45 | Delphi-Methode | ADAPTIERT |
| **D. WISSENSCHAFTLICHE METHODEN AUF AGENTEN ÜBERTRAGEN** | | | | | | |
| 27 | D. Wiss. Methoden | **Devil's Advocate / Widerleger-Agent** — Agent versucht systematisch die Kernthesen zu widerlegen | "Devil's Advocate: Systematisch Kernthesen widerlegen" → 5 Verwundbarkeiten | A37 | Advocatus Diaboli (kath. Seligsprechung), Red Teaming | STANDARD |
| 28 | D. Wiss. Methoden | **Heilungs-Agent nach Widerlegung** — Direkt nach dem Widerleger kommt ein Agent, der Strategien zur Behebung entwickelt | "Heilungsplan: 5 Strategien für die Verwundbarkeiten" | A38 | Constructive criticism / Remediation cycle | ADAPTIERT |
| 29 | D. Wiss. Methoden | **Peer-Review-Simulation** — Mehrstufiges Review-Panel mit verschiedenen Reviewer-Typen, aufsteigend in Strenge | Thematisch → Design → Wissenschaftlich → Unabhängig → Widerleger → Heilung → Konstruktiv | A33-A39 | Peer review process (7 Phasen) | ADAPTIERT |
| 30 | D. Wiss. Methoden | **Triangulation (Cross-Model + Cross-Source + Cross-Time)** — Gleiche Frage an verschiedene Modelle, verschiedene Quellen, zu verschiedenen Zeitpunkten | Claude + Copilot + Gemini; 14 Domains; Sessions über 4 Tage | Projekt-übergreifend | Triangulation (Denzin 1978) | STANDARD |
| 31 | D. Wiss. Methoden | **Falsifikationsversuch als Pflicht** — Eigene Hypothesen werden explizit getestet, Revisionen werden dokumentiert | 5 dokumentierte Hypothesenrevisionen (GSG→GRG, Moosazadeh→Zheng, V1-Fairness etc.) | H101, H105, H108 | Falsificationism (Popper 1935) | STANDARD |
| 32 | D. Wiss. Methoden | **Sättigungsprinzip (implizit)** — Recherche wird beendet wenn neue Agenten keine neuen Befunde mehr liefern | Prior-Art-Check: "20+ Suchanfragen, letzte ohne neue Ergebnisse" | A54 | Theoretical saturation (Glaser/Strauss 1967) | STANDARD |
| 33 | D. Wiss. Methoden | **Halluzinations-Detektion als Methode** — Gemini-Halluzinationen systematisch aufdecken und als Korrektursignal nutzen | "Gemini halluziniert, doppelchecken" → Halluzinationsregel: "Klassiker zuverlässig, aktuelles kritisch" | H42 | Error analysis / Model calibration | ADAPTIERT |
| 34 | D. Wiss. Methoden | **Hypothesenrevision unter Dokumentation** — Jede Revision wird in CORE-Dokumenten als "Was sich entschärft hat" festgehalten | 5 Revisionen tabellarisch in MASTER-CORE | CORE-Evolution | Pre-registration amendments (OSF) | ADAPTIERT |
| **E. STEUERUNGSMUSTER** | | | | | | |
| 35 | E. Steuerung | **Iterative Verfeinerung / "Weiterhin dünn"** — Wiederholtes Feedback zu derselben Schwachstelle bis sie behoben ist | "2.3 Patientenschäden weiterhin dünn" (erstes + zweites Feedback) | H05, H08 | Iterative refinement / Spiral model | STANDARD |
| 36 | E. Steuerung | **Eskalation Sonnet → Opus** — Interpretationsaufgaben bewusst an stärkeres Modell delegieren | "Versorgungsforscher: V2-Zahlen unabhängig finden" → Opus | A53, A54, A60, A61 | Tiered analysis / Expert escalation | ADAPTIERT |
| 37 | E. Steuerung | **Gegenlesen gegen Referenzdokument (CORE-Check)** — Jedes Dokument wird gegen den kanonischen CORE geprüft | "Prüfe ST-001 gegen 7 CORE-Referenzpunkte" | A30, A31, A32 | Consistency checking / Regression testing | ADAPTIERT |
| 38 | E. Steuerung | **Zusammenführung in Truth-Dokument** — Alle Erkenntnisse fließen in ein zentrales Referenzdokument | "MASTER-CORE erstellen, CORE3/CORE4 zusammenführen" | H126 | Single source of truth / Living document | STANDARD |
| 39 | E. Steuerung | **Qualitätsgates vor Weiterschritt** — Explizite Prüfpunkte bevor die nächste Phase beginnt | "CORE definieren, Kohärenz-Review beauftragen" vor Versand | H65 | Quality gates (Stage-Gate, Cooper 1990) | STANDARD |
| 40 | E. Steuerung | **Richtungsänderung als expliziter Akt** — Fundamentale Kurswechsel werden als solche markiert und begründet | "Getrennte Dokumente: Begleitstudie = Truth-Dokument" / "Broschüren-Architektur umbauen" | H32, H77, H100, H122 | Pivot (Lean Startup) | STANDARD |
| 41 | E. Steuerung | **Rückfluss zwischen Dokumenten** — Erkenntnis in einem Paper wird in andere zurückgespielt | "Arbeite am Begleitpaper, Rückfluss möglich" | H86 | Bidirectional consistency maintenance | STANDARD |
| 42 | E. Steuerung | **PDF-Review-Workflow (Human-in-the-Loop)** — Mensch markiert in PDF, Agent extrahiert mit PyMuPDF und arbeitet ein | "PDF-Kommentare einarbeiten, Testkommentar mit Code" | H84, H87, H94 | Annotated document review | ADAPTIERT |
| 43 | E. Steuerung | **CHANGELOG-Pflicht** — Jede Version wird mit Änderungsprotokoll versehen | "CHANGELOG in Studiendokumente einführen" | H67 | Version control / Audit trail | STANDARD |
| 44 | E. Steuerung | **AI-Transparenzdisclaimer als Pflicht** — Ab sofort muss jedes Dokument seinen KI-Einsatz offenlegen | "AI-Transparenzdisclaimer höchste Stufe, ab jetzt Pflicht" | H46 | AI transparency requirements (EU AI Act) | STANDARD |
| 45 | E. Steuerung | **"Was bleibt?" — Erzwungene Bilanzziehung** — Nach jeder größeren Revision bewusst fragen was noch übrig ist | "Was bleibt dann noch von unserer Studie?" → 5 Entschärfungen + 4 Verstärkungen | H122 | Post-mortem / Retrospektive | ADAPTIERT |
| 46 | E. Steuerung | **Masterplan als Steuerungsinstrument** — Formaler Phasenplan der den gesamten Workflow vorgibt | "Masterplan: Walk → offene Punkte → Review → PP-003 → Broschüren → Deploy" | H96, H124 | Project management / Work breakdown structure | STANDARD |
| **F. INNOVATIVE/UNGEWÖHNLICHE TECHNIKEN** | | | | | | |
| 47 | F. Innovation | **Container-Metapher (Norm-Genealogie)** — Rechtsvorschriften als "Container" modellieren, Normwanderungen kartieren, "Gesetzesabstand" als Verschleierungsmaß | "Prüfverfahren über SGB-V-Container genealogisch verteilt? Verschleierungstiefe?" | A21 | Legal Genealogy (Duxbury 2004), Netzwerkanalyse des Rechts | NEU |
| 48 | F. Innovation | **Bug-Report-Metapher (Gesetzesdefekte)** — Software-Engineering-Terminologie auf Gesetze: Bug-Klassen, Severity, Fix-Komplexität | "Technische Bruchstellen im SGB-V-Prüfverfahrensrecht" → 10 Bug-Klassen | A25 | Gesetzesfolgenabschätzung (GFA), Legal Design | NEU |
| 49 | F. Innovation | **Virus-Metapher (Zielkonflikte)** — Unauflösbare Zielkonflikte als "strukturelle Viren" in Normensystemen | "Struktureller Virus im SGB V — gegensätzliche Zielsetzungen?" → §12 SGB V | A26 | Normative Spannungsanalyse (Rechtstheorie) | NEU |
| 50 | F. Innovation | **Bubble-Test (Informationsblase messen)** — LLM als standardisierter "Probe-Nutzer" für reproduzierbare Search Audits | "Naive Suche 'Wie viel Prozent Regress?'" → "Unter 1%" dominiert Top 5 | A52 | Search Audit Studies (Noble 2018), Filter Bubble (Pariser 2011) | NEU |
| 51 | F. Innovation | **CORE-Evolution (lebender Referenzrahmen)** — Kanonische Referenzpunkte mit Versionshistorie, Filtermechanismus: nur was Review übersteht bleibt | CORE 1-7 → CORE3 → CORE4 → MASTER-CORE | H65, H109, H115, H126 | Living Systematic Reviews (Elliott 2017), Registered Reports | NEU |
| 52 | F. Innovation | **Definitionsdivergenz-Analyse (Drei Schichten)** — Verschiedene Messdefinitionen erzeugen Faktor-500-Differenz: gleicher Begriff, verschiedene Zahlen | "Unter 1% ergibt sich weil Regressdefinition zu spät greift" | H115, CORE4 | Metrologie / Messfehler-Typologie | ADAPTIERT |
| 53 | F. Innovation | **Niskanen-Bürokratie-Audit** — Institutionenökonomische Kriterien auf eine konkrete Organisation anwenden | "Sind GPE eine Niskanen-Bürokratie? 6 Kriterien prüfen" | A28 | Public Choice Theory (Niskanen 1971) | STANDARD |
| 54 | F. Innovation | **Zertifikatsfehler-Diagnose** — System erzeugt formale "Zertifikate" (stat. Unauffälligkeit, jur. Unbedenklichkeit) die nicht das messen was sie behaupten | "Stat. Prüfung misst medizinische Zertifikate, Einzelfall juristische" | H53 | Validity analysis / Construct validity | ADAPTIERT |
| 55 | F. Innovation | **Schutzstufenmodell** — V1 als differenziertes Schutzstufensystem erkennen statt als bloße Prüfung | "Prüfe wie V1-Schritte ablaufen: Anhörung → Beratung → Karenzzeit → Deckel" | H106, H107 | Multi-level protection analysis | ADAPTIERT |
| 56 | F. Innovation | **"Vielleicht irren wir uns" als Methode** — Explizites Hinterfragen der eigenen Überzeugung als Prompt-Strategie | "Vielleicht irren wir uns auch bei V2, Widerspruchsmöglichkeiten prüfen" | H108 | Self-skepticism / Critical reflexivity | STANDARD |
| 57 | F. Innovation | **Lesart-Multiplikation** — Dieselbe Datenlage systematisch aus verschiedenen Blickwinkeln lesen | "Zwei Lesarten" (H16), dann "Lesart C: Kasse als aktiver Scanner" (H78) | H16, H78 | Multiple interpretations (Hermeneutik) | STANDARD |
| 58 | F. Innovation | **Firewall-Metapher (Prävention)** — Formfehler-Prävention als "Firewall": Arzt verordnet, Organisation kodiert | "Firewall gegen Formfehler: Prozesse aufbauen, Auslagerung" | H76 | Defense-in-depth (IT-Security) | NEU |
| 59 | F. Innovation | **Modellarzt-Konstrukt** — Idealtypischen Arzt mit maximaler Regressangst modellieren und Szenarien durchspielen | "Modellarzt mit maximaler Regressangst modulieren, Szenarien" | H30, A22 | Idealtypen (Weber 1922), Agent-based modeling | ADAPTIERT |
| 60 | F. Innovation | **Gordischer-Knoten-Framing** — Juristisches Problem als unlösbaren Knoten framen, dann "Backdoor" suchen | "Gordischer Knoten: BVerfG-Anwalt-Persona, Backdoor finden, Eigentumsfrage" | H33 | Lateral thinking (de Bono 1967) | ADAPTIERT |
| 61 | F. Innovation | **IFG-Anfragen als Forschungsinstrument** — Informationsfreiheitsgesetz strategisch zur Datenbeschaffung einsetzen | "FragDenStaat-Maßnahmen als TODOs" → 12 IFG-Anfragen formuliert | H18, H38, H79 | Freedom of Information requests (Journalismus) | ADAPTIERT |
| **G. META-REFLEXIVE TECHNIKEN** | | | | | | |
| 62 | G. Meta | **Prompt-Archäologie** — Eigene Prompts systematisch extrahieren und analysieren | "Lass nach allen Prompts der letzten 7 Tage suchen" | H127, M07 | Reflexive methodology (Alvesson & Sköldberg) | NEU |
| 63 | G. Meta | **Methodik-Review durch eigenes Werkzeug** — Agent bewertet die Methodik die er selbst angewendet hat | "Bewerte alle Methoden: etabliert/adaptiert/neu/kritisch" | M08 | Self-assessment (mit epistemischem Zirkel) | NEU |
| 64 | G. Meta | **Privacy-Check als Pflichtschritt** — Vor Veröffentlichung automatisierter Scan auf persönliche Daten | "Scanne Repo auf E-Mails, Telefon, Adressen, Credentials" | M06 | PII detection / Data protection impact assessment | STANDARD |
| 65 | G. Meta | **Walk of Analysis** — Vollständiger Erkenntnisweg mit allen Sackgassen, Revisionen, Wendepunkten dokumentieren | "Walk of Analysis kondensieren, alle Einzelanalysen, Prompts, Modelle" | H71, H89 | Audit trail (Qualitative Forschung) | ADAPTIERT |
| 66 | G. Meta | **Epistemischer Zirkel bewusst reflektieren** — Explizites Benennen: "Claude analysiert Claude" als Limitation | "Die Dokumentation ist so zuverlässig wie die Werkzeuge, deren Zuverlässigkeit sie dokumentiert" | M08 | Reflexive epistemology | ADAPTIERT |
| 67 | G. Meta | **Prompt-Klassifikation (Taxonomie)** — Alle Prompts nach Typ/Thema/Zweck/Absicht/Methode/Folge systematisieren | "Klassifiziere alle 208 Prompts nach Typ/Thema/Zweck/Absicht" | M09 | Content analysis / Grounded theory coding | ADAPTIERT |
| 68 | G. Meta | **Versionsbindung zwischen Dokumenten** — Ableger-Dokumente verweisen auf die genaue Version des Truth-Dokuments | "Getrennte Dokumente: Begleitstudie = Truth-Dokument, Ableger mit Versionsbindung" | H77 | Dependency management (Software Engineering) | ADAPTIERT |

---

## Zusammenfassung nach Kategorie

| Kategorie | Anzahl | STANDARD | ADAPTIERT | NEU |
|-----------|--------|----------|-----------|-----|
| A. Agentensteuerung | 10 | 3 | 7 | 0 |
| B. Rollenzuweisungen | 7 | 4 | 2 | 1 |
| C. Experimentelle Designs | 9 | 3 | 5 | 1 |
| D. Wissenschaftliche Methoden auf Agenten | 8 | 4 | 4 | 0 |
| E. Steuerungsmuster | 12 | 7 | 5 | 0 |
| F. Innovative/Ungewöhnliche Techniken | 15 | 3 | 7 | 5 |
| G. Meta-reflexive Techniken | 7 | 1 | 5 | 1 |
| **Gesamt** | **68** | **25 (37%)** | **35 (51%)** | **8 (12%)** |

---

## Neuheitsgrad-Zusammenfassung

### STANDARD (25 Techniken, 37%)
Bekannte Methoden aus der LLM-Forschung, aus der Wissenschaftsmethodik oder dem Projektmanagement, die hier korrekt angewendet werden. Kein Publikationspotenzial als eigenständige Methode, aber solide Basis.

### ADAPTIERT (35 Techniken, 51%)
Methoden aus anderen Feldern (Psychologie, Metrologie, Software Engineering, Journalismus, Qualitative Forschung), die auf KI-gestützte Forschung übertragen werden. Dies ist die größte Kategorie und das eigentliche Rückgrat des Projekts. Viele dieser Adaptionen sind nicht trivial und könnten in einem Methodik-Paper als "Transfer-Innovationen" beschrieben werden.

### NEU (8 Techniken, 12%)
Techniken, die in dieser Form nicht in der LLM-Forschungsliteratur dokumentiert sind:

| # | Technik | Warum neu | Formalisierungspotenzial |
|---|---------|-----------|--------------------------|
| 17 | Journalist-ohne-Vorwissen-Persona | Operationalisiert den "naiven Informationssucher" als standardisiertes LLM-Experiment | Mittel |
| 18 | Bubble-Test | LLM als reproduzierbarer Probe-Nutzer für Search Audits; löst das Problem der Suchhistorie-Abhängigkeit | **Hoch** |
| 47 | Container-Metapher | "Gesetzesabstand" als quantifizierbares Maß für normative Verschleierung; braucht Formalisierung | Mittel |
| 48 | Bug-Report-Metapher | Software-Terminologie auf Gesetzgebung; didaktisch stark, methodisch äquivalent zu GFA | Gering |
| 49 | Virus-Metapher | Produktiv für Exploration, aber metaphorisch überreizt (s. Methodik-Bewertung M9) | Gering |
| 51 | CORE-Evolution | Living Reference Framework innerhalb eines einzelnen Forschungsprojekts; Filterregel "übersteht Review → bleibt" | **Hoch** |
| 58 | Firewall-Metapher | IT-Security-Konzept auf Formfehler-Prävention; nützlich für Praxisleitfäden | Gering |
| 62 | Prompt-Archäologie | Systematische Rückgewinnung und Analyse eigener Prompts als Forschungsdokumentation | **Hoch** |

---

## Die wertvollsten Techniken (Top 10)

Sortiert nach dem Kriterium: **Wie viel hat diese Technik konkret zur Erkenntnisqualität des Projekts beigetragen?**

### 1. CORE-Evolution (#51) — NEU, Formalisierungspotenzial HOCH
**Was es brachte:** Der lebende Referenzrahmen (CORE 1-7 → CORE3 → CORE4 → MASTER-CORE) zwang dazu, jede neue Erkenntnis gegen den bestehenden Kanon zu prüfen. Die Versionierung machte sichtbar, wie sich Hypothesen veränderten. Ohne CORE wäre das Projekt in der Masse von 31 Einzelanalysen zerfallen.

**Warum formalisierbar:** "Living Reference Framework für KI-gestützte Forschungsprojekte" — mit Regeln wann ein Referenzpunkt aufgenommen/revidiert/entfernt wird. Verbindung zu Living Systematic Reviews und Registered Reports.

### 2. Bubble-Test (#18) — NEU, Formalisierungspotenzial HOCH
**Was es brachte:** Nachweis, dass die öffentlich zugängliche Information zum Regresssystem einseitig ist. "Unter 1%" dominiert die ersten 5 Google-Treffer — ein Befund, der die Definitionsdivergenz empirisch untermauert.

**Warum formalisierbar:** "LLM-Search-Audit" — ein LLM als standardisierter, reproduzierbarer Probe-Nutzer, der das Problem der personalisierten Suchergebnisse umgeht. Definiertes Protokoll: Suchstring, Modell, Zeitpunkt, Top-N-Ergebnisse, Narrativ-Analyse.

### 3. Cross-Source-Divergenz-Analyse (#24) — ADAPTIERT
**Was es brachte:** Die Erkenntnis, dass Cross-Model allein nicht reicht, weil alle Modelle aus denselben Quellen schöpfen. Die 14-Domain-Analyse mit Impressum-Verifizierung und Perspektiv-Kategorisierung (kassennahe/ärztenahe/neutral) deckte die Kommunikationsasymmetrie auf.

**Warum wertvoll:** Korrigiert einen häufigen Fehler in der KI-Forschung — die Annahme, verschiedene Modelle seien automatisch verschiedene Perspektiven. Das Prinzip "Cross-Source schlägt Cross-Model" verdient breite Diskussion.

### 4. Gestaffelte Agenten-Wellen (#02) — ADAPTIERT
**Was es brachte:** Die CORE4-Recherche (H116→H117) zeigt das Muster: Welle 1 (Daten + Impressum + Kategorisierung) liefert die Rohbasis, Welle 2 (Naiv + Opus-Unabhängig + Widersprüche) vertieft gezielt. Die zweite Welle wusste nicht, was die erste gefunden hatte.

**Warum wertvoll:** Simuliert ein mehrstufiges Forschungsdesign (explorative Phase → konfirmatorische Phase) in Echtzeit.

### 5. Hypothesenrevision unter Dokumentation (#34) — ADAPTIERT
**Was es brachte:** Fünf dokumentierte Revisionen (GSG→GRG, V1 unfair → V1 fair, keine V2-Daten → BMG 47.000, Gerichtsverfahren als Erfolg → als Systemversagen, 1% = selten → 1% = Definitionsartefakt). Jede Revision stärkte die Studie.

**Warum wertvoll:** Macht den Forschungsprozess transparent und widerlegt den Vorwurf des Bestätigungsfehlers. Der Tabellenansatz in MASTER-CORE ("Was sich entschärft hat") ist ein Modell für andere KI-gestützte Projekte.

### 6. Devil's Advocate → Heilungs-Agent (#27 + #28) — ADAPTIERT
**Was es brachte:** Der Widerleger identifizierte 5 echte Verwundbarkeiten, der Heilungs-Agent entwickelte Strategien dagegen. Dieses Paar (Zerstörung → Reparatur) ist effektiver als nur Kritik oder nur Verteidigung.

**Warum wertvoll:** Das Zweischritt-Muster (Angriff → Heilung) könnte als Standardbaustein in KI-Review-Pipelines formalisiert werden.

### 7. Modell-Eskalation Sonnet → Opus (#04 + #36) — ADAPTIERT
**Was es brachte:** Kosteneffiziente Ressourcennutzung. Sonnet sammelt Daten (billig, 15 Agenten), Opus urteilt (teuer, 4 Agenten). Beim CORE4-Experiment lag der Opus-Agent richtig bei Aufgaben, bei denen Sonnet gescheitert wäre (V2-Zahlen im BMG-GVSG finden).

**Warum wertvoll:** Tiered-Computing für Forschung. Die Heuristik "Routine → billiges Modell, Urteil → teures Modell" ist intuitiv, aber kaum formalisiert.

### 8. Walk of Analysis als Audit Trail (#65) — ADAPTIERT
**Was es brachte:** Eine vollständige Dokumentation des Erkenntniswegs mit allen 14 Phasen, allen Agenten, allen Revisionen. Macht die Studie von außen nachvollziehbar — ungewöhnlich für KI-gestützte Forschung.

**Warum wertvoll:** Die Walk of Analysis ist das methodische Gewissen des Projekts. Sie könnten als Template für andere KI-Forschungsprojekte dienen.

### 9. Reihenfolge-Bias-Kontrolle (#19) — ADAPTIERT
**Was es brachte:** Konvergenz bestätigt beim Kassen-Ranking (Agent vorwärts = Agent rückwärts). Kleiner Aufwand, großer Gewinn an Glaubwürdigkeit.

**Warum wertvoll:** Einfach zu implementieren, kostet einen zusätzlichen Agenten, kontrolliert einen bekannten LLM-Bias (Primacy/Recency).

### 10. Alternative-Hypothese-Test mit Erklärungskraft-Quantifizierung (#22) — STANDARD
**Was es brachte:** H2 (Regress als Evidenzsteuerung) bekam 35% Erklärungskraft zugesprochen. Die Studie wurde dadurch ehrlicher und stärker, nicht schwächer. Die "Doppelfunktion" (65% Kontrollsystem + 35% Steuerungsinstrument) ist differenzierter als "System ist rein schädlich".

**Warum wertvoll:** Die Quantifizierung (auch wenn geschätzt) macht die Alternative greifbar. "Wir akzeptieren 35% der Gegenposition" ist eine mutige und wissenschaftlich vorbildliche Haltung.

---

## Techniken mit Formalisierungs- und Publikationspotenzial

Drei Cluster von Techniken könnten als eigenständiger Methodik-Beitrag publiziert werden:

### Cluster 1: "LLM-Research-Quality-Toolkit"
Umfasst: CORE-Evolution (#51), Walk of Analysis (#65), Prompt-Archäologie (#62), Versionsbindung (#68), CHANGELOG-Pflicht (#43)

**These:** KI-gestützte Forschung braucht eigene Qualitätsstandards. Dieses Toolkit bietet ein informelles, aber funktionierendes Framework: ein lebender Referenzrahmen, eine vollständige Prozessdokumentation, eine Rückgewinnung der Prompt-Geschichte und ein Versionierungssystem für Dokument-Abhängigkeiten. Es ist die KI-Forschungs-Variante von Registered Reports + Audit Trail.

### Cluster 2: "Beyond Cross-Model: Source-Aware Multi-Agent Validation"
Umfasst: Cross-Source-Divergenz (#24), Bubble-Test (#18/50), Blind-Bewertung (#20), Reihenfolge-Bias-Kontrolle (#19), Cross-Model-Divergenz als Signal (#23)

**These:** Cross-Model-Validation ist notwendig aber nicht hinreichend, weil Modelle aus denselben Quellen schöpfen. Echte Validierung erfordert Cross-Source: verschiedene Quellen, verschiedene Perspektiven, Impressum-Verifizierung. Der Bubble-Test macht die Informationsblase messbar. Die Bias-Kontrollen (Verblindung, Reihenfolge) sind aus der Psychologie bekannt, aber auf LLM-Agenten übertragbar und dort kaum angewendet.

### Cluster 3: "Metapher-Driven Legal Analysis"
Umfasst: Container-Metapher (#47), Bug-Report-Metapher (#48), Virus-Metapher (#49), Firewall-Metapher (#58)

**These:** Software-Engineering-Metaphern als Analysewerkzeuge für Rechtsvorschriften. Die Container-Metapher hat echtes Formalisierungspotenzial (Gesetzesabstand als Maß). Die Bug-Report-Metapher ist didaktisch wertvoll. Die Virus-Metapher ist überreizt, aber die Grundidee (Zielkonflikte als "Bugs im Normsystem") verdient Diskussion. Allerdings: Das schwächste der drei Cluster, weil die Formalisierung noch fehlt und die Metaphern teilweise mehr suggerieren als sie leisten.

---

## Statistische Übersicht

| Kennzahl | Wert |
|----------|------|
| Identifizierte Techniken insgesamt | 68 |
| Davon STANDARD | 25 (37%) |
| Davon ADAPTIERT | 35 (51%) |
| Davon NEU | 8 (12%) |
| Techniken mit hohem Formalisierungspotenzial | 3 (Bubble-Test, CORE-Evolution, Prompt-Archäologie) |
| Techniken in METHODIK_BEWERTUNG.md bereits erfasst | 23 |
| Hier neu identifizierte Techniken | 45 |
| Kategorien | 7 (A-G) |
| Prompt-IDs mit Technik-Bezug | 146 von 208 (70%) |

---

## Vergleich: METHODIK_BEWERTUNG.md (23 Methoden) vs. diese Analyse (68 Techniken)

Die METHODIK_BEWERTUNG fokussierte auf formale Methoden (Multi-Modell-Architektur, Poisson-Modell, Spieltheorie etc.). Diese Analyse ergänzt:

- **Steuerungsmuster (Kat. E):** 12 Techniken zur Prozesssteuerung, die nicht als "Methoden" im engeren Sinne gelten, aber den Forschungsprozess entscheidend strukturieren
- **Agentensteuerung (Kat. A):** 10 Techniken zur konkreten Orchestrierung von Sub-Agenten — das "Wie" der Multi-Agenten-Architektur
- **Meta-reflexive Techniken (Kat. G):** 7 Techniken der Selbstbeobachtung des Forschungsprozesses
- **Rollenspezifikationen (Kat. B):** 7 verschiedene Personas und Rollenzuweisungen, die über den generischen "Persona-Prompt" (M10) hinausgehen
- **Experimentelle Designs (Kat. C):** 9 Designs, von denen nur Bubble-Test (M4), Prior-Art (M5) und Reihenfolge-Bias (M6) in der Bewertung vorkamen

---

*Erstellt: 11.04.2026 | CL | Methodologie-Analyse auf Basis von 208 Prompts aus 4 Quelldokumenten*
