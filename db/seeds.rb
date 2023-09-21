# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

puts 'Goodbye everybody'
User.destroy_all
Post.destroy_all
Comment.destroy_all
puts 'I had to go... done'
puts 'now creating fake users'

u1 = User.create!(email: 'adrien@gmail.com',
                  password: '123456',
                  nickname: 'Ad')
u2 = User.create!(email: 'paul@gmail.com',
                  password: '123456',
                  nickname: 'Polo')
u3 = User.create!(email: 'cycy@gmail.com',
                  password: '123456',
                  nickname: 'Cycy')
u4 = User.create!(email: 'ray@gmail.com',
                  password: '123456',
                  nickname: 'Ray')

users = [u1, u2, u3, u4]

puts "I guess it's done"
puts "creating fake true articles and the fake true comments that goes with them"

post = Post.new(
  url: "www.site/internet/du/pays.com",
  img: "https://img.20mn.fr/hvjCgo71TWWrXgNDyR-bbyk/830x532_mandatory-credit-photo-by-andrea-ronchini-pacific-press-shutterstock-13855751f-a-chat-gpt-logo-is-displayed-on-a-smartphone-italy-has-become-the-first-european-country-to-block-open-ai-s-advanced-chatbot-chat-gpt-photo-illustration-a-chat-gpt-logo-rome-italy-02-apr-2023-shutterstock-editorial-photo-illustration-a-chat-gpt-l-13855751f-2304030342",
  title: "Chat GPT Attaqué",
  content: "Une plainte vient d’être déposée contre la start-up californienne OpenAI, auprès d’un tribunal fédéral à New York (Etats-Unis). George R.R. Martin, l’auteur de la saga Game of Thrones, et d’autres écrivains ont ainsi décidé de lancer des poursuites contre l’entreprise. Ils l’accusent d’avoir utilisé leurs œuvres pour créer ChatGPT au mépris de leurs droits d’auteur.

  Dans la plainte déposée mardi, ils reprochent à OpenAI de s’être servie de leurs livres « sans permission » pour entraîner son modèle de langage, la technologie d’intelligence artificielle (IA) à la base de ChatGPT. Ce logiciel est capable de produire toutes sortes de textes sur simple requête en langage courant. « Au cœur de ces algorithmes se trouve le vol systématique à grande échelle », assènent les avocats.

  Des contenus qui imitent le style des auteurs
  Parmi les plaignants de cette action en nom collectif se trouvent l’Authors Guild (organisation qui représente les auteurs) et plusieurs écrivains, dont George R.R. Martin et le romancier John Grisham. De nombreuses autres plaintes ont été déposées par des artistes, organisations et codeurs contre OpenAI et ses concurrents.


  Les modèles de langage « mettent en danger la capacité des auteurs de fiction à gagner leur vie, dans la mesure où ils permettent à n’importe qui de générer automatiquement et gratuitement (ou à très bas prix) des textes pour lesquels ils devraient autrement payer des auteurs », argumentent les avocats dans la plainte. Ils font aussi valoir que les outils d’IA générative peuvent servir à produire des contenus dérivés, qui imitent le style des écrivains.

  D’autres plaintes
  « De manière injuste et perverse, la copie délibérée [du travail] des plaignants transforme donc leurs œuvres en moteurs de leur propre destruction », assène la plainte. La guilde et les auteurs réclament l’interdiction de l’utilisation de livres protégés par des droits d’auteur pour former des modèles de langage « sans autorisation expresse », ainsi que des dommages et intérêts.


  Propulsée parmi les géants de l’IA grâce au succès de ChatGPT en fin d’année dernière, OpenAI fait déjà l’objet d’autres poursuites similaires, dont une action de groupe d’ingénieurs informatiques qui attaque aussi Microsoft, son principal investisseur, et la plateforme GitHub. L’entreprise a eu besoin de montagnes de textes trouvés en ligne pour former son modèle de langage, mais n’a jamais précisé exactement quels sites et écrits ont été utilisés.",
  user: users.sample
)
post.save!


comment = Comment.new(
  content:"Jamais lu 'Game Of Throne', la série m'a soulé...",
  user: users.sample,
  post: post
)
comment.save!

comment = Comment.new(
  content: "Ridicule. Le droit d’auteur est une fumisterie ! L’art se nourri toujours de ce qui s’est fait avant. Un créatif n’invente rien, il re interprète, grosse nuance. Encore une fois, ce qui leur fait surtout peur c’est de ne pas toucher les dividendes en glandant tranquillement !",
  user: users.sample,
  post: post
)
comment.save!

