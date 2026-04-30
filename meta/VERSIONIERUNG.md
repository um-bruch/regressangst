# Regressangst — Versionierungsarchitektur

> Single Source of Truth + abgeleitete Produkte mit Versionsbindung
> Erstellt: 2026-04-10 | Aktualisiert: 2026-04-30

---

## Prinzip

**ST-001 ist das Source-of-Truth-Dokument.** Alle inhaltlichen Änderungen werden zuerst hier gemacht. Die Ableger (PP-003, LF-Reihe, Kurzfassungen) werden aus ST-001 abgeleitet und tragen die Version des Hauptdokuments zum Zeitpunkt ihrer Erzeugung/Aktualisierung.

**Regel:** Wenn ST-001 eine höhere Version hat als ein Ableger → Ableger muss geprüft und ggf. aktualisiert werden.

---

## Dokumentenhierarchie

```
ST-001 „Systemtheoretische Aufarbeitung der Regressangst" (Source of Truth)
  │
  ├── PP-003  Regress-Transparenzportal (Konzeptpapier)
  │     └── PP-003K  Kurzfassung (2-Seiten-Politik-Brief)
  │
  ├── LF-001  Prävention gegen Regress (Ärzte)
  ├── LF-002  Es hat mich erwischt (Ärzte nach Bescheid)
  ├── LF-003  Mein Arzt hat Angst (Patienten)
  │
  └── [künftig]
        ├── Executive Summary EN
        ├── Appendix B: Methodik (WALK_OF_ANALYSIS)
        ├── Appendix C: Offene Forschungsfragen + IFG
        └── FAQ Ärzte
```

---

## Versionsmatrix

| Dokument | Aktuelle Version | Basiert auf ST-001 | Status |
|---|---|---|---|
| **ST-001** | **v0.22** (14.04.2026) | — (ist die Quelle) | Aktiv; PDF im Repo: 104 Seiten |
| ST-001 Executive Summary (DE) | v1.3 | v0.22 | Aktuell; PDF im Repo: 16 Seiten |
| ST-001 Executive Summary (EN) | v1.3 | v0.22 | Aktuell; PDF im Repo: 16 Seiten |
| PP-003 | v3.1 | v0.22 | Aktuell; PDF im Repo: 40 Seiten |
| PP-003K | v2.0 | v0.3 | Prüfung fällig |
| Die Regress-Firewall | PDF aktualisiert 2026-04-15 | v0.22 | Broschüre im Repo-PDF-Ordner |
| Der Architekturplan | PDF aktualisiert 2026-04-15 | v0.22 | Broschüre im Repo-PDF-Ordner |
| Mein Arzt hat Angst | PDF aktualisiert 2026-04-15 | v0.22 | Broschüre im Repo-PDF-Ordner |

---

## Workflow bei Änderungen

1. **Änderung in ST-001 einarbeiten** (LaTeX editieren, kompilieren)
2. **ST-001-Version hochzählen** (im `\versionsnummer{}`-Feld)
3. **Versionsmatrix aktualisieren** (diese Datei)
4. **Ableger prüfen:** Für jeden Ableger mit niedrigerer Basisversion:
   - Ist die Änderung relevant für diesen Ableger?
   - Wenn ja: Ableger aktualisieren, Basisversion hochziehen
   - Wenn nein: Ableger unverändert lassen, Notiz „geprüft, nicht betroffen"
5. **Kompilieren + Deploy**

---

## Ableitung: Wie Ableger aus ST-001 entstehen

| Ableger | Abgeleitet aus ST-001 durch... |
|---|---|
| PP-003 | Extraktion der Lösungsvorschläge (Teil VII) + Systemdiagnose (Teil II) + eigene Portal-Architektur |
| PP-003K | Verdichtung von PP-003 auf 2 Seiten (3 Reformhebel) |
| LF-001 | Praxis-Übersetzung der Präventionstipps (Teil II: V1/V2, Zertifikatsfehler) + eigene Checklisten |
| LF-002 | Praxis-Übersetzung der Verteidigungsstrategien (normativer Schadensbegriff, Widerspruchsfristen) |
| LF-003 | Laien-Übersetzung der Patientenperspektive (Teil III: Unterversorgung, Ribbat) + Gesprächsleitfaden |

**Wichtig:** Ableger dürfen eigene Inhalte haben (Checklisten, Gesprächsvorlagen, Fallbeispiele) die nicht in ST-001 stehen. Aber alle **Fakten, Zahlen und Rechtsnormen** müssen aus ST-001 stammen und bei Änderung dort auch in den Ablegern aktualisiert werden.

---

## Broschüren-Architektur (ab 11.04.2026)

**Textgrundlagen** (LaTeX in `infomaterial/`): Enthalten den vollständigen Text mit allen §§, Quellen und Argumentationsketten. Dienen als Input für die Neugenerierung visueller Broschüren.

**Visuelle Broschüren** (PPTX/PDF in `broschueren/`): Von NotebookLM generierte Präsentationen. Ersetzen die alten LaTeX-PDFs als primäres Publikationsformat. Nicht programmatisch editierbar (Vollbild-Slides).

**Workflow:** Textgrundlage aktualisieren → NotebookLM mit aktualisierter Textgrundlage füttern → Neue PPTX generieren → Faktencheck → Veröffentlichung.

**Korrekturliste:** `broschueren/KORREKTUREN_NAECHSTE_GENERIERUNG.md`

---

*Erstellt: 2026-04-10 | Aktualisiert: 2026-04-30*
