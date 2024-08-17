# Guide d'installation et de lancement du projet Indiana

Ce document vous guide à travers toutes les étapes nécessaires pour installer Flutter, configurer un environnement de développement, et exécuter ce projet sur un émulateur Android.

## 1. Installation de Flutter

### 1.1 Téléchargement du SDK Flutter

1. Rendez-vous sur le site officiel de Flutter : [flutter.dev](https://flutter.dev/docs/get-started/install).
2. Sélectionnez votre système d'exploitation (Windows, macOS ou Linux).
3. Suivez les instructions sur la page pour télécharger le SDK Flutter. Choisissez la méthode recommandée pour télécharger le fichier compressé (ZIP) contenant Flutter.
4. Décompressez le fichier téléchargé dans le répertoire de votre choix. **Notez l'emplacement du dossier Flutter, car il sera nécessaire pour configurer le PATH.**

### 1.2 Configurer les variables d'environnement (PATH)

1. Ajoutez le chemin du dossier `flutter/bin` à votre PATH.
   - **Windows :** Ajoutez `C:\chemin\vers\flutter\bin` dans les variables d'environnement du système.
   - **macOS/Linux :** Ajoutez `export PATH="$PATH:/chemin/vers/flutter/bin"` à votre fichier `~/.bashrc`, `~/.zshrc` ou `~/.bash_profile`.

2. Vérifiez l'installation en ouvrant un terminal ou une invite de commande et en exécutant la commande suivante :
   ```bash
   flutter --version
   ```
   Si tout est correct, la version de Flutter sera affichée.

## 2. Vérification de l'installation avec Flutter Doctor

Pour vérifier que Flutter est correctement installé et que toutes les dépendances nécessaires sont présentes, exécutez la commande suivante :
```bash
flutter doctor
```
Cette commande analysera votre système et vous indiquera si des éléments manquent ou doivent être corrigés. Elle vérifie notamment la présence de l'Android SDK, de l'IDE, des licences, etc.

## 3. Installation d'un émulateur Android avec Android Studio

### 3.1 Installation d'Android Studio

1. Téléchargez Android Studio depuis le site officiel : [developer.android.com/studio](https://developer.android.com/studio).
2. Installez Android Studio en suivant les instructions correspondant à votre système d'exploitation.
3. Lors du premier démarrage, assurez-vous d'installer le SDK Android et l'émulateur Android en suivant l'assistant de configuration.

### 3.2 Configuration de l'émulateur Android

1. Ouvrez Android Studio.
2. Allez dans le menu **"Configurer"** (ou **"More Actions"** dans les nouvelles versions) puis sélectionnez **"AVD Manager"**.
3. Cliquez sur **"Create Virtual Device..."** pour créer un nouvel émulateur.
4. Choisissez un modèle de téléphone (par exemple, Pixel 4) puis cliquez sur **"Next"**.
5. Sélectionnez une image système (recommandé : API 30 ou supérieur) et cliquez sur **"Next"**.
6. Donnez un nom à votre émulateur, puis cliquez sur **"Finish"**.
7. Lancez l'émulateur en cliquant sur l'icône de lecture (▶️) à côté du nom de l'émulateur.

## 4. Exécution du projet Flutter

### 4.1 Récupération du projet

1. Clonez ou téléchargez le projet depuis votre dépôt GitHub ou une autre source.

### 4.2 Ouverture du projet dans votre IDE

1. Ouvrez Android Studio ou Visual Studio Code.
2. Sélectionnez **"Open an existing project"** et choisissez le dossier racine de votre projet Flutter.

### 4.3 Installation des dépendances du projet

Avant de lancer le projet, installez toutes les dépendances nécessaires :
```bash
flutter pub get
```

### 4.4 Exécution du projet sur l'émulateur Android

1. Assurez-vous que l'émulateur Android est en cours d'exécution.
2. Dans votre terminal, naviguez jusqu'au répertoire du projet, puis exécutez la commande suivante pour lancer le projet :
   ```bash
   flutter run
   ```
3. Le projet devrait se compiler et s'exécuter automatiquement sur l'émulateur Android. Si tout est correct, vous verrez l'application s'ouvrir sur l'émulateur.

## 5. Dépannage

- **Problèmes courants avec `flutter doctor` :**
  - Si `flutter doctor` indique des problèmes avec les licences Android, exécutez la commande suivante pour accepter les licences :
    ```bash
    flutter doctor --android-licenses
    ```
  - Si `flutter doctor` indique des problèmes avec le PATH ou d'autres dépendances, suivez les instructions fournies par `flutter doctor` pour corriger ces problèmes.

- **Erreur lors de l'exécution de l'émulateur :**
  - Assurez-vous que l'émulateur est bien lancé avant d'exécuter `flutter run`.
  - Vérifiez les logs dans le terminal pour plus d'informations sur l'erreur.