comment = Comment.new(
  content: "Ils vont se faire débouter avec une force tellement terrible qu'ils ne pourront plus écrire de livres...déjà qu'ils ont du mal pour certains...",
  user: users.sample,
  post: post
)
comment.save!



post2= Post.new(
  url: "www.site/internet/du/pays.com",
  img: "https://img.20mn.fr/KJcG4M-8Q-SQZ_xm2gf8ZCk/830x532_in-this-photo-illustration-a-whats-app-logo-seen-displayed-on-a-smartphone-with-stock-market-percentages-in-the-background-omar-marques-sopa-images-sopaimages-1725046-credit-sopa-images-sipa-2309191749",
  title: "Whatsapp sur Ipad",
  content: "Du côté des utilisateurs, on commençait presque à ne plus y croire. Une version de WhatsApp destinée aux iPad est (enfin) en cours de développement et devrait bientôt voir le jour, rapporte 01net, selon des informations révélées par WABetaInfo.

  L’application est en réalité dans les tuyaux chez Meta depuis l’été 2021. Mais c’est la première fois qu’une version bêta est disponible pour les testeurs. Pour se la procurer, il faut cependant passer par TestFlight, une application permettant aux propriétaires d’iPhone et iPad de tester des versions préliminaires d’applications.

  Le jumelage et le chiffrement assurés
  Les places étant limitées, il est déjà quasi-impossible de faire partie des utilisateurs qui pourront découvrir WhatsApp pour iPad. Pour ceux ayant réussi à se procurer l’application, il faut ensuite lier son iPhone à son iPad afin de synchroniser le compte WhatsApp sur les deux appareils.


  Une fois le jumelage effectué, l’application WhatsApp offre une nouveauté loin d’être anecdotique : on peut utiliser la messagerie instantanée directement dessus, sans avoir besoin de garder son smartphone à proximité ou connecté à Internet. Les messages envoyés sur l’iPad sont synchronisés sur l’iPhone et inversement, grâce au mode compagnon lancé par WhatsApp en avril dernier.


  Veuillez fermer la vidéo flottante pour reprendre la lecture ici.

  Le chiffrement des messages et des appels est assuré sur la nouvelle version de l’application. Les utilisateurs devront faire preuve d’encore un peu de patience car aucune date de lancement officielle n’a été communiquée malgré la mise en ligne de cette version bêta. Cette dernière doit probablement être aussi en développement pour les tablettes fonctionnant sous Android.",
  user: users.sample
)
post2.save!


comment2 = Comment.new(
  content:"Whatsapp c'est pour les nazes, ça prend déjà toutes tes données, apple et whatsapp et puis quoi encore",
  user: users.sample,
  post: post2
)
comment2.save!


comment2 = Comment.new(
  content: "Toute ma vie j'ai attendu qu'apple fasse faillite et c'est maintenant à l'aube de mes 18 ans qu'ils sortent cette fichue feature, désolant...",
  user: users.sample,
  post: post2
)
comment2.save!

post3= Post.new(
  url: "www.site/internet/du/pays.com",
  img: "https://img.20mn.fr/Tx-Io_IUTgi3Jy8v6aSYYik/960x614_la-commission-superieure-du-numerique-et-des-postes-csnp-composee-de-parlementaires-propose-de-lever-automatiquement-l-anonymat-sur-les-reseaux-sociaux-photo-d-illustratio-na",
  title: "Cyber Harcèlement, fini!",
  content: "L’idée fait frémir les internautes. Des élus veulent « automatiquement » lever l’anonymat sur les réseaux sociaux et pousser les plateformes au retrait « immédiat » des contenus signalés comme du cyberharcèlement quand la victime est mineure. C’est en tout cas la proposition de la Commission supérieure du numérique et des postes (CSNP), composée de parlementaires.

  Dans un avis présenté mercredi, la CSNP propose une série de nouvelles obligations pour les plateformes sociales, adoptées à la majorité de ses membres. Elle souhaite ainsi obliger les plateformes à « suspendre et retirer immédiatement tout contenu haineux », dès son signalement par un mineur, son représentant légal ou une association. Elle propose aussi d’imposer aux plateformes de communiquer l’adresse IP et « l’identité de l’auteur des messages » à la personne à l’origine du signalement.

  Plus de modération et une empreinte de CB
  Enfin, la CSNP plaide pour un renforcement des équipes de modération en langue française, la mise en place d’un dispositif d’Etat unique pour signaler les contenus illégaux et l’utilisation de l’empreinte de la carte bleue pour vérifier l’âge et l’identité des internautes. Le projet de loi de sécurisation de l’espace numérique est en cours d’examen en commission à l’Assemblée nationale.


  Discuté en séance début octobre, le texte contient déjà plusieurs dispositions pour protéger les mineurs, comme le « bannissement » numérique des cyberharceleurs condamnés ou le blocage administratif des sites pornographiques qui ne vérifient pas l’âge de leurs visiteurs. De nombreux amendements ont en outre été déposés pour faciliter les contrôles d’identité en ligne.

  Une preuve d’identité
  Auditionné mardi, le ministre délégué du Numérique, Jean-Noël Barrot, a accepté l’idée que les réseaux sociaux soient encouragés à proposer « à l’avenir » à leurs utilisateurs de déposer une preuve d’identité, afin que ceux-ci puissent choisir de ne communiquer qu’avec d’autres utilisateurs certifiés.


  Veuillez fermer la vidéo flottante pour reprendre la lecture ici.

  Mais, « à ce stade, le gouvernement ne peut pas donner d’avis favorable sur de telles dispositions en droit français pour des raisons d’inconstitutionnalité au droit européen », a-t-il déclaré. Un amendement visant l’interdiction, pour poster sur les réseaux sociaux, des VPN - un moyen technique pour dissimuler l’origine de sa connexion - a également été retiré par la majorité.

  BY THE WEB",
  user: users.sample
)
post3.save!


