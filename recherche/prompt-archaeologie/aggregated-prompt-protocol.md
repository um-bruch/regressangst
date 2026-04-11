# Stufe 3: Aggregiertes Prompt-Protokoll

> **Projekt:** Regress-Melder / ST-001 / PP-003
> **Zeitraum:** 07.04.2026 – 11.04.2026
> **Methode:** Gruppierung aller klassifizierten Prompts nach Analyse/Phase
> **Erstellt:** 11.04.2026 | CL
> **Quelle:** categorized-prompt-protocol.md (Stufe 2)

---

## Analyseinheiten-Übersicht

| # | Analyse | Prompts (Human) | Prompts (Agent/LLM) | Zeitraum |
|---|---------|----------------|---------------------|----------|
| 1 | Strategie / Konzeptverteilung | H01–H03, H11, H39 | — | 07.–08.04. |
| 2 | PP-003 Versionen | H04–H05, H07–H08, H12–H13 | G01–G03 | 07.–08.04. |
| 3 | Broschüren / Textgrundlagen | H06, H09, H59–H60, H69, H98–H100 | G01, G07 | 07.–11.04. |
| 4 | Phase II: Tiefenanalyse / Systemwiderspruch | H14–H20 | A01–A10 | 08.04. |
| 5 | Phase III: Folgekosten / Internationaler Vergleich | H22, H25, H27, H29–H31 | A05, A11–A16, A22–A24 | 08.04. |
| 6 | Phase IV: Einzelfall-Mechanik / GKV-Belege | H24, H26, H28 | A17–A21 | 08.04. |
| 7 | Phase V: Modellierung + Container-Analyse | H30–H31 | A22–A26 | 08.04. |
| 8 | Phase VI: Verfassungsrecht / GPE | H33 | A27–A28 | 08.04. |
| 9 | Phase VII: Gemini-Backup / Cross-Model | H36, H42 | G04–G06 | 08.04. |
| 10 | Phase IX: Core-Etablierung / V1-V2-Trennung | H48–H57, H61–H64 | C03–C09 | 09.04. |
| 11 | Phase IX: Schutzinstrumente / §29 BMV-Ä | H58 | C10 | 09.04. |
| 12 | Phase X: Review-Zyklen | H65–H66, H71–H73 | A29–A39 | 09.–10.04. |
| 13 | Phase XI: Formfehler-Heilbarkeit / Lesart C | H74–H76, H78–H81 | — | 10.04. |
| 14 | Phase XII: 108-Kommentare-Review / PDF-Workflow | H84–H90 | A40–A41 | 10.–11.04. |
| 15 | Phase XIII: 4-Review-Zyklus + Gemini | H91–H95 | A42–A46, G08–G09 | 11.04. |
| 16 | CORE3: V1-Schutzstufenmodell / V2a-V2b | H101–H110 | A47 | 11.04. |
| 17 | CORE4: Definitionsdivergenz / Kommunikationsasymmetrie | H111–H115 | A48–A53 | 11.04. |
| 18 | CORE4: Multi-Agenten-Experiment | H116–H119 | A48–A58 | 11.04. |
| 19 | CORE4: Doppelfunktion / Evidenzsteuerung | H120–H123 | A59–A61 | 11.04. |
| 20 | IFG-Anfragen | H18, H38, H70, H79 | A08 | 08.–10.04. |
| 21 | Meta / Übergabe / Masterplan / Dokumentation | H21, H23, H40, H67, H77, H82, H86, H95–H97, H124–H127 | — | 08.–11.04. |
| 22 | Versand / Kontakt | H10–H11, H43–H44, H47 | — | 08.–09.04. |
| 23 | Policy / Transparenz | H46 | — | 09.04. |
| 24 | Software / VerordnungsAmpel | H37, H41 | A11, A15, A20 | 08.04. |

---

## Detaillierte Analyse pro Einheit

---

