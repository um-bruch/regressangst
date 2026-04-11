# Stufe 2: Klassifiziertes Prompt-Protokoll

> **Projekt:** Regress-Melder / ST-001 / PP-003
> **Zeitraum:** 07.04.2026 – 11.04.2026
> **Methode:** Klassifikation nach KONZEPT_PROMPT_PIPELINE.md (Stufe 2)
> **Erstellt:** 11.04.2026 | CL
> **Ergänzung:** Thema-Spalte gemäß User-Anforderung

---

## Legende

**Typ-Kürzel:**
- **SP** = Startprompt (initiiert neue Analyse/Phase)
- **NT** = Nachfrage-Thema (vertieft ein Thema)
- **NM** = Nachfrage-Methode (löst methodischen Schritt aus)
- **NS** = Nachfrage-Steuerung (lenkt Richtung/Ablauf)
- **KO** = Korrektur (berichtigt einen Fehler/eine Annahme)
- **BE** = Bestätigung (validiert Zwischenstand)
- **RA** = Richtungsänderung (fundamentaler Kurswechsel)
- **MP** = Meta-Prompt (Prompt über den Prozess selbst)

**Absicht-Kürzel:**
- **EG** = Erkenntnisgewinn
- **QS** = Qualitätssicherung
- **NA** = Nachsteuerung
- **RW** = Richtungswechsel
- **DO** = Dokumentation
- **OP** = Operativ (Versand, Deploy, Kompilierung)
- **OR** = Organisation (Workflow, Planung)

---

## Tabelle 1: Human-Prompts (H01–H127)

