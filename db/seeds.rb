# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Speaker.destroy_all
User.destroy_all

# user1 = User.create!(email: "alice@gmail.com", password: "azerty")

speaker1 = Speaker.new(
  first_name: "Samia",
  last_name: "Dahmouni",
  post: "Startup Manager" ,
  company: "1Kubator",
  description: "Samia accompagne des startups au sein d'1kubator, un incubateur spécialisé dans le numérique. L’accompagnement se déroule sur 10 mois et l’objectif à terme est de produire un MVP (produit minimum viabl,e) 1kubator jouit d'un réseau de plus de 280 mentors et intervenants, apportant expériences et conseils quotidiennement auprès des startups dans leur développement.",
  tag1: "incubateur",
  tag2: "Start-ups"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559000255/speakers/FS_SamiaD.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "Thierry",
  last_name: "Ulmet",
  post: "Responsable UNITEC",
  company: "Le Campement Bordeaux",
  description: "Grâce à un background en marketing Thierry Ulmet accompagne et conseille  depuis 10 ans des start-ups en phase d’incubation avec l’Auberge Numérique. Il accompagne des dirigeants d’entreprise sur trois aspects la création d’entreprise (incubateur), le développement (pépinière) et la croissance stratégique (accélérateur)",
  tag1: "Création d'entreprises",
  tag2: "développement technique"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559049412/speakers/FS_ThierryU.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "Cédric",
  last_name: "Vicente",
  post: "Responsable Village by CA Aquitaine",
  company: "Village by CA Aquitaine",
  description: "Responsable du Village by CA Aquitaine, accélérateur de start-up  situé dans le coeur de Bordeaux la mission de Cédric est d'accompagner au quotidien des entrepreneurs en phase de développement. Le Village by CA Aquitaine se concentre sur la partie technique et la croissance des start-ups. Le Village by CA Aquitaine cherche aussi à contribuer au développement de l’écosystème numérique local.",
  tag1: "Accélérateur",
  tag2: "Start-ups"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559000247/speakers/FS_CedricV.png"
speaker1.save


speaker1 = Speaker.new(
  first_name: "Louis",
  last_name: "Vercauteren",
  post: "Coordinateur à la Pépinière Le Campement",
  company: "Pépinière Le Campement",
  description: "Après avoir travaillé 7 ans à la CCI de Bordeaux-Gironde, Louis Vercauteren est coordinateur à la Pépinière Le Campement. Son rôle est d’initier, mener et mettre en place un accompagnement stratégique des créateurs d’entreprise afin de contribuer à assurer leur développement. Les porteurs de projet bénéficient d’un accompagnement sur-mesure d’une durée de 23 mois, individuel et collectif, dans un esprit collaboratif.",
  tag1: "Création d'entreprise",
  tag2: "Start-ups"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559049396/speakers/FS_LouisV.png"
speaker1.save


speaker1 = Speaker.new(
  first_name: "Jennifer",
  last_name: "Chapelot",
  post:"Associée & Chief Operating Officer" ,
  company: "poll&roll",
  description: "Depuis 2 ans, Jennifer met sa passion du marketing au service de poll&roll. Poll&roll aide les entrepreneurs et les grandes entreprises à réussir leurs études marketing pour assurer le succès de leurs projets. Le service est en ligne et entièrement automatisé pour s’adapter aux besoins du marché. Elle y est associée et occupe aussi le rôle de Chief Operating Officer. Elle pourra répondre aux questions en liens avec le marketing et les études de marchés.",
  tag1: "Études marketing",
  tag2: "Gestion entreprises"
  )

speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559000251/speakers/FS_JenniferC.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "Guillaume",
  last_name: "Commagnac",
  post: "Directeur des opérations" ,
  company: "TRACTR",
  description: "L’entrepreunariat, la communication et le numérique sont les trois passions de Guillaume. Il a réussi à trouver un travail qui lui permet de les fusionner en tant que Directeur des Opérations chez TRACTR. Son rôle ? Aider et accompagner les entrepreneurs et créateurs de startups dans leur développement technique et le déploiement de leur stratégie marketing et business pour accélérer rapidement leur croissance.",
  tag1: "Communication",
  tag2: "Stratégie marketing"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559000249/speakers/FS_GuillaumeC.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "Marjorie",
  last_name: "Boyer",
  post: "Growth Hacker",
  company: "Growth Hacker",
  description: "Passionnée de nouvelles technologies, d’entrepreneuriat, blockchain et de développement personnel, Marjorie s’est lancé depuis deux ans en tant que Growth Hacker en freelance. Elle a fait partie de l’association Growth Hacking France qui regroupe des professionnels aguerris du Growth Hacking.",
  tag1: "Growth hacking",
  tag2: "Blockchain"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559000253/speakers/FS_MarjorieB.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "Maël",
  last_name: "Connan",
  post: "Conseiller en création & gestion d'entreprise" ,
  company: "Condillac Expertise",
  description: "Maël conseiller et juriste en droit des affaires & fiscalité au sein du cabinet d’expertise comptable Condillac, spécialisé dans l’accompagnement des entrepreneurs. Sa mission est d’accompagner des entrepreneurs dans l'exercice de leur (future) activité. Il pourra répondre à toutes vos questions sur la phase de création d’entreprise.",
  tag1: "Création d'entreprises",
  tag2: "Juridique / Comptabilité"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559049403/speakers/FS_MaelC.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "David",
  last_name: "Miotti",
  post: "Senior Developer" ,
  company: "Station Coding",
  description: "Développeur chez Doist, David développe depuis 7 ans des applications iOS et des sites internet pour des acteurs tels que Spendesk, Trace TV, Aircall, PayFit etc. Il a en parallèle lancé son studio de développement: Station Coding.",
  tag1: "Developer",
  tag2: "Front-end"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559049388/speakers/FS_DavidMiotti.png"
speaker1.save


############################################


speaker1 = Speaker.new(
  first_name: "Claudine",
  last_name: "Pradal",
  post: "CEO & Developer" ,
  company: "MihiVai",
  description: "« Accompagner, transmettre, innover » c’est la devise de Mihivai l’agence de développement de sites web et d’applications mobiles de Jonathan et Claudine.
Jonathan et Claudine se sont rencontrés sur les bancs du Wagon et ont une vision commune qui leur tient à coeur celle d’accompagner les acteurs du numérique de demain via leur agence.",
  tag1: "Developer",
  tag2: "Full Stack"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559570187/speakers/FS_Claudine.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "Adrien",
  last_name: "Poly",
  post: "CTO-Developer" ,
  company: "Free Lance",
  description: "Ingénieur de formation et passionné de code Adrien intervient dans le monde des start-ups pour bâtir des MVP. Il est développeur freelance et propose également ses services en tant que CTO en interim lors des phases de lancement d’une start-up. Sa double casquette à la fois technique et business lui permet de s’adapter à tous type de projets et d’avoir une vision globale.",
  tag1: "Developer",
  tag2: "CTO"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559000241/speakers/Ellipse.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "Benoît",
  last_name: "Calin",
  post: "Developer" ,
  company: "Free Lance",
  description: "Après plusieurs années en audit financier Benoît a effectué une reconversion professionnelle et s’est orienté vers le métier de développeur pour changer de vie. Il est maintenant développeur web en freelance.",
  tag1: "Developer",
  tag2: "Ruby"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559570187/speakers/FS_Benoit.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "Aidan",
  last_name: "O'Brien",
  post: "CEO & Senior Project Manager" ,
  company: "DELL",
  description: " Aidan est un expert en transformation numérique chez Dell Technologies, il y occupe le poste de Senior Partner.
Il est également le PDG et co-foundateur d’une start-up. il vous conseillera sur votre produit te ses fonctionnalités.",
  tag1: "Start-ups",
  tag2: "Gestion entreprise"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559570187/speakers/FS_Aidan.png"
speaker1.save

speaker1 = Speaker.new(
  first_name: "Bertrand",
  last_name: "Bussac",
  post: "CEO" ,
  company: "Le Wagon Bordeaux",
  description: " Co-fondateur du Wagon Bordeaux, vice-président de FrenchTech Bordeaux, développeur de la Singularity University. Passionné d'entrepreneuriat, d'innovation, de conception de projets et d'enseignement, Bertrand vous accompagnera dans vos projets",
  tag1: "Start-ups",
  tag2: "Gestion entreprise"
  )
speaker1.remote_photo_url = "https://res.cloudinary.com/dpilgpat0/image/upload/v1559644690/speakers/beber.jpg"
speaker1.save


puts 'Create Admin User admin@pena.fr'
User.create!(email: 'admin@lewagon.org',password: 'azerty',password_confirmation: 'azerty',admin: true,first_name: "Julie",last_name: "Perier",post: "Expert" ,company: "Le Wagon", phone:"0600000000", interested: 0, informed: 0, motivated: 0)



# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
