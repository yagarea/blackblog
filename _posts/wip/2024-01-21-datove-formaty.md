---
title: "Datové formáty"
category: "Matfyz"
language: "CZ"
latex: true
layout: post
wip: true
edit: "https://github.com/yagarea/blackblog/blob/master/_posts/wip/2024-01-21-datove-formaty.md?plain=1"
---

- .
{:toc}
---

- Levels of abstraction:
    1. **conceptual level** - what is the data about
    2. **logical level** - how is data structured using given technology/format
    3. **physical level** - how do the files look like in storage
- **Otevřená data**
    - volně přístupná data, která vám dávají právní jistotu, že je můžete používat
    - DCAPT-AP-CZ - český datový standard jak reprezentovat katalogy, založený na Evropském
      standardu DCAT-AP 2.0.1, zaleženém na W3C standardu DCAT 2
- **Datový model**
    - sada nástrojů k reprezentaci dat v nějaké konkrétní doméně
    - RDF, LPG, DOM, JSON, Relational model)
- **Datový formát**
    - fyzický pohled na data, vázaný s nějakým datovým modelem.
    - RDF graph model
        - textové: N-triplets, N-quads, Turtle, TriG, RDF/XML, JSON-LD, RDFa
        - binární: HDT
    - Property graph: CSV, JSON, GraphML, Cypher Script
    - Hierarchical
        - DOM: XML, HTML
        - JSON: JSON, XML
    - Relational: CSV, SQL dump
- **Datová schémata**
    - Anotace a omezení použitelná na instance datových formátů, což umožňuje data lépe popsat a ověřit
    - Schema language - CSV on the web
    - RDF - schema language
        - SHACL
        - ShEx
    - JSON - schema language
        - JSON Schema
    - XML - schema languages
        - DTD
        - XML Schema
        - Relax NG
        - Schematron
- **Metafromát**
    - slouží jako výchozí formáty pro specializované formáty
    - JSON -> GeoJSON
    - CSV -> General Transit Feed Specification (GTFS)
    - XML -> SVG, ATom, RSS 2.0, Office Open XML (`.docx`, `.xlsx`,...)
    - RDF -> DCAT, Schema.org
- **Strojová čitelnost**
    - špatně se formálně definuje
    - když je snadné s daty parsovat předvídatelným způsobem
- **Binární soubor**
    - struktura je popsána bit po bitu (např: sedmý bit znamená, že...)
    - není zobrazitelný textovými editory, ale hex editory
- **Textový soubor**
    - obsahuje text
    - je strukturovaný jako sekvence znaků na řádcích.
    - zobrazitelný textovými i hex editory
    - text je zakódován binárně pomocí kódování znaků
    - Základní kódování znaků: US-ASCII
    - Nové řádky:
        - `CR` - carrige return - `\r`
        - `LF` - line feed - `\n` - Unix, Linux, MacOS
        - `CR LF` - both of them - `\r\n` - windows
    - Dnes se používá kódování `UTF8`
        - 1 až 4 byty representují jeden znak
        - první byte compatibilní s US-ASCII
        - nejčastěji se na znak používají 2 byty
        - emoji používají 4 byty
    - BOM - byte order mark
        - je na začátku souboru a určuje typ kódování
        - typy kódování
            - UTF-8 -> `EF BB BF`
            - UTF-16 BE -> `FE FF`
            - UTF-16 LE -> `FF FE`
            - UTF-32 -> `00 00 FE FF`
        - většina datových formátů používá UTF-8 bez BOM


## Vlastnosti datových formátů
- **Otevřený**
    - Specifikace volně dostupná na internetu každému bez omezení použití
    - Příklad: Metaformáty (XMl, JSON, CSV, RDF, ...), Specifické formáty (SVG, GeoJSON,...)
- **Uzavřený**
    - specifikace není dostupná
    - musíte koupit přístup pro specifikaci
    - musím si koupit certifikát, abych mohl tvrdit, že moje aplikace/knihovna je kompatibilní
    - Příklad: railML.org (založené na XML, potřebujete certifikát)

