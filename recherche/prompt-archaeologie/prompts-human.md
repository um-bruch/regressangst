# Prompt-Archäologie: Human-Prompts (Lukas Geiger / LG)

> Projekt: Regress-Melder / ST-001 / PP-003
> Zeitraum: 07.04.2026 - 11.04.2026
> Quelle: JSONL-Session-Logs + Session-Berichte + Methodik-Dokumentation
> Erstellt: 11.04.2026 | CL

---

## Zuordnungstabelle

| # | Datum | Prompt (Kurzform) | Phase/Analyse | Quelle | Status |
|---|-------|-------------------|---------------|--------|--------|
| H01 | 07.04. 22:54 | "SIDEQUEST: Recherche wer könnte unser Konzept umsetzen" | Strategie | JSONL 5584492c | Wortlaut |
| H02 | 07.04. 23:00 | "Konzept anbieten der Welt, jemand anderes machen lassen, Kontakte in DB" | Strategie | JSONL 5584492c | Wortlaut |
| H03 | 07.04. 23:11 | "STATUS VON: Konzept in Kürze, Top-5 potenzielle Umsetzer" | Strategie | JSONL 5584492c | Wortlaut |
| H04 | 07.04. 23:28 | Gemini-Handoff: PP-003 v1.0 LaTeX-Konvertierung bestätigen | PP-003 v1.0 | JSONL 5584492c | Wortlaut |
| H05 | 07.04. 23:39 | "2.3 Konkrete Patientenschäden — weiterhin dünn" (Feedback auf PP-003 Fallbeispiele) | PP-003 v1.0 | JSONL 5584492c | Wortlaut |
| H06 | 07.04. 23:51 | "ÜBERLEGUNGEN: LEITFADEN Prävention, Umgang, Mein Arzt hat Angst -> Pfadbäume -> Latexsetzprompt für Gemini" | LF-001/002/003 | JSONL 5584492c | Wortlaut |
| H07 | 08.04. 00:02 | Gemini PP-003 v1.1 TikZ-Diagramme + Fallbeispiele bestätigen | PP-003 v1.1 | JSONL 5584492c | Wortlaut |
| H08 | 08.04. 00:07 | "Weiterhin dünn: 2.3 Patientenschäden" (zweites Feedback) | PP-003 | JSONL 5584492c | Wortlaut |
| H09 | 08.04. 00:53 | Gemini: LF-001/002/003 LaTeX-Kompilierung bestätigt | LF-Reihe | JSONL 5584492c | Wortlaut |
| H10 | 08.04. 01:03 | "Erst mal nicht ready, 8 Uhr Mail. Auch Prüfung für Konzept durchführen" | Versand-Planung | JSONL 5584492c | Wortlaut |
| H11 | 08.04. 02:34 | Mail-Entwurf: "Das ist zu groß für uns, Idee kostenlos, adoptiert und macht etwas daraus" | Versand Top-5 | JSONL 5584492c | Wortlaut |
| H12 | 08.04. 02:39 | "Copilot rät: Einordnung in bekannte Konzepte (Pharmakovigilanz, CIRS, Chilling Effect)" | PP-003 v1.2 | JSONL 5584492c | Wortlaut |
| H13 | 08.04. 02:48 | "Copilot-Review vollständig, Kurzpaper auf einer Seite" | PP-003K + Review | JSONL 5584492c | Wortlaut |
| H14 | 08.04. 02:58 | "Recherchiere: Unterschied Prüfungsarten, häufigste Formfehler, Regress als Angstinstrument, Verhältnis gefordert/durchgesetzt" | Phase II: Tiefenanalyse | JSONL 5584492c | Wortlaut |
| H15 | 08.04. 03:04 | "Mehr Kategorien, Prozess Regress durch Instanzen, Zertifikat ob berechtigt" | Phase II: Pipeline | JSONL 5584492c | Wortlaut |
| H16 | 08.04. 03:12 | "Definition Regress: Stichprobe vs. echte Auffälligkeiten, 0,7% davon wirklich auffällig" | Phase II: Lesarten | JSONL 5584492c | Wortlaut |
| H17 | 08.04. 03:21 | "Kosten Systemdruck, Bürokratie, Fehlertoleranz, Arzt wird Verschlüsselungsprofi" | Phase II: Bürokratie | JSONL 5584492c | Wortlaut |
| H18 | 08.04. 03:22 | "GPE RLP auf FragDenStaat, Regress-Rankings — Berechnungen möglich?" | Phase II: IFG | JSONL 5584492c | Wortlaut |
| H19 | 08.04. 03:29 | "Widersprechen sich die Verfahren nicht? Einzelfallprüfung als Mikromanagement" | Phase II: Systemwiderspruch | JSONL 5584492c | Wortlaut |
| H20 | 08.04. 03:38 | "Hunderte Prüfer einstellen obwohl Statistik okay — fundamentaler Widerspruch" | Phase II: Eigenanalyse | JSONL 5584492c | Wortlaut |
| H21 | 08.04. 03:48 | "Übergabeprompt schreiben: (1) einarbeiten, (2) Blog, (3) speichern, (4) Software, (5) Geschichte, (6) Leitfäden, (7) Mails, (8) Direktkontakt" | Übergabe | JSONL 5584492c | Wortlaut |
| H22 | 08.04. 03:51 | "Folgerecherchen: Verhaltensweisen, Patientenschäden, Schaden beziffern" | Phase III: Folgekosten | JSONL 5584492c | Wortlaut |
| H23 | 08.04. 04:14 | "Cluster A 1,2 einarbeiten -> Cluster B recherchieren -> Review -> Mailversand" | Workflow-Plan | JSONL 5584492c | Wortlaut |
| H24 | 08.04. 04:38 | "Ergänzung zwei Lesarten: Wie ist V2 im Gesetz definiert? Wie versteht sich das Verfahren selbst?" | Phase IV: Einzelfall-Mechanik | JSONL 5584492c | Wortlaut |
| H25 | 08.04. 04:43 | "Ribbat: Welches Land? Auf Deutschland übertragbar? Vergleiche mit Kosten des Rauchens" | Phase III: Folgekosten | JSONL 5584492c | Wortlaut |
| H26 | 08.04. 04:49 | "GKV-SV verteidigt Einzelfallprüfung als effizient — welche Belege?" | Phase IV: GKV-Belege | JSONL 5584492c | Wortlaut |
| H27 | 08.04. 04:53 | "Ribbat-Studie nie gehört, Skandal? Medienresonanz? Internationale Druckstudien" | Phase VII: Ribbat | JSONL 5584492c | Wortlaut |
| H28 | 08.04. 04:57 | "Wer hat Einzelfallprüfung eingeführt, wie war sie definiert, Changelog" | Phase IV: Geschichte | JSONL 5584492c | Wortlaut |
| H29 | 08.04. 05:18 | "Was verhindert am effektivsten Regresse für Ärzte?" | Phase V: Top-Verhinderer | JSONL 5584492c | Wortlaut |
| H30 | 08.04. 05:21 | "Modellarzt mit maximaler Regressangst modulieren, Szenarien, gesamtgesellschaftliche Folgen" | Phase V: Modellarzt | JSONL 5584492c | Wortlaut |
| H31 | 08.04. 05:23 | "Moduliere verschiedene Spiele aus spieltheoretischer Sicht" | Phase V: Spieltheorie | JSONL 5584492c | Wortlaut |
| H32 | 08.04. 05:26 | "Alles in ein Begleitpaper, Meldesystem-Konzept zitiert nur, Referenz für Blogeintrag" | ST-001 Architektur | JSONL 5584492c | Wortlaut |
| H33 | 08.04. 05:58 | "Gordischer Knoten: BVerfG-Anwalt-Persona, Backdoor finden, Eigentumsfrage" | Phase VI: Verfassungsrecht | JSONL 5584492c | Wortlaut |
| H34 | 08.04. 07:35 | Copilot-Review 1 einfügen (ST-001 v0.2) | Phase IV: Copilot-Review | JSONL 5584492c | Wortlaut |
| H35 | 08.04. 07:43 | Copilot-Review 2 einfügen (PP-003 v2.1) | Phase IV: Copilot-Review | JSONL 5584492c | Wortlaut |
| H36 | 08.04. 07:47 | Gemini-Ergebnisse (GPE-Kosten + Ribbat-Medien) übergeben | Phase VII: Gemini | JSONL 5584492c | Wortlaut |
| H37 | 08.04. 08:09 | "SIDEQUEST: Software Diagnostic auf Ressourcen prüfen" | Ressourcen-Audit | JSONL 5584492c | Wortlaut |
| H38 | 08.04. 08:23 | "FragDenStaat-Maßnahmen als TODOs, Afteraftershow" | IFG-Roadmap | JSONL 5584492c | Wortlaut |
| H39 | 08.04. 09:19 | "Therapiefreiheit e.V.: gute, böse oder beides?" | Strategie | JSONL 5584492c | Wortlaut |
| H40 | 08.04. 09:36 | Continuation-Prompt mit Cluster-A/B-Workflow-Zusammenfassung | Workflow | JSONL 5584492c | Wortlaut |
| H41 | 08.04. 10:00 | "Prüfe Software ob wir Dinge nicht genommen haben die besser waren als unser Konzept" | VerordnungsAmpel | JSONL 5584492c | Wortlaut |
| H42 | 08.04. 10:27 | "Nimm Google Research Review auf, Gemini halluziniert, doppelchecken" + 9 Kapitel Gemini-Review | Phase VIII: Theorierahmen | JSONL 5584492c | Wortlaut |
| H43 | 09.04. 16:06 | Praxiskontakt-Prompt: Mail an [E-Mail redigiert] | Versand | JSONL 07405903 | Wortlaut |
| H44 | 09.04. 16:27 | "KI-Podcast von NotebookLM abholen, Blogeintrag erstellen" | Blog | JSONL 07405903 | Wortlaut |
| H45 | 09.04. 17:31 | "Prüfe ob in der Begleitstudie Formulierungen kritisch sind" | Review | JSONL 07405903 | Wortlaut |
| H46 | 09.04. 17:47 | "AI-Transparenzdisclaimer höchste Stufe, ab jetzt Pflicht für Studien" | Policy | JSONL 07405903 | Wortlaut |
| H47 | 09.04. 18:01 | "Erweiterter Kreis: Rundmail an 14 Organisationen" | Versand | JSONL 07405903 | Wortlaut |
| H48 | 09.04. 18:26 | "Regressquote irgendwo definiert? Copilot-Differenzierung prüfen" | Phase IX: Core-Etablierung | JSONL 07405903 | Wortlaut |
| H49 | 09.04. 18:33 | "V1 statistisch, V2 Einzelfall, beißt sich die Katze in den Schwanz" | Phase IX: V1/V2-Trennung | JSONL 07405903 | Wortlaut |
| H50 | 09.04. 19:00 | "99,7 oder 97? Wir sind nur im Einzelprüfverfahren? Stufe 0 Blackbox" | Phase IX: Pipeline-Klärung | JSONL 07405903 | Wortlaut |
| H51 | 09.04. 19:03 | Copilot-Analyse zu V1/V2-Prüfungen einfügen | Phase IX: Copilot-Input | JSONL 07405903 | Wortlaut |
| H52 | 09.04. 19:38 | "Prüfe Copilot-Kurzgutachten, ob ihr euch einig seid" | Phase IX: Cross-Model | JSONL 07405903 | Wortlaut |
| H53 | 09.04. 20:01 | "Zertifikatsfehler im System: statistische Prüfung misst medizinische Zertifikate, Einzelfall juristische" | Phase IX: Zertifikatsfehler (CORE #4) | JSONL 07405903 | Wortlaut |
| H54 | 09.04. 20:25 | Copilot-Negativ-Bilanz Zertifikatserzeugung einfügen | Phase IX: Copilot-Input | JSONL 07405903 | Wortlaut |
| H55 | 09.04. 20:39 | "Ist die Begriffsklärung mitdrin?" + V1/V2-Definitionen | Phase IX: Begriffsklärung | JSONL 07405903 | Wortlaut |
| H56 | 09.04. 20:42 | Copilot-Zertifikatslandkarte einfügen | Phase IX: Copilot-Input | JSONL 07405903 | Wortlaut |
| H57 | 09.04. 20:48 | Copilot-Flowcharts (V1 + V2 Verfahrensschritte) einfügen | Phase IX: Copilot-Input | JSONL 07405903 | Wortlaut |
| H58 | 09.04. 21:06 | "Wie sind Optionen B und C zu bewerten? Vergessene Ausgleichmechanismen?" | Phase XI: Schutzinstrumente | JSONL 07405903 | Wortlaut |
| H59 | 09.04. 21:10 | "Baue ein in Broschüren und Papiere" | Einarbeitung | JSONL 07405903 | Wortlaut |
| H60 | 09.04. 21:21 | Copilot-Input für Broschüren prüfen (LF-001/002/003) | LF-Reihe | JSONL 07405903 | Wortlaut |
| H61 | 09.04. 21:55 | Vergleichstabelle V1 vs. V2 einfügen | Phase IX: Tabellen | JSONL 07405903 | Wortlaut |
| H62 | 09.04. 21:59 | Verfahrensschritt-Tabellen V1 + V2 einfügen | Phase IX: Pipeline-Tabellen | JSONL 07405903 | Wortlaut |
| H63 | 09.04. 22:02 | "Begriffsverwirrung auflösen, Zahlen einfügen" | Phase IX: Messebenen | JSONL 07405903 | Wortlaut |
| H64 | 09.04. 22:25 | "Eskalationsschritte als Tabelle, von unten lesen" | Phase IX: Eskalationstabelle | JSONL 07405903 | Wortlaut |
| H65 | 09.04. 22:55 | "CORE definieren, Kohärenz- und Core-Review beauftragen, Kostenschätzungen einordnen" | Phase X: Review-Planung | JSONL 07405903 | Wortlaut |
| H66 | 09.04. 23:00 | "Methoden transparent machen: Analyse-Methodik-Dokument, Walk of Analysis" | Phase X: Methodik | JSONL 07405903 | Wortlaut |
| H67 | 09.04. 23:04 | "CHANGELOG in Studiendokumente einführen" | Transparenz | JSONL 07405903 | Wortlaut |
| H68 | 09.04. 23:15 | "Geminigrafiken: Prompt für Gemini schreiben mit Teilaufgaben" | Gemini-Handoff | JSONL 07405903 | Wortlaut |
| H69 | 09.04. 23:46 | Gemini-SVG-Grafiken (5 Infografiken) übernehmen | Gemini-Ergebnisse | JSONL 07405903 | Wortlaut |
| H70 | 10.04. 08:30 | FragDenStaat-404-Fehler melden | IFG | JSONL f1c1687d | Wortlaut |
| H71 | 10.04. 13:28 | "Walk of Analysis kondensieren, alle Einzelanalysen, Prompts, Modelle, Methoden" | Phase X: WALK_OF_ANALYSIS | JSONL 0d0ebdac | Wortlaut |
| H72 | 10.04. 14:04 | "Folgekostenhochrechnung verbessern, Verfassungsrecht = Anwendungsstudie" | Phase X: Review-Reaktion | JSONL 0d0ebdac | Wortlaut |
| H73 | 10.04. 14:08 | "Tabellarische Erstdifferenzierung V1/V2 ist die übersehene Stärke" | Phase X: Review-Reaktion | JSONL 0d0ebdac | Wortlaut |
| H74 | 10.04. 14:19 | "Formfehler nicht heilbar — recherchiere ob alle oder nur Unterschrift" | Phase XI: Formfehler-Heilbarkeit | JSONL 0d0ebdac | Wortlaut |
| H75 | 10.04. 14:42 | "Ab Verfahren nicht mehr heilbar, Anreiz zum Vergleich, Schadensreduktion" | Phase XI: Normativer Schadensbegriff | JSONL 0d0ebdac | Wortlaut |
| H76 | 10.04. 14:49 | "Firewall gegen Formfehler: Prozesse aufbauen, Auslagerung, Arzt verordnet, Organisation kodiert" | Phase XI: Firewall-Strategie | JSONL 0d0ebdac | Wortlaut |
| H77 | 10.04. 14:54 | "Getrennte Dokumente: Begleitstudie = Truth-Dokument, Ableger mit Versionsbindung" | Versionierungsarchitektur | JSONL 0d0ebdac | Wortlaut |
| H78 | 10.04. 15:12 | "Lesart C: Kassen screenen auf Formfehler, der Formfehler IST der Verdacht" | Phase XI: Lesart C | JSONL 0d0ebdac | Wortlaut |
| H79 | 10.04. 15:36 | "IFG-Anfrage: Nutzen Sie automatisierte Software für Einzelfallprüfungsanträge?" | IFG-Idee | JSONL 0d0ebdac | Wortlaut |
| H80 | 10.04. 15:38 | "Was ist GPE, ein privates Unternehmen?" | Recherche | JSONL 0d0ebdac | Wortlaut |
| H81 | 10.04. 15:43 | "Erkenntnisse festhalten: Niemand prüft ausreichende Versorgung" | Phase XI: Drei Scanner | JSONL 0d0ebdac | Wortlaut |
| H82 | 10.04. 15:49 | Handoff + Session-Bericht zum Weitermachen | Übergabe | JSONL 0d0ebdac | Wortlaut |
| H83 | 10.04. 16:25 | "Recherchiere Prüffristen V1 und V2" | Phase XII: Recherche | JSONL 0d0ebdac | Wortlaut |
| H84 | 10.04. 17:02 | "PDF-Kommentare einarbeiten, Testkommentar mit Code" | Phase XII: PDF-Review | JSONL 0d0ebdac | Wortlaut |
| H85 | 10.04. 18:25 | "Fertig mit PP-003-Review, arbeite Änderungen ein" | Phase XII: PP-003 Korrekturen | JSONL 0d0ebdac | Wortlaut |
| H86 | 10.04. 18:40 | "Ich arbeite aktuell am Begleitpaper, Rückfluss möglich" | Phase XII: Parallel-Arbeit | JSONL 0d0ebdac | Wortlaut |
| H87 | 10.04. 23:08 | "Korrekturlesen fertig ST-001. Plan: Korrekturen, Walk, Changelogs, PP-003, Kompilieren, Sichtprüfung, Broschüren" | Phase XII: 108 Kommentare | JSONL 0d0ebdac | Wortlaut |
| H88 | 10.04. 23:38 | "Übersprungene Aufgaben NICHT verschieben, Walk of Analysis extrem kurz" | Phase XII: Walk-Erweiterung | JSONL 0d0ebdac | Wortlaut |
| H89 | 10.04. 23:43 | "Walk erweitern: alle Teilanalysen, auslösende Prompts, Cross-Model, Modellrechnungen, Haiku-Schwärme" | Phase XII: Walk-Methodik | JSONL 0d0ebdac | Wortlaut |
| H90 | 11.04. 01:21 | "52 offene Review-Kommentare einarbeiten, schnelle Textänderungen zuerst" | Phase XIII: Batch 2 | JSONL 26d72556 | Wortlaut |
| H91 | 11.04. 02:33 | "4 parallele Review-Agenten: Wissenschaft, Kohärenz, Design/Quellen, naive Lösungen" | Phase XIII: 4-Review-Zyklus | JSONL 26d72556 | Wortlaut |
| H92 | 11.04. 03:18 | "Ribbat V1/V2-Caveats, Szenario-Kennzeichnung Folgekostenrechnung" | Phase XIII: Korrekturen | JSONL 26d72556 | Wortlaut |
| H93 | 11.04. 09:08 | Gemini Deep Research (~15.000 Wörter) einfügen | Phase XIII: Gemini-Analyse | JSONL 26d72556 | Wortlaut |
| H94 | 11.04. 09:38 | "Neue Kommentare in ST-001 PDF" (Runde 1) | Phase XIII: PDF-Review | JSONL 26d72556 | Wortlaut |
| H95 | 11.04. 10:12 | "Studie nur für ST-001. Tabelle Appendix oder Ende Paper?" | Phase XIII: KNV-Tabelle | JSONL 26d72556 | Wortlaut |
| H96 | 11.04. 10:30 | "Masterplan: Walk erweitern -> offene Punkte -> Review -> PP-003 neu -> Broschüren -> Deploy" | 12-Phasen-Masterplan | JSONL 26d72556 | Wortlaut |
| H97 | 11.04. 10:38 | Wissenspaket-Prompt: CORE-Dokumente + Plan + Versionierung + Methodik lesen | Masterplan Phase 1 | JSONL c2a40e6d | Wortlaut |
| H98 | 11.04. 11:20 | "Kompiliere und öffne 2 Paper und 3 Broschüren als PDF" | Sichtprüfung | JSONL c2a40e6d | Wortlaut |
| H99 | 11.04. 11:33 | "NotebookLM-Grafiken prüfen ob Einbau die Broschüren verbessert" | Broschüren | JSONL c2a40e6d | Wortlaut |
| H100 | 11.04. 11:53 | "Neuer Plan: Präsentationen als Broschüren, LaTeX = Textgrundlage, Fallbeispiel ersetzen" | Broschüren-Architektur | JSONL c2a40e6d | Wortlaut |
| H101 | 11.04. 12:30 | "Ich dachte das Richtgrößenverfahren wurde abgeschafft?" | **CORE3-Auslöser** | JSONL c2a40e6d | Wortlaut |
| H102 | 11.04. 12:32 | "Prüfe alle Entscheidungsbäume auf Übereinstimmung mit Studie" | CORE3-Einarbeitung | JSONL c2a40e6d | Wortlaut |
| H103 | 11.04. 13:08 | "GLP-1 Grenzfall: prüfe nochmal was in Studie steht + extra Webrecherche" | CORE3: §29 BMV-Ä | JSONL c2a40e6d | Wortlaut |
| H104 | 11.04. 13:28 | "Veraltete Sichtweise in Abschnitt 3.2 der 99,7%" | CORE3-Anpassung | JSONL c2a40e6d | Wortlaut |
| H105 | 11.04. 13:45 | "Argumentation schief: Gerichtsverfahren als Erfolg definiert war falsch" | CORE3: V2-Durchsetzung | JSONL c2a40e6d | Wortlaut |
| H106 | 11.04. 14:06 | "Prüfe wie genau V1-Schritte ablaufen, wer berät, mit welchem Ziel" | CORE3: V1-Ablauf | JSONL c2a40e6d | Wortlaut |
| H107 | 11.04. 14:11 | "Medizinisches Zertifikat bei V1 zu erkennen! V2 Widerspruchsmöglichkeiten?" | CORE3: Schutzstufenmodell | JSONL c2a40e6d | Wortlaut |
| H108 | 11.04. 14:15 | "Vielleicht irren wir uns auch bei V2, Widerspruchsmöglichkeiten prüfen" | CORE3: V2a/V2b-Differenzierung | JSONL c2a40e6d | Wortlaut |
| H109 | 11.04. 14:20 | "Differenzierter darstellen. Erstelle CORE3. Baue ein. Checke Paper gegen CORE3" | CORE3 erstellen | JSONL c2a40e6d | Wortlaut |
| H110 | 11.04. 14:30 | "5 Agenten (Studie + PP-003 + 3 Broschüren) + Executive Summary Agent" | CORE3-Einarbeitung | JSONL c2a40e6d | Wortlaut |
| H111 | 11.04. 15:36 | "Broschüren: immer noch 1% als selten dargestellt. V1 pro Arzt, V2 pro Fall. Summierungseffekt fehlt" | CORE4-Vorbereitung | JSONL c2a40e6d | Wortlaut |
| H112 | 11.04. 15:49 | "Die ein Prozent sind auch zufällig oder?" | **CORE4-Auslöser** | JSONL c2a40e6d | Wortlaut |
| H113 | 11.04. 16:01 | "Pro Fall selten, aber tausende Fälle pro Arzt: Kleines Risiko summiert sich" | CORE4: Verordnungszahlen | JSONL c2a40e6d | Wortlaut |
| H114 | 11.04. 16:16 | "Irgendwas stimmt mit der 1% auch nicht — jeder Arzt alle 1,5 Jahre Regress. Was für ein Chaos." | CORE4: Definitionsdivergenz | JSONL c2a40e6d | Wortlaut |
| H115 | 11.04. 16:32 | "Mache daraus CORE4. Unter 1% ergibt sich weil Regressdefinition zu spät greift. Faktisch Täuschung der Öffentlichkeit" | CORE4 erstellen | JSONL c2a40e6d | Wortlaut |
| H116 | 11.04. 16:38 | "Experiment: Allgemeine Webrecherche + Agent 1 Datenpunkte + Agent 2 Impressum + Agent 3 Kategorisierung" | CORE4: Multi-Agenten | JSONL c2a40e6d | Wortlaut |
| H117 | 11.04. 16:52 | "Naiver Agent Bubble-Test + Opus V2-Zahlen unabhängig + Widerspruchserklärungen sammeln" | CORE4: Erweiterte Agenten | JSONL c2a40e6d | Wortlaut |
| H118 | 11.04. 17:17 | "Misstraue uns noch mehr. Prior-Art-Check beauftragen" | CORE4: Prior-Art | JSONL c2a40e6d | Wortlaut |
| H119 | 11.04. 17:25 | KV-RLP Regress-Ranking: "Agent soll Websites bewerten ohne zu wissen worum es geht" | CORE4: Kassendigitalisierung | JSONL c2a40e6d | Wortlaut |
| H120 | 11.04. 17:47 | "Alternative Hypothese: Gesetzgeber steuert Medizin über korrekte Verordnung" | CORE4: H2 Evidenzsteuerung | JSONL c2a40e6d | Wortlaut |
| H121 | 11.04. 18:02 | "Alles in CORE4 einbauen. Agent nach Evidenzsteuerung suchen lassen" | CORE4: Evidenzsteuerung-Check | JSONL c2a40e6d | Wortlaut |
| H122 | 11.04. 18:16 | "Was bleibt dann noch von unserer Studie?" | CORE4: Bilanz | JSONL c2a40e6d | Wortlaut |
| H123 | 11.04. 18:23 | "Drei Tabellen in CORE4 aufnehmen" | CORE4: Tabellen | JSONL c2a40e6d | Wortlaut |
| H124 | 11.04. 18:41 | "Masterplan v2 entwickeln aus Entwurf + TODO.md" | Masterplan v2 | JSONL c2a40e6d | Wortlaut |
| H125 | 11.04. 19:11 | Wissenspaket-Prompt: CORE3 + CORE4 + SOURCE + MASTERPLAN + VERSIONIERUNG + METHODIK lesen | Masterplan Übergabe | JSONL c2a40e6d | Wortlaut |
| H126 | 11.04. 20:53 | "MASTER-CORE erstellen, CORE3/CORE4 zusammenführen, Privacy Check, gitignore" | Konsolidierung | JSONL c2a40e6d | Wortlaut |
| H127 | 11.04. 21:17 | "Lass nach allen Prompts der letzten 7 Tage suchen -> prompts-human.md, prompts-llm.md, lost-prompts.md" | **Dieser Auftrag** | JSONL c2a40e6d | Wortlaut |

---

## Anmerkungen

- **127 identifizierbare Human-Prompts** im Zeitraum 07.-11.04.2026 mit direktem Regress-Bezug
- Die Prompts H01-H42 stammen aus den Sessions vom 07./08.04. (Strategie, Tiefenrecherche, Versand)
- Die Prompts H43-H69 aus dem 09.04. (Praxiskontakt, Rundmail, Begriffsklärung, Core-Etablierung)
- Die Prompts H70-H89 aus dem 10.04. (IFG, 13-Phasen-Review, Formfehler-Heilbarkeit, Walk)
- Die Prompts H90-H127 aus dem 11.04. (Batch 2, CORE3, CORE4, Masterplan v2)
- **Wichtigste Wendepunkte:** H19 (Systemwiderspruch), H33 (BVerfG-Persona), H53 (Zertifikatsfehler), H101 (CORE3-Auslöser), H112 (CORE4-Auslöser), H120 (Alternative Hypothese)
- Copilot-Inputs (H34, H35, H51-H57, H86 etc.) wurden von LG per Copy-Paste in den Claude-Chat eingefügt