comment3 = Comment.new(
  content:"Tuer la liberté d'expression est le rôle d'une minorité d'élus bien payés ?",
  user: users.sample,
  post: post3
)
comment3.save!


comment3 = Comment.new(
  content: "Et nous citoyens , nous voudrions que le nom des députés qui ont voté pour ou contre l’adoption d’une loi ,apparaisse dans les medias .",
  user: users.sample,
  post: post3
)
comment3.save!

comment3 = Comment.new(
  content: "Elle propose aussi d’imposer aux plateformes de communiquer l’adresse IP et « l’identité de l’auteur des messages » à la personne à l’origine du signalement.
  Plait-il ? Je crois que j'ai mal lu…",
  user: users.sample,
  post: post3
)
comment3.save!

comment3 = Comment.new(
  content: "Je suis pour, mais cela semble compliqué à réaliser, donc une autre solution : tout le monde s'exprime sans insulter, mais étant donné l'état d'esprit de certains, cela semble compliqué aussi....",
  user: users.sample,
  post: post3
)
comment3.save!

post4= Post.new(
  url: "www.site/internet/du/pays.com",
  img: "https://img.20mn.fr/KfDpeBUHSRe0wIl64VRhHik/960x614_in-this-photo-illustration-a-linked-in-logo-seen-displayed-on-a-smartphone-mateusz-slodkowski-sopa-images-sopaimages-sopa011367-credit-sopa-images-sipa-2301081127",
  title: "Link, la panne?",
  content: "LinkedIn a été touché ce lundi par une légère panne, rapporte Numerama. La page d’accueil du réseau social professionnel ne se chargeait pas pour de nombreux internautes, et ce pendant plusieurs heures.

  « Un problème est survenu », pouvait-on alors lire sur la page d’accueil, comme on le voit sur une capture d’écran prise par Numerama. « Nous rencontrons des problèmes pour charger la page. » Heureusement, les utilisateurs pouvaient toujours accéder aux autres sections du site via les onglets situés en haut.

  Un bug rapidement résolu
  La panne a visiblement commencé en milieu de journée, vers 13h. Sur le site DownDetector, où les internautes peuvent rapporter des bugs, un pic de signalements a été enregistré en début d’après-midi. La panne ne concernait visiblement pas tout le monde car le nombre de signalements est resté faible.



  Veuillez fermer la vidéo flottante pour reprendre la lecture ici.

  La situation est depuis totalement rentrée dans l’ordre. LinkedIn n’a même pas communiqué sur ce très bref bug. Le réseau social est rarement sujet à des bugs. Le dernier en date remonte à janvier 2023, quand des pannes avaient affecté plusieurs services de Microsoft.",
  user: users.sample
)
post4.save!


comment4 = Comment.new(
  content:"Pas vraiment besoin de Linkedin anyway...",
  user: users.sample,
  post: post4
)
comment4.save!


comment4 = Comment.new(
  content: "Et dire que je viens de me reconvertir, je fais comment pour trouver un taff now ?",
  user: users.sample,
  post: post4
)
comment4.save!

comment4 = Comment.new(
  content: "Linkedin ?",
  user: users.sample,
  post: post4
)
comment4.save!

comment4 = Comment.new(
  content: "Dans un monde plus simple, on aurait pas besoin de display des fausses banalités pour avoir un job, qu'il reste en panne",
  user: users.sample,
  post: post4
)
comment4.save!

puts "yupi"
puts "Mamaaaa - finished"
