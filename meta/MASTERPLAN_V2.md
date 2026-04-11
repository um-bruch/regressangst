# MASTERPLAN v2 — Regress-Melder Fertigstellung

> Stand: 2026-04-11 | Basiert auf CORE3 + CORE4 (v3)
> Ersetzt den 12-Phasen-Masterplan aus UEBERGABE_NAECHSTE_SESSION.md

---

## Vorbedingung: CORE-Dokumente laden

Jede Session beginnt mit dem Laden von:
- **CORE3.md** (V1-Schutzstufenmodell, V2a/V2b-Trennung, differenzierte Verfahrensrealität)
- **CORE4.md** (Kommunikationsasymmetrie, Definitionsdivergenz, Doppelfunktion, Bilanz-Tabellen)
- **SOURCE_Schutzinstrumente.txt** (§29 BMV-Ä, BSG 27/12 R, 4 Wege korrekt)

---

## PHASE 1: ST-001 Überarbeitung (Studie)

### 1a. CORE4-Einarbeitung in ST-001 ✅ (11.04.2026, v0.12)
- [x] CORE4 Bilanz-Tabelle "Was wegfällt" → 3 Stellen abgeschwächt (Z.574, Z.810, Z.2044)
- [x] CORE4 Bilanz-Tabelle "Was stärker wird" → V2b-Fokussierung, Bayern-Zahlen, BMG 47.000
- [x] CORE4 Bilanz-Tabelle "Was dazukommt" → Definitionsdivergenz, Zwei-Schichten-Formalität, Evidenzsteuerung
- [x] Drei-Schichten-Tabelle des Regressbegriffs in Begriffsklärung (Z.281)
- [x] Bayern SpiFa-Daten (13.332 Regresse, 334 EUR Durchschnitt) als empirische Bestätigung
- [x] BMG GVSG-Referentenentwurf 2024 (47.000 V2-Verfahren) — Quellenangabe präzisiert
- [x] Kommunikationsasymmetrie-Absatz geprüft — CORE4 v3 vollständig abgebildet
- [x] Poisson-Tabelle mit Bayern-Empirie abgeglichen — konvergiert
- [x] "Keine V2-Daten" → korrekt formuliert an allen 4 Stellen (Z.270, 1282, 2008, 2046)
- [x] Doppelfunktion: Neuer Abschnitt "Evidenz in formaler Verkleidung" (Z.905, ~50 Zeilen)
- [x] Gegenposition: Einwand 5 NEU "~35% rationale Steuerung" (Z.2010), alter Einwand 5→6
- [x] Walk of Analysis Extended: Phase XIV dokumentiert (~70 Zeilen, Schicht 8)
- [x] Appendix B: Multi-Agenten-Experiment mit Tabelle (Z.2439)
- [x] Appendix C: A1 Framing angepasst (47.000 bekannt, Aufschlüsselung fehlt)
- [x] CORE-Referenzpunkte: 7→7+2 (CORE3 + CORE4)

### 1b. Technische Aufräumarbeiten ST-001
- [ ] Encoding-Fix: 683 escaped Umlaute → echte UTF-8 (eigener atomarer Commit)
- [ ] \ref{}-Cleanup: 5 hardcodierte "siehe Teil X" → \label/\ref
- [ ] Teile-Nummerierung konsistent
- [ ] Alte Datei ST-001_Das_Angstsystem.tex löschen (LG-Bestätigung nötig)
- [ ] ~22 Tabellen mit \caption/\label versehen
- [ ] Grafik-Pfade relativ machen

### 1c. Offene TODOs aus der alten Liste
- [ ] TODO #8: Container-Genealogie als TikZ-Zeitachse (~1-2h)
- [ ] TODO #9: Alternative Interventionspfade (5 Alternativen zu PP-003) — teilweise durch KNV-Tabelle abgedeckt, prüfen
- [ ] TODO #9c: BibTeX-Quellenverzeichnis (~60+ Quellen) — Voraussetzung für Zenodo
- [ ] TODO #19: Folgekostenrechnung methodisch schärfen — eigene Session, nach IFG-Daten

### 1d. Review-Zyklus ST-001

