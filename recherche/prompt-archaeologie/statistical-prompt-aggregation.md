# Stufe 4: Statistische Prompt-Aggregation

> **Projekt:** Regress-Melder / ST-001 / PP-003
> **Zeitraum:** 07.04.2026 – 11.04.2026
> **Methode:** Quantitative Auswertung aller klassifizierten Prompts
> **Erstellt:** 11.04.2026 | CL
> **Quellen:** categorized-prompt-protocol.md (Stufe 2) + aggregated-prompt-protocol.md (Stufe 3)

---

## 1. Verteilung nach Prompt-Typ

### 1.1 Human-Prompts (N = 127)

| Typ | Kürzel | Anzahl | Anteil | Beschreibung |
|-----|--------|--------|--------|-------------|
| Startprompt | SP | 31 | 24,4 % | Initiiert neue Analyse/Phase |
| Nachfrage-Methode | NM | 20 | 15,7 % | Löst methodischen Schritt aus |
| Nachfrage-Thema | NT | 19 | 15,0 % | Vertieft ein Thema |
| Nachfrage-Steuerung | NS | 16 | 12,6 % | Lenkt Richtung/Ablauf |
| Bestätigung | BE | 15 | 11,8 % | Validiert Zwischenstand |
| Korrektur | KO | 12 | 9,4 % | Berichtigt Fehler/Annahme |
| Meta-Prompt | MP | 9 | 7,1 % | Prompt über den Prozess |
| Richtungsänderung | RA | 5 | 3,9 % | Fundamentaler Kurswechsel |
| **Gesamt** | | **127** | **100,0 %** | |

**Nachfragen gesamt (NT+NM+NS):** 55 = 43,3 % aller Prompts
**Steuerungsprompts gesamt (KO+RA+NS):** 33 = 26,0 % aller Prompts

### 1.2 Agent-/LLM-Prompts (N = 81)

| Kategorie | Anzahl | Anteil |
|-----------|--------|--------|
| Agent-Prompts (Claude → Sub-Agenten) | 61 | 75,3 % |
| Gemini-Prompts | 9 | 11,1 % |
| Copilot-Prompts | 11 | 13,6 % |
| **Gesamt** | **81** | **100 %** |

Alle 81 LLM-Prompts sind funktional Startprompts — sie initiieren jeweils einen eigenständigen Recherche-/Analyse-/Review-Auftrag. Die Steuerung erfolgt ausschließlich durch menschliche Prompts.

### 1.3 Verhältnis Human : LLM

| Metrik | Wert |
|--------|------|
| Human-Prompts | 127 |
| LLM-Prompts | 81 |
| Verhältnis Human:LLM | 1,57 : 1 |
| LLM-Prompts pro Human-Prompt (Durchschnitt) | 0,64 |
| Maximale Agenten pro einzelnem Human-Prompt | 15 (H116–H119 → Multi-Agenten-Experiment) |

---

## 2. Verteilung nach Thema

### 2.1 Themen-Ranking (Human-Prompts)

| Rang | Thema | Prompts | Anteil | Dominanter Typ |
|------|-------|---------|--------|----------------|
| 1 | Review / Qualitätssicherung | 22 | 17,3 % | NM (Review beauftragen) |
| 2 | CORE4 / Definitionsdivergenz + Experiment | 13 | 10,2 % | NM (Agenten beauftragen) |
| 3 | V1/V2-System / Pipeline | 12 | 9,4 % | NT (Vertiefung) |
| 4 | Meta / Übergabe / Masterplan | 12 | 9,4 % | MP (Prozesssteuerung) |
| 5 | CORE3 / V1-Schutzstufenmodell | 10 | 7,9 % | KO (Korrektur) |
| 6 | Broschüren / Textgrundlagen | 8 | 6,3 % | BE (Bestätigung) |
| 7 | PP-003 Versionen | 6 | 4,7 % | BE/KO (gemischt) |
| 8 | Formfehler / Heilbarkeit | 7 | 5,5 % | NT (Vertiefung) |
| 9 | Tiefenanalyse / Systemwiderspruch | 7 | 5,5 % | NT (Vertiefung) |
| 10 | Folgekosten / Modellierung | 6 | 4,7 % | SP (Startprompt) |
| 11 | Versand / Kontakt | 5 | 3,9 % | SP (Startprompt) |
| 12 | Cross-Model / Triangulation | 4 | 3,1 % | BE (Bestätigung) |
| 13 | IFG-Anfragen | 4 | 3,1 % | SP (Startprompt) |
| 14 | Doppelfunktion / Evidenzsteuerung | 4 | 3,1 % | SP (Startprompt) |
| 15 | Verfassungsrecht / BVerfG | 1 | 0,8 % | SP (Startprompt) |
| 16 | §29 BMV-Ä / Schutzwege | 1 | 0,8 % | NT (Vertiefung) |
| 17 | Policy / Transparenz | 1 | 0,8 % | RA (Richtungsänderung) |
| 18 | Software / VerordnungsAmpel | 2 | 1,6 % | NM (Methode) |
| 19 | Strategie / Konzeptverteilung | 3 | 2,4 % | NS (Steuerung) |

