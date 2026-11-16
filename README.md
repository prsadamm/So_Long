# so_long

*Ce projet a été réalisé dans le cadre du cursus de l'école 42.*

## Description

**so_long** est un petit jeu 2D en vue de dessus, développé avec la bibliothèque graphique **MiniLibX**. Le joueur se déplace dans une carte, collecte tous les objets présents, puis rejoint la sortie pour terminer le niveau en un minimum de déplacements.

L'objectif est de comprendre la programmation événementielle, la gestion des fenêtres et des textures, le parsing d'une carte et la validation d'un chemin avec un algorithme de parcours (flood fill).

## Prototype

```bash
./so_long maps/map.ber
```

Le programme prend en argument un fichier de carte au format `.ber`.

## Format de la carte

| Caractère | Description |
|-----------|-------------|
| `1` | Mur |
| `0` | Case vide |
| `P` | Position de départ du joueur (une seule) |
| `E` | Sortie (une seule) |
| `C` | Objet à collecter (au moins un) |

Exemple de carte valide :

```
1111111111
1P0000C0E1
10C0011001
1000C00001
1111111111
```

## Règles de la carte

| Règle | Description |
|-------|-------------|
| Forme | La carte doit être rectangulaire |
| Murs | La carte doit être entièrement entourée de murs |
| Éléments | Un seul `P`, un seul `E` et au moins un `C` |
| Chemin | Il doit exister un chemin valide vers tous les objets et la sortie |
| Extension | Le fichier doit avoir l'extension `.ber` |

## Commandes

| Touche | Action |
|--------|--------|
| `W` / `↑` | Se déplacer vers le haut |
| `S` / `↓` | Se déplacer vers le bas |
| `A` / `←` | Se déplacer vers la gauche |
| `D` / `→` | Se déplacer vers la droite |
| `ESC` | Quitter le jeu |
| Croix de la fenêtre | Quitter le jeu |

## Fonctions autorisées

| Fonction | Rôle |
|----------|------|
| `open`, `close`, `read`, `write` | Manipule les fichiers |
| `malloc`, `free` | Alloue et libère la mémoire |
| `perror`, `strerror` | Affiche un message d'erreur |
| `exit` | Quitte le programme |
| Fonctions de la `math` lib | Calculs mathématiques |
| Fonctions de la `MiniLibX` | Gestion de la fenêtre, des images et des événements |

## Compilation

```bash
make        # compile le programme so_long
make clean  # supprime les fichiers objets
make fclean # supprime les objets et l'exécutable so_long
make re     # recompile entièrement
```

## Utilisation

Lancer le jeu avec une carte au format `.ber` :

```bash
./so_long maps/map.ber
```

Le nombre de déplacements s'affiche dans le terminal à chaque mouvement.

## Normes

- Respect de la **Norme** de 42
- Compilation avec `-Wall -Wextra -Werror`
- Aucune fuite mémoire
- Gestion propre des erreurs (carte invalide, fichier inexistant, mauvais argument)

## Auteur

@prsadamm
