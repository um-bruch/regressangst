# Methodik-Protokoll: Recherche-Aufträge Session 11.04.2026

> Dokumentation aller methodenspezifischen Recherche-Aufträge dieser Session.
> Für den Methodenteil von ST-001 und die Walk of Analysis.

---

## 1. CORE3-Recherche: Verfahrensrealität V1/V2

### 1a. V1-Ablauf (Auffälligkeitsprüfung)
- **Suchstrategie:** WebSearch "Auffälligkeitsprüfung §106 SGB V Ablauf Schritte", "Wirtschaftlichkeitsprüfung Ablauf Prüfungsstelle Anhörung"
- **Quellen besucht:** arzt-wirtschaft.de (Lexikon), kvno.de (FAQ), gpe-bw.de (Beratung vor Regress), Wikipedia
- **Befund:** V1 hat Schutzstufenmodell (Anhörung, medizinische Berücksichtigung, Beratung, Karenzzeit, Deckel 25.000 EUR, 5-Jahres-Regel)
- **Ergebnis:** CORE3-1 etabliert

### 1b. V2-Unterkategorien (Einzelfallprüfung)
- **Suchstrategie:** WebSearch "Einzelfallprüfung §106b Widerspruch Arzt Möglichkeiten", "Einzelfallprüfung Regress Widerspruch medizinische Begründung"
- **Quellen besucht:** gpe-bw.de (Einzelfallprüfung), der-niedergelassene-arzt.de (Praxistipps), christmann-law.de (LSG BaWü)
- **Befund:** V2 zerfällt in V2a (unwirtschaftlich, medizinische Verteidigung möglich) und V2b (Formfehler, medizinisch irrelevant)
- **Ergebnis:** CORE3-2 etabliert

### 1c. §29 BMV-Ä und KK-Anfrage
- **Suchstrategie:** WebSearch "§29 BMV-Ä Vorabgenehmigung Verbot", "BSG B 6 KA 27/12 R Verordnungsfähigkeit"
- **Quellen besucht:** haufe.de (§29 Wortlaut), dejure.org (BSG-Urteil), lexika.de (Urteilsanalyse), kvberlin.de (Mounjaro)
- **Befund:** §29 verbietet Genehmigung, nicht Stellungnahme. BSG Rn. 19: "Zusagen oder Erklärungen nicht von vornherein ausgeschlossen"
- **Kontext:** Urteil betraf nicht-verordnungsfähiges Medikament (Wobe Mugos E). Anwendbar bei unklarer Verordnungsfähigkeit, nicht bei Standardmedikamenten.
- **Ergebnis:** SOURCE_Schutzinstrumente.txt erstellt, alle 3 Textgrundlagen korrigiert

### 1d. GLP-1/Mounjaro Grenzfall
- **Suchstrategie:** WebSearch "GLP-1 Tirzepatid Mounjaro verordnungsfähig Regress vertraulicher Erstattungsbetrag"
- **Quellen besucht:** aerzteblatt.de (Regressrisiko vertrauliche Erstattungsbeträge), kv-rlp.de, kvberlin.de, gelbe-liste.de
- **Befund:** Dritte Kategorie entdeckt: "verordnungsfähig, aber Wirtschaftlichkeit unklar" (vertraulicher Erstattungsbetrag)
- **Ergebnis:** SOURCE aktualisiert mit 4-Spalten-Tabelle (Standard / Grenzfall / Off-Label / Genehmigungspflichtig)

---

## 2. CORE4-Recherche: Kommunikationsasymmetrie

### 2a. Verordnungszahlen pro Hausarzt
- **Suchstrategie:** WebSearch "Hausarzt Anzahl Patienten pro Quartal", "GKV Arzneimittelverordnungen Anzahl gesamt"
- **Quellen:** KBV Gesundheitsdaten (1.380 Patienten/Quartal), WIdO (750-850 Mio. Verordnungen/Jahr)
- **Ergebnis:** 3.000 Verordnungen/Quartal als konservative Schätzung plausibel

### 2b. Einzelfallprüfung: Pro Patient oder pro Verordnung?
- **Suchstrategie:** WebSearch "Einzelfallprüfung pro Patient oder pro Verordnung"
- **Quellen:** kvno.de, gpe-bw.de
- **Befund:** Pro Verordnung (oder Bündel), mit Mindestschadenssumme 100 EUR/LANR/Quartal
- **Ergebnis:** "120.000 Angriffspunkte" Rechnung bestätigt

