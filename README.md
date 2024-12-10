# Gestion de la Base de Données Hospitalière
Ce projet vise à concevoir et à implémenter une base de données hospitalière permettant de gérer efficacement les départements, les médecins, les patients et les rendez-vous. Ce README présente les objectifs principaux, les actions réalisées et fournit des informations pour comprendre et utiliser la base de données.

# Objectifs du Projet
En tant que Responsable de la base de données hospitalière, l'objectif est de créer une base de données qui répond aux besoins de l'hôpital tout en assurant une gestion optimale des informations relatives aux départements, aux médecins, aux patients et aux rendez-vous.

Les principales actions à réaliser sont les suivantes :

Conception du schéma de base de données : Créer un modèle relationnel pour gérer les départements, médecins, patients et rendez-vous.
Documentation des relations avec des diagrammes UML : Illustrer les liens entre les entités et les règles d'intégrité de la base de données à travers des diagrammes UML.
Création des scripts SQL : Rédiger des scripts pour créer la base de données et les tables correspondantes.
Planification des sauvegardes automatiques : Assurer la sécurité et la continuité des données avec des sauvegardes régulières.
Évolutivité de la base de données : Garantir que la base de données peut évoluer pour s’adapter à la croissance future de l’hôpital.
Schéma de Base de Données
Le schéma de base de données est conçu pour gérer les informations suivantes :

Départements : Contient des informations sur les différents départements de l'hôpital.
Médecins : Stocke les informations relatives aux médecins et leur affectation dans les départements.
Patients : Gère les informations des patients, y compris leur historique médical et leurs contacts.
Rendez-vous : Suivi des rendez-vous entre les médecins et les patients.
Diagramme UML des Relations
Les relations entre les entités sont détaillées dans les diagrammes UML.
Ces diagrammes expliquent comment les entités interagissent entre elles et les contraintes appliquées pour garantir l'intégrité des données.

*Exemples de relations :*
Un médecin peut être affecté à un ou plusieurs départements.
Un patient peut avoir plusieurs rendez-vous avec différents médecins.
Chaque rendez-vous est associé à un seul médecin et à un seul patient.
Note : Le diagramme UML est disponible dans le dossier docs/uml/.

*Scripts SQL*
Les scripts SQL sont fournis pour créer la base de données ainsi que ses tables. Les fichiers sont organisés comme suit :

create_database.sql : Script pour créer la base de données.
create_tables.sql : Script pour créer toutes les tables nécessaires (Départements, Médecins, Patients, Rendez-vous).
insert_data.sql : Script pour insérer des données d'exemple dans les différentes tables.