## Identifiers
- **URI** - Uniform Resource Identifier - [RFC 3986](https://tools.ietf.org/html/rfc3986)
    - Příklady:
        - `ftp://ftp.is.co.za/rfc/rfc1808.txt`
        - `http://www.ietf.org/rfc/rfc2396.txt`
        - `ldap://[2001:db8::7]/c=GB?objectClass?one`
        - `mailto:John.Doe@example.com`
        - `news:comp.infosystems.www.servers.unix`
        - `tel:+1-816-555-1212`
        - `telnet://192.0.2.16:80/`
        - `urn:oasis:names:specification:docbook:dtd:xml:4.1.2`
- **URN** - Uniform Resource Name - [RFC 8141](https://tools.ietf.org/html/rfc8141), [IANA URN namespace registry](https://www.iana.org/assignments/urn-namespaces)
- **URL** - Uniform Resource Locator - [RFC 3986](https://tools.ietf.org/html/rfc3986)
- **IRI** - Internationalized Resource Identifier - [RFC 3987](https://www.ietf.org/rfc/rfc3987.txt)
    - Příklad:
        - `https://opendata.gov.cz/špatná-praxe:start`
        - `https://linked.opendata.cz/zdroj/💩`
        - `https://en.wiktionary.org/wiki/Ῥόδος`
    - Příklad procentové kódování:
        - `https://opendata.gov.cz/%C5%A1patn%C3%A1-praxe:start`
        - `https://linked.opendata.cz/zdroj/%F0%9F%92%A9`
        - `https://en.wiktionary.org/wiki/%E1%BF%AC%CF%8C%CE%B4%CE%BF%CF%82`


```
  foo://example.com:8042/over/there?name=ferret#nose
  \_/   \______________/\_________/ \_________/ \__/
   |           |            |            |        |
 scheme     authority       path        query   fragment
   |   _____________________|__
  / \ /                        \
  urn:example:animal:ferret:nose
```

- **Punycode**
    - něco jako IRI, ale pro název domény
    - Příklad: `https://www.háčkyčárky.cz` = `https://www.xn--hkyrky-ptac70bc.cz/`


## Datové typy
Stejné datové formáty používány napříč běžnými formáty. Vychází z XML Schema data type systému:

- *boolean* - `true`/`false`
- *number*
    - integer (`42`)
    - decimal (`42.42`)
    - float/double (`4.2e2`)
- *date* - ISO-8601 complient
    - YYYY-MM-DD (`2021-03-01`)
- *time*
    - HH:MM:SS.sss (`10:40:00`)
- *dateTime*
    - YYYY-MM-DD**T**HH:MM:SS.sss (`2021-03-01T10:40:00`)
- *time zones*
    - `2021-03-01T10:40:00+02:00`
    - `2021-03-01-02:00`
    - `2021-03-01Z`

## Conceptual level

- **Conceptual domain model**
  Ta část dat, o které se můžeme bavit s člověkem mimo IT.
  Popisuje vlastnosti dat a jejich souvislosti.
  K popisu se používá *UML class diagram*.

Třída UML Class diagramu má:
- jméno
- atributy
- asociace
    - `0..1` - nula až jedna
    - `0..*` - nula až $$n$$
    - `1..1` - musí existovat právě jedna asociace

---

## RDF
- Resource Description Framework
- je v podstatě sada trojic, které popisují vztahy - **N-Triples**
- trojice je: `subject predicate object`
    - `subject` - co
    - `predicate` - vztah
    - `object` - s čím (může být literál)
- někdy pomocí čtveřic (čtvrtá hodnota je jméno grafu) - **N-Quads**

![Obrázek grafu][TODO]

- IRIs a IRI prefixy
    - příklad:
      ```
      @prefix dcterms: <http://purl.org/dc/terms/> . dcterms:creator
      ```
- více vlastností
    - příklad:
      ```
      my:index.html dcterms:creator exstaff:85740 .
      my:index.html dcterms:subject "education" .
      my:index.html dcterms:language "en" .
      ```
- textové literály s jazykovým tagem
    - příklad:
    ```
    my:index.html dcterms:title "Homepage of Jakub Klímek"@en .
    ```
- třídy - způsob jak přiřadit vlastnost nějaké množině subjektů
- prázdné vrcholy - uzel bez IRI (značí se podtržítkem)
    - příklad:
      ```
      my:staff/85740 my:hasAddress _:a1 .
      _:a1 my:street "Malostranske nam. 25" .
      _:a1 my:city "Prague" .
      _:a1 my:zipCode "11800" .
      ```
- komentáře - to co je za `#` se ignoruje
- Graph data model
    - orientovaný graf s pojmenovanými hranami
        - vrcholy jsou subjekty a objekty
        - hrany jsou konkrétní trojice


### Turtle
- prefixy - `@prefix zkratka: dlouha věc`
    - nemusí mít jméno (potom se píše jen `:`)
- možnost přidat víc hran pomocí `;`
- možnost přidat víc objektů pomocí `,`
- relativní IRI
    - implicitně URL dokumentu (pokud je známé)
    - explicitně se definuje pomocí `@base`
- více řádkové stringy jsou ohraničeny `"""`
- je nutné escapovat znaky co je normálně potřeba escapovat (`"'\<>` atd.)
- Class assignment
    - píše se pomocí `a`
        - příklad: `<http://example.com/index.html> a foaf:Document .`
- prázdný vrchol má syntanktický cukr `[` `]`
    - příklad:
      ```
      <http://example.com/> a v:VCard ;
         v:adr [
            a v:Work ;
            v:country-name "Australia" ;
            v:locality "WonderCity" ;
            v:postal-code "5555" ;
        ] ;
      ```
- zkratky za datové typy
    - `4` nebo `+4` -> `"4"^^xsd:integer`
    - `1300000.0` -> `"1300000.0"^^xsd:decimal`
    - `1.3e6` -> `"1.3e6"^^xsd:double`
    - `true` -> `"true"^^xsd:boolean`


### TriG
- založeno na RDF turtle
- podporuje jména grafů
    - jeden defaultní
    - $$n$$ pojmenovaných
- příklad:
  ```
  @base <http://www.w3.org/People/> .
  @prefix : <http://xmlns.com/foaf/0.1/> .
  # default graph
  {
      ericFoaf:ericP :givenName "Eric" .
  }
  # also default graph, no {}
  ericFoaf:ericP :givenName "Eric" .
  # graph highlight
  GRAPH <Eric/ericP-foaf.rdf> {
      ericFoaf:ericP :givenName "Eric" .
  }
  ```

### RDF Schema
- Slovník pro vytváření dalších RDF slovníků
- [W3C recommendation](https://www.w3.org/TR/rdf-schema/)
- RDF slovník
    - kolekce tříd a vlastností a jejich definic


### Open World Assumption (OWA)
> “open-world assumption is the assumption that the truth value of a statement
> may be true irrespective of whether or not it is known to be true”
>
> -- Open-world assumption

Příklad:

| **Statement:** "Mary" "is a citizen of" "France"<br>**Question:** Is Paul a citizen of France? |
| **"Closed world" (for example SQL) answer:** No.<br>**"Open world" answer:** Unknown.          |

### (Non-)Linked data
- problémy s klasickými nelinkovanými daty
    - Nejednoznačná identifikace entit v datech
    - Nízká dohledatelnost a dostupnost dat
    - Žádné kontextové informace
- Další problémy
    - Identifikace entit v datech
        - Globální
        - Unikátní
    - Nalezitelnost a dostupnost dat
        - Najděte data na základě identifikace
        - Přístup k datům v jediném formátu
    - Kontextové informace
        - Když přistupuji k informacím, chci vědět, kde a jak najít další
- Linked Data = Technical interoperability solution
- Linked Open Vocabularies (LOV)
    - katalog slovníků používaných pro *web of data*

#### The World Wide Web
- založen na těchto jednoduchých principech
    - HTML jako formát pro publikování dokumentů
    - URL jako jedinečné globální identifikátory dokumentů
    - HTTP pro lokalizaci a přístup k dokumentům jejich adresy URL
    - hypertextové odkazy mezi dokumenty
- Pracují s ním dva druhy aplikací
    - webové prohlížeče
        - lokalizace dokumentů a procházení pomocí hyperlinků
    - webové vyhledávače
        - indexují a vyhledávají fulltextově v dokumentech
- dobré praktiky
    - Data jsou strojově čitelná a snadno zpracovatelná (založená na Sémantickém webu)
    - Data mají k sobě kontext (skrze linky na další data)
- Principy Linkovaných dat ([5stardata.info](https://5stardata.info/))
    1. Používejte URI jako názvy věcí.
    2. Použijte HTTP URI, aby lidé mohli vyhledávat ty názvy.
    3. Když někdo vyhledá URI, uveďte užitečné informace pomocí standardů (RDF, SPARQL).
    4. Zahrňte odkazy na jiné URI, aby mohly objevit více věcí.

| **Web of documents**                       | **Linked Data**                          |
|:------------------------------------------:|:----------------------------------------:|
| HTML as document publication format        | RDF as a data publication format         |
| URL as a unique global document identifier | URL as a unique global entity identifier |
| HTTP protocol for accessing documents using their URL | HTTP protocol for accessing data about entities using their URL |
| Links to other documents                   | Links to other entities                  |
|                                            | vocabularies – standards for common data representation |

---

## SPARQL a SPARQL endpoity
- SPARQL - query jazyk na RDF data
- SPARQL endpoint
    - HTTP-based web service
    - input: SPARQL query
    - output: data (RDF, CSV, JSON, XML, ...)
- TODO

## LOV

### Dublin Core
- Dublin Core Metadata Initiative (DCMI)
- slovník
- příklad:
  > **dcterms:publisher**
  > Term Name: publisher
  >
  > *URI* http://purl.org/dc/terms/publisher  
  > *Label* Publisher  
  > *Definition* An entity responsible for making the resource available.
  > *Type of Term* Property
  > *Range Includes* http://purl.org/dc/terms/Agent
  > *Subproperty of* Publisher (http://purl.org/dc/elements/1.1/publisher)

### SKOS
- Simple Knowledge Organization System
- slovník pro hierarchie a kolekce konceptů
- `skos:Concept`
    - Idea, notion, unit of thought
- `skos:ConceptScheme`
    - Agregace jednoho nebo více konceptů
    - Sémantické vztahy mezi pojmy
    - Zhruba odpovídá
        - Individuální tezaurus
        - Klasifikační schéma
        - Předmětový systém
- `SKOS: Lexical Label`
    - řetězec v přirozeném jazyce

### GoodRelations
- webový slovník pro E-komerci
- používá ho google, yahoo, bestbuy, ...
- Syntax-neutral (Microdata, RDFa, RDF/XML, Turtle, JSON, OData, GData, …)
- Industry-neutral (použitelný na všechny druhy zboží)

### Schema.org
- > “Schema.org is a collaborative, community activity with a mission to create, maintain, and promote schemas for structured data on the Internet, on web pages, in email messages, and beyond.”

## Wikidata
- Wikidata je ve spolupráci upravovaný vícejazyčný graf znalostí hostovaný nadací Wikimedia Foundation.
- dají se na tom dělat dotazy pomocí SPARQL endpointu

## Grafy
- Usacase:
    - Spojení mezi entitami jsou stejně důležitá nebo důležitější než entity samotné.
    - self-referencing
        - menežování hierarchií
    - neomezené hierarchie (distribuční sítě)
    - reprezentace více cest

### Labeled Property Graph (LPG)
- Labeled Property Graph data model
    - orientovaný multigraf
    - vrcholy mají množinu labelů
    - hrany mají labely
    - vrcholy i hrany mají množiny key-value vlastností

### Cypher
- Query jazyk pro LPG data model