| # | Datum | Prompt (Kurzform, max 15 Wörter) | Thema | Typ | Zweck | Absicht | Methodenauslösung | Folge | Ergebnis |
|---|-------|----------------------------------|-------|-----|-------|---------|-------------------|-------|----------|
| H01 | 07.04. 22:54 | SIDEQUEST: Wer könnte unser Konzept umsetzen? | Strategie / Konzeptverteilung | SP | Umsetzer-Recherche starten | EG | WebSearch | Recherche: potenzielle Umsetzer identifiziert | Top-5-Umsetzerliste + Kontaktdatenbank-Entries |
| H02 | 07.04. 23:00 | Konzept anbieten, jemand anderes machen lassen, Kontakte in DB | Strategie / Konzeptverteilung | NS | Verteilstrategie konkretisieren | NA | DB-Eintrag | Kontakte in DB eingepflegt | Versandliste für Konzept-Mails vorbereitet |
| H03 | 07.04. 23:11 | STATUS VON: Konzept in Kürze, Top-5 Umsetzer | Strategie / Konzeptverteilung | NS | Zwischenstand abfragen | QS | — | Statusbericht generiert | Übersicht Konzept + 5 potenzielle Partner |
| H04 | 07.04. 23:28 | Gemini-Handoff: PP-003 v1.0 LaTeX-Konvertierung bestätigen | PP-003 / LaTeX | BE | Gemini-Auftrag freigeben | OP | Gemini-Handoff | PP-003 v1.0 an Gemini übergeben | PP-003 v1.0 LaTeX-Kompilierung gestartet |
| H05 | 07.04. 23:39 | 2.3 Patientenschäden weiterhin dünn (Feedback PP-003 Fallbeispiele) | PP-003 / Patientenschäden | KO | Schwachstelle in Abschnitt 2.3 markieren | QS | — | Überarbeitung Abschnitt 2.3 angefordert | Fallbeispiele als Lücke identifiziert |
| H06 | 07.04. 23:51 | Leitfaden Prävention, Pfadbäume, LaTeX-Setzprompt für Gemini | Broschüren / Textgrundlagen | SP | Drei Leitfäden konzipieren | EG | Gemini-Prompt-Erstellung | LF-001/002/003 Konzept + Gemini-Prompt erstellt | Leitfaden-Reihe initiiert |
| H07 | 08.04. 00:02 | Gemini PP-003 v1.1 TikZ-Diagramme + Fallbeispiele bestätigen | PP-003 / Diagramme | BE | Gemini-Ergebnis freigeben | OP | Gemini-Handoff | v1.1 mit TikZ + Fallbeispielen übernommen | PP-003 v1.1 kompiliert |
| H08 | 08.04. 00:07 | Weiterhin dünn: 2.3 Patientenschäden (zweites Feedback) | PP-003 / Patientenschäden | KO | Wiederholte Schwachstelle markieren | QS | — | Erneute Überarbeitung angestoßen | Abschnitt 2.3 bleibt offen für Verbesserung |
| H09 | 08.04. 00:53 | Gemini: LF-001/002/003 LaTeX-Kompilierung bestätigt | Broschüren / Textgrundlagen | BE | Gemini-Ergebnis validieren | OP | — | Leitfäden als LaTeX-PDFs verfügbar | LF-001/002/003 v1.0 fertig |
| H10 | 08.04. 01:03 | Noch nicht ready, 8 Uhr Mail, Prüfung für Konzept | Versand / Planung | NS | Versandzeitpunkt + Prüfung festlegen | OR | — | Versand auf 8 Uhr verschoben | Qualitätsprüfung vor Versand eingeplant |
| H11 | 08.04. 02:34 | Mail: Idee kostenlos, adoptiert und macht etwas daraus | Versand / Konzeptverteilung | SP | Mail-Entwurf für Top-5-Versand | OP | Mail-Erstellung | Mail-Template für Konzeptverteilung | 5 Mails vorbereitet |
| H12 | 08.04. 02:39 | Copilot rät: Pharmakovigilanz, CIRS, Chilling Effect einordnen | PP-003 / Theorieeinordnung | NT | Copilot-Vorschlag einarbeiten | EG | Cross-Model (Copilot-Input) | Begriffe in PP-003 v1.2 integriert | Theoretischer Rahmen erweitert |
| H13 | 08.04. 02:48 | Copilot-Review vollständig, Kurzpaper auf einer Seite | PP-003 / Review | BE | Copilot-Review abschließen + Kurzversion | QS | Textredaktion | PP-003K (Kurzfassung) erstellt | PP-003K als eigenständiges Dokument |
| H14 | 08.04. 02:58 | Unterschied Prüfungsarten, Formfehler, Regress als Angstinstrument | Tiefenanalyse / V1-V2-System | SP | Phase II Tiefenanalyse starten | EG | WebSearch (4 parallele Recherchen) | 4 Recherchestränge geöffnet | Grundlage für Prüfverfahrens-Differenzierung |
| H15 | 08.04. 03:04 | Mehr Kategorien, Prozess durch Instanzen, Zertifikat ob berechtigt | Tiefenanalyse / Pipeline | NT | Pipeline-Struktur vertiefen | EG | Strukturanalyse | Eskalationspipeline konzipiert | Pipeline-Modell V1→V2 mit Dropout-Raten |
| H16 | 08.04. 03:12 | Stichprobe vs. echte Auffälligkeiten, 0,7% davon wirklich auffällig | Tiefenanalyse / Zwei Lesarten | NT | Statistische Interpretation hinterfragen | EG | Eigenanalyse | Zwei Lesarten der Regressquote formuliert | Vorläufer der Definitionsdivergenz |
| H17 | 08.04. 03:21 | Kosten Systemdruck, Bürokratie, Fehlertoleranz, Verschlüsselungsprofi | Tiefenanalyse / Bürokratiekosten | NT | Bürokratie-Dimension erschließen | EG | WebSearch | Kodierungsaufwand + Fehlertoleranz recherchiert | Bürokratie-Kapitel in ST-001 angelegt |
| H18 | 08.04. 03:22 | GPE RLP auf FragDenStaat, Regress-Rankings möglich? | IFG / Datenbeschaffung | SP | IFG-Anfrage als Datenzugang explorieren | EG | FragDenStaat-Recherche | GPE als Datenanker identifiziert | IFG-Roadmap initiiert |
| H19 | 08.04. 03:29 | Widersprechen sich die Verfahren? Einzelfallprüfung als Mikromanagement | **Systemwiderspruch** / V1-V2 | SP | Fundamentalen Widerspruch aufdecken | EG | Eigenanalyse (LG) | **Schlüssel-Wendepunkt 1**: System als widersprüchlich erkannt | CORE-Referenzpunkt: Systemwiderspruch V1/V2 |
| H20 | 08.04. 03:38 | Hunderte Prüfer obwohl Statistik okay — fundamentaler Widerspruch | Systemwiderspruch / Eigenanalyse | NT | Widerspruch vertiefen (LG-Eigenanalyse) | EG | Eigenanalyse | Widerspruch zwischen V1-Screening und V2-Einzelfall | Kernerkenntnis: System prüft sich selbst nicht |
| H21 | 08.04. 03:48 | Übergabeprompt: einarbeiten, Blog, speichern, Software, Mails | Meta / Übergabe | MP | 8-Punkte-Übergabe für neue Session | OR | — | Continuation-Prompt erstellt | Workflow für Folgesession dokumentiert |
| H22 | 08.04. 03:51 | Folgerecherchen: Verhaltensweisen, Patientenschäden, Schaden beziffern | Folgekosten / Patientenschäden | SP | Phase III Folgekostenanalyse starten | EG | WebSearch | Folgekosten-Recherche gestartet | Folgekostenrechnung initiiert |
| H23 | 08.04. 04:14 | Cluster A einarbeiten, Cluster B recherchieren, Review, Mailversand | Meta / Workflow | MP | Workflow-Ablauf planen | OR | — | 4-Phasen-Plan dokumentiert | Cluster-Architektur für Arbeitsablauf |
| H24 | 08.04. 04:38 | Zwei Lesarten: Wie ist V2 im Gesetz definiert? Selbstverständnis? | V2-Einzelfall / Mechanik | SP | Phase IV Einzelfall-Mechanik starten | EG | Gesetzesrecherche | §106 SGB V + BMG-Quellen analysiert | V2-Mechanik-Kapitel gestartet |
| H25 | 08.04. 04:43 | Ribbat: Welches Land? Übertragbar? Vergleiche mit Rauch-Kosten | Ribbat / Folgekosten | NT | Ribbat-Studie kontextualisieren | EG | WebSearch | Ribbat-Kontext recherchiert | Ribbat als zentrale Referenz verankert |
| H26 | 08.04. 04:49 | GKV-SV verteidigt Einzelfallprüfung als effizient — welche Belege? | GKV-Belege / V2-Legitimation | NT | GKV-Argumentation prüfen | EG | WebSearch | GKV-SV-Statements recherchiert | Keine empirischen Effizienzbelege gefunden |
| H27 | 08.04. 04:53 | Ribbat-Studie nie gehört, Skandal? Medienresonanz? | Ribbat / Medienresonanz | NT | Ribbat-Wirkung in Medien prüfen | EG | WebSearch | Medienrecherche zu Ribbat | Geringe Medienresonanz → Befund: übersehene Studie |
| H28 | 08.04. 04:57 | Wer hat Einzelfallprüfung eingeführt, Changelog der Definition | Geschichte / V2-Entstehung | SP | Rechtshistorische Analyse starten | EG | Rechtshistorie-Recherche | Changelog 1911–2024 erstellt | GRG 1988 als Ursprung identifiziert (korrigiert: nicht GSG 1992) |
| H29 | 08.04. 05:18 | Was verhindert am effektivsten Regresse für Ärzte? | Prävention / Top-Verhinderer | SP | Präventionsstrategien sammeln | EG | WebSearch + BSG-Recherche | Top-10 Maßnahmen identifiziert | Grundlage für Leitfaden LF-001 |
| H30 | 08.04. 05:21 | Modellarzt mit maximaler Regressangst, Szenarien, Folgen | Modellierung / Modellarzt | SP | Phänotyp-Ableitung beauftragen | EG | Synthese (Claude) | Modellarzt-Profil erstellt | 5 Szenarien mit gesellschaftlichen Folgen |
| H31 | 08.04. 05:23 | Verschiedene Spiele spieltheoretisch modulieren | Modellierung / Spieltheorie | SP | Spieltheoretische Modellierung | EG | Spieltheorie-Modell | 4 Spiele modelliert | Nash-Gleichgewicht → Defensivmedizin als dominante Strategie |
| H32 | 08.04. 05:26 | Alles in Begleitpaper, Meldesystem zitiert nur, Blogeintrag-Referenz | Meta / Architektur | RA | **Richtungsänderung:** Trennung ST-001 / PP-003 | RW | Dokumenten-Restrukturierung | ST-001 als eigenständiges Begleitpaper | Zwei-Paper-Architektur etabliert |
| H33 | 08.04. 05:58 | Gordischer Knoten: BVerfG-Anwalt-Persona, Backdoor, Eigentumsfrage | **Verfassungsrecht** / BVerfG | SP | **Schlüssel-Wendepunkt 2**: Verfassungsrechtliche Dimension | EG | **Persona-Prompt** (BVerfG-Anwalt) | 5 Angriffsvektoren identifiziert | Art. 12, Art. 14, Art. 19(4) GG als Hebel |
| H34 | 08.04. 07:35 | Copilot-Review 1 einfügen (ST-001 v0.2) | Review / Cross-Model | BE | Copilot-Review übernehmen | QS | Cross-Model (Copilot→Claude) | 9 Verbesserungen integriert | ST-001 v0.3 |
| H35 | 08.04. 07:43 | Copilot-Review 2 einfügen (PP-003 v2.1) | Review / Cross-Model | BE | Copilot-Review übernehmen | QS | Cross-Model (Copilot→Claude) | DSGVO-Matrix + Anti-Fake integriert | PP-003 v2.2 |
| H36 | 08.04. 07:47 | Gemini-Ergebnisse (GPE-Kosten + Ribbat-Medien) übergeben | Ribbat / GPE / Cross-Model | BE | Gemini-Recherche integrieren | QS | Cross-Model (Gemini→Claude) | GPE-Etat-Daten + Ribbat-Medien eingebaut | Faktengrundlage erweitert |
| H37 | 08.04. 08:09 | SIDEQUEST: Software Diagnostic auf Ressourcen prüfen | Meta / Ressourcen | SP | Ressourcen-Audit des Systems | OR | System-Diagnostik | Festplattenplatz + Speicher geprüft | Keine Ressourcenprobleme identifiziert |
| H38 | 08.04. 08:23 | FragDenStaat-Maßnahmen als TODOs, Afteraftershow | IFG / Planung | NS | IFG-Aktionen priorisieren | OR | TODO-Erstellung | IFG-Roadmap mit Prioritäten | 12 IFG-Anfragen geplant |
| H39 | 08.04. 09:19 | Therapiefreiheit e.V.: gute, böse oder beides? | Strategie / Stakeholder | NT | Stakeholder-Einschätzung einholen | EG | WebSearch | Therapiefreiheit e.V. analysiert | Ambivalente Einschätzung: Lobby + echte Anliegen |
| H40 | 08.04. 09:36 | Continuation-Prompt mit Cluster-A/B-Workflow-Zusammenfassung | Meta / Übergabe | MP | Session-Continuation vorbereiten | OR | — | Handoff-Dokument aktualisiert | Nahtlose Weiterarbeit in neuer Session |
| H41 | 08.04. 10:00 | Prüfe Software ob wir besseres als unser Konzept übersehen haben | VerordnungsAmpel / Softwareanalyse | NM | Marktanalyse beauftragen | QS | WebSearch (Software-Markt) | Bestehende PVS-Lösungen analysiert | Kein direktes Äquivalent gefunden |
| H42 | 08.04. 10:27 | Gemini-Review aufnehmen, Gemini halluziniert, doppelchecken | Review / Theorierahmen | KO | Gemini-Halluzinationen auffangen | QS | Cross-Model + Faktencheck | 9 Kapitel gegengeprüft, Halluzinationen markiert | Theorierahmen selektiv übernommen |
| H43 | 09.04. 16:06 | Praxiskontakt: Mail an Praxis | Versand / Kontakt | SP | Direktkontakt zu Arzt herstellen | OP | Mail-Versand | Mail an Praxis [redigiert] gesendet | Erster Direktkontakt mit betroffener Praxis |
| H44 | 09.04. 16:27 | KI-Podcast von NotebookLM abholen, Blogeintrag erstellen | Blog / Kommunikation | SP | Blogeintrag produzieren | OP | Blog-Erstellung | Blogeintrag mit Podcast-Embed erstellt | Öffentliche Kommunikation gestartet |
| H45 | 09.04. 17:31 | Prüfe ob in Begleitstudie Formulierungen kritisch sind | Review / Qualitätssicherung | NM | Review beauftragen (kritische Stellen) | QS | Review-Agent | Kritische Formulierungen markiert | ST-001 sprachlich überarbeitet |
| H46 | 09.04. 17:47 | AI-Transparenzdisclaimer höchste Stufe, ab jetzt Pflicht | Meta / Policy | RA | **Richtungsänderung:** Transparenz-Standard | RW | Policy-Erstellung | AI-Disclaimer als Pflichtfeld in allen Studien | Transparenz-Policy etabliert |
| H47 | 09.04. 18:01 | Erweiterter Kreis: Rundmail an 14 Organisationen | Versand / Rundmail | SP | Breitere Distribution starten | OP | Mail-Versand (Batch) | 14 Mails an Organisationen gesendet | Distribution Phase 2 abgeschlossen |
| H48 | 09.04. 18:26 | Regressquote irgendwo definiert? Copilot-Differenzierung prüfen | **Definitionsdivergenz** / Begriffe | SP | Phase IX: Core-Begriffe klären | EG | Cross-Model (Copilot prüfen) | Definitionen nicht einheitlich → Divergenz erkannt | Vorläufer CORE4 |
| H49 | 09.04. 18:33 | V1 statistisch, V2 Einzelfall, Katze beißt sich in den Schwanz | V1/V2-Trennung / Zirkularität | NT | Zirkularität des Systems benennen | EG | Eigenanalyse | V1/V2-Trennung als Grundprinzip formuliert | CORE-Referenzpunkt 2: Zwei Prüfdomänen |
| H50 | 09.04. 19:00 | 99,7 oder 97? Nur im Einzelprüfverfahren? Stufe 0 Blackbox | V1/V2-Pipeline / Dropout-Raten | NT | Zahlen-Inkonsistenz klären | EG | Datenrecherche | Dropout-Raten über Pipeline kartiert | 4 Messebenen identifiziert (CORE 1) |
| H51 | 09.04. 19:03 | Copilot-Analyse zu V1/V2-Prüfungen einfügen | V1/V2-System / Cross-Model | BE | Copilot-Input übernehmen | QS | Cross-Model (Copilot→Claude) | Copilot-Differenzierung integriert | V1/V2-Modell verfeinert |
| H52 | 09.04. 19:38 | Prüfe Copilot-Kurzgutachten, ob ihr euch einig seid | Cross-Model / Validierung | NM | Cross-Model-Validierung beauftragen | QS | Cross-Model-Vergleich | Konvergenz bei 5/7 Punkten, Divergenz bei 2 | Divergenz-Punkte als offene Fragen markiert |
| H53 | 09.04. 20:01 | Zertifikatsfehler: stat. Prüfung misst med. Zertifikate, Einzelfall juristische | **Zertifikatsfehler** / CORE #4 | SP | **Schlüssel-Wendepunkt 3**: Zertifikatsfehler | EG | Eigenanalyse (LG) | **Doppelter Zertifikatsfehler** formuliert | CORE-Referenzpunkt 4 etabliert |
| H54 | 09.04. 20:25 | Copilot-Negativ-Bilanz Zertifikatserzeugung einfügen | Zertifikatsfehler / Cross-Model | BE | Copilot-Synthese übernehmen | QS | Cross-Model (Copilot→Claude) | Negativ-Bilanz integriert | Zertifikatsfehler quantifiziert |
| H55 | 09.04. 20:39 | Ist die Begriffsklärung mitdrin? + V1/V2-Definitionen | Begriffsklärung / V1-V2 | NS | Vollständigkeit prüfen | QS | — | Definitionen eingefügt | Begriffsklärung in ST-001 verankert |
| H56 | 09.04. 20:42 | Copilot-Zertifikatslandkarte einfügen | Zertifikatsfehler / Cross-Model | BE | Copilot-Tabelle übernehmen | QS | Cross-Model (Copilot→Claude) | Zertifikatslandkarte integriert | Instanz/Selbstanspruch/Gemessen-Tabelle |
| H57 | 09.04. 20:48 | Copilot-Flowcharts V1 + V2 Verfahrensschritte einfügen | V1/V2-Pipeline / Visualisierung | BE | Copilot-Diagramme übernehmen | QS | Cross-Model (Copilot→Claude) | Flowcharts integriert | Verfahrensschritte visualisiert |
| H58 | 09.04. 21:06 | Optionen B und C bewerten? Vergessene Ausgleichmechanismen? | Schutzinstrumente / §29 BMV-Ä | NT | Schutzwege evaluieren | EG | Rechtsrecherche | Optionen B/C als Schutzwege identifiziert | Vier Schutzwege in MASTER-CORE (Kap. 10) |
| H59 | 09.04. 21:10 | Baue ein in Broschüren und Papiere | Broschüren / Einarbeitung | NS | Erkenntnisse verteilen | OP | Multi-Dokument-Edit | V1/V2-Differenzierung in alle Dokumente | LF-001/002/003 + PP-003 + ST-001 aktualisiert |
| H60 | 09.04. 21:21 | Copilot-Input für Broschüren prüfen (LF-001/002/003) | Broschüren / Cross-Model | BE | Copilot-Broschüren-Input validieren | QS | Cross-Model (Copilot→Claude) | Broschüren-Texte gegengeprüft | Selektive Übernahme in Textgrundlagen |
| H61 | 09.04. 21:55 | Vergleichstabelle V1 vs. V2 einfügen | V1/V2-System / Tabellen | NS | Tabelle in Studie einbauen | DO | Tabellen-Erstellung | Vergleichstabelle erstellt | Zentrale Referenztabelle in ST-001 |
| H62 | 09.04. 21:59 | Verfahrensschritt-Tabellen V1 + V2 einfügen | V1/V2-Pipeline / Tabellen | NS | Pipeline-Tabellen einbauen | DO | Tabellen-Erstellung | Zwei Verfahrensschritt-Tabellen erstellt | Pipeline-Dokumentation komplett |
| H63 | 09.04. 22:02 | Begriffsverwirrung auflösen, Zahlen einfügen | Definitionsdivergenz / Messebenen | KO | Begriffsverwirrung bereinigen | QS | Textüberarbeitung | Messebenen explizit beschriftet | Vier Messebenen klar getrennt |
| H64 | 09.04. 22:25 | Eskalationsschritte als Tabelle, von unten lesen | V1/V2-Pipeline / Eskalation | NT | Eskalationslogik visualisieren | DO | Tabellen-Erstellung | Eskalationstabelle (bottom-up) erstellt | P|S0-Werte pro Eskalationsstufe |
| H65 | 09.04. 22:55 | CORE definieren, Kohärenz-Review, Kostenschätzungen einordnen | Review / CORE-Etablierung | SP | Phase X: Review-Zyklus planen | QS | Multi-Agent-Review | 7 CORE-Referenzpunkte definiert | CORE 1–7 kanonisiert |
| H66 | 09.04. 23:00 | Methoden transparent: Analyse-Methodik-Dokument, Walk of Analysis | Methodik / Dokumentation | SP | Methodische Transparenz herstellen | DO | Dokumenten-Erstellung | Walk of Analysis + Methodik-Protokoll angelegt | Forschungsdokumentation strukturiert |
| H67 | 09.04. 23:04 | CHANGELOG in Studiendokumente einführen | Meta / Versionierung | MP | Versionierungssystem etablieren | DO | CHANGELOG-Erstellung | CHANGELOGs in ST-001 + PP-003 | Nachvollziehbarkeit aller Änderungen |
| H68 | 09.04. 23:15 | Geminigrafiken: Prompt für Gemini mit Teilaufgaben schreiben | Visualisierung / Gemini-Handoff | NM | Infografik-Auftrag formulieren | OP | Gemini-Prompt-Erstellung | GEMINI_INFOGRAFIK_AUFTRAG.md erstellt | 5 SVG-Infografiken beauftragt |
| H69 | 09.04. 23:46 | Gemini-SVG-Grafiken (5 Infografiken) übernehmen | Visualisierung / Cross-Model | BE | Gemini-Grafiken integrieren | OP | Cross-Model (Gemini→Claude) | 5 SVGs in Broschüren eingebaut | Visuelle Kommunikation verbessert |
| H70 | 10.04. 08:30 | FragDenStaat-404-Fehler melden | IFG / Fehler | KO | Technischen Fehler melden | OP | Bug-Report | 404-Fehler dokumentiert | FragDenStaat informiert |
| H71 | 10.04. 13:28 | Walk of Analysis kondensieren, alle Analysen, Prompts, Modelle | Methodik / Walk of Analysis | NM | Walk of Analysis erweitern | DO | Dokumenten-Erstellung | Walk of Analysis erweitert (14 Phasen) | WALK_OF_ANALYSIS_EXTENDED.md |
| H72 | 10.04. 14:04 | Folgekostenhochrechnung verbessern, Verfassungsrecht = Anwendungsstudie | Review / Folgekosten | KO | Review-Reaktion: Folgekosten überarbeiten | QS | Textüberarbeitung | Folgekostenrechnung revidiert | Verfassungsrecht als Anwendungsstudie eingestuft |
| H73 | 10.04. 14:08 | Tabellarische V1/V2-Erstdifferenzierung ist die übersehene Stärke | Review / Stärken-Identifikation | BE | Stärke bestätigen | QS | — | V1/V2-Tabelle als Kernbeitrag positioniert | Argumentation in ST-001 gestärkt |
| H74 | 10.04. 14:19 | Formfehler nicht heilbar — alle oder nur Unterschrift? | Formfehler / Heilbarkeit | NM | Heilbarkeits-Recherche beauftragen | EG | WebSearch + BSG-Recherche | Formfehler-Heilbarkeit differenziert | BSG B 6 KA 5/09 R: nicht heilbar nach Einleitung |
| H75 | 10.04. 14:42 | Ab Verfahren nicht heilbar, Vergleichsanreiz, Schadensreduktion | Formfehler / Normativer Schadensbegriff | NT | Normativen Schadensbegriff vertiefen | EG | Rechtsanalyse | Normativer Schadensbegriff formuliert | Zentraler Befund für V2b |
| H76 | 10.04. 14:49 | Firewall gegen Formfehler: Prozesse, Auslagerung, Arzt verordnet | Prävention / Firewall-Strategie | SP | Firewall-Konzept entwickeln | EG | Eigenanalyse | Firewall-Modell: Arzt verordnet, Organisation kodiert | Praxisempfehlung in Leitfäden |
| H77 | 10.04. 14:54 | Getrennte Dokumente: Begleitstudie = Truth-Dokument, Ableger | Meta / Versionierung | RA | **Richtungsänderung:** Versionsbindung | RW | Architektur-Redesign | ST-001 als Truth, PP-003 mit Versionsbindung | Dokumentenhierarchie etabliert |
| H78 | 10.04. 15:12 | Lesart C: Kassen screenen auf Formfehler, Formfehler IST Verdacht | Formfehler / Lesart C | SP | Neue Lesart formulieren | EG | Eigenanalyse (LG) | Lesart C: Kasse als aktiver Scanner | Drei Scanner identifiziert (KI, Software, Kasse) |
| H79 | 10.04. 15:36 | IFG: Nutzen Sie automatisierte Software für Prüfungsanträge? | IFG / Automatisierung | SP | IFG-Anfrage formulieren | EG | IFG-Entwurf | IFG-Anfrage an Kassen formuliert | Teil der 12 IFG-Anfragen |
| H80 | 10.04. 15:38 | Was ist GPE, ein privates Unternehmen? | GPE / Recherche | NT | GPE-Status klären | EG | WebSearch | GPE als Tochtergesellschaft identifiziert | GPE-Profil in Studie aufgenommen |
| H81 | 10.04. 15:43 | Niemand prüft ausreichende Versorgung (festhalten) | Systemwiderspruch / Drei Scanner | NT | Erkenntnisse sichern | DO | Dokumentation | Drei-Scanner-Modell dokumentiert | Kernargument: System prüft nur Überversorgung |
| H82 | 10.04. 15:49 | Handoff + Session-Bericht zum Weitermachen | Meta / Übergabe | MP | Session-Handoff erstellen | OR | Session-Bericht | Continuation-Dokument erstellt | Nahtloser Übergang |
| H83 | 10.04. 16:25 | Recherchiere Prüffristen V1 und V2 | V1/V2-System / Fristen | NM | Fristen-Recherche beauftragen | EG | WebSearch | Prüffristen kartiert | Fristentabelle in ST-001 |
| H84 | 10.04. 17:02 | PDF-Kommentare einarbeiten, Testkommentar mit Code | Review / PDF-Workflow | NM | PDF-Review-Workflow etablieren | QS | PyMuPDF-Extraktion | PDF-Kommentare programmatisch ausgelesen | Neuer Review-Workflow: PDF → PyMuPDF → Einarbeitung |
| H85 | 10.04. 18:25 | Fertig mit PP-003-Review, arbeite Änderungen ein | Review / PP-003 | NS | Review-Ergebnisse einarbeiten | QS | Multi-Edit | PP-003 Korrekturen eingearbeitet | PP-003 v3.x |
| H86 | 10.04. 18:40 | Arbeite am Begleitpaper, Rückfluss möglich | Meta / Parallelarbeit | NS | Parallelarbeit signalisieren | OR | — | Gegenseitige Abhängigkeit ST-001↔PP-003 notiert | Rückfluss-Kanal etabliert |
| H87 | 10.04. 23:08 | Korrekturlesen fertig ST-001, 108 Kommentare, 7-Punkte-Plan | Review / 108 Kommentare | SP | Phase XII: Massiver Review-Zyklus | QS | PDF-Extraktion + Batch-Edit | 108 Kommentare extrahiert und priorisiert | Größter Review-Zyklus des Projekts |
| H88 | 10.04. 23:38 | Übersprungene Aufgaben NICHT verschieben, Walk extrem kurz | Review / Walk-Erweiterung | KO | Priorisierung korrigieren | NA | — | Walk-Erweiterung vorgezogen | Walk of Analysis nicht kürzen |
| H89 | 10.04. 23:43 | Walk erweitern: alle Teilanalysen, Prompts, Cross-Model, Haiku-Schwärme | Methodik / Walk of Analysis | NM | Walk-Erweiterung beauftragen | DO | Multi-Quellenrecherche | Walk um 14 Phasen erweitert | Vollständige Methodendokumentation |
| H90 | 11.04. 01:21 | 52 offene Review-Kommentare einarbeiten, schnell zuerst | Review / Batch 2 | SP | Phase XIII: zweiter Review-Batch | QS | Batch-Edit | 52 Kommentare priorisiert und eingearbeitet | ST-001 v0.10 |
| H91 | 11.04. 02:33 | 4 parallele Review-Agenten: Wissenschaft, Kohärenz, Design, Naive | Review / Multi-Agent-Review | NM | 4-Agenten-Review beauftragen | QS | **Multi-Agent-Review** (4 parallel) | 4 unabhängige Reviews konvergiert | v0.11 mit Major→Minor-Korrekturen |
| H92 | 11.04. 03:18 | Ribbat V1/V2-Caveats, Szenario-Kennzeichnung Folgekostenrechnung | Ribbat / Folgekostenrechnung | KO | Caveats und Kennzeichnung einfordern | QS | Textüberarbeitung | Caveats eingefügt, Szenarien gekennzeichnet | Methodische Vorsicht gestärkt |
| H93 | 11.04. 09:08 | Gemini Deep Research (~15.000 Wörter) einfügen | Theorierahmen / Cross-Model | BE | Gemini-Analyse übernehmen | QS | Cross-Model (Gemini→Claude) | 4 Nuggets selektiv integriert | Theorierahmen abgerundet |
| H94 | 11.04. 09:38 | Neue Kommentare in ST-001 PDF (Runde 1) | Review / PDF-Review | NM | PDF-Kommentare extrahieren | QS | PyMuPDF-Extraktion | Neue Kommentare eingearbeitet | ST-001 weiter verbessert |
| H95 | 11.04. 10:12 | Studie nur für ST-001, Tabelle Appendix oder Ende? | Meta / Architektur | NS | Platzierung der KNV-Tabelle klären | NA | — | KNV-Tabelle im Appendix | Strukturentscheidung für ST-001 |
| H96 | 11.04. 10:30 | Masterplan: Walk → offene Punkte → Review → PP-003 → Broschüren → Deploy | Meta / Masterplan | MP | 12-Phasen-Masterplan formulieren | OR | Masterplan-Erstellung | Masterplan v1 dokumentiert | Roadmap für Finalisierung |
| H97 | 11.04. 10:38 | Wissenspaket: CORE + Plan + Versionierung + Methodik lesen | Meta / Übergabe | MP | Neue Session einrichten (Wissenspaket) | OR | Multi-Datei-Lesen | Agent vollständig eingearbeitet | Phase 1 Masterplan abgeschlossen |
| H98 | 11.04. 11:20 | Kompiliere und öffne 2 Paper und 3 Broschüren als PDF | Sichtprüfung / Kompilierung | NS | Sichtprüfung durchführen | QS | LaTeX-Kompilierung | 5 PDFs erstellt und geöffnet | Visuelle Qualitätsprüfung |
| H99 | 11.04. 11:33 | NotebookLM-Grafiken prüfen ob Einbau Broschüren verbessert | Broschüren / Grafiken | NM | Grafik-Evaluation beauftragen | QS | Vergleichsanalyse | Grafiken als Verbesserung bewertet | Grafik-Integration in Broschüren |
| H100 | 11.04. 11:53 | Präsentationen als Broschüren, LaTeX = Textgrundlage, Fallbeispiel ersetzen | Broschüren / Architektur | RA | **Richtungsänderung:** Broschüren-Konzept umbauen | RW | Architektur-Redesign | LaTeX nur noch Textgrundlage, Präsentationsformat | Broschüren-Architektur 2.0 |
| H101 | 11.04. 12:30 | Ich dachte das Richtgrößenverfahren wurde abgeschafft? | **V1-Schutzstufenmodell** / CORE3 | SP | **Schlüssel-Wendepunkt 4**: CORE3-Auslöser | EG | WebSearch (SGB V-Recherche) | Richtgrößen seit 2017 durch Schwellenwerte ersetzt | V1-Schutzstufenmodell entdeckt |
| H102 | 11.04. 12:32 | Prüfe alle Entscheidungsbäume auf Übereinstimmung mit Studie | CORE3 / Kohärenz | NM | Konsistenzprüfung beauftragen | QS | Multi-Dokument-Vergleich | Inkonsistenzen in Broschüren identifiziert | Entscheidungsbäume aktualisiert |
| H103 | 11.04. 13:08 | GLP-1 Grenzfall: nochmal Studie + extra Webrecherche | §29 BMV-Ä / GLP-1 | NM | §29-Recherche vertiefen | EG | WebSearch + Dokumenten-Analyse | BSG B 6 KA 27/12 R gefunden | §29 differenziert: Genehmigung ≠ Stellungnahme |
| H104 | 11.04. 13:28 | Veraltete Sichtweise in Abschnitt 3.2 der 99,7% | CORE3 / 99,7%-Interpretation | KO | Veraltete Argumentation korrigieren | QS | Textüberarbeitung | 99,7% als Schutzstufenmodell-Ergebnis uminterpretiert | Paradigmenwechsel in der Interpretation |
| H105 | 11.04. 13:45 | Argumentation schief: Gerichtsverfahren als Erfolg war falsch | CORE3 / V2-Durchsetzung | KO | Fehlerhafte Argumentation korrigieren | QS | Textüberarbeitung | V2-Durchsetzung nicht mehr als „Erfolg" dargestellt | Ehrlichere Darstellung |
| H106 | 11.04. 14:06 | Prüfe wie V1-Schritte ablaufen, wer berät, mit welchem Ziel | V1-Schutzstufenmodell / Ablauf | NM | V1-Ablauf im Detail recherchieren | EG | WebSearch | V1 = Anhörung → Beratung → Karenzzeit → Deckel | Schutzstufenmodell vollständig kartiert |
| H107 | 11.04. 14:11 | Med. Zertifikat bei V1! V2 Widerspruchsmöglichkeiten? | CORE3 / V1-Zertifikat | NT | Zertifikats-Erkenntnis für V1 formulieren | EG | Rechtsrecherche | V1 erkennt med. Besonderheiten an | Differenzierung V1 fair / V2b unfair |
| H108 | 11.04. 14:15 | Vielleicht irren wir uns bei V2, Widerspruchsmöglichkeiten prüfen | CORE3 / V2a-V2b | KO | Eigene These hinterfragen | QS | WebSearch | V2a hat Verteidigung, V2b nicht | V2 zerfällt in V2a + V2b |
| H109 | 11.04. 14:20 | Differenzierter. Erstelle CORE3. Baue ein. Checke gegen CORE3 | CORE3 / Erstellung | NS | CORE3 als Dokument erstellen und einbauen | DO | CORE3-Erstellung + Multi-Agent-Check | CORE3.md erstellt, alle Dokumente geprüft | CORE3 v1 kanonisiert |
| H110 | 11.04. 14:30 | 5 Agenten (Studie + PP-003 + 3 Broschüren) + Executive Summary | CORE3 / Multi-Agent-Einarbeitung | NM | 5 parallele Einarbeitungs-Agenten beauftragen | QS | **Multi-Agent** (5+1 parallel) | Alle 5 Dokumente gegen CORE3 geprüft | Konsistente CORE3-Integration |
| H111 | 11.04. 15:36 | Broschüren: 1% als selten, V1 pro Arzt, V2 pro Fall, Summierung fehlt | CORE4-Vorbereitung / Summierung | KO | Summierungseffekt als Fehler markieren | QS | — | Summierungsproblem als offener Punkt | Direkte Vorstufe zu CORE4 |
| H112 | 11.04. 15:49 | Die ein Prozent sind auch zufällig oder? | **Definitionsdivergenz** / CORE4 | SP | **Schlüssel-Wendepunkt 5**: CORE4-Auslöser | EG | WebSearch + Eigenanalyse | 1%-Zahl als Definitions-Artefakt erkannt | Definitionsdivergenz entdeckt |
| H113 | 11.04. 16:01 | Pro Fall selten, tausende Fälle pro Arzt: Risiko summiert sich | Summierung / Poisson | NT | Summierungseffekt ausarbeiten | EG | Poisson-Modellrechnung | λ=0,85, 57%/Jahr, 92%/3 Jahre | Ribbat 72% rechnerisch erklärt |
| H114 | 11.04. 16:16 | 1% stimmt nicht, jeder Arzt alle 1,5 Jahre Regress, Chaos | Definitionsdivergenz / Drei Schichten | NT | Definitions-Chaos benennen | EG | Datenrecherche | Drei Schichten des Regressbegriffs identifiziert | Faktor 500× zwischen Schicht 1 und 3 |
| H115 | 11.04. 16:32 | Daraus CORE4 machen, unter 1% weil Definition zu spät greift | CORE4 / Erstellung | NS | CORE4 als Dokument erstellen | DO | CORE4-Erstellung | CORE4 v1 erstellt | Definitionsdivergenz + Kommunikationsasymmetrie |
| H116 | 11.04. 16:38 | Experiment: Webrecherche + Agent 1 Datenpunkte + Agent 2 Impressum + Agent 3 Kategorisierung | CORE4 / Multi-Agenten-Experiment | NM | **Multi-Agenten-Experiment starten** | EG | **Multi-Agent** (3+1 Recherche-Agenten) | 25 Datenpunkte, 14 Domains, 3 Perspektiven | Empirische Fundierung der Definitionsdivergenz |
| H117 | 11.04. 16:52 | Naiver Agent Bubble-Test + Opus V2-Zahlen + Widerspruchserklärungen | CORE4 / Erweiterte Agenten | NM | Agenten-Experiment erweitern | EG | **Multi-Agent** (3 weitere Agenten) | Naive Suche: „unter 1%" dominiert. Opus findet BMG 47.000 | Cross-Validation der Definitionsdivergenz |
| H118 | 11.04. 17:17 | Misstraue uns noch mehr, Prior-Art-Check beauftragen | CORE4 / Prior-Art | NM | Originalitäts-Prüfung beauftragen | QS | **Prior-Art-Check** (Opus, 20+ Suchstrings) | Synthese nicht publiziert → originär | Originalitätsanspruch verifiziert |
| H119 | 11.04. 17:25 | KV-RLP Ranking: Agent bewertet Websites ohne Kontext | Kassenverhalten / KV-RLP | NM | Kassendigitalisierungs-Analyse (blind) | EG | **Blind-Bewertung** + **Bias-Kontrolle** | BKK Pfalz 85× überproportional | Kassenspezifisches Prüfverhalten belegt |
| H120 | 11.04. 17:47 | Alternative Hypothese: Gesetzgeber steuert Medizin über Verordnung | **Doppelfunktion** / H2 Evidenzsteuerung | SP | **Schlüssel-Wendepunkt 6**: Alternative Hypothese | EG | **Alternative-Hypothese-Test** (Opus) | H2 hat 35% Erklärungskraft | Doppelfunktion des Systems erkannt |
| H121 | 11.04. 18:02 | Alles in CORE4 einbauen, Agent nach Evidenzsteuerung suchen | CORE4 / Evidenzsteuerung | NS | Evidenzsteuerung integrieren + prüfen | EG | **Prior-Art-Check** (Opus, Evidenzsteuerung) | These originär. CORE4 v2→v3 | Doppelfunktion als zweiter Originalbeitrag |
| H122 | 11.04. 18:16 | Was bleibt dann noch von unserer Studie? | Meta / Bilanz | RA | **Richtungsänderung:** Bilanz ziehen | RW | Synthese | 5 Entschärfungen + 4 Verstärkungen | Ehrlichere, stärkere Studie |
| H123 | 11.04. 18:23 | Drei Tabellen in CORE4 aufnehmen | CORE4 / Tabellen | NS | CORE4 mit Tabellen abschließen | DO | Tabellen-Erstellung | Drei Tabellen in CORE4 integriert | CORE4 v3 finalisiert |
| H124 | 11.04. 18:41 | Masterplan v2 entwickeln aus Entwurf + TODO.md | Meta / Masterplan | MP | Masterplan aktualisieren | OR | Masterplan-Erstellung | Masterplan v2 mit CORE3/CORE4-Integration | Roadmap für finale Phase |
| H125 | 11.04. 19:11 | Wissenspaket: CORE3 + CORE4 + SOURCE + MASTERPLAN + VERSIONIERUNG | Meta / Übergabe | MP | Session-Handoff mit vollständigem Wissen | OR | Multi-Datei-Lesen | Neuer Agent vollständig eingearbeitet | Nahtlose Continuation |
| H126 | 11.04. 20:53 | MASTER-CORE erstellen, CORE3/CORE4 zusammenführen, Privacy Check | MASTER-CORE / Konsolidierung | SP | Konsolidierung aller CORE-Dokumente | DO | Synthese + Privacy-Check | MASTER-CORE.md erstellt | Zentrales Referenzdokument |
| H127 | 11.04. 21:17 | Lass nach allen Prompts der letzten 7 Tage suchen | Meta / Prompt-Archäologie | SP | Prompt-Archäologie starten | DO | JSONL-Extraktion (Haiku-Schwarm) | prompts-human.md + prompts-llm.md | Dieser Dokumentationsprozess |