### Analyse 1: Strategie / Konzeptverteilung
- **Auslösender Startprompt:** H01 — „SIDEQUEST: Recherche wer könnte unser Konzept umsetzen"
- **Anzahl Nachfragen:** 2 (1× Steuerung H02, 1× Steuerung H03)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** WebSearch, DB-Eintrag
- **Ergebnis:** Top-5-Umsetzerliste, Versandliste, Kontaktdatenbank-Entries
- **Dauer der Prompt-Kette:** 3 Prompts (H01–H03), danach H11 (Mail) und H39 (Therapiefreiheit e.V.)
- **Thema:** Konzeptverteilung an externe Umsetzer

---

### Analyse 2: PP-003 Versionen (v1.0–v2.2)
- **Auslösender Startprompt:** H04 — „Gemini-Handoff: PP-003 v1.0 LaTeX-Konvertierung bestätigen"
- **Anzahl Nachfragen:** 4 (2× Bestätigung H07/H13, 2× Korrektur H05/H08)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 2 (H07, H13)
- **Korrekturen:** 2 (H05: Patientenschäden dünn, H08: wiederholte Kritik)
- **Methodenauslösungen:** Gemini-Handoff, Cross-Model (Copilot), Textredaktion
- **Ergebnis:** PP-003 v1.0→v1.1→v1.2→v2.1→v2.2, PP-003K (Kurzfassung)
- **Dauer der Prompt-Kette:** 6 Prompts (H04–H08, H12–H13)
- **Thema:** Positionspapier PP-003 Iterationen
- **Besonderheit:** Copilot-Review (H12) brachte Pharmakovigilanz/CIRS/Chilling-Effect-Einordnung

---

### Analyse 3: Broschüren / Textgrundlagen (LF-001/002/003)
- **Auslösender Startprompt:** H06 — „ÜBERLEGUNGEN: LEITFADEN Prävention, Umgang, Mein Arzt hat Angst"
- **Anzahl Nachfragen:** 6 (2× Bestätigung H09/H69, 2× Steuerung H59/H98, 1× Methode H99, 1× Bestätigung H60)
- **Richtungsänderungen:** 1 (H100: Präsentationen als Broschüren statt LaTeX)
- **Bestätigungen:** 3 (H09, H60, H69)
- **Korrekturen:** 0
- **Methodenauslösungen:** Gemini LaTeX, Gemini SVG, Cross-Model (Copilot), LaTeX-Kompilierung, Vergleichsanalyse
- **Ergebnis:** LF-001/002/003 v1.0, SVG-Infografiken, Broschüren-Architektur 2.0
- **Dauer der Prompt-Kette:** 8 Prompts über 4 Tage
- **Thema:** Leitfäden für Ärzte, Patienten und Prävention
- **Besonderheit:** Richtungsänderung H100 transformierte LaTeX-Leitfäden zu Präsentationsformat

---

### Analyse 4: Phase II — Tiefenanalyse / Systemwiderspruch
- **Auslösender Startprompt:** H14 — „Recherchiere: Unterschied Prüfungsarten, häufigste Formfehler, Regress als Angstinstrument"
- **Anzahl Nachfragen:** 6 (4× Thema H15/H16/H17/H20, 0× Methode, 0× Steuerung, 0× Korrektur)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** WebSearch (4 parallel: A01–A10), Eigenanalyse, Strukturanalyse
- **Ergebnis:** Pipeline-Modell, Zwei Lesarten der Regressquote, Systemwiderspruch V1/V2, Bürokratie-Dimension
- **Dauer der Prompt-Kette:** 7 Prompts (H14–H20)
- **Thema:** Grundlegende Systemanalyse des Prüfverfahrens
- **Schlüssel-Wendepunkt:** H19 — „Widersprechen sich die Verfahren nicht?" (Schlüsselmoment: LG erkennt den fundamentalen Systemwiderspruch durch eigenes Nachdenken)

---

### Analyse 5: Phase III — Folgekosten / Internationaler Vergleich / Modellarzt
- **Auslösender Startprompt:** H22 — „Folgerecherchen: Verhaltensweisen, Patientenschäden, Schaden beziffern"
- **Anzahl Nachfragen:** 5 (3× Thema H25/H27/H29, 2× Startprompts H30/H31)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** WebSearch (PubMed, BSG), Modellrechnung, Synthese, Spieltheorie
- **Ergebnis:** Folgekostenrechnung, Ribbat-Kontext, UK/NL/F-Vergleich, Modellarzt, Nash-Gleichgewicht
- **Dauer der Prompt-Kette:** 6 Prompts (H22, H25, H27, H29–H31)
- **Thema:** Quantifizierung der Folgen + Internationale Einordnung + Modellierung
- **Besonderheit:** 3 verschiedene Modellierungsansätze (Folgekosten, Phänotyp, Spieltheorie) in schneller Folge

