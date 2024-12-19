# Windows Utilities

## Description

Ce script PowerShell permet d'installer quelques applications de base tel que Chrome ou encore Office. Il permet d'activer Windows, Office ou bien de changer de version de Windows. Il permet aussi de faire une clé bootable Windows. Enfin, il permet de réaliser des optimisations basiques de Windows pour fluidifier le système.

## Prérequis

1. **Exécution de scripts PowerShell** :
   Assurez-vous que l'exécution de scripts est activée sur votre système. Vous pouvez le faire en exécutant la commande suivante en tant qu'administrateur :

   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

2. **Fichiers sources requis** :
Si vous souhaitez utiliser l'option d'installation de Windows, vous devrez ajouter un fichier avec le nommage et l'arborescence suivante :

   ```plaintext
   .
   ├── main.ps1
   └── data
       ├── scripts
       └── sources
           └── Office.img
   ```

## Usage

### 1. Appel du programme

Pour exécuter le script, ouvrez une fenêtre PowerShell dans le répertoire contenant `main.ps1` et exécutez la commande suivante :

```powershell
.\main.ps1
```

### 2. Menu principal

Une fois le script lancé, un menu principal apparaît avec les options suivantes :

```plaintext
1) Activer Windows 10/11 (Permanent)
2) Activer Windows 10/11/Server (Année 2038)
3) Activer Office
4) Changer de version Windows 10/11/Server
5) Changer de version Office
6) Installer Office
7) Installer Chrome
8) Clé bootable Windows 11
9) Optimiser Windows 11
0) Quitter
```

### 3. Détails des options

- **1) Activer Windows 10/11 (Permanent)**

  - Active votre système Windows de manière permanente en utilisant les scripts du projet GitHub [Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts).

- **2) Activer Windows 10/11/Server (Année 2038)**

  - Active temporairement votre système jusqu'à l'année 2038, en utilisant les scripts du projet GitHub [Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts).

- **3) Activer Office**

  - Active votre suite Office installée en utilisant les scripts du projet GitHub [Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts).

- **4) Changer de version Windows 10/11/Server**

  - Permet de migrer vers une autre édition de Windows en utilisant les scripts du projet GitHub [Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts).

- **5) Changer de version Office**

  - Permet de changer la version d'Office présente sur votre système en utilisant les scripts du projet GitHub [Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts).

- **6) Installer Office**

  - Installe Office et crée les raccourcis Word, Excel, PowerPoint à partir de l'image `Office.img`.

- **7) Installer Chrome**

  - Installe Google Chrome.

- **8) Clé bootable Windows 11**

  - Crée une clé USB bootable pour installer Windows 11. Cette opération utilise l'outil officiel Windows Media Creation Tool.

- **9) Optimiser Windows 11**

  - Applique des optimisations pour améliorer les performances de votre système, en se basant sur les vidéos du YouTubeur [Capet](https://www.youtube.com/@capetlevrai).
  - Cette partie est en cours de développement !

- **0) Quitter**

  - Ferme le script.

## Notes

- Certaines actions nécessitent des droits d'administrateur. Assurez-vous d'exécuter PowerShell en tant qu'administrateur pour éviter des erreurs.
- Le fichier source `Office.img` n'est pas inclus dans ce projet. Vous devez le télécharger ou le fournir par vous-même.

## Auteur

Projet créé et développé par LANG Kenny.