---

## Tabelle 2: LLM-Prompts — Agent-Prompts (A01–A61)

| # | Datum | Prompt (Kurzform, max 15 Wörter) | Thema | Typ | Zweck | Absicht | Methodenauslösung | Folge | Ergebnis |
|---|-------|----------------------------------|-------|-----|-------|---------|-------------------|-------|----------|
| A01 | 08.04. ~01:48 | Welche empirischen Basisdaten zum Regress-System verifizieren? | Faktengrundlage / Basisdaten | SP | Faktencheck starten | EG | WebSearch | Basisdaten gesammelt | RECHERCHE_REGRESS_FAKTEN |
| A02 | 08.04. ~01:48 | Regressangst in realer Situation mit Tirzepatid? | GLP-1 / Fallbericht | SP | Fallbericht generieren | EG | Synthese | Anonymer Fallbericht erstellt | ANONYMER_FALL_GLP1 |
| A03 | 08.04. ~01:48 | Welche Daten zur Regressquote für Faktenblatt? | Kommunikation / Faktenblatt | SP | Faktenblatt vorbereiten | OP | Redaktion | Faktenblatt-Entwurf | ENTWURF_Faktenblatt |
| A04 | 08.04. ~01:48 | Wie Patienten erklären warum Arzt Medikament verweigert? | Kommunikation / Patienteninfo | SP | Patienteninfo erstellen | OP | Redaktion | Patienteninformation formuliert | ENTWURF_Patienteninfo |
| A05 | 08.04. ~04:53 | Akademische Quellen zu Regressangst und Defensivmedizin | Theorierahmen / Defensivmedizin | SP | Akademische Einordnung | EG | PubMed + WebSearch | Literatur gesammelt | AKADEMISCHE_EINORDNUNG |
| A06 | 08.04. ~04:53 | Formfehler als Regressgrund — Eigentumsrecht | Formfehler / Eigentumsrecht | SP | Eigentumsrechtliche Dimension | EG | Rechtsanalyse | Art. 14 GG-Dimension aufgedeckt | FORMFEHLER_EIGENTUMSRECHT |
| A07 | 08.04. ~04:53 | Pipeline: Wie viele Prüfverfahren enden tatsächlich in Regress? | V1/V2-Pipeline / Dropout | SP | Pipeline-Analyse durchführen | EG | Datenanalyse | Dropout-Raten über Pipeline kartiert | REGRESSSYSTEM_TIEFENANALYSE |
| A08 | 08.04. ~04:53 | IFG-Anfrage an BMG: Prüfstatistiken 2020–2025 | IFG / BMG | SP | IFG-Entwurf formulieren | EG | IFG-Entwurf | IFG-Anfrage fertiggestellt | IFG_ENTWURF |
| A09 | 08.04. ~04:53 | Bürokratiekosten, Kodierungsaufwand im Gesundheitswesen | Bürokratiekosten / Kodierung | SP | Bürokratie-Dimension quantifizieren | EG | WebSearch | Kodierungszeit pro Arzt geschätzt | BUEROKRATIE_KODIERUNG |
| A10 | 08.04. ~04:53 | Widersprechen sich Auffälligkeits- und Einzelfallprüfung? | Systemwiderspruch / V1-V2 | SP | Systemwiderspruch analysieren | EG | Eigenanalyse | Widerspruch bestätigt | SYSTEMWIDERSPRUCH |
| A11 | 08.04. ~06:33 | Software zur Regress-Prävention? PVS-Integration? | VerordnungsAmpel / Marktanalyse | SP | Marktanalyse durchführen | EG | WebSearch | Keine direkte Lösung vorhanden | SOFTWARE_REGRESS |
| A12 | 08.04. ~06:33 | Folgekosten der Regressangst quantifizieren | Folgekosten / Modellrechnung | SP | Folgekostenmodell erstellen | EG | Modellrechnung | Defensivmedizin-Kosten geschätzt | FOLGEKOSTEN |
| A13 | 08.04. ~06:33 | Wie machen es UK, NL, Frankreich? | Internationaler Vergleich | SP | Vergleichssysteme analysieren | EG | WebSearch | UK/NL/F-Vergleich | INTERNATIONAL |
| A14 | 08.04. ~06:33 | Geschichte Prüfverfahren seit 1911 | Geschichte / Rechtshistorie | SP | Rechtshistorische Analyse | EG | Rechtsrecherche | Changelog 1911–2024 | GESCHICHTE |
| A15 | 08.04. ~06:33 | Was kostet ein PVS? Open-Source? | PVS / Kostenanalyse | SP | PVS-Kosten recherchieren | EG | WebSearch | Preisvergleich PVS-Systeme | PVS_KOSTEN |
| A16 | 08.04. ~06:33 | Regress-Folgekosten vs. andere Kostentreiber | Folgekosten / Vergleich | SP | Kostenvergleich durchführen | EG | Vergleichsanalyse | Regress-Kosten im Gesamtkontext | VERGLEICH_KOSTENTREIBER |
| A17 | 08.04. ~06:58 | Wie funktioniert Einzelfallprüfung — 97–99% Dropout? | V2-Einzelfall / Mechanik | SP | V2-Mechanik im Detail | EG | Rechts+Datenanalyse | Dropout-Pipeline dokumentiert | EINZELFALLPRUEFUNG_MECHANIK |
| A18 | 08.04. ~06:58 | GKV-SV: Welche empirischen Effizienzbelege vorgelegt? | GKV-Belege / Legitimation | SP | GKV-Argumente prüfen | EG | Dokumentenanalyse | Keine empirischen Belege gefunden | GKV_BELEGE |
| A19 | 08.04. ~06:58 | Wie entstand Einzelfallprüfung historisch? | Geschichte / V2-Entstehung | SP | V2-Geschichte recherchieren | EG | Rechtsrecherche | GRG 1988 als Ursprung (nicht GSG 1992) | CHANGELOG |
| A20 | 08.04. ~06:58 | Fokussiertes Open-Source-Tool Regress-Prävention machbar? | VerordnungsAmpel / Machbarkeit | SP | Machbarkeitsstudie | EG | Technik-Analyse | Machbar mit AM-RL-Daten | PVS_TOOL |
| A21 | 08.04. ~06:58 | Prüfverfahren über SGB-V-Container genealogisch verteilt? | **Container-Analyse** / SGB V | SP | Container-Genealogie kartieren | EG | **Container-Analyse** | 7 SGB-V-Container identifiziert | CONTAINER_GENEALOGIE |
| A22 | 08.04. ~07:31 | Phänotyp des regress-ängstlichen Arztes ableiten | Modellierung / Modellarzt | SP | Phänotyp-Synthese | EG | Synthese | Modellarzt-Profil + 5 Szenarien | MODELLARZT |
| A23 | 08.04. ~07:31 | Regress-System als spieltheoretisches Modell | Modellierung / Spieltheorie | SP | Spieltheorie-Modellierung | EG | Spieltheorie | Nash-Gleichgewicht: Defensivmedizin | SPIELTHEORIE |
| A24 | 08.04. ~07:31 | Top-Maßnahmen gegen Regress empirisch und juristisch | Prävention / Top-Verhinderer | SP | Maßnahmen-Ranking | EG | WebSearch + BSG | Top-10 Maßnahmen | TOP_VERHINDERER |
| A25 | 08.04. ~07:31 | Technische Bruchstellen im SGB-V-Prüfverfahrensrecht | **Bug-Report** / SGB V | SP | Bug-Report-Analyse | EG | **Bug-Report-Prompt** | 10 Bug-Klassen identifiziert | CONTAINER_BUGS |
| A26 | 08.04. ~07:31 | Struktureller Virus im SGB V — gegensätzliche Zielsetzungen? | **Virus-Analyse** / §12 SGB V | SP | Zielkonflikte identifizieren | EG | **Virus-Analyse** | §12 SGB V als Strukturkonflikt | CONTAINER_VIRUS |
| A27 | 08.04. ~08:10 | BVerfG-Anwalt: 5 Angriffsvektoren gegen Prüfverfahren | Verfassungsrecht / BVerfG | SP | Verfassungsrechtliche Angriffe | EG | **Persona-Prompt** | 5 Angriffsvektoren (Art. 12, 14, 19 GG) | VERFASSUNGSRECHT |
| A28 | 08.04. ~08:10 | Sind GPE eine Niskanen-Bürokratie? 6 Kriterien prüfen | GPE / Institutionenökonomie | SP | Institutionenanalyse | EG | Institutionenanalyse | 5/6 Kriterien erfüllt | GPE_SELBSTERHALTUNG |
| A29 | 10.04. ~14:00 | Inventarisiere 31 Recherche-Dateien aus infomaterial/ | Methodik / Inventarisierung | SP | Dateien katalogisieren | DO | Hintergrund-Scan | 31 Dateien inventarisiert | Walk of Analysis Grundlage |
| A30 | 10.04. ~14:00 | Prüfe ST-001 gegen 7 CORE-Referenzpunkte | Review / Kohärenz | SP | Kohärenzprüfung ST-001 | QS | Kohärenz-Review | Inkonsistenzen markiert | ST-001 gegen CORE geprüft |
| A31 | 10.04. ~14:00 | Prüfe PP-003 gegen 7 CORE-Referenzpunkte | Review / Kohärenz | SP | Kohärenzprüfung PP-003 | QS | Kohärenz-Review | Inkonsistenzen markiert | PP-003 gegen CORE geprüft |
| A32 | 10.04. ~14:00 | Prüfe LF-001/002/003 gegen 7 CORE-Referenzpunkte | Review / Kohärenz | SP | Kohärenzprüfung Broschüren | QS | Kohärenz-Review | Inkonsistenzen in Broschüren | LF-Reihe gegen CORE geprüft |
| A33 | 10.04. ~14:30 | Thematisches Review: Strukturprobleme in ST-001 | Review / Struktur | SP | Strukturreview | QS | Thematischer Review | Strukturprobleme identifiziert | ST-001 Struktur verbessert |
| A34 | 10.04. ~14:30 | Designprüfung: Tabellen, Captions, Labels | Review / Design | SP | Design-Review | QS | Design-Agent | Formale Fehler markiert | Tabellen/Captions korrigiert |
| A35 | 10.04. ~15:00 | Wissenschaftlicher Review: Methodik, Bias, Quellen (streng) | Review / Wissenschaft | SP | Wissenschaftlicher Review | QS | Wiss. Review | Methodische Schwächen identifiziert | Methodik-Kapitel überarbeitet |
| A36 | 10.04. ~15:30 | Zweiter unabhängiger Reviewer | Review / Unabhängig | SP | Unabhängige Zweitprüfung | QS | Unabh. Review | Zusätzliche Schwächen gefunden | Weitere Korrekturen |
| A37 | 10.04. ~16:00 | Devil's Advocate: Kernthesen systematisch widerlegen | Review / Widerlegung | SP | Systematische Widerlegung | QS | **Devil's Advocate** | 5 Verwundbarkeiten identifiziert | Schwachstellen dokumentiert |
| A38 | 10.04. ~16:30 | Heilungsplan: 5 Strategien für Verwundbarkeiten | Review / Heilung | SP | Verwundbarkeiten heilen | QS | Heilungs-Agent | 5 Heilungsstrategien | Verwundbarkeiten adressiert |
| A39 | 10.04. ~17:00 | Konstruktiver Reviewer + Abschlussreview | Review / Abschluss | SP | Review-Zyklus abschließen | QS | Konstruktiver Review | Abschluss-Empfehlungen | Phase X Review abgeschlossen |
| A40 | 11.04. ~01:30 | 30 offene Review-Kommentare thematisch geblockt einarbeiten | Review / Batch-Edit | SP | Masseneinarbeitung | QS | Batch-Edit | 30 Kommentare eingearbeitet | ST-001 v0.9 |
| A41 | 11.04. ~02:00 | Unabhängiger Policy-Analyst: ST-001 kalt lesen, 7 Lösungen | Review / Interventionspfade | SP | Frische Perspektive einholen | EG | Policy-Analyse | 7 Interventionspfade formuliert | Neue Lösungsansätze |
| A42 | 11.04. ~02:33 | Wissenschaftlicher Reviewer (streng, v0.10) | Review / Wissenschaft | SP | Strenger Review v0.10 | QS | Wiss. Review (v2) | Major-Issues markiert | v0.10 → v0.11 Korrekturen |
| A43 | 11.04. ~02:33 | Kohärenz-Reviewer: Konsistenz gegen CORE-7 | Review / Kohärenz | SP | Kohärenzprüfung v0.10 | QS | Kohärenz-Review | Konsistenz-Abweichungen | CORE-Alignment verbessert |
| A44 | 11.04. ~02:33 | Design/Quellen-Reviewer: Formale Qualität | Review / Design+Quellen | SP | Formaler Review | QS | Design-Review | Formale Fehler korrigiert | Quellen verifiziert |
| A45 | 11.04. ~02:33 | Naiver Lösungs-Agent: Frische Vorschläge ohne Vorkenntnisse | Review / Naive Lösungen | SP | Naive Perspektive | EG | Naiver Agent | Unerwartete Vorschläge | 2 davon aufgenommen |
| A46 | 11.04. ~11:20 | 3 Review-Agenten: Major→Minor prüfen | Review / Major→Minor | SP | Downgrade-Prüfung | QS | 3× Review | Major → Minor bestätigt | Publikationsreif |
| A47 | 11.04. ~14:30 | 5 Agenten: ST-001, PP-003, 3 Textgrundlagen gegen CORE3 | CORE3 / Multi-Agent-Check | SP | CORE3-Konsistenz herstellen | QS | **Multi-Agent** (5 parallel) | Alle Dokumente CORE3-konform | CORE3 in allen Dokumenten |
| A48 | 11.04. ~16:38 | Agent 1: Systematische Datensammlung, 8 Suchstrings | CORE4 / Datenpunkte | SP | Datenbasis schaffen | EG | WebSearch (Sonnet) | 25 Datenpunkte gesammelt | Empirische Basis für Definitionsdivergenz |
| A49 | 11.04. ~16:38 | Agent 2: Impressum-Verifizierung 14 Domains | CORE4 / Impressum | SP | Quellenverifizierung | QS | WebSearch (Sonnet) | 14 Domains verifiziert | Perspektiv-Zuordnung der Quellen |
| A50 | 11.04. ~16:38 | Agent 3: Kategorisierung + Tenor (Kassen/Ärzte/Neutral) | CORE4 / Analyse | SP | Perspektivanalyse | EG | Analyse (Sonnet) | Dreischichtige Perspektivdivergenz | Kommunikationsasymmetrie belegt |
| A51 | 11.04. ~16:52 | Agent A: Widerspruchs-Erklärungen sammeln | CORE4 / Widersprüche | SP | Widersprüche identifizieren | EG | WebSearch (Sonnet) | Widerspruchs-Katalog | Divergenz der Erklärungsansätze |
| A52 | 11.04. ~16:52 | Agent B: Naive Suche „Wie viel Prozent Regress?" | CORE4 / **Bubble-Test** | SP | Naive Perspektive simulieren | EG | **Bubble-Test** (Sonnet) | „Unter 1%" dominiert erste 5 Treffer | Informationsasymmetrie nachgewiesen |
| A53 | 11.04. ~16:52 | Versorgungsforscher: V2-Zahlen unabhängig finden | CORE4 / V2-Zahlen | SP | Unabhängige Datensuche | EG | WebSearch (**Opus**) | BMG GVSG: 47.000 V2-Verfahren | „Keine V2-Daten" = falsch |
| A54 | 11.04. ~17:17 | 20+ Suchanfragen: Existiert Definitionsdivergenz-Synthese? | CORE4 / **Prior-Art** | SP | Originalitätsprüfung | QS | **Prior-Art-Check** (**Opus**) | Nicht publiziert → originär | Originalitätsanspruch bestätigt |
| A55 | 11.04. ~17:25 | Top-10-Kassen-Websites bewerten ohne Kontext | CORE4 / **Blind-Bewertung** | SP | Kontextfreie Bewertung | EG | **Blind-Bewertung** (Sonnet) | Ranking der Kassen-Digitalisierung | BKK Pfalz-Anomalie entdeckt |
| A56 | 11.04. ~17:25 | Gleiche Bewertung, umgekehrte Reihenfolge | CORE4 / **Bias-Kontrolle** | SP | Reihenfolge-Bias ausschließen | QS | **Bias-Kontrolle** (Sonnet) | Konvergenz bestätigt | Ranking robust |
| A57 | 11.04. ~17:25 | Versichertenzahlen, Digital-Auszeichnungen | CORE4 / Kassengröße | SP | Kassengröße kontextualisieren | EG | WebSearch (Sonnet) | Versichertenzahlen gesammelt | Überproportionalität quantifiziert |
| A58 | 11.04. ~17:25 | Tech-Stack der Kassen-Websites | CORE4 / Tech-Stack | SP | Technische Analyse | EG | WebSearch (Sonnet) | Tech-Stacks dokumentiert | Keine Korrelation Digitalität↔Prüfverhalten |
| A59 | 11.04. ~17:47 | KVBW Prüfthemen zu Einzelfallprüfungen | CORE4 / KVBW-Daten | SP | KVBW-Daten sammeln | EG | WebSearch (Sonnet) | Prüfthemenliste | Evidenzsteuerungs-Anteile quantifiziert |
| A60 | 11.04. ~17:47 | Alternative Hypothese H2: System als Evidenzsteuerung | CORE4 / **H2-Test** | SP | Alternative Hypothese testen | EG | **Alternative-Hypothese-Test** (**Opus**) | H2 hat 35% Erklärungskraft | Doppelfunktion erkannt |
| A61 | 11.04. ~18:02 | Suche: Evidenzsteuerung durch formale Verkleidung | CORE4 / Evidenzsteuerung Prior-Art | SP | Prior-Art für Doppelfunktion | QS | **Prior-Art-Check** (**Opus**) | Nicht publiziert → originär | Zweiter Originalbeitrag bestätigt |