---

### Analyse 6: Phase IV — Einzelfall-Mechanik / GKV-Belege / Geschichte
- **Auslösender Startprompt:** H24 — „Zwei Lesarten: Wie ist V2 im Gesetz definiert?"
- **Anzahl Nachfragen:** 2 (1× Thema H26, 1× Startprompt H28)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** Gesetzesrecherche, Dokumentenanalyse, Rechtshistorie, Container-Analyse
- **Ergebnis:** V2-Mechanik dokumentiert, GKV ohne Effizienzbelege, GRG 1988 als Ursprung (nicht GSG 1992 — Hypothesenrevision!)
- **Dauer der Prompt-Kette:** 3 Prompts (H24, H26, H28)
- **Thema:** Rechtliche Mechanik des Einzelfallverfahrens
- **Besonderheit:** Hypothesenrevision GSG 1992 → GRG 1988

---

### Analyse 7: Phase V — Modellierung + Container/Bug/Virus-Analyse
- **Auslösender Startprompt:** H30 + H31 — (teilweise überlappend mit Phase III)
- **Anzahl Nachfragen:** 0 (Agenten A22–A26 wurden parallel gestartet)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** Container-Analyse, Bug-Report-Prompt, Virus-Analyse, Spieltheorie
- **Ergebnis:** 7 SGB-V-Container kartiert, 10 Bug-Klassen, §12 SGB V als Strukturkonflikt, Modellarzt, Nash-Gleichgewicht
- **Dauer der Prompt-Kette:** 2 Human-Prompts → 5 parallele Agent-Prompts
- **Thema:** Innovative Analysemethoden (Gesetz als Software)
- **Besonderheit:** Drei experimentelle Prompt-Formen: Container (Normen als Datencontainer), Bug-Report (Gesetze als defekte Software), Virus (unauflösbare Zielkonflikte)

---

### Analyse 8: Phase VI — Verfassungsrecht / GPE-Analyse
- **Auslösender Startprompt:** H33 — „Gordischer Knoten: BVerfG-Anwalt-Persona, Backdoor finden"
- **Anzahl Nachfragen:** 0
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** **Persona-Prompt** (BVerfG-Anwalt), Institutionenanalyse (Niskanen-Kriterien)
- **Ergebnis:** 5 verfassungsrechtliche Angriffsvektoren (Art. 12, 14, 19 GG), GPE als Niskanen-Bürokratie (5/6 Kriterien)
- **Dauer der Prompt-Kette:** 1 Human-Prompt → 2 Agent-Prompts
- **Thema:** Verfassungsrechtliche Grundlagen + Institutionenökonomie
- **Schlüssel-Wendepunkt:** H33 — Persona-Prompt öffnet völlig neue Perspektive (BVerfG-Anwalt sieht Angriffsflächen, die Forscher nicht sehen)

---