### 2c. Herkunft der "unter 1%"-Zahl
- **Suchstrategie:** WebSearch "unter 1 Prozent Regressquote Quelle Definition"
- **Quellen:** virchowbund.de ("0,065%, <100 Regresse bundesweit 2018, Ärzte-Zeitung-Umfrage")
- **Befund:** Zählt nur V1-Richtgrößenregresse, nur rechtskräftig. V2-Vergleiche nicht enthalten.

---

## 3. Multi-Agenten-Experiment: Quellen-Bubble

### 3a. Agent 1 — Systematische Datensammlung
- **Methode:** 8 verschiedene Suchstrings, WebSearch + WebFetch
- **Ergebnis:** 25 Datenpunkte von 14 Domains
- **Schlüsselfund:** SpiFa Bayern: 12.930-13.332 Regresse/Jahr bei ~24.000 Ärzten
- **Datei:** RECHERCHE_REGRESSHAEUFIGKEIT_DATENPUNKTE.md

### 3b. Agent 2 — Impressum-Verifizierung
- **Methode:** WebFetch auf /impressum aller 14 Domains
- **Ergebnis:** Betreiber, Typ, Kurzbeschreibung für jede Domain
- **Datei:** RECHERCHE_REGRESSHAEUFIGKEIT_IMPRESSUM.md

### 3c. Agent 3 — Kategorisierung + Tenor-Analyse
- **Methode:** Zuordnung jeder Domain zu Kassennahe/Ärztenahe/Neutral/Kommerziell, Abgleich mit Tenor
- **Ergebnis:** Dreischichtige Perspektivdivergenz. Stärkste Verzerrung durch Regressbegriff, nicht Interessenlage.
- **Datei:** RECHERCHE_REGRESSHAEUFIGKEIT_ANALYSE.md

### 3d. Agent A — Widerspruchs-Erklärungen der Quellen
- **Methode:** WebFetch auf alle URLs, Suche nach deren eigener Erklärung für die Diskrepanz
- **Ergebnis:** 6 von 14 thematisieren den Widerspruch. Alle erklären ihn als Wahrnehmungsfehler der Ärzte. Keine Quelle identifiziert ein Definitionsproblem.
- **Datei:** RECHERCHE_WIDERSPRUCH_ERKLAERUNGEN.md

### 3e. Agent B — Naive Suche (Bubble-Test)
- **Methode:** Journalist ohne Vorwissen googelt "Wie viel Prozent Regress Arzt"
- **Ergebnis:** "Unter 1%" dominiert die ersten 5 Treffer. Gegenbelege (72%, Bayern) erfordern gezieltes Graben. Ein Journalist würde "unter 1%" unkommentiert übernehmen.
- **Datei:** RECHERCHE_NAIVE_SUCHE.md

### 3f. Agent C — V2-Zahlen unabhängig (Opus)
- **Methode:** Versorgungsforscher mit V1/V2-Einführung, KEINE Tipps wohin suchen. 8+ Suchansätze.
- **Ergebnis:** "Die Behauptung 'keine öffentlichen V2-Daten' ist falsch." BMG GVSG-Entwurf: 47.000 V2-Verfahren bundesweit. KBV: "V1 de facto bedeutungslos, V2 Löwenanteil."
- **Datei:** RECHERCHE_V2_REGRESSZAHLEN.md

### 3g. Prior-Art-Check (Opus)
- **Methode:** 20+ Suchanfragen gezielt nach unserer Synthese (Definitionsdivergenz als Erklärung für Ribbat-Diskrepanz)
- **Ergebnis:** Kein vollständiges Prior Art. Alle Einzelbausteine publiziert, Synthese nirgends.
- **Datei:** RECHERCHE_PRIOR_ART.md

---

## 4. Krankenkassen-Digitalisierung (laufend)

### 4a. Agent KK-1 — Website-Bewertung (vorwärts: TK → Novitas)
- **Methode:** WebFetch auf Hauptseiten, Bewertung Technik/Apps/Digital-Werbung
- **Status:** Läuft
- **Datei:** RECHERCHE_KK_DIGITAL_BEWERTUNG_A.md

