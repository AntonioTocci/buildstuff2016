# buildstuff2016


| Day | Author | Title | Note |
|---|---|---|---|
| 15th | Dan North | Build Software Faster | E' stato un workshop fanstastico.. [slides](../Dan North - Write Software Faster/WriteSWFaster.md)  |
| 15th - 19:00 | Dan North | Event Storming: for fun and and profit | Interessante spunto. Tutti i sistemi si possono progettare/descrivere con una sequenza di eventi. Si utilizzano post-it. Si parte dalla fine inserendo i diversi eventi (accaduti certamente in in determinato tempo) collocandoli su un asse temporale. Se ci sono delle domande si usano i post-it di diverso colore. [slides](../Dan North - Event Storming/EventStorming.md)
| 16th - 9:00 | Greag Young | The Land Sad History of MicroServices | Il concetto dei microservices non è nulla di nuovo (è un SOA fatto bene) |
| 16th - 10:30 | Tom Harvey | Swift on the Server | Swift è il linguaggio di programmazione che sostituirà Objective-C. Possiede diversi framework e plugin installabili come pacchetti (npm). Ha deployato su heroku un web server con Vapor che fornisce un'interfaccia per creare API e/o MVC applications con templating engine.Ci sono molte analogie con nodejs.. non lo utilizzerò mai! |  
| 16 th - 11:30 | Paul Stack di HashiCorp | Centralized Logging Without the Blood, Seat and Tears | Tramite terraform ha creato un sistema complesso per storare in maniera centralizzata logs applicativi. Tutto con AWS: Client -> Logstash -> AWS IAM ->  AWS lambda -> ElasticSearch -> Kibana  (avrebbe sostituito la lambda con Firehole). tutto demo. E' stato semplicissimo visualizzare anche la struttura del tramite terraform graphpdf. Non avrebbe utilizzato la stessa architettura per le metriche. |
| 16th - 11.50 | Ian Cooper | RPC Is Evil | Talk incentrato sulle problematiche che RPC/PCP ha e come/quando utilizzarlo. Ian è partito dalle origini (RFC 707) rivedendo il concetto originario e rivoluzionario per l'epoca e come l'RPC si è trasformato e standardizzato (es. SOAP). Ha illustrato come attraverso gli anni i punti critici, da sempre identificati e dichirati come tali, siano stati sempre più messi da parte e ignorati. Punti critici che vanno dalle problematiche di networking, di performance, e più in generale di accoppiamento (Temporal & Behavioural coupuling). E' infine passato a descrivere l'architettura a messaggi (eventi o comandi) facendo notare come in molti casi sia il paradigma giusto per affrontare certe problmatiche senza incorrere in parte dei problemi che l'RPC "classico" porta con se. Le slide e molto di più su github [repo](https://github.com/iancooper/Presentations)|
| 16th - 13:45 | Tim Cool | Road to Polyglot Persistence | Ha parlato in generale di DB Relazionali (descrivendo anche che cosa vuol dire ACID...) e NoSQL facendo una carrellata dei diversi tipi. Giusto un paio di slide sul CAP Theorem e poi ha accennato a CQRS/CQRS+ES dicendo come a seconda dei tipi di modello e caso d'uso che abbiamo sia più conveniente o meno utilizzare un classi db relazionale o meno. Talk inutile |
| 16th - 15:00 | Rob Ashton | Functional frontends with Elm | Il talk è stato incentrato su Elm, linguaggio funzionale e strong typed che alla fine compila tutto in javascript senza errori a runtime (dice il tipo). Se compila non da errori. Attravenso vari esempi dimostra tutte le maggiori feature un linguaggio funzionale (strong type check, pattern matching, tail recursion, ecc..) e come possono aiutare nello sviluppo di una app di frontend. Mette in guardia che non è ancora un linguaggio maturo e non così intuitivo a volte, ma lo raccomanda almeno per spike. talk carino ma nulla di nuovo (lato FP) |
| 16th - 13:45 | Sam Elamin - JustEat | Metrics Driven Development | During the spint you decide what to mesure (Do not measure everything). Business Metrics (how many users make orders, logins etc), Application Metrics (response time), Infrastructure metrics (CPU, memory). Statds and Graphite. Make decisions based on metrics. Feature toggleing -> canary release. (AB-testing). They uses SQLServer to query enabled metrics, but they have a 15 min cache. Share graphics with business. D-DOS your self in production. Prove that you can scale. |
| 16th - 16:00 | Peter Mounce - JustEat | WINDOWS SCALE | It is possible to do DevOps on windows! with a windows platfrom at ascale in the cloud. It is based on AWS. Nodes scales on schedule (during lunch and dinner time). "SERVERS == CATTLE(bestiame)" -> don't a big deal if it has been killed. They starts form image for a server and then all way through CI steps until production. They put metrics on with an Hackaton statds/graphite in the 2012 in UDP. It was the step change! They involved developers on calls . Moved to AWS on the 2013. Migrate to could provided the opportunity to rethink about applications, then they get used to IaS. It forced them to address deploying servers well. During another Hackaton they introduced ELK. -> used for LOGS. Then Alerts: are tests that run every 5 minutes. Flacky tests. LOGS: better they make events on alert in json. used NLog with some standard field: date, description. For CI: They used as result of buld a zip file with all configuration inside. Then they used ssh, then they build thier own package manager. Then they moved to AWS but they do it manually (not really understand this). Then they use Ansible to script the Windows machine starting from an image. Better already prepared image since it takes less time to deploy. but they have a single database!!! IoC the environments such that they could configure them. 2 minutes to bring up a new machine with new code! They have a test automation in production (smoketests , acceptance tests, check pages). Contract before coding. they used swagger cafor API desc. LOGS: nxlog -> logstash -> elastic -> kibana and use elastalert for alarting! |
| 16th - 17:00 | Dan Nort | Decisions, Decisions | Every time you make a decision you discard some alternative. You must be aware of the trade-off. Dan North ha riportato alcuni esempi di "processi" dove possono esserci dei trade-off. </br> - Deployment: Atuomatizzare il deploy implica la perdita di  visibilità e di conseguenza la conoscenza sui processi di deploy e i sistemi coinvolti. Lui consigla di  eliminare lo script di deploy e riscriverlo da capo. Spesso si accumulano nel tempo diversi scripts con diverse tecnologie (ruby -> ant -> psake) ma che alla fine fanno una cosa semplice. </br> - test: il test manuale può creare una situazione limite che nel momento in cui si è scritto il test automatico non si è pensato. es. Il tester che copia incolla 30000 caratteri nel campo password mandando in crash il client. </br> - when testing? It depends. TTD ? or test-after? or test-first? or test-whenever </br> - TDD has side-effect. Sometimes spikes are better. Spike is something that you throw away!!! TDD is slower. Invest in code based on evidence. </br> - Architecure - the trade-off: monolith or components or servless ?? it depends. Pro of monolith: single solutuion. It is more simple and everything in one place. Pro of components: u can scale. Pro of serverless is that you introduce abstraction. </br> - objects or functions? [slides](../Dan Noorth - Decision, Decisions/Readme.md) ... to be finished ..
|17th - 9:00 | Michael Brunton - UK Government | Agile Application Security | There are a lot of attacks (es Dark Hotel). He tried to apply the Agile methodologies to security principles. Give more feedback faster! Collaborate with security team. Make the security system handles failures. |
|17th - 10:30 | Tom Croucher | How to be reliable even when things aren't working | Un cambiamento in un sw puà avere vari side effects: sul network, sul computing, sulle request e anche sullo stato stesso (interno) del sw stesso. Di tutti questi possibili cambiamenti bisogna tenerne conto ed è qui che entra in gioco il concetto di reliability: quali sono le best practice per far si che un servizio sia sempre up and running. Dopo un esempio di un caso di down di Uber, Tom ha elencato 4 principi che secondo lui bisogna seguire se si vuole essere "reliable". 1) Always know when it's broken 2) Avoid global changes 3) Moving traffic is faster than fixing 4) Make your mitigation normal (avoid switch off/on) |
|17th - 11:45 | Rachael Reese | History of a Functional language: from Euclid to Type Providers | Talk alla Piero Angela che parte da auclide e pian piano va anvati con le persone che hanno influenzato maggiormente la programmazione ad oggetti e tutto quello da cui deriva: lamda caculus, teoremi assurdi di matematica, ecc per arrivare ad oggi a F#. Niente di più che una carrella di eventi, una specia di SuperQuark dei linguaggi funzionali |
|17th - 13:40 | Roy Veshovda | From Zero to IoT using Elixir and Nerves | Breve introduzione su IoT e di come si può implementare tramite HW come arduino, RaspberryPI, ecc... Spiega come funziona Nerves e lo utilizza per far blinkare un led (l'hello world dell'IoT :) ) una volta creta l'immagine "nerves" per Raspberry. Carino...niente di più |
|17th - 14:55 | Chris Condron | Teaching your team CQRS/ES 2.0 | ... |
|17th - 16:10 | Mark Seemann | Functional Architecture: the pits of Success | ... |