---

## Tabelle 3: Gemini-Prompts (G01–G09)

| # | Datum | Prompt (Kurzform) | Thema | Typ | Zweck | Absicht | Methodenauslösung | Folge | Ergebnis |
|---|-------|-------------------|-------|-----|-------|---------|-------------------|-------|----------|
| G01 | 07.04. 23:51 | LaTeX-Setzprompt LF-001/002/003 | Broschüren / LaTeX | SP | Gemini-Setzauftrag | OP | Gemini LaTeX | 3 Leitfäden kompiliert | LF-001/002/003 v1.0 |
| G02 | 07.04. | PP-003 v1.0 Gemini-Handoff | PP-003 / LaTeX | SP | Gemini-Konvertierung | OP | Gemini LaTeX | PP-003 als LaTeX | PP-003 v1.0 LaTeX |
| G03 | 08.04. | PP-003 v1.1 TikZ + Fallbeispiele | PP-003 / Diagramme | SP | Gemini-Erweiterung | OP | Gemini TikZ | TikZ-Diagramme + 5 Fälle | PP-003 v1.1 |
| G04 | 08.04. ~09:42 | GPE-Etats, BRH-Berichte, Kostenstruktur | GPE / Kostenrecherche | SP | Backup-Recherche (Claude hängt) | EG | Gemini WebSearch | GPE-Etat-Daten | GPE-Kosten dokumentiert |
| G05 | 08.04. ~09:42 | Ribbat medial, internationale Parallelen | Ribbat / Medienresonanz | SP | Backup-Recherche (Claude hängt) | EG | Gemini WebSearch | Internationale Parallelen | Ribbat-Kontext erweitert |
| G06 | 08.04. 10:27 | Deep Research: Theoretische Rekontextualisierung (9 Kap.) | Theorierahmen | SP | Umfassende Theoriearbeit | EG | **Gemini Deep Research** | 9 Kapitel Theorierahmen | Selektiv 4 Nuggets übernommen |
| G07 | 09.04. 23:31 | 5 Infografiken (Pipeline, V1/V2, Container, Messebenen) | Visualisierung / Infografiken | SP | SVG-Infografiken erstellen | OP | Gemini SVG-Erstellung | 5 SVGs erstellt | Infografiken in Broschüren |
| G08 | 11.04. ~10:00 | Container-Genealogie als Zeitachse-Balkendiagramm | Visualisierung / Container | SP | Gemini-Diagramm | OP | Gemini PDF | Zeitachse erstellt | Container-Diagramm in ST-001 |
| G09 | 11.04. ~09:08 | Deep Research ~15.000 Wörter zu ST-001 | Theorierahmen | SP | Umfassende Theorieergänzung | EG | **Gemini Deep Research** | 4 Nuggets integriert | Theorierahmen abgerundet |

