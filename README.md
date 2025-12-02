# Enigma Cube

![Enigma Cube Banner](https://f.cloud.github.com/assets/4077369/492751/e9cdff50-bae5-11e2-9402-00c6e70b44a7.jpg)

> **⚠️ Note sur l'état du projet**
> Ce projet a été développé initialement en 2013. Il utilise des technologies qui ont depuis évolué (Kohana, anciennes versions de Three.js). Il est conservé ici à des fins d'archivage, d'exemple ou de base pour une refonte.

**Enigma Cube** est un jeu d'aventure et de réflexion en WebGL, inspiré par les univers de Minecraft et du PixelArt.

[Site officiel](http://www.enigmacube.com) — [Documentation](http://docs.openrpg.fr) — [Vidéo de présentation](http://youtu.be/hSYKtFSRMsU)

## 🎮 Concept
Vous devez résoudre des énigmes pour évoluer dans un monde cubique. Discutez avec les habitants, relevez des défis pour augmenter votre score et tentez d'atteindre le top 10.

### Fonctionnalités principales
* **Monde 3D immersif** : Exploration libre, cycle jour/nuit, skybox et effets d'environnement (eau, lumière).
* **Interactions** : Système de dialogue avec PNJ, quêtes et défis.
* **Administration avancée** : CMS intégré avec un **éditeur de carte 3D** pour construire vos niveaux directement depuis le navigateur.
* **Multijoueur** : Serveur Node.js expérimental pour le jeu à plusieurs.

## 🛠 Stack Technique
Ce projet repose sur une architecture mixte Javascript/PHP :
* **Frontend** : WebGL via [Three.js](http://threejs.org/) (Rendu 3D).
* **Backend** : Framework PHP [Kohana](http://kohanaframework.org/) (Structure MVC).
* **Base de données** : MySQL.

## 🚀 Installation
Pour faire tourner le projet dans son environnement d'origine :

### Prérequis (Legacy)
* PHP 5.4+ (Recommandé pour la compatibilité Kohana de l'époque)
* MySQL 5.x
* Serveur Web (Apache/Nginx) avec URL Rewriting activé

### Procédure
1.  **Télécharger** les sources ou cloner le dépôt.
2.  **Configuration** :
    * Vérifiez que le fichier `/System/config/database.php` **n'existe pas**. S'il est présent, supprimez-le pour relancer l'installation.
3.  **Lancement** :
    * Accédez à la racine du projet via votre navigateur (ex: `http://localhost/enigmacube/`).
    * L'installateur automatique se lancera pour configurer la base de données.
4.  **Multijoueur (Optionnel)** :
    * Lancer le serveur Node.js inclus pour activer les fonctionnalités multijoueurs.

## 📜 Historique
Pour voir le détail des mises à jour et l'évolution du projet de la r1 à la r12, consultez le fichier [CHANGELOG.md](CHANGELOG.md).

## 📄 Licence
[Ajoutez ici votre licence, ex: MIT License]