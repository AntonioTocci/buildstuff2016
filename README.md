# buildstuff2016


| Day | Author | Title | Note |
|---|---|---|---|---|
| 15th | Dan North | Build Software Faster | E' stato un workshop fanstastico.. [slides](../Dan North - Write Software Faster/WriteSWFaster.md)  |
| 15th - 19:00 | Dan North | Event Storming: for fun and and profit | Interessante spunto. Tutti i sistemi si possono progettare/descrivere con una sequenza di eventi. Si utilizzano post-it. Si parte dalla fine inserendo i diversi eventi (accaduti certamente in in determinato tempo) collocandoli su un asse temporale. Se ci sono delle domande si usano i post-it di diverso colore. [slides](../Dan North - Event Storming/EventStorming.md)
| 16th - 9:00 | Greag Young | The Land Sad History of MicroServices | Il concetto dei microservices non è nulla di nuovo (è un SOA fatto bene) |
| 16th - 10:30 | Tom Harvey | Swift on the Server | Swift è il linguaggio di programmazione che sostituirà Objective-C. Possiede diversi framework e plugin installabili come pacchetti (npm). Ha deployato su heroku un web server con Vapor che fornisce un'interfaccia per creare API e/o MVC applications con templating engine.Ci sono molte analogie con nodejs.. non lo utilizzerò mai! |  
| 16 th - 11:30 | Paul Stack di HashiCorp | Centralized Logging Without the Blood, Seat and Tears | Tramite terraform ha creato un sistema complesso per storare in maniera centralizzata logs applicativi. Tutto con AWS: Client -> Logstash -> AWS IAM ->  AWS lambda -> ElasticSearch -> Kibana  (avrebbe sostituito la lambda con Firehole). tutto demo. E' stato semplicissimo visualizzare anche la struttura del tramite terraform graphpdf. Non avrebbe utilizzato la stessa architettura per le metriche. |
| 16th - 13:45 | Tim Cool | Road to Polyglot Persistence |  ... |
| 16th - 13:45 | Sam Elamin - JustEat | Metrics Driven Development | During the spint you decide what to mesure (Do not measure everything). Business Metrics (how many users make orders, logins etc), Application Metrics (response time), Infrastructure metrics (CPU, memory). Statds and Graphite. Make decisions based on metrics. Feature toggleing -> canary release. (AB-testing). They uses SQLServer to query enabled metrics, but they have a 15 min cache. Share graphics with business. D-DOS your self in production. Prove that you can scale. |
| 16th - 16:00 | Peter Mounce - JustEat | WINDOWS SCALE | It is possible to do DevOps on windows! with a windows platfrom at ascale in the cloud. It is based on AWS. Nodes scales on schedule (during lunch and dinner time). "SERVERS == CATTLE(bestiame)" -> don't a big deal if it has been killed. They starts form image for a server and then all way through CI steps until production. They put metrics on with an Hackaton statds/graphite in the 2012 in UDP. It was the step change! They involved developers on calls . Moved to AWS on the 2013. Migrate to could provided the opportunity to rethink about applications, then they get used to IaS. It forced them to address deploying servers well. During another Hackaton they introduced ELK. -> used for LOGS. Then Alerts: are tests that run every 5 minutes. Flacky tests. LOGS: better they make events on alert in json. used NLog with some standard field: date, description. For CI: They used as result of buld a zip file with all configuration inside. Then they used ssh, then they build thier own package manager. Then they moved to AWS but they do it manually (not really understand this). Then they use Ansible to script the Windows machine starting from an image. Better already prepared image since it takes less time to deploy. but they have a single database!!! IoC the environments such that they could configure them. 2 minutes to bring up a new machine with new code! They have a test automation in production (smoketests , acceptance tests, check pages). Contract before coding. they used swagger cafor API desc. LOGS: nxlog -> logstash -> elastic -> kibana and use elastalert for alarting! |
| 16th - 17:00 | Dan Nort | Decisions, Decisions | Every time you make a decision you discard some alternative. You must be aware of the trade-off. Dan North ha riportato alcuni esempi di "processi" dove possono esserci dei trade-off. </br> - Deployment: Atuomatizzare il deploy implica la perdita di  visibilità e di conseguenza la conoscenza sui processi di deploy e i sistemi coinvolti. Lui consigla di  eliminare lo script di deploy e riscriverlo da capo. Spesso si accumulano nel tempo diversi scripts con diverse tecnologie (ruby -> ant -> psake) ma che alla fine fanno una cosa semplice. </br> - test: il test manuale può creare una situazione limite che nel momento in cui si è scritto il test automatico non si è pensato. es. Il tester che copia incolla 30000 caratteri nel campo password mandando in crash il client. </br> - when testing? It depends. TTD ? or test-after? or test-first? or test-whenever </br> - TDD has side-effect. Sometimes spikes are better. Spike is something that you throw away!!! TDD is slower. Invest in code based on evidence. </br> - Architecure - the trade-off: monolith or components or servless ?? it depends. Pro of monolith: single solutuion. It is more simple and everything in one place. Pro of components: u can scale. Pro of serverless is that you introduce abstraction. </br> - objects or functions? [slides](../Dan Noorth - Decision, Decisions/Readme.md) ... to be finished ..
|17th - 9:00 | Michael Brunton - UK Government | Agile Application Security | There are a lot of attacks (es Dark Hotel). He tried to apply the Agile methodologies to security principles. Give more feedback faster! Collaborate with security team. Make the security system handles failures. |
| 17th - 10:30 | Michael Brown | Becoming Reacquainted with UML | Code is encoded knowledge of business process. Understand the process is the basic of a good code. The Colot Module: Use color to describe the process (relations and entities). Speak the same language. Uses entities to reprensent role in the business proccess. At the end of leacure i spoke with Brandolini and Brown about the differences between the Event Storming and UML. Brandolini l'ha fatto a merda! La sostanziale differenza è il livello d'astrazione che si ha con Event Storming: Questo porta ad intavolare una discussione anche tra non tecnici. Il beneficio è il punto di vista di un esterno, migliora la collaborazione, l'energia che si sprigiona. UML è quasi come definire un architettura up-front. [images](../) |
| 16th - 11:45  | Sven Peters - Atlassian | Rise of the machines - Automate your Development | **to reorganize** Great Talk: [free video and slides](https://svenpet.com/talks/rise-of-the-machines-automate-your-development/).  Atlassian man automation. Syncronize target Process with repository. Updates the state according to commit. Create a branch from green build, make the faleature branch, then make a pull request... (smart commits). Always invite the best reviewer. Auto merges from differents branches and makes builds automatically after merge.  Testing. Doctor code is makeing static analysis of code but it prevents to make test with dev database!!! Hall of shame!!! If u mess up code. Hall of fame!!! If u refactor something ;) Automate ui problems: Compares images for ui mess up!! Es the pixels are wrong. Hallelujah is a bot that reduce the build time by parallelize them automatically. Useful for integratoon tests.  Flaky tests (red and re run and is green). They detects that and it is removed from build and put in quaranten!!!  Slow feedback loop in production in the infrastructure!!! Something break.. the make an automation to dubstitute noc. If the sw break, the reperibile is called autoamtically:  Page a duty (third part). Realised note: automatically get from the commit message! What is the issue has been fixed. Github issue and labels.. makes issue human readble from customer point of view. Bots on support: customer care: The developer scroll the logs after a segnalazione. But we male context switch!! Hercules can scan log files and combine woth system knoledge.It is a reg ex that suggest to the person support. It is an ia !! Well fuck me rhe hercules was right !! On netflix per ridurre il Context seitch dei bugs, They get a ticket come uno scoda code dopo aver inserito la descrizione dei bugs. Automate standup con remotes: What is the good time to meet around the the world. The bot vibrate after 5 mins! Acdc before stands up!! At 9:30 - Viedo conference start automatically!.They make standsup using chats to solve the time slice issue around the wolrd /stands up goes to stand up chat board. Automatic deployment. Exceptions handlers - post automatically to the chat room. Chats everywhere to have fast feedback. Chat bots. Save time and give more time To coding. Technical debth. 10% if sprint to solve that. And create bots to solve problems. Ship it. Or just buold wishey bar. Treath ur automation as u treath ur code well. Spread knowledge of automation. Use cvs. Write tests for automation. Have developments scripts all in obe place. Buildif sw is a craft. Creating customer claur is art. Threath ur bot well. They dont have time shets!!! [images]("../Rise of the machines - Atralssian/Readme.md")|
| 16th - 13:40 | Kris Buytaert | Deploy Stuff, Run Stuff | Solita manfrina sull'agile e dev ops. Conclusione i  dev e gli ops deveono collaborare!  [images](../Kris Buytaert - Deploy Stuff, Run Stuff/readme.md). Sono andato via dopo 5 minuti |