---

## Tabelle 4: Copilot-Prompts (C01–C11)

| # | Datum | Prompt (Kurzform) | Thema | Typ | Zweck | Absicht | Methodenauslösung | Folge | Ergebnis |
|---|-------|-------------------|-------|-----|-------|---------|-------------------|-------|----------|
| C01 | 08.04. 07:35 | ST-001 v0.2 Review vorgelegt | Review / ST-001 | SP | Copilot-Review starten | QS | Cross-Model-Review | 9 Verbesserungen | ST-001 v0.3 |
| C02 | 08.04. 07:43 | PP-003 v2.1 Review vorgelegt | Review / PP-003 | SP | Copilot-Review starten | QS | Cross-Model-Review | DSGVO-Matrix + Anti-Fake | PP-003 v2.2 |
| C03 | 09.04. ~18:26 | Regressquote definiert? V1/V2-Differenzierung | Definitionsdivergenz / Begriffe | SP | Begriffsklärung anfordern | EG | Cross-Model-Analyse | Copilot-Differenzierung | Vorläufer der V1/V2-Trennung |
| C04 | 09.04. ~19:38 | Kanonische Zusammenfassung Regress-System (Kurzgutachten) | Cross-Model / Validierung | SP | Unabhängige Zusammenfassung | QS | Cross-Model-Validierung | Copilot-Kurzgutachten | Cross-Model-Vergleich |
| C05 | 09.04. ~20:01 | Zertifikatsfehler-Diagnose + Kausalkette | Zertifikatsfehler / Cross-Model | SP | Cross-Model-Erarbeitung | EG | Cross-Model-Synthese | Kausalkette formuliert | Zertifikatsfehler bestätigt |
| C06 | 09.04. ~20:25 | Negativ-Bilanz Zertifikatserzeugung (konsolidiert) | Zertifikatsfehler / Bilanz | SP | Copilot-Synthese | QS | Cross-Model-Synthese | Negativ-Bilanz | Quantifizierung der Zertifikatsfehler |
| C07 | 09.04. ~20:39 | Begriffsklärung Auffälligkeits-/Einzelfallprüfung | Begriffsklärung / V1-V2 | SP | Definitionen liefern | EG | Cross-Model-Definitionen | Copilot-Definitionen | Begriffsklärung validiert |
| C08 | 09.04. ~20:42 | Zertifikatslandkarte (Instanz/Selbstanspruch/Gemessen) | Zertifikatsfehler / Landkarte | SP | Visualisierung liefern | DO | Cross-Model-Tabelle | Zertifikatslandkarte | Tabelle in ST-001 |
| C09 | 09.04. ~20:48 | Flowcharts V1 + V2 (ASCII) | V1/V2-Pipeline / Flowcharts | SP | Prozessdiagramme liefern | DO | Cross-Model-Diagramme | V1+V2 Flowcharts | Verfahrensschritte visualisiert |
| C10 | 09.04. ~21:06 | Optionen B/C — vergessene Ausgleichmechanismen? | Schutzinstrumente / Ausgleich | SP | Rechtsanalyse liefern | EG | Cross-Model-Rechtsanalyse | Ausgleichmechanismen identifiziert | Vier Schutzwege |
| C11 | 09.04. ~21:21 | Broschüren-Input: Begriffe + Rechte + Empfehlungen | Broschüren / Cross-Model | SP | Broschüren-Texte liefern | OP | Cross-Model-Redaktion | Broschüren-Beiträge | Selektive Übernahme |