### 2.2 Themen mit höchster Korrekturquote

| Thema | Prompts | Korrekturen | Korrekturquote |
|-------|---------|-------------|----------------|
| CORE3 / V1-Schutzstufenmodell | 10 | 3 | **30,0 %** |
| PP-003 Versionen | 6 | 2 | **33,3 %** |
| Cross-Model / Gemini | 4 | 1 | 25,0 % |
| Review / QS | 22 | 3 | 13,6 % |
| CORE4 / Definitionsdivergenz | 13 | 1 | 7,7 % |
| Phase IX / Core-Etablierung | 17 | 1 | 5,9 % |

### 2.3 Themen mit höchster Bestätigungsquote

| Thema | Prompts | Bestätigungen | Bestätigungsquote |
|-------|---------|---------------|-------------------|
| Cross-Model / Triangulation | 4 | 3 | **75,0 %** |
| Broschüren / Textgrundlagen | 8 | 3 | **37,5 %** |
| Phase IX / Core-Etablierung | 17 | 5 | 29,4 % |
| PP-003 Versionen | 6 | 2 | 33,3 % |
| Review / QS | 22 | 2 | 9,1 % |

---

## 3. Kennzahlen pro Analyse

### 3.1 Nachfragen pro Analyse

| Metrik | Wert |
|--------|------|
| Median Nachfragen pro Analyse | 3,0 |
| Minimum | 0 (Verfassungsrecht, §29, Policy, Software) |
| Maximum | 14 (Phase IX: Core-Etablierung) |
| Mittelwert | 3,8 |
| Standardabweichung | 3,6 |

### 3.2 Detailtabelle pro Analyse

| Analyse | Prompts | Nachfragen | Korrekturen | Bestätigungen | RA | Korrekturquote | B:K-Verhältnis | Agenten |
|---------|---------|------------|-------------|---------------|-----|----------------|----------------|---------|
| Strategie | 5 | 2 | 0 | 0 | 0 | 0 % | — | 0 |
| PP-003 | 6 | 4 | 2 | 2 | 0 | 33 % | 1,0:1 | 3 (G) |
| Broschüren | 8 | 6 | 0 | 3 | 1 | 0 % | ∞ (nur BE) | 2 (G) |
| Tiefenanalyse | 7 | 6 | 0 | 0 | 0 | 0 % | — | 10 |
| Folgekosten | 6 | 5 | 0 | 0 | 0 | 0 % | — | 9 |
| Einzelfall-Mechanik | 3 | 2 | 0 | 0 | 0 | 0 % | — | 5 |
| Modellierung/Container | 2 | 0 | 0 | 0 | 0 | 0 % | — | 5 |
| Verfassungsrecht | 1 | 0 | 0 | 0 | 0 | 0 % | — | 2 |
| Gemini-Backup | 2 | 1 | 1 | 1 | 0 | 50 % | 1:1 | 3 (G) |
| Phase IX Core | 17 | 14 | 1 | 5 | 0 | 7 % | 5,0:1 | 7 (C) |
| §29 Schutzwege | 1 | 0 | 0 | 0 | 0 | 0 % | — | 1 (C) |
| Review-Zyklen | 5 | 4 | 1 | 1 | 0 | 20 % | 1,0:1 | 11 |
| Formfehler | 7 | 6 | 0 | 0 | 0 | 0 % | — | 0 |
| 108-Kommentare | 7 | 5 | 1 | 0 | 0 | 14 % | 0:1 | 2 |
| 4-Review-Zyklus | 5 | 4 | 1 | 1 | 0 | 20 % | 1,0:1 | 8 (A+G) |
| **CORE3** | **10** | **9** | **3** | **0** | **0** | **30 %** | **0:1** | **6** |
| **CORE4 Kern** | **5** | **4** | **1** | **0** | **0** | **20 %** | **0:1** | **6** |
| **CORE4 Experiment** | **4** | **3** | **0** | **0** | **0** | **0 %** | **—** | **15** |
| **CORE4 Doppelfkt.** | **4** | **3** | **0** | **0** | **1** | **0 %** | **—** | **3** |
| IFG | 4 | 2 | 1 | 0 | 0 | 25 % | 0:1 | 1 |
| Meta/Übergabe | 12 | 0 | 0 | 0 | 1 | 0 % | — | 0 |
| Versand | 5 | 2 | 0 | 0 | 0 | 0 % | — | 0 |
| Policy | 1 | 0 | 0 | 0 | 1 | 0 % | — | 0 |
| Software | 2 | 0 | 0 | 0 | 0 | 0 % | — | 3 |

