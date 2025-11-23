import sys
import requests

API_URL = "https://v2.jokeapi.dev/joke/Programming?type=single"


def fetch_joke() -> str:
    response = requests.get(API_URL, timeout=5)
    response.raise_for_status() 

    data = response.json()

    if data.get("error"):
        message = data.get("message", "Erreur inconnue renvoyée par l'API")
        raise RuntimeError(f"Erreur JokeAPI : {message}")

    joke = data.get("joke")
    if not joke:
        raise RuntimeError("La réponse de l'API ne contient pas de champ 'joke'.")

    return joke


def main() -> None:
    print("Récupération d'une blague de programmation depuis JokeAPI...\n")

    try:
        joke = fetch_joke()
        print(joke)
    except requests.exceptions.RequestException as e:
        print(f"[ERREUR RÉSEAU] Impossible d'appeler l'API : {e}", file=sys.stderr)
        sys.exit(1)
    except Exception as e:
        print(f"[ERREUR] {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
