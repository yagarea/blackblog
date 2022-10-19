---
title:  "Úvod do počítačových sítí"
category: "Matfyz"
language: "CZ"
layout: post
---

- .
{:toc}
---

# Úvod
"Klasické knihy" jsou zde vypsány pouze z pro historický kontext. Dnes můžete najít 
mnoho jiných hodech a knihovnách (pokud preferujete papír před obrazovkou).

Na internetu můžete nalézt mnoho dalších informací na toto téma. Obecně, informace z 
internetu nejsou vždy správné. Avšak v tomto kurzu nepůjdeme moc do hloubky, takže risk 
nálezu chybných informací je velmi malý.

Na druhou stranu, každá přesná informace o protokolech, které studujeme můžeme nalézt 
v jejich oficiální dokumentaci zveřejněné na internetu. Tato dokumentace se nazývá RFC.
Jsou ale detailnější než je na tento kurz potřeba, takže typicky stačí souhrn.

Pro úplné začátečníky, video [Warriors of the Net](https://www.youtube.com/watch?v=PBWhzz_Gn10) 
může sloužit jako trailer, tohoto kurzu.


## Obené atributy komunikace
Začneme studováním obecných způsobů komunikace mezi lidmi v reálném životě, a pokusíme
se najít podobné atributy v síťové komunikaci, i přestože komunikaci v reálném životě
 nepovažujeme za tak strikně definovanou.

### Identifikace
Při komunikaci tváří v tvář se nepotřebujeme nijak zvlášť identifikovat. Naše oči a 
mozek to udělají za nás. Možná když mluvíme s někým koho neznáme.  
(komunikující strany se musí „najít“ (telefonní čísla), představit)

### Metoda
Pokud jsou obě strany schopny používat všechny smysly, není obvykle nutné dohodnout se 
na metodě. Samozřejmě mohou existovat i výjimky. Například pokud používáte nějaké 
signály, musíte se dohodnout, co znamenají. Pokud jste omezeni v používání smyslů, je 
nutná dohoda o komunikační metodě. Například hluchoněmý u přepážky, zkusí znakovou řeč,
recepční napíše na papír, že nerozumí a navrhne psanou formu komunikace.

### Jazyk
V mezinárodním prostředí se musíte dohodnout na jazyce. Ve skutečnosti v tomto 	případě 
není vždy nutný jediný společný jazyk, s přirozenými jazyky můžete také dosáhnout 
rozumné úrovně porozumění pomocí dvou různých jazyků, a to v případě jazyků stejného 
původu, například Slovanské jazyky. Obě strany se musí dohodnout na jazyku, který 
použijí.

### Rychlost
Rychlost komunikace může někdy způsobit problémy s porozuměním, zejména mezi rodilými 
mluvčími a lidmi co se jazyk učí. Určitě pocítíte rozdíl v porozumění mezi sportovním 
komentátorem v rádiu a učitelem. Obě strany se musí dohodnout na rychlosti komunikace

### Proces
V normální situaci obvykle nebudete potřebovat žádná speciální přísná pravidla. Každý 
ví, že v konverzaci musí svého partnera oslovit, pozdravit ho a na konci se rozloučit. 
A pokud na něco zapomenete, pravděpodobně to nezpůsobí mnoho problémů. Když jste však 
pozváni k návštěvě prezidenta, budete se muset naučit a řídit se složitým protokolem. 
Pokud přejdeme k síťové komunikaci, všechny tyto atributy se stanou mnohem 
formálnějšími a důležitějšími; většina rozdílů může způsobit fatální nedorozumění, 
zatímco některé lze akceptovat. Ale je dobré vědět, že všechny nejsou něco nového; 
všechny pocházejí ze skutečného života, byly pouze přizpůsobeny a formalizovány
(dotazy, odpovědi, potvrzení).

## Porovnání komunikací
Až dosud jsme hovořili o běžných formách mezilidské komunikace a dospěli jsme k závěru, 
že se zde používají velmi volná a intuitivní pravidla.

Prvním globálním technologickým komunikačním prostředkem byla telefonie. Od začátku to 
bylo postaveno jako soukromé podnikání, takže všechny uzly byly pod centralizovanou 
kontrolou na základě komplexních proprietárních pravidel zabudovaných do transportních 
zařízení. Koncové zařízení (telefon) bylo pouze jednoduchým rozhraním pro připojení se
k infrastruktuře obsahující veškerou aplikační a transportní logiku.

Počítačové sítě byly navrženy na jiném principu:  
logika aplikace je soustředěna do koncových zařízení a síťová infrastruktura řídí pouze 
logiku přenosu. Proto je nutné navrhnout systém jako otevřený a publikovat pravidla, 
aby se každý implementátor aplikace mohl podle nich chovat.

Při studiu obou typů sítí si musíme nutně položit otázku, jak je propojit. V průběhu 
historie existovalo několik režimů takového propojení. Počítačové sítě původně 
využívaly telekomunikační infrastrukturu (pronajaté linky). Později postavili vlastní 
kabelové systémy a situace se obrátila: dnes se telefonování velmi často přenáší přes 
počítačovou síť (Voice over IP). Rozmach smartphonů s mobilními daty však v mnoha 
případech situaci opět zvrátil - síťová komunikace se opět přenáší přes telefonní 
kanály.

- **Běžná komunikace**
	- hlas, signály, písmo
	- volná intuitivní pravidla
- **Telekomunikace**
	- složitá technologie se zabudovanými pravidly
	- řízení má na starosti síť, řídí i koncová zařízení
- **Počítačová síť**
	- pravidla jsou volně dostupná
	- značná část logiky je v koncových zařízeních
	- síť se stará jen o přenos
- **Konvergovaná síť**
	- spojuje svět spojů a počítačů (cena, efektivita...)
	- úspěšnější je konvergence na bázi počítačové sítě


## Přenos zprávy

### Pošta
Podívejme se na proces přenosu zprávy (klasickou) poštou. Vezmete list papíru se 
zprávou, vložíte jej do obálky, napíšete adresu, připojíte razítko a hodíte jej do 
schránky. Poté poštovní organizace zpracovává dopis pomocí své infrastruktury a 
doručuje jej do poštovní schránky příjemce. Po doručení příjemce otevře obálku a 
vytáhne dopis. Nyní, pokud chceme popsat proces prostředky bližšími síťové komunikaci, 
můžeme začít používat technické termíny, které se běžně nepoužívají, ale jsou plně 
srozumitelné.

Vezmete list papíru se zprávou [_datová jednotka_], vložíte jej do obálky 
[_enkapsulace_ nebo _zabalení_], napíšete adresu [_adresa cílového uzlu_], připojíte 
razítko [_sledujete poštovní protokol_] a hodíte jej do poštovní schránky [_odesílání_]. 
Poté poštovní organizace zpracovává dopis pomocí své infrastruktury [_mezilehlé uzly 
propojené různými médii_], aby jej doručila do poštovní schránky příjemce [_cílový 
uzel_]. Po doručení příjemce otevře obálku [_dekapsulace_ nebo _rozbalení_] a vytáhne 
dopis [_doručená zpráva_].

### Email
Pomocí velmi podobných slov můžeme popsat proces přenosu zprávy v případě elektronické 
pošty. Také musíme použít kódování a zabalení podle správného protokolu k vytvoření 
datové jednotky, kterou je třeba odeslat do místní sítě. Poté síťová infrastruktura 
zpracovává zprávu přes různé mezilehlé uzly a různé kanály, které mají být doručeny do 
cílové místní sítě a přes ni do koncového uzlu (váš osobní počítač, smartphone atd.), 
Kde je dekapsulována, dekódována a zobrazena na obrazovce. 

Můžeme zde vidět stejné aktéry, stejné role a stejné úkoly jako v klasické poště, 
právě převedené na technickou platformu. Základní princip fungování je v obou 
případech stejný.

## Požadavky

### Odolnost
Na počátku myšlenky využívat k přenosu zpráv elektronické prostředky bylo několik 
základních požadavků. Některé z nich zůstaly až do současnosti, některé se postupem 
času trochu změnily.

Zásadním požadavkem byla odolnost proti chybám. Za touto myšlenkou 
ve skutečnosti stála armáda (americké ministerstvo obrany). Řešili hlavní problém 
výpadků telefonní sítě v případě nepřátelského útoku. Telekomunikační síť využívá tzv. 
Přepínání obvodů. To znamená, že když někomu zavoláte, síť najde posloupnost uzlů 
(okruh) potřebných pro připojení vašeho zařízení a koncového zařízení, které voláte. 
Jakmile je tento obvod vytvořen, všechna zvuková data následují tuto cestu. Pokud 
nepřítel rozbije uzel v okruhu, okruh je ztracen. 

Řešení je docela snadné. Data rozdělíme na menší bloky, takzvané pakety a necháme každý 
paket najít si vlastní cestu do cílového uzlu. Pokud je uzel přerušen, paket najde 
alternativní způsob. Bude to trochu zpožděno, ale bude doručeno. Samozřejmě v dnešní 
době nemusí být důvodem selhání uzlu jen nepřátelský (hackerský) útok, ale také výpadek 
napájení, chybná konfigurace atd. Rizika tedy stále existují, a proto tento princip 
používají současné sítě k doručování dat. 

Při srovnání těchto metod musíme říci, že přepínání obvodů je rychlejší, ale 
nespolehlivé, zatímco přepínání paketů je pomalejší, ale odolné vůči chybám.