| Schritt | Agent | Fokus |
|---------|-------|-------|
| a | Wissenschaftlicher Reviewer | CORE3+CORE4 konform? Methodik, Quellen, Bias |
| → | Fixer | Korrekturen einarbeiten |
| b | Widerleger (Devil's Advocate) | 5 stärkste Angriffspunkte nach CORE4 |
| c | Heilender Experte | Widerleger-Befunde fixen oder absichern |
| d | Konstruktiver Reviewer | Verbesserungsvorschläge, fehlende Nuancen |
| → | Fixer | Letzte Korrekturen |
| e | Abschlussreview | Finaler Durchlauf, Konsistenz-Check |

### 1e. Kompilierung + Upload
- [ ] pdflatex (2 Durchläufe für \ref)
- [ ] PDF auf Website hochladen
- [ ] Blog-Eintrag aktualisieren (CORE4-Befunde, Bayern-Zahlen, Definitionsdivergenz)
- [ ] Version → v1.0 (oder v0.12 falls noch IFG-Daten ausstehen)

---

## PHASE 2: Executive Summary

### 2a. Überarbeitung
- [ ] CORE4-Befunde einarbeiten (Definitionsdivergenz als zentraler Befund, Drei-Schichten-Tabelle)
- [ ] Doppelfunktion (35% Steuerung / 40% Formalkontrolle / 25% Bagatelle)
- [ ] Bayern-Zahlen als empirische Bestätigung
- [ ] "Was diese Studie behauptet — und was nicht" aktualisieren
- [ ] Prior-Art-Ergebnis: "Synthese ist originär"

### 2b. Review
- [ ] CORE4 + ST-001-Kohärenz-Check (stimmt die Summary mit der Studie überein?)
- [ ] Fixer
- [ ] Abschlussreview

### 2c. Kompilierung + Upload
- [ ] LaTeX kompilieren (umbruch-position.cls)
- [ ] PDF auf Website hochladen
- [ ] Publikationsseite aktualisieren

---

## BASE gebaut: Ab hier fließt die überarbeitete Studie als Referenz in alle Ableger

---

## PHASE 3: Textgrundlagen (3 Broschüren)

### 3a. CORE4-Einarbeitung
- [ ] Drei-Schichten-Tabelle des Regressbegriffs in jede Textgrundlage
- [ ] V2a/V2b konsequent (CORE3 bereits eingebaut, CORE4-Ergänzungen prüfen)
- [ ] Bayern-Zahlen + BMG 47.000 als Kontext
- [ ] Doppelfunktion: ~35% der Prüfungen sind evidenzbasierte Steuerung (H2 anerkennen)
- [ ] Summierung "Kleines Risiko pro Fall, großes Risiko pro Arzt" (bereits eingebaut, prüfen)
- [ ] §29/KK-Anfrage korrekt differenziert (bereits eingebaut, prüfen)

### 3b. Kritischer Review
- [ ] CORE3+CORE4+BASE Review aller 3 Textgrundlagen
- [ ] Fixer

### 3c. Kompilierung
- [ ] Alle 3 LaTeX → PDF kompilieren

### 3d. Lukas generiert Präsentationen
- [ ] Korrigierte PDFs an NotebookLM übergeben → neue PPTX generieren
- [ ] Faktencheck der generierten Präsentationen gegen CORE4
- [ ] In broschueren/ ablegen

### 3e. 3 Blog-Beiträge (je einer pro Broschüre)
- [ ] Blog-Post: "Die Regress-Firewall" (für Ärzte: Prävention)
- [ ] Blog-Post: "Der Architekturplan gegen den Regress" (für Ärzte: nach Bescheid)
- [ ] Blog-Post: "Mein Arzt hat Angst" (für Patienten)
- [ ] Beste Folien als PNG einbetten + PDF-Download
- [ ] Deploy

---

## PHASE 4: PP-003 (Konzeptpapier)

### 4a. CORE4-Einarbeitung
- [ ] Definitionsdivergenz: Die Datenlücke die PP-003 schließen will ist jetzt präziser beschrieben
- [ ] PP-003 als Rang 7/14 — "Plan B der Plan A erzwingen soll" (bereits eingebaut)
- [ ] V2a/V2b-Trennung: PP-003 könnte diese empirisch leisten (neues Argument)
- [ ] Bayern-Zahlen als Kontext (13.000 Regresse, aber 70% Bagatelle → was fehlt ist die Aufschlüsselung)
- [ ] §29/KK-Anfrage korrekt (bereits eingebaut, prüfen)

### 4b. Review-Zyklus
- [ ] CORE3+CORE4+BASE Review
- [ ] Fixer
- [ ] Abschluss-Review
- [ ] Fixer

### 4c. Upload + Blog
- [ ] PDF auf Website hochladen
- [ ] Blog-Eintrag aktualisieren
- [ ] Publikationsseite aktualisieren
- [ ] Deploy

---

## PHASE 5: Parallel-Aufgaben (laufend)

### 5a. IFG-Antworten einarbeiten (Frist ~10.05.2026)
- [ ] A1 (BMG): Prüfstatistiken — A1 Framing anpassen (47.000 bekannt, Aufschlüsselung fehlt)
- [ ] A7 (BMG/SVR): Beratungspapiere
- [ ] A9 (BMG): Normwidersprüche
- [ ] Alle weiteren: Bei Eingang sofort in ST-001 + Ableger einarbeiten
- [ ] Verweigerungen dokumentieren ("Diese Daten liegen uns nicht vor" = Befund)

### 5b. Noch nicht eingereichte IFG-Anfragen
- [ ] A3 (BAS): Direkt per Mail (nicht auf FragDenStaat)
- [ ] A9 (BMG): URL fertig, absenden
- [ ] A11 (KBV): URL fertig, absenden

### 5c. Kontakte nachfassen
- [ ] MEZIS: Ab 13.04. (Urlaubsende) — mit aktualisierten Dokumenten
- [ ] Virchowbund: Ab 24.04. — mit CORE4-Befund (Definitionsdivergenz)
- [ ] Therapiefreiheit e.V.: Kontaktformular
- [ ] Weiterer Direktkontakt: Konzept umsetzen
- [ ] Bounced-Kontakte bereinigen

### 5d. Verteiler-Update-Mail (nach Phase 1-4)
- [ ] Wesentliche Neuerungen + Versionsupdate an bisherige E-Mail-Kontakte
- [ ] Neue Broschüren beilegen
- [ ] Via Cloud-Server senden (Abusix-Blocklist auf Webhosting)
- [ ] CORE4-Befund als Kernbotschaft: "Die unter-1%-Zahl misst etwas anderes als Sie denken"

---

## PHASE 6: Vor Zenodo-Upload (v1.0)

### 6a. Quellencheck
- [ ] TODO #9c: BibTeX-Quellenverzeichnis (~60+ Quellen)
- [ ] Alle bibitem-Einträge per WebSearch verifizieren (CLAUDE.md Regel!)
- [ ] Sichtprüfung der 4 offenen Recherche-Dateien (Folgekosten, International, Modellarzt, Verfassungsrecht)

### 6b. Englische Executive Summary
- [ ] TODO #10: 1-2 Seiten EN
- [ ] Für internationale Anschlussfähigkeit (Ribbat ist auf Englisch publiziert)

### 6c. Zenodo-Upload
- [ ] paper_publisher.py verwenden
- [ ] Metadaten: Titel, Autoren, Keywords, License CC BY 4.0
- [ ] DOI erhalten

---

## PHASE 7: Zurückgestellte Aufgaben (eigene Sessions)

| Aufgabe | Wann | Abhängigkeit |
|---------|------|-------------|
| TODO #19: Folgekostenrechnung schärfen | Nach IFG-Antworten (Mai) | A1 Daten |
| TODO #18: Postanalyse Sender-Empfänger-Modell | Eigene Session | Methodische Reflexion |
| TODO #9b: Blindtest mit unabhängigem Modell | Vor v1.0 | Teil des Review-Zyklus |
| TODO #8: TikZ-Zeitachse Container-Genealogie | Wenn Zeit | Nice-to-have |
| Prototype Fund Bewerbung prüfen | Halbjährlich | Unabhängig |

---

## Vergessene Aufgaben (aus Haupt-TODO.md eingefangen)

| Aufgabe | Einordnung |
|---------|-----------|
| **Infomaterial für Ärzte und Patienten** (Haupt-TODO ★ DRINGEND) | = Phase 3 (Textgrundlagen → Broschüren). Bereits abgedeckt. |
| **PP-003 v1.1 Gemini-Korrekturprompt** | Obsolet — PP-003 ist jetzt v2.7 mit CORE3+CORE4 |
| **Gezielter Versand an Top-5** | = Phase 5d (Verteiler-Mail). Mit aktualisierten Dokumenten. |
| **Link-Sichtbarkeit in Fließtexten** (Website-Design) | Nicht Regress-Melder-spezifisch → bleibt in Haupt-TODO |
| **Quellencheck Recherche-Dateien** (4 Dateien) | = Phase 6a. Eingefangen. |
| **WIdO-Mail via Cloud nachsenden** | Erledigungsstatus prüfen (28h+ Delay, Session 11.04.) |

---

## Zeitschätzung

| Phase | Aufwand (Sessions) | Kann parallelisiert werden? |
|-------|-------------------|-----------------------------|
| 1 (Studie) | 2-3 | Nein (muss zuerst fertig = BASE) |
| 2 (Executive Summary) | 0,5 | Ja (nach Phase 1) |
| 3 (Textgrundlagen + Broschüren) | 1-2 | Ja (nach BASE) |
| 4 (PP-003) | 1 | Ja (nach BASE) |
| 5 (Parallel) | Laufend | Ja |
| 6 (Zenodo) | 1 | Nach 1-4 |
| **Gesamt** | **~6-8 Sessions** | |

---

*Erstellt: 2026-04-11 | CL + LG*
*Basiert auf: CORE3.md, CORE4.md (v3), METHODIK_RECHERCHE_PROTOKOLL.md*
*Ersetzt: 12-Phasen-Masterplan (UEBERGABE_NAECHSTE_SESSION.md)*