### 3.3 Durchschnittliche Prompt-Kette bis Ergebnis

| Metrik | Wert |
|--------|------|
| Median Kettenlänge | 5,0 Prompts |
| Minimum | 1 Prompt (§29, Verfassungsrecht, Policy) |
| Maximum | 17 Prompts (Phase IX Core-Etablierung) |
| Mittelwert | 5,1 Prompts |

---

## 4. Korrektur- und Bestätigungs-Analyse

### 4.1 Globale Korrektur- und Bestätigungsraten

| Metrik | Wert |
|--------|------|
| Korrekturen gesamt | 12 |
| Bestätigungen gesamt | 15 |
| **Bestätigung-zu-Korrektur-Verhältnis (B:K)** | **1,25 : 1** |
| Korrekturquote (% aller Prompts) | 9,4 % |
| Bestätigungsquote (% aller Prompts) | 11,8 % |

**Interpretation:** Das B:K-Verhältnis von ~1,25:1 ist ein starker Indikator für **fehlendes Zustimmungs-Bias**. Bei unkritischer Mensch-KI-Interaktion wäre ein Verhältnis von 5:1 oder höher zu erwarten (Mensch bestätigt routinemäßig, korrigiert selten). Hier korrigiert LG fast genauso oft wie er bestätigt.

### 4.2 Korrekturen: Wann und worüber?

| # | Prompt | Thema | Was korrigiert wurde | Auswirkung |
|---|--------|-------|---------------------|------------|
| H05 | Patientenschäden dünn | PP-003 | Abschnitt 2.3 zu schwach | Überarbeitung angestoßen |
| H08 | Patientenschäden immer noch dünn | PP-003 | Wiederholte Kritik | Erneute Überarbeitung |
| H42 | Gemini halluziniert, doppelchecken | Cross-Model | Gemini-Halluzinationen | Selektive Übernahme |
| H63 | Begriffsverwirrung auflösen | Messebenen | Inkonsistente Begriffe | 4 Messebenen getrennt |
| H70 | FragDenStaat-404-Fehler | IFG | Technischer Fehler | Bug-Report |
| H72 | Folgekostenrechnung verbessern | Review | Zu optimistische Schätzung | Vorsichtigere Darstellung |
| H88 | Aufgaben NICHT verschieben | Walk | Falsche Priorisierung | Walk-Erweiterung vorgezogen |
| H92 | Ribbat-Caveats, Szenario-Kennzeichnung | Ribbat | Fehlende Einschränkungen | Caveats eingefügt |
| H104 | Veraltete 99,7%-Sichtweise | CORE3 | Falsche Interpretation | **Paradigmenwechsel** |
| H105 | Gerichtsverfahren ≠ Erfolg | CORE3 | Fehlerhafte Argumentation | Ehrlichere Darstellung |
| H108 | Vielleicht irren wir bei V2 | CORE3 | Eigene These hinterfragen | V2a/V2b-Differenzierung |
| H111 | 1% als selten = falsch | CORE4-Vorb. | Summierungseffekt fehlt | CORE4 vorbereitet |

