# Werkzeuge und MCP-Server: Technisches Inventar

> Dokumentation aller Tools und Erweiterungen die Claude Code während der Studie zur Verfügung standen.
> Nicht alle wurden genutzt — die Dokumentation dient der Reproduzierbarkeit.
> Stand: 12.04.2026

---

## 1. Claude Code Built-in Tools (immer verfügbar)

| Tool | Funktion | In dieser Studie genutzt? |
|------|----------|--------------------------|
| **Read** | Dateien lesen (Text, PDF, Bilder) | ✅ Intensiv — alle .tex, .md, .bib |
| **Write** | Neue Dateien erstellen | ✅ MASTER-CORE, BibTeX, Prompt-Dateien |
| **Edit** | Bestehende Dateien bearbeiten (Diff-basiert) | ✅ Intensiv — alle LaTeX-Edits, replace_all für Encoding |
| **Bash** | Shell-Befehle ausführen | ✅ pdflatex, bibtex, git, gh, Edge-headless, Python |
| **Glob** | Dateien nach Muster suchen | ✅ Dateiinventar, Repo-Aufbau |
| **Grep** | Inhalte durchsuchen (Regex) | ✅ Intensiv — Einfügestellen finden, Konsistenz prüfen |
| **Agent** | Sub-Agenten starten (parallel, Hintergrund) | ✅ Intensiv — 20+ Agenten in dieser Session |
| **WebSearch** | Web-Suche | ✅ Durch Sub-Agenten (Recherche, Prior-Art) |
| **WebFetch** | Webseiten abrufen | ✅ Durch Sub-Agenten (KV-RLP, SpiFa, BSG) |
| **SendMessage** | Nachrichten an laufende Agenten | ✅ Thema-Spalte nachgereicht an Prompt-Klassifikator |
| **TaskCreate/Update** | Aufgabenverwaltung | ✅ 23 Tasks in dieser Session |
| **NotebookEdit** | Jupyter-Notebooks bearbeiten | ❌ Nicht verwendet |
| **Skill** | Vordefinierte Workflows ausführen | ❌ Nicht verwendet |
| **ScheduleWakeup** | Timer für Loop-Modus | ❌ Nicht verwendet |

## 2. MCP-Server (Erweiterungen)

### Konfiguriert und nutzbar

| MCP-Server | Tools | Funktion | Genutzt? |
|-----------|-------|----------|----------|
| **mcp__claude_ai_PubMed__** | 7 | PubMed-Artikel suchen, Volltext abrufen, Zitationen | ❌ Nicht direkt genutzt (Ribbat per WebSearch gefunden) |
| **mcp__claude_ai_Gmail__** | 7 | E-Mails lesen, senden, durchsuchen | ❌ Nicht genutzt (UmbruchMail CLI stattdessen) |
| **mcp__claude_ai_Google_Calendar__** | 10 | Kalender verwalten | ❌ Nicht genutzt |
| **mcp__claude_ai_Mermaid_Chart__** | 5 | Diagramme erstellen und validieren | ❌ Nicht genutzt (TikZ stattdessen) |
| **mcp__claude_ai_Canva__** | 2 | Canva-Designs erstellen | ❌ Nicht genutzt |
| **mcp__claude_ai_Indeed__** | 2 | Job-Suche | ❌ Nicht relevant |
| **mcp__context7__** | 2 | Dokumentation von Libraries abrufen | ❌ Nicht genutzt |
| **mcp__n8n-manager-mcp__** | 15 | n8n-Workflows verwalten | ❌ Nicht genutzt |
| **mcp__ellmos-clatcher-mcp__** | ? | Eigener MCP-Server (ellmos) | ❌ Nicht genutzt |

### Nicht-MCP-Tools (extern, manuell eingesetzt)

