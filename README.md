# ue19-lab-05

Petite application Python 3 qui interroge l'API publique **JokeAPI** pour afficher une blague de programmation dans la console.  
Le projet inclut un `Dockerfile` pour exécuter l'application dans un conteneur.

## Fonctionnalités

- Appel HTTP à un service d'API public (JokeAPI).
- Récupération d'une blague au format JSON.
- Affichage de la blague dans le terminal.
- Gestion basique des erreurs réseau et des erreurs renvoyées par l'API.
- Exécution possible :
  - directement avec Python 3 ;
  - via un conteneur Docker.

## Prérequis

- Python 3.8+ installé
- `pip` installé
- (optionnel) Docker installé si vous souhaitez utiliser le conteneur

## Installation (sans Docker)

1. Cloner ce repository :

   ```bash
   git clone https://github.com/<votre-pseudo>/ue19-lab-05.git
   cd ue19-lab-05