### 4b. Agent KK-2 — Website-Bewertung (rückwärts: Novitas → TK)
- **Methode:** Gleiche Bewertung, umgekehrte Reihenfolge — Reihenfolge-Bias-Kontrolle
- **Status:** Läuft
- **Datei:** RECHERCHE_KK_DIGITAL_BEWERTUNG_B.md

### 4c. Agent KK-3 — Größe + Digital-Reputation
- **Methode:** WebSearch nach Versichertenzahlen, Digital-Auszeichnungen, Besonderheiten
- **Status:** Läuft
- **Datei:** RECHERCHE_KK_GROESSE_DIGITAL.md

### 4d. Primärquelle Regress-Ranking
- **URL:** https://www.kv-rlp.de/praxis/berufspolitik/regress-ranking
- **Was gemessen wird:** Summe aller Prüfanträge (§106b + §106d) pro Krankenkasse bei der KV RLP
- **Zeitraum:** Q4 2025 (Oktober–Dezember). Frühere Quartale verfügbar.
- **Format:** Nur Ränge (1-10), keine absoluten Zahlen publiziert
- **Wichtig:** "Absolute Zahlen ohne Gewichtung nach Versichertenanzahl" (KV RLP selbst)
- **Zweck:** Transparenz-Instrument der KV RLP für Forderung nach Bagatellgrenzen
- **Einschränkung:** "Die Auswertung trifft keine Aussage über die Richtigkeit der Beanstandungen"

### 4e. Befund: Größe erklärt Ranking nicht
- TK (Platz 1, 12 Mio.) und DAK (Platz 3, 5,4 Mio.): Größe erklärt teilweise
- **BARMER** (8,3 Mio., Nr. 2 nach Größe) steht erst auf **Platz 8** — weniger Anträge als die BKK Pfalz (141.000!)
- **BKK Pfalz** (Platz 2, 141.000 Versicherte): ~85× mehr Prüfanträge pro Kopf als es die TK-Proportion erwarten ließe
- **BKK PFAFF** (Platz 7, 40.000 Versicherte): Vor BARMER trotz 200× weniger Versicherter
- **Hypothese:** Kleine BKKs unter finanziellem Druck (BKK PFAFF: 2,78% Zusatzbeitrag) nutzen Prüfanträge als Einnahmequelle überproportional
- **Keine Korrelation mit Digitalität:** TK digital + prüft viel, BARMER digital + prüft wenig

### 4f. Methodische Einschränkungen Website-Bewertung
- Agenten konnten Websites nur per WebFetch (HTML-Text) lesen, nicht visuell bewerten
- "Technische Qualität" und "Design" wurden am Content gemessen, nicht an Performance/UX
- Der Digitalitäts-Score ist ein **Content-Marketing-Score**, kein technischer Score
- Für echte technische Bewertung nötig: Lighthouse, WCAG-Audit, App-Store-Ratings
- Agent KK-2 identifizierte HTML-Framework bei AOK RPS (Tailwind CSS) — HTML-Source verrät teilweise technische Realität

---

## Methodische Erkenntnisse

1. **Cross-Model-Divergenz** (Claude/Copilot/Gemini) kontrolliert Modell-Bias, aber NICHT Quellen-Bias. Alle Modelle schöpften aus denselben Quellen.

2. **Cross-Source-Divergenz** (verschiedene Domains, verschiedene Akteursgruppen) ist nötig für quantitative Befunde. Erst das Multi-Agenten-Experiment mit 14 Domains brachte die SpiFa-Bayern-Zahlen ans Licht.

3. **Naive-Suche-Test** bestätigt die Bubble: Ein normaler Nutzer findet "unter 1%" und übernimmt sie.

4. **Reihenfolge-Bias-Kontrolle** (zwei Agenten, gleiche Liste, umgekehrte Reihenfolge): Prüft ob die Bewertung von der Präsentationsreihenfolge abhängt.

5. **Prior-Art-Check** als Pflichtschritt vor Originalitätsbehauptung.

---

*Erstellt: 2026-04-11 | CL*
*Referenz für: Walk of Analysis (Phase XIV), Methodenteil ST-001, Session-Bericht*