### Analyse 9: Phase VII — Gemini-Backup / Cross-Model-Triangulation
- **Auslösender Startprompt:** H36 (Gemini-Ergebnisse übergeben) + H42 (Gemini-Review aufnehmen)
- **Anzahl Nachfragen:** 1 (H42 als Korrektur: „Gemini halluziniert, doppelchecken")
- **Richtungsänderungen:** 0
- **Bestätigungen:** 1 (H36)
- **Korrekturen:** 1 (H42: Halluzinations-Warnung)
- **Methodenauslösungen:** Cross-Model (Gemini→Claude), Gemini Deep Research, Faktencheck
- **Ergebnis:** GPE-Etats, Ribbat-Medien, 9-Kapitel-Theorierahmen (selektiv 4 Nuggets)
- **Dauer der Prompt-Kette:** 2 Human-Prompts + 3 Gemini-Prompts
- **Thema:** Multi-Modell-Triangulation
- **Besonderheit:** Gemini als Backup bei Claude-Agenten-Ausfällen + Halluzinations-Korrektur als Qualitätsfilter

---

### Analyse 10: Phase IX — Core-Etablierung / V1-V2-Trennung / Zertifikatsfehler
- **Auslösender Startprompt:** H48 — „Regressquote irgendwo definiert? Copilot-Differenzierung prüfen"
- **Anzahl Nachfragen:** 14 (3× Thema H49/H50/H64, 5× Bestätigung H51/H54/H56/H57/H61, 2× Steuerung H55/H62, 1× Korrektur H63, 1× Thema H61, 2× Methode H52)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 5 (H51, H54, H56, H57, H60)
- **Korrekturen:** 1 (H63: Begriffsverwirrung auflösen)
- **Methodenauslösungen:** Cross-Model (Copilot, 7×), Cross-Model-Validierung, Eigenanalyse
- **Ergebnis:** CORE 1–7 kanonisiert, V1/V2-Trennung, Zertifikatsfehler (CORE #4), 4 Messebenen, Eskalationstabelle
- **Dauer der Prompt-Kette:** 17 Prompts (H48–H64)
- **Thema:** Kernbegriffe und Referenzpunkte etablieren
- **Schlüssel-Wendepunkt:** H53 — „Zertifikatsfehler: statistische Prüfung misst medizinische Zertifikate, Einzelfall juristische" (LG formuliert den Zertifikatsfehler als Eigenleistung)
- **Besonderheit:** Höchste Dichte an Cross-Model-Prompts (Copilot-Inputs C03–C09 alle in dieser Phase)

---

### Analyse 11: Phase IX — Schutzinstrumente / §29 BMV-Ä
- **Auslösender Startprompt:** H58 — „Optionen B und C bewerten? Vergessene Ausgleichmechanismen?"
- **Anzahl Nachfragen:** 0
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** Rechtsrecherche (Copilot C10)
- **Ergebnis:** Vier Schutzwege identifiziert (MASTER-CORE Kap. 10)
- **Dauer der Prompt-Kette:** 1 Prompt
- **Thema:** §29 BMV-Ä Schutzwege
- **Besonderheit:** Kompakter Prompt mit großer Wirkung — öffnet das gesamte Kapitel 10 des MASTER-CORE

---

### Analyse 12: Phase X — Review-Zyklen (10-Agenten-Review)
- **Auslösender Startprompt:** H65 — „CORE definieren, Kohärenz- und Core-Review beauftragen"
- **Anzahl Nachfragen:** 4 (1× Startprompt H66, 1× Methode H71, 2× Korrektur H72/H73)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 1 (H73: V1/V2-Tabelle als Stärke bestätigt)
- **Korrekturen:** 1 (H72: Folgekostenrechnung verbessern)
- **Methodenauslösungen:** Multi-Agent-Review (10 Agenten: A29–A39), Devil's Advocate, Heilungsplan
- **Ergebnis:** 7 CORE-Referenzpunkte, Walk of Analysis, Methodik-Protokoll, 5 Verwundbarkeiten + 5 Heilungsstrategien
- **Dauer der Prompt-Kette:** 5 Human-Prompts → 11 Agent-Prompts
- **Thema:** Systematische Qualitätssicherung
- **Besonderheit:** Größter einzelner Agent-Schwarm (10 Agenten in Phase X), davon Devil's Advocate (A37) als methodisch innovativster

---

### Analyse 13: Phase XI — Formfehler-Heilbarkeit / Lesart C / Drei Scanner
- **Auslösender Startprompt:** H74 — „Formfehler nicht heilbar — recherchiere ob alle oder nur Unterschrift"
- **Anzahl Nachfragen:** 6 (3× Thema H75/H80/H81, 2× Startprompt H76/H78, 1× Steuerung-artiger Input H79)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** WebSearch, BSG-Recherche, Eigenanalyse
- **Ergebnis:** Normativer Schadensbegriff (BSG), Firewall-Strategie, Lesart C (Formfehler = Verdacht), Drei Scanner, GPE-Profil
- **Dauer der Prompt-Kette:** 7 Prompts (H74–H81)
- **Thema:** Formfehler-Mechanik und Schutzstrategien
- **Besonderheit:** Rein analytische Phase ohne Agent-Einsatz — LG und Claude im Dialog

---

### Analyse 14: Phase XII — 108-Kommentare-Review / PDF-Workflow
- **Auslösender Startprompt:** H87 — „Korrekturlesen fertig ST-001, 108 Kommentare, 7-Punkte-Plan"
- **Anzahl Nachfragen:** 5 (1× Methode H84, 2× Steuerung H85/H86, 1× Korrektur H88, 1× Methode H89)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 1 (H88: „Übersprungene Aufgaben NICHT verschieben")
- **Methodenauslösungen:** PyMuPDF-Extraktion, Batch-Edit, Policy-Analyse, Walk-Erweiterung
- **Ergebnis:** 108 Kommentare eingearbeitet, PDF-Review-Workflow etabliert, Walk of Analysis erweitert, 7 Interventionspfade
- **Dauer der Prompt-Kette:** 7 Prompts (H84–H90)
- **Thema:** Massiver Review-Zyklus + Methodendokumentation
- **Besonderheit:** Größter einzelner Review-Batch (108 Kommentare), neuer Workflow (PDF → PyMuPDF → Einarbeitung)

---

### Analyse 15: Phase XIII — 4-Review-Zyklus + Gemini Deep Research
- **Auslösender Startprompt:** H91 — „4 parallele Review-Agenten: Wissenschaft, Kohärenz, Design, Naive"
- **Anzahl Nachfragen:** 4 (1× Korrektur H92, 1× Bestätigung H93, 1× Methode H94, 1× Steuerung H95)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 1 (H93: Gemini-Analyse übernehmen)
- **Korrekturen:** 1 (H92: Ribbat-Caveats + Szenario-Kennzeichnung)
- **Methodenauslösungen:** Multi-Agent-Review (4+3 Agenten: A42–A46), Gemini Deep Research (G09), PyMuPDF
- **Ergebnis:** ST-001 v0.10→v0.11, Major→Minor bestätigt, 4 Nuggets aus Gemini integriert
- **Dauer der Prompt-Kette:** 5 Prompts (H91–H95)
- **Thema:** Finaler Review-Zyklus vor CORE3
- **Besonderheit:** Gemini-Beitrag (~15.000 Wörter) selektiv auf 4 Nuggets reduziert

---

### Analyse 16: CORE3 — V1-Schutzstufenmodell / V2a-V2b-Differenzierung
- **Auslösender Startprompt:** H101 — **„Ich dachte das Richtgrößenverfahren wurde abgeschafft?"**
- **Anzahl Nachfragen:** 9 (2× Methode H102/H106, 2× Thema H107/H108, 3× Korrektur H104/H105/H108, 1× Steuerung H109, 1× Methode H110)
- **Richtungsänderungen:** 0 (aber die gesamte CORE3-Phase ist eine implizite Richtungsänderung — sie revidiert die bisherige V1-Bewertung)
- **Bestätigungen:** 0
- **Korrekturen:** 3 (H104: veraltete 99,7%-Sichtweise, H105: Gerichtsverfahren ≠ Erfolg, H108: vielleicht irren wir bei V2)
- **Methodenauslösungen:** WebSearch (SGB V), Multi-Dokument-Vergleich, BSG-Recherche, Multi-Agent (5+1 parallel)
- **Ergebnis:** CORE3.md erstellt, V1-Schutzstufenmodell, V2a/V2b-Differenzierung, 5 Dokumente aktualisiert
- **Dauer der Prompt-Kette:** 10 Prompts (H101–H110)
- **Thema:** V1-Neubewertung + V2-Aufspaltung
- **Schlüssel-Wendepunkt:** H101 — Beiläufige Frage führt zur Entdeckung, dass V1 seit 2017 nicht mehr auf Richtgrößen basiert → Schutzstufenmodell entdeckt → gesamte Argumentation der Studie revidiert
- **Besonderheit:** 3 Korrekturen in 10 Prompts = 30% Korrekturquote — höchste aller Analysen. LG korrigiert aktiv die eigene Arbeit.

---

### Analyse 17: CORE4 — Definitionsdivergenz / Kommunikationsasymmetrie (Kern)
- **Auslösender Startprompt:** H112 — **„Die ein Prozent sind auch zufällig oder?"**
- **Anzahl Nachfragen:** 4 (2× Thema H113/H114, 1× Steuerung H115, 1× Korrektur H111-Vorbereitung)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 1 (H111: 1% als selten = falsch)
- **Methodenauslösungen:** WebSearch, Eigenanalyse, Poisson-Modellrechnung, CORE4-Erstellung
- **Ergebnis:** CORE4 v1 erstellt, Drei Schichten des Regressbegriffs, Faktor 500×, Poisson λ=0,85
- **Dauer der Prompt-Kette:** 5 Prompts (H111–H115)
- **Thema:** Definitionsdivergenz als Erklärung der Ribbat-Diskrepanz
- **Schlüssel-Wendepunkt:** H112 — 7-Wörter-Frage löst die zentrale Erkenntnis der gesamten Studie aus: „unter 1%" ist ein Definitions-Artefakt
- **Besonderheit:** Kürzester Prompt (7 Wörter), größte Wirkung (originärer Beitrag #1)

---

### Analyse 18: CORE4 — Multi-Agenten-Experiment (15 Agenten)
- **Auslösender Startprompt:** H116 — „Experiment: Webrecherche + Agent 1 Datenpunkte + Agent 2 Impressum + Agent 3 Kategorisierung"
- **Anzahl Nachfragen:** 3 (3× Methode H117/H118/H119)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** Multi-Agent (15 Agenten: A48–A58), Bubble-Test, Blind-Bewertung, Bias-Kontrolle, Prior-Art-Check
- **Ergebnis:** 25 Datenpunkte, 14 Domains verifiziert, Dreischichtige Perspektivdivergenz, „unter 1%" dominiert naive Suche, BMG 47.000, Originalitätsanspruch verifiziert, BKK Pfalz 85× überproportional
- **Dauer der Prompt-Kette:** 4 Prompts → 11 Agent-Prompts (+ 4 KK-Agenten)
- **Thema:** Empirische Validierung der Definitionsdivergenz
- **Besonderheit:** Größtes Multi-Agenten-Experiment des Projekts. 5 innovative Methoden in einer Session: Bubble-Test, Blind-Bewertung, Reihenfolge-Bias-Kontrolle, Prior-Art-Check, Alternative-Hypothese-Test

---

### Analyse 19: CORE4 — Doppelfunktion / Evidenzsteuerung
- **Auslösender Startprompt:** H120 — **„Alternative Hypothese: Gesetzgeber steuert Medizin über korrekte Verordnung"**
- **Anzahl Nachfragen:** 3 (1× Steuerung H121, 1× Richtungsänderung H122, 1× Steuerung H123)
- **Richtungsänderungen:** 1 (H122: „Was bleibt dann noch von unserer Studie?" — fundamentale Bilanzfrage)
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** Alternative-Hypothese-Test (Opus), Prior-Art-Check (Opus), Synthese
- **Ergebnis:** H2 mit 35% Erklärungskraft, Doppelfunktion erkannt, zwei parallele Evidenzkanäle, originärer Beitrag #2
- **Dauer der Prompt-Kette:** 4 Prompts (H120–H123)
- **Thema:** Alternative Hypothese + zweiter Originalbeitrag
- **Schlüssel-Wendepunkt:** H120 — LG formuliert die Gegenthese zur eigenen Studie. H122 — „Was bleibt dann noch?" erzwingt ehrliche Bilanz (5 Entschärfungen + 4 Verstärkungen)
- **Besonderheit:** LG testet aktiv die Gegenthese statt sie zu ignorieren → methodisch vorbildlich

---

### Analyse 20: IFG-Anfragen
- **Auslösende Startprompts:** H18 (GPE RLP), H79 (automatisierte Software)
- **Anzahl Nachfragen:** 2 (1× Steuerung H38, 1× Korrektur H70)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 1 (H70: FragDenStaat-404-Fehler)
- **Methodenauslösungen:** FragDenStaat-Recherche, IFG-Entwurf
- **Ergebnis:** 12 IFG-Anfragen geplant und eingereicht
- **Dauer der Prompt-Kette:** 4 Prompts über 3 Tage
- **Thema:** Informationsfreiheitsanfragen an Kassen und Behörden

---

### Analyse 21: Meta / Übergabe / Masterplan / Dokumentation
- **Auslösende Startprompts:** H21, H23, H40, H67, H77, H82, H96, H97, H124, H125, H126, H127
- **Anzahl Nachfragen:** — (jeweils eigenständige Meta-Prompts)
- **Richtungsänderungen:** 1 (H77: Versionsbindung ST-001↔PP-003)
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** Masterplan-Erstellung, Session-Berichte, CHANGELOG, Multi-Datei-Lesen, JSONL-Extraktion
- **Ergebnis:** Masterplan v1+v2, Continuation-Prompts, Versionierungsarchitektur, MASTER-CORE, Prompt-Archäologie
- **Dauer der Prompt-Kette:** 12 Prompts verteilt über 5 Tage
- **Thema:** Prozesssteuerung und Dokumentation
- **Besonderheit:** 8 Meta-Prompts = 6,3% aller Prompts — vergleichsweise niedrig für die Komplexität des Projekts

---

### Analyse 22: Versand / Kontakt
- **Auslösende Startprompts:** H11 (Top-5 Mail), H43 (Praxiskontakt), H47 (Rundmail 14 Orgs)
- **Anzahl Nachfragen:** 2 (H10 Timing, H44 Blog)
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** Mail-Versand, Blog-Erstellung
- **Ergebnis:** Top-5 Konzeptmails, Praxis-Direktkontakt, 14 Organisations-Rundmails, Blogeintrag
- **Dauer der Prompt-Kette:** 5 Prompts
- **Thema:** Distribution und Außenkommunikation

---

### Analyse 23: Policy / Transparenz
- **Auslösender Startprompt:** H46 — „AI-Transparenzdisclaimer höchste Stufe, ab jetzt Pflicht"
- **Anzahl Nachfragen:** 0
- **Richtungsänderungen:** 1 (H46 selbst ist Richtungsänderung: Transparenz-Standard wird verpflichtend)
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** Policy-Erstellung
- **Ergebnis:** AI-Transparenz-Disclaimer als Pflichtbestandteil aller Studien
- **Dauer der Prompt-Kette:** 1 Prompt
- **Thema:** KI-Transparenz-Standards

---

### Analyse 24: Software / VerordnungsAmpel
- **Auslösende Startprompts:** H37 (Ressourcen-Audit), H41 (bessere Software übersehen?)
- **Anzahl Nachfragen:** 0
- **Richtungsänderungen:** 0
- **Bestätigungen:** 0
- **Korrekturen:** 0
- **Methodenauslösungen:** System-Diagnostik, WebSearch (Software-Markt)
- **Ergebnis:** Kein Äquivalent gefunden, VerordnungsAmpel-Konzept validiert
- **Dauer der Prompt-Kette:** 2 Prompts
- **Thema:** Software-Evaluation und Machbarkeit

---

## Cross-Analyse: Prompt-Ketten-Muster

### Kürzeste produktive Ketten
1. **H58** (§29 Schutzwege): 1 Prompt → 4 Schutzwege (MASTER-CORE Kap. 10)
2. **H33** (BVerfG-Persona): 1 Prompt → 5 Angriffsvektoren
3. **H46** (AI-Transparenz): 1 Prompt → neue Policy

### Längste Ketten
1. **Phase IX** (Core-Etablierung): 17 Prompts (H48–H64)
2. **CORE3** (V1-Schutzstufenmodell): 10 Prompts (H101–H110)
3. **Broschüren**: 8 Prompts über 4 Tage

### Höchste Agenten-Dichte
1. **CORE4 Multi-Agenten-Experiment**: 4 Human-Prompts → 15 Agent-Prompts
2. **Phase X Review**: 5 Human-Prompts → 11 Agent-Prompts
3. **Phase II Tiefenanalyse**: 7 Human-Prompts → 10 Agent-Prompts

---

*Erstellt: 11.04.2026 | CL | Methode: Aggregation aus categorized-prompt-protocol.md (Stufe 2)*
