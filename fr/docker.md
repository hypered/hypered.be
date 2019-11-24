---
title: Docker
---


## Formation Docker -- Gestion de conteneurs d'applications


### Description

Docker est un ensemble d'outils visant à créer, héberger, et exécuter des
applications dans des conteneurs. Il s'agit à la fois d'une alternative
populaire à la virtualisation et d'une façon de distribuer ses applications.
Ensemble ils simplifient le développement, les tests d'intégration et la
production.

La formation "Docker - Gestion de conteneurs d'applications" est destinée aux
développeurs et aux opérations. Elle apprend aux participants à créer des
environnements isolés à partir de conteneurs définis par la communauté ou vos
équipes, sur une seule ou plusieurs machines hôtes.

En plus des connaissances et mises en pratique technique, cette formation
permet de mieux comprendre le paysage informatique moderne et sert de base
solide pour aborder d'autres sujets, tel Kubernetes, ou renforcer une démarche
DevOps.


### Objectifs

A l'issue de cette formation, les participants seront capables de:

- Comprendre le positionnement de Docker et des conteneurs dans le paysage
  informatique.
- Utiliser l'interface en ligne de commande de Docker.
- Créer des images Docker pour leurs propres applications.
- Déployer et administrer des conteneurs sur une ou plusieurs machines et
  d'établir une communication entre eux.

Les participants auront également la possibilité de continuer à exploiter après
la formation la définition de l'image de machine virtuelle utilisée durant la
formation, ainsi que scripts, Dockerfiles et fichiers docker-compose.yml.


### Format de la formation

La formation est donnée sous forme d'exposé magistral interactif accompagné
d'exercices pratiques dans un environnement Linux. Les participants peuvent au
choix utiliser leur propre ordinateur portable (voir ci-dessous pour les
pré-requis) ou une machine prêtée pour l'occasion par le formateur.

La formation est disponible en français ou en anglais.


### Pré-requis

Pour suivre efficacement la formation, il est demandé de posséder une aptitude
de base à l'administration en ligne de commande d'un système Linux.

Si vous désirez utiliser votre propre ordinateur portable lors de la formation,
il vous est demandé d'installer la version la plus récente de VirtualBox et
Vagrant. Si vous utilisez Windows comme système d'exploitation, installez
également la version "Full" de cmder. Enfin, assurez-vous que l'accélération
matérielle de la virtualisation est activée au niveau du BIOS de votre
ordinateur.


### Contenu


#### Introduction

L'introduction permet de rapidement prendre connaissance de ce que sont les
conteneurs mais aussi de les situer dans un univers technologique toujours plus
riche.

- Les conteneurs Linux
- Par rapport aux machines virtuelles (avantages, inconvénients, ...)
- Les différentes solutions de conteneurs (OpenVZ, Docker, LXC, ...)
- Au delà des conteneurs: Kubernetes, Mesos, ...
- Docker, Inc., la société mère
- Tour d'horizon: Docker Toolbox, CoreOS, Rancher, ...


#### L'outil Docker

Cette partie aborde Docker, l'outil central, mais aussi introduit le reste de
la famille Docker.

- Les différentes incarnations de Docker (Windows containers, Docker for Mac,
  ...)
- L'architecture de Docker (dockerd, docker, images, ...)
- Installation de Docker (Linux, Windows, ...)
- Les autres outils de la famille Docker (docker-compose, docker-machine,
  docker-stack, ...)
- Comparaison de Docker Community Edition et Enterprise Edition.

**Atelier pratique:** installation de Docker CE sous Linux et "Hello, world" en
conteneur.


#### Les bases de Docker

Cette partie utilise quelques commandes de base offertes par Docker pour
récupérer des images Docker officielles et les exécuter.

- Le registre d'images Docker
- La récupération d'une image
- L'exécution d'une image (création d'un conteneur)
- Description et gestion des images (layers, ...)
- Description des conteneurs

**Atelier pratique:** premières manipulations d'images et conteneurs avec
l'outil en ligne de commande `docker`.


#### Plus de commandes

Cette partie continue de couvrir les commandes offertes par Docker pour
manipuler images et conteneurs.

Cette partie continue d'exposer la richesse offerte par Docker pour exécuter
des conteneurs.

- Différentes formes d'exécution (interactive, mode détaché)
- Persistence des données d'un conteneur
- Partage de données entre conteneurs
- Exposition de ports réseaux

**Atelier pratique:** exécution de concert de trois conteneurs laissés au choix
des participants:

- Nginx, PHP, MySQL
- Nginx, Python, PostgreSQL
- Nginx, Ruby, PostgreSQL
- Nginx, C# (.Net Core), Microsoft SQL Server


#### Elaboration d'images

Cette partie montre comment créer ses propres images Docker.

- Création d'image "à la main"
- Utilisation d'un Dockerfile
- Utilisation de la directive `FROM scratch`
- Les commandes `docker history`, `docker save`, ...
- Optimization et bonnes pratiques

**Atelier pratique:** création d'images Docker et exploration de leur contenu.


### Configuration multi-conteneurs, multi-noeuds

Cette partie continue sur le thème du déploiement de plusieurs conteneurs, mais
cette fois avec docker-compose et le mode Swarm.

**Atelier pratique:** 


### Gérer la production

Cette partie aborde les aspects de gestion de conteneurs Docker permettant leur
exploitation en production.

- Démarrer les conteneurs lorsque la machine boot
- Monitoring
- Limitation des ressources
- Gestion des logs

**Atelier pratique:** configuration de dockerd et autres options d'exécution de
`docker run`.


### Machine virtuelle (optionnel)

Cette partie optionnelle couvre la création d'une machine virtuelle avec
Packer, Vagrant et VirtualBox. Cette technique remplace avantageusement des
solutions comme Docker Desktop.

- Création d'une configuration pour Packer
- Construction d'une image pour VirtualBox
- Création d'une configuration pour Vagrant
- Créer et gérer une machine virtuelle avec Vagrant
- Configuration Vagrant multi-machines

**Atelier pratique:** création d'une image de machine virtuelle avec Packer et
exécution de cette image avec Vagrant et VirtualBox.


### Discussion (optionnel)

Cette partie donne des pistes de réflexion sur le contenu vu durant la
formation, invitant les partiçipants à garder un regard critique sur les
technologies apprises.

- Docker comme outil de provisioning: provisioner Docker CE sur une machine,
  pour ensuite déployer une application, ou bien provisioner directement une
  application ?
- Quels autres outils pour provisioner une machine ?
- Docker comme format de packaging: pourquoi utiliser des .deb ou .apk dans un
  Dockerfile ?
- Quels autres formats de packaging ?


### Non-couvert

La formation, bien que déjà très fournie, ne peut tout couvrir. Néanmoins pour
satisfaire les plus curieux, nous listons ici quelques sujets pertinents sur le
thème des conteneurs.

- Zones Illumos
- Jails FreeBSD
- Unikernels
- Kata containers
- Firecracker
- Reverse proxy, load balancing, service mesh, ...
- CRIU
- ...