| Tool | Wer nutzte es | Funktion | Ergebnis |
|------|--------------|----------|----------|
| **Copilot (GPT-4o)** | LG (manuell) | Konzeptschärfung, Fehlkonzept-Erkennung | 11 dokumentierte Inputs |
| **Gemini Deep Research** | LG (manuell) | Theorierahmen, Literaturrecherche | 9 dokumentierte Prompts, ~15k Wörter Output |
| **NotebookLM** | LG (manuell) | PPTX-Broschüren aus Textgrundlagen | 3 Präsentationen |
| **UmbruchMail CLI** | Claude (via Bash) | E-Mail-Verwaltung | Mail-Check, IFG-Status |
| **llmauto (MarbleRun)** | Referenziert | LLM-Automation für Prompt-Analyzer | Noch nicht produktiv eingesetzt |
| **FragDenStaat** | LG (Web) | IFG-Anfragen einreichen | 9 Anfragen, Empfangsbestätigungen |
| **PyMuPDF** | Claude (via Python) | PDF-Kommentare extrahieren | 108 Kommentare in früherer Session |

## 3. Modell-Konfiguration

| Parameter | Wert |
|-----------|------|
| **Primärmodell** | Claude Opus 4.6 (1M Kontext) |
| **Sub-Agenten Standard** | Claude Sonnet 4.6 (Recherche, Review) |
| **Sub-Agenten komplex** | Claude Opus 4.6 (Prior-Art, Alternative Hypothese, V2-Zahlen) |
| **Externe Modelle** | GPT-4o (Copilot), Gemini 2.5 Pro (Deep Research) |
| **Permission Mode** | bypassPermissions (alle Tools ohne Nachfrage) |
| **Kontext-Limit** | 1M Tokens (Opus 4.6) |

## 4. Was davon methodisch relevant ist

### Direkt forschungsrelevant

| Werkzeug | Methodischer Einfluss |
|----------|----------------------|
| **Agent (parallel)** | Ermöglichte 15-Agenten-Experiment, Review-Zyklen, Prompt-Klassifikation |
| **WebSearch/WebFetch** | Alle empirischen Daten (BMG, SpiFa, BSG, KV) wurden per Web gefunden |
| **Edit (replace_all)** | Encoding-Fix (700+ Ersetzungen) in Sekunden statt Stunden |
| **Grep** | Konsistenzprüfungen über 2500+ Zeilen LaTeX |
| **Bash (pdflatex)** | Kompilierung als Qualitätsgate — Fehler sofort sichtbar |
| **Bash (git/gh)** | Versionierung und Veröffentlichung ohne manuellen Umweg |

### Verfügbar aber nicht genutzt — methodisches Defizit?

| Werkzeug | Hätte es geholfen? |
|----------|-------------------|
| **PubMed MCP** | ✅ Wahrscheinlich — Ribbat et al. hätte direkt per PubMed gefunden werden können statt per WebSearch. Auch Zheng et al. und Goetz et al. |
| **Mermaid Chart** | ⚠️ Möglich — Flowcharts für V1/V2-Pipelines als Mermaid statt TikZ |
| **context7** | ❌ Nicht relevant (Library-Docs, nicht Forschungsliteratur) |

### Methodische Implikation

Die Studie hätte mit **PubMed-MCP** möglicherweise schneller und systematischer die Forschungsliteratur erschlossen. Die Nicht-Nutzung ist ein methodisches Defizit: Ein verfügbares Werkzeug für systematische Literaturrecherche wurde nicht eingesetzt, obwohl es konfiguriert war. Stattdessen wurde ad-hoc per WebSearch gesucht — das entspricht nicht dem PRISMA-Standard für systematische Reviews.

Dies unterstreicht einen Befund der Methodik-Bewertung: Die Studie ist eine explorative Sekundäranalyse, kein systematisches Review. Die Ad-hoc-Methodik war für den explorativen Charakter angemessen, wäre aber für eine Publikationsversion (v1.0) durch systematischere Literaturrecherche zu ergänzen.

---

*Erstellt: 12.04.2026 | CL*