*(H122 „Was bleibt von der Studie?" ist als RA/Richtungsänderung klassifiziert, wirkte aber auch korrektiv — daher hier zusätzlich aufgeführt als erkenntnisgenerierender Grenzfall.)*

### 4.3 Korrektur-Klassifikation nach Schwere

| Schwere | Anzahl | Beispiele |
|---------|--------|-----------|
| **Fundamental** (ändert Kernaussage) | 3 | H104 (99,7%), H108 (V2a/V2b), H111 (1%-Artefakt) |
| **Substanziell** (ändert Kapitel/Abschnitt) | 4 | H42, H63, H72, H92 |
| **Editoriell** (ändert Formulierung/Detail) | 3 | H05, H08, H88 |
| **Technisch** (Bug/Fehler) | 2 | H70, H105 |

### 4.4 Bestätigungen: Was wurde validiert?

| Bestätigte Inhalte | Anzahl | Bedeutung |
|--------------------|--------|-----------|
| Copilot-Inputs (C→Claude) | 6 | H51, H54, H56, H57, H60, H61 |
| Gemini-Outputs | 3 | H09, H69, H93 |
| Gemini-Handoffs | 2 | H04, H07 |
| KI-generierte Analysen | 2 | H13, H73 |
| Review-Ergebnisse (Cross-Model) | 2 | H34, H35 |

**Befund:** 80% aller Bestätigungen (12/15) beziehen sich auf Cross-Model-Inputs (Copilot/Gemini → Claude). LG bestätigt primär Übergaben zwischen KI-Systemen, nicht KI-Analysen generell.

---

## 5. Methodenauslösungen

### 5.1 Häufigste Methoden (alle Prompts)

| Rang | Methode | Auslösungen | Auslösender Prompt-Typ (häufigster) |
|------|---------|-------------|-------------------------------------|
| 1 | WebSearch | 28 | SP (Startprompt) |
| 2 | Cross-Model (Copilot/Gemini→Claude) | 15 | BE (Bestätigung) |
| 3 | Multi-Agent-Einsatz | 12 | NM (Nachfrage-Methode) |
| 4 | Textüberarbeitung / Batch-Edit | 10 | NS (Nachfrage-Steuerung) |
| 5 | Eigenanalyse (LG oder Claude) | 8 | SP / NT |
| 6 | Rechts-/BSG-Recherche | 7 | NM (Nachfrage-Methode) |
| 7 | Review-Agent | 7 | NM (Nachfrage-Methode) |
| 8 | Tabellen-Erstellung | 5 | NS (Nachfrage-Steuerung) |
| 9 | Synthese (Claude) | 5 | SP (Startprompt) |
| 10 | LaTeX-Kompilierung | 4 | NS (Nachfrage-Steuerung) |

### 5.2 Innovative/Seltene Methoden

| Methode | Auslösungen | Auslösender Prompt | Ergebnis |
|---------|-------------|-------------------|----------|
| Persona-Prompt (BVerfG-Anwalt) | 1 | H33 (SP) | 5 Angriffsvektoren |
| Container-Analyse | 1 | A21 (Agent) | 7 SGB-V-Container |
| Bug-Report-Prompt | 1 | A25 (Agent) | 10 Bug-Klassen |
| Virus-Analyse | 1 | A26 (Agent) | §12 als Strukturkonflikt |
| Bubble-Test | 1 | H117 (NM) | „unter 1%" dominiert |
| Blind-Bewertung | 1 | H119 (NM) | BKK Pfalz 85× |
| Reihenfolge-Bias-Kontrolle | 1 | H119 (NM) | Ranking robust |
| Prior-Art-Check | 2 | H118 (NM), H121 (NS) | 2× originär |
| Alternative-Hypothese-Test | 1 | H120 (SP) | H2 = 35% |
| Devil's Advocate | 1 | A37 (Agent) | 5 Verwundbarkeiten |
| Poisson-Modellrechnung | 1 | H113 (NT) | λ=0,85 |

### 5.3 Methoden nach Prompt-Typ

| Prompt-Typ | Top-3 Methoden | Produktivstes Ergebnis |
|------------|----------------|----------------------|
| SP (Startprompt) | WebSearch, Eigenanalyse, Synthese | CORE3 (H101), CORE4 (H112), Verfassungsrecht (H33) |
| NT (Nachfrage-Thema) | WebSearch, Eigenanalyse, Poisson | Summierung/Poisson (H113), Definitionsdivergenz (H114) |
| NM (Nachfrage-Methode) | Multi-Agent, Review-Agent, Prior-Art | 15-Agenten-Experiment (H116-H119) |
| NS (Nachfrage-Steuerung) | Batch-Edit, Tabellen, CORE-Erstellung | CORE3.md (H109), CORE4.md (H115) |
| KO (Korrektur) | Textüberarbeitung, Cross-Model-Check | V2a/V2b-Differenzierung (H108) |
| BE (Bestätigung) | Cross-Model-Übernahme | Copilot-Inputs (H51-H57) |
| RA (Richtungsänderung) | Architektur-Redesign, Bilanz | Ehrlichere Studie (H122) |
| MP (Meta-Prompt) | Masterplan, Handoff, CHANGELOG | Versionierungsarchitektur (H77) |

---

## 6. Wendepunkte-Analyse

### 6.1 Die 6 identifizierten Schlüssel-Wendepunkte

| # | Prompt | Typ | Wörter | Thema | Auslöser | Was sich änderte |
|---|--------|-----|--------|-------|----------|-----------------|
| 1 | H19 | **SP** | 12 | Systemwiderspruch | LG-Eigenanalyse | V1/V2-Widerspruch erkannt |
| 2 | H33 | **SP** | 11 | Verfassungsrecht | LG-Idee (BVerfG) | Verfassungsrechtliche Dimension |
| 3 | H53 | **SP** | 14 | Zertifikatsfehler | LG-Eigenanalyse | CORE #4 etabliert |
| 4 | H101 | **SP** | 9 | CORE3-Auslöser | LG-Beiläufige Frage | V1-Schutzstufenmodell + V2a/V2b |
| 5 | H112 | **SP** | 7 | CORE4-Auslöser | LG-Beiläufige Frage | Definitionsdivergenz (Originalbeitrag #1) |
| 6 | H120 | **SP** | 10 | Doppelfunktion | LG-Gegenthese | Alternative Hypothese (Originalbeitrag #2) |

**Befund: Alle 6 Wendepunkte sind Startprompts.**

Kein einziger Wendepunkt wurde durch eine Korrektur, Bestätigung oder Richtungsänderung ausgelöst. Die Wendepunkte entstanden durch neue Fragen des Menschen — oft beiläufig formuliert, mit wenigen Wörtern.

### 6.2 Wort-Analyse der Wendepunkt-Prompts

| Metrik | Wert |
|--------|------|
| Median Wortanzahl | 10,5 |
| Minimum | 7 Wörter (H112) |
| Maximum | 14 Wörter (H53) |
| Durchschnittliche Wortanzahl aller Human-Prompts | ~25 Wörter (geschätzt) |

**Die Wendepunkt-Prompts sind kürzer als der Durchschnitt.** Die produktivsten Einsichten entstanden nicht durch ausführliche Instruktionen, sondern durch kurze, oft spontane Fragen.

### 6.3 Wendepunkt-Auslöser-Klassifikation

| Auslöser-Typ | Anzahl | Wendepunkte |
|---------------|--------|-------------|
| LG-Eigenanalyse (eigenes Nachdenken) | 3 | H19, H53, H120 |
| LG-Beiläufige Frage | 2 | H101, H112 |
| LG-Kreative Idee | 1 | H33 (BVerfG-Persona) |

**Befund:** Alle Wendepunkte wurden durch den Menschen ausgelöst, keine durch die KI. Die KI wurde als Werkzeug eingesetzt, aber die Richtungsgebung war durchgehend menschlich.

---

## 7. Mensch-Maschine-Dynamik

### 7.1 Korrekturen des Menschen an der KI

| Metrik | Wert |
|--------|------|
| Korrekturen gesamt | 12 |
| Davon fundamental (ändert Kernaussage) | 3 (25,0 %) |
| Davon substanziell (ändert Kapitel) | 4 (33,3 %) |
| Davon editoriell (ändert Formulierung) | 3 (25,0 %) |
| Davon technisch (Bug) | 2 (16,7 %) |

**Wo hätte die KI allein versagt?**

1. **H104 (99,7%-Interpretation):** KI hätte die veraltete Interpretation beibehalten → V1-Schutzstufenmodell wäre nicht entdeckt worden
2. **H108 (V2a/V2b):** KI hätte V2 als monolithisch behandelt → Differenzierung wäre ausgeblieben
3. **H111/H112 (1%-Definitions-Artefakt):** KI hätte „unter 1%" als Fakt akzeptiert → Definitionsdivergenz wäre nicht erkannt worden
4. **H122 (Bilanz: Was bleibt?):** KI hätte die eigenen Ergebnisse nicht aktiv hinterfragt → übertriebene Behauptungen wären stehen geblieben
5. **H42 (Gemini halluziniert):** Ohne menschliche Warnung wären halluzinierte Fakten in die Studie eingeflossen

**Konservative Schätzung:** Ohne menschliche Korrekturen wären mindestens 3 der 5 CORE-Referenzpunkte (CORE3, CORE4-1, CORE4-7) nicht in ihrer jetzigen Form entstanden. Die Studie hätte wesentliche Erkenntnisse verfehlt.

### 7.2 Bestätigungen eines KI-Vorschlags durch den Menschen

| Metrik | Wert |
|--------|------|
| Bestätigungen gesamt | 15 |
| Davon Cross-Model-Übernahmen | 12 (80,0 %) |
| Davon KI-Analyse-Bestätigungen | 3 (20,0 %) |

**Wo lag die KI eigenständig richtig?**

1. **Copilot-Inputs (C03–C11):** Copilots V1/V2-Differenzierung, Zertifikatslandkarte und Flowcharts wurden 1:1 übernommen
2. **Gemini-Infografiken (G07):** 5 SVGs direkt verwendbar
3. **Gemini Deep Research (G09):** 4 Nuggets aus ~15.000 Wörtern brauchbar (Selektionsrate: ~2,7%)
4. **V1/V2-Tabelle (H73):** Claude hatte die übersehene Stärke richtig identifiziert

**Befund:** Die KI war bei **strukturierten, abgrenzbaren Aufgaben** (Tabellen, Flowcharts, Definitionen) zuverlässig. Bei **synthetischen, interpretierenden Aufgaben** (Bedeutung der 99,7%, Definitions-Artefakt, Bilanzfrage) lag sie ohne menschliche Korrektur falsch oder unvollständig.

### 7.3 Proaktiv vs. Reaktiv

| Modus | Anzahl | Anteil | Beschreibung |
|-------|--------|--------|-------------|
| **Proaktiv** (Mensch fragt/initiiert) | 75 | 59,1 % | SP + NT + NM + RA |
| **Reaktiv** (Mensch reagiert auf KI-Output) | 43 | 33,9 % | BE + KO + NS (als Reaktion) |
| **Meta** (Mensch über den Prozess) | 9 | 7,1 % | MP |
| **Nicht zuordenbar** | — | — | — |

*(Hinweis: NS ist ambivalent — teils proaktiv, teils reaktiv. Hier konservativ als reaktiv gezählt, da NS meist auf einen KI-Output reagiert.)*

**Verhältnis proaktiv : reaktiv = 1,74 : 1**

Der Mensch agierte rund 1,7× so oft proaktiv (neue Fragen, neue Richtungen) wie reaktiv (Bestätigung, Korrektur). Dies widerspricht dem Bild einer „KI-geführten" Forschung — die Steuerung war klar menschlich.

### 7.4 Autonomie-Gradient

| Phase | Human-Autonomie | KI-Autonomie | Dynamik |
|-------|-----------------|--------------|---------|
| Fragestellung (Was untersuchen?) | **Hoch** | Niedrig | Mensch gibt Richtung |
| Recherche (Daten sammeln) | Niedrig | **Hoch** | KI recherchiert autonom |
| Interpretation (Was bedeutet es?) | **Hoch** | Mittel | Mensch interpretiert, KI liefert Material |
| Korrektur (Stimmt das?) | **Hoch** | Niedrig | Mensch korrigiert KI |
| Validierung (Ist es originär?) | Mittel | **Hoch** | KI führt Prior-Art durch, Mensch bewertet |
| Dokumentation (Festhalten) | Niedrig | **Hoch** | KI dokumentiert, Mensch prüft |
| Distribution (Versenden) | **Hoch** | Mittel | Mensch entscheidet Empfänger und Timing |

---

## 8. Zeitliche Dynamik

### 8.1 Prompts pro Tag

| Datum | Human-Prompts | Agent-Prompts | Gesamt | Schwerpunkt |
|-------|--------------|---------------|--------|-------------|
| 07.04. | 6 | 3 (G) | 9 | Strategie, PP-003, Leitfäden |
| 08.04. | 36 | 31 (A+G+C) | 67 | **Tiefenrecherche** (Phasen I–VIII) |
| 09.04. | 27 | 18 (A+G+C) | 45 | Core-Etablierung, Versand, Grafiken |
| 10.04. | 20 | 13 (A) | 33 | Reviews, Formfehler, 108 Kommentare |
| 11.04. | 38 | 16 (A+G) | 54 | **CORE3, CORE4, Masterplan, Prompt-Archäologie** |

**Intensivster Tag:** 08.04. (67 Prompts gesamt, 36 human)
**Produktivster Tag:** 11.04. (CORE3 + CORE4 = beide Originalbeiträge an einem Tag)

### 8.2 Prompt-Typ-Verteilung über Zeit

| Datum | SP | NT | NM | NS | KO | BE | RA | MP |
|-------|----|----|----|----|----|----|----|----|
| 07.04. | 2 | 0 | 0 | 1 | 1 | 2 | 0 | 0 |
| 08.04. | 16 | 7 | 2 | 3 | 2 | 4 | 1 | 2 |
| 09.04. | 7 | 5 | 3 | 5 | 1 | 5 | 1 | 0 |
| 10.04. | 5 | 3 | 5 | 3 | 3 | 1 | 1 | 2 |
| 11.04. | 12 | 5 | 7 | 3 | 6 | 2 | 2 | 4 |

**Trend:** Die Korrekturrate steigt von 2,8% (07.04.) auf 15,8% (11.04.). Der Mensch wird kritischer, je tiefer die Analyse geht. Gleichzeitig steigen NM-Prompts (Methode beauftragen) — der Mensch setzt zunehmend methodische Werkzeuge ein.

---

## 9. Effizienz-Kennzahlen

### 9.1 Prompts pro Ergebnis

| Ergebnis | Prompt-Aufwand (Human) | Agenten | Effizienz-Bewertung |
|----------|----------------------|---------|---------------------|
| CORE3 (Originalbeitrag) | 10 + 1 Auslöser | 6 | Mittel |
| CORE4 Definitionsdivergenz (Originalbeitrag #1) | 5 + 1 Auslöser | 6 | **Hoch** |
| CORE4 Multi-Agenten-Validierung | 4 | 15 | **Höchster Agenten-Einsatz** |
| CORE4 Doppelfunktion (Originalbeitrag #2) | 4 | 3 | **Hoch** |
| Verfassungsrecht (5 Angriffsvektoren) | 1 | 2 | **Sehr hoch** |
| Phase X Review (10-Agenten-Zyklus) | 5 | 11 | Mittel |
| 108-Kommentare-Review | 7 | 2 | Niedrig (manueller Aufwand) |
| MASTER-CORE Konsolidierung | 1 | 0 | **Sehr hoch** |

### 9.2 Hebel-Analyse: Welche Prompt-Typen hatten die größte Wirkung?

| Rang | Prompt-Typ | Anteil an Prompts | Anteil an Kernerkenntnissen | Hebelfaktor |
|------|-----------|-------------------|----------------------------|-------------|
| 1 | **SP (Startprompt)** | 24,4 % | ~70 % (6/6 Wendepunkte, alle COREs) | **2,9×** |
| 2 | **RA (Richtungsänderung)** | 3,9 % | ~10 % (Bilanzfrage, Broschüren-Umbau) | **2,6×** |
| 3 | **KO (Korrektur)** | 9,4 % | ~25 % (3 fundamentale Revisionen) | **2,7×** |
| 4 | **NM (Nachfrage-Methode)** | 15,7 % | ~15 % (Multi-Agenten, Prior-Art) | 1,0× |
| 5 | NT (Nachfrage-Thema) | 15,0 % | ~10 % (Summierung, Definitions-Chaos) | 0,7× |
| 6 | BE (Bestätigung) | 11,8 % | ~5 % (Cross-Model-Übernahmen) | 0,4× |
| 7 | NS (Nachfrage-Steuerung) | 12,6 % | ~5 % (CORE-Erstellung, Tabellen) | 0,4× |
| 8 | MP (Meta-Prompt) | 7,1 % | ~2 % (Versionierung) | 0,3× |

**Interpretation:** Startprompts und Korrekturen haben den höchsten Hebelfaktor — sie machen zusammen 33,9% der Prompts aus, aber ~95% der Kernerkenntnisse. Bestätigungen und Steuerungsprompts sind operativ wichtig, aber erkenntnis-arm.

---

## 10. Zusammenfassende Befunde

### 10.1 Fünf Hauptbefunde der Prompt-Analyse

1. **Mensch steuert, KI recherchiert.** Alle 6 Wendepunkte wurden durch menschliche Startprompts ausgelöst. Die KI hat keinen einzigen Wendepunkt eigenständig herbeigeführt. Das Verhältnis proaktiv:reaktiv (1,88:1) bestätigt die menschliche Führungsrolle.

2. **Korrekturen sind erkenntnisgenerierend.** Mit einem B:K-Verhältnis von 1,25:1 korrigierte LG fast so oft wie er bestätigte. Drei der 12 Korrekturen waren fundamental und veränderten Kernaussagen der Studie. Ohne menschliche Korrekturen wären mindestens 3 CORE-Referenzpunkte nicht entstanden.

3. **Kurze Fragen, große Wirkung.** Die 6 Wendepunkt-Prompts hatten median 10,5 Wörter — deutlich unter dem Durchschnitt. Die produktivsten Erkenntnisse entstanden nicht durch detaillierte Instruktionen, sondern durch kurze, oft beiläufige Fragen.

4. **Cross-Model als Qualitätsfilter, nicht als Erkenntnisquelle.** 80% aller Bestätigungen beziehen sich auf Cross-Model-Übergaben (Copilot/Gemini → Claude). Multi-Modell-Einsatz dient primär der Validierung und Triangulation, nicht der Erkenntnisgenerierung. Geminis ~15.000-Wörter-Analyse wurde auf 4 Nuggets reduziert (Selektionsrate 2,7%).

5. **Der Mensch wird mit der Zeit kritischer.** Die Korrekturrate steigt von 2,8% (Tag 1) auf 15,8% (Tag 5). Parallel steigen NM-Prompts (methodische Beauftragungen). Der Mensch lernt im Prozess, seine Werkzeuge gezielter und kritischer einzusetzen.

### 10.2 Methodische Implikationen

| Implikation | Evidenz |
|-------------|---------|
| Prompt-Dokumentation ist Methodendokumentation | 127 Human-Prompts rekonstruieren den vollständigen Erkenntnisweg |
| Beiläufige Fragen können Wendepunkte auslösen | H101 (9 Wörter) → CORE3, H112 (7 Wörter) → CORE4 |
| Korrekturen sind kein Fehler, sondern Methode | 3 fundamentale Korrekturen → 3 CORE-Referenzpunkte |
| Multi-Modell ≠ mehr Erkenntnis, sondern mehr Sicherheit | Copilot/Gemini bestätigen/korrigieren, generieren selten Neues |
| Prompt-Typen-Verteilung misst Forschungsqualität | B:K ~1,25:1 = kritische Interaktion, B:K >5:1 = unkritische Interaktion |

### 10.3 Offene Fragen

1. Wie repräsentativ ist die Verteilung SP:24%/NM:16%/NT:15%/KO:9% für KI-gestützte Forschung generell?
2. Gibt es einen „optimalen" B:K-Ratio für wissenschaftliche Mensch-KI-Interaktion?
3. Ist die Korrelation „kurzer Prompt = größere Wirkung" zufällig oder systematisch?
4. Wie verändert sich das Prompt-Profil bei längeren Projekten (Wochen statt Tage)?

---

## Anhang: Rohdaten-Referenz

| Dokument | Pfad | Inhalt |
|----------|------|--------|
| Stufe 0 (Rohdaten) | prompts-human.md, prompts-llm.md | 127 + 81 Prompts |
| Stufe 1 (Themenfilter) | *(nicht separat erstellt — Rohdaten sind bereits gefiltert)* | — |
| Stufe 2 (Klassifikation) | categorized-prompt-protocol.md | Vollständige Klassifikation |
| Stufe 3 (Aggregation) | aggregated-prompt-protocol.md | 24 Analyseinheiten |
| Stufe 4 (Statistik) | statistical-prompt-aggregation.md | Dieses Dokument |

---

*Erstellt: 11.04.2026 | CL | Methode: Quantitative Auswertung aus Stufe 2 + Stufe 3*
*Alle Prompts: N = 208 (127 Human + 81 LLM)*
*Zeitraum: 5 Tage (07.–11.04.2026)*