---

## Zusammenfassung der Klassifikation

### Human-Prompts (127)
| Typ | Anzahl | Anteil |
|-----|--------|--------|
| SP (Startprompt) | 31 | 24,4 % |
| NM (Nachfrage-Methode) | 20 | 15,7 % |
| NT (Nachfrage-Thema) | 19 | 15,0 % |
| NS (Nachfrage-Steuerung) | 16 | 12,6 % |
| BE (Bestätigung) | 15 | 11,8 % |
| KO (Korrektur) | 12 | 9,4 % |
| MP (Meta-Prompt) | 9 | 7,1 % |
| RA (Richtungsänderung) | 5 | 3,9 % |
| **Gesamt** | **127** | **100,0 %** |

### Agent-Prompts (61)
| Typ | Anzahl | Anteil |
|-----|--------|--------|
| SP (Startprompt) | 61 | 100 % |

Alle Agent-Prompts sind Startprompts, da sie jeweils einen neuen Recherche-/Analyse-/Review-Auftrag initiieren. Die Steuerung erfolgt durch den menschlichen Prompt, der den Agent-Einsatz auslöst.

---

*Erstellt: 11.04.2026 | CL | Methode: Manuelle Klassifikation gegen KONZEPT_PROMPT_PIPELINE.md Stufe 2*
