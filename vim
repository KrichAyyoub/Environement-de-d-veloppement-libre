Vim
Introduction à Vim
Configuration de VIM
Vim avancé
Recherches
Remplacements
Répétition de commande
Mode visuel
Mode visuel verticale
Introduction à Vim
Commandes de base :

Mode NORMAL ESC

Mode COMMAND : Mode NORMAL + :

Mode insertion i (insert)

Mode visuel v (visual)

Mode visuel 'carré' kbd:[ctrl,v]

Sortir sans enregistrer ESC :q! (quit!)

Sortir en enregistrant ESC :wq ou ESC :x

Enregistrer ESC :w

Défaire ESC u (undo)

Refaire ESC Ctrl-r (redo)

Copier une ligne ESC yy (yank)

Coller une ligne ESC p ou ESC P

Vim propose un tutoriel, lancez vimtutor dans un terminal pour le suivre.

Configuration de VIM
Vim est est outil très puissant pour lequel il existe un grand nombre de plugins développés par la communauté.

Par défaut, vim n’est pas très attrayant, il est nécessaire de bien le configurer pour en tirer le meilleur.

Pour ne pas partir de zero, il vaut mieux utiliser une configuration déjà fonctionnelle. Voici une configuration qui regroupe certains plugins indispensables :

vim-plug : pour gérer vos plugin vim, s’installe automatiquement au premier chargement de la configuration

NerdTree : permet d’afficher la liste des fichiers en appuyant sur <F2>

vim-airline : un barre de statut qui présente des informations évoluées

syntastic : linting intégré

vim-easymotion : pour déplacer votre curseur à la vitesse de l'éclair

YouCompleteMe : Puissant moteur de completion (désactivé par défaut, lisez le fichier pour décommenter la ligne de YouCompleteMe et pour savoir quoi faire pour l’initialiser)

Installation :

Copier ce fichier dans votre ~/.vimrc

Lancer vim pour que vim-plug s’installe

Relancer vim et taper :PlugInstall (en mode commande donc) pour lancer l’installation des plugins

Vim avancé
Recherches
En mode NORMAL :

on utilise le / pour faire une recherche avant

on utilise ? pour faire une recherche arrière

on peut ajouter \c pour rendre la recherche insensible à la casse

Exemple :

/error cherche 'error' dans le buffer depuis là où on se trouve et vers la fin

?error\c cherche 'error' depuis là où on se trouve vers le début du fichier quelque soit la casse (très très pratique quand on se positionne à la fin d’un fichier de log et qu’on cherche la dernière erreur !)

Remplacements
En mode Command, on utilise les expressions régulières : Exemples :

:12,20s/toto/tata/g remplacer toto par tata entre la ligne 12 et 20 autant de fois que nécessaire (g⇒ global)

:%s/toto/tata/gc remplacer toto par tata sur tout le buffer (%`) autant de fois que nécessaire (g⇒ global) et en demandant confirmation (c)

Anatomie d’une commande de remplacement : :[plage]s/[expression de recherche]/[remplacement]/[modificateurs]

[plage] : % pour tout le buffer ou ligne de début puis ligne de fin séparé par une virgule (20,25)

[expression de recherche] : simple texte ou expression régulière

[remplacement] : simple texte ou expression de remplacement

[modificateurs] : des options

g : global remplace autant de fois que nécessaire par ligne

i : insensible à la casse

c : confirme chaque remplacement

Répétition de commande
On peut recommencer sa dernière opération d'édition avec le . en mode commande

Mode visuel
En mode NORMAL, taper v pour passer en mode VISUAL et sélectionner une zone de texte sur laquelle on veut effectuer une action

Mode visuel verticale
En mode NORMAL, taper kbd:[ctrl,v] et selectionner une zone puis :

d pour supprimer

I pour insérer du texte au début de la zone sélectionnée

A pour ajouter du texte après la zone sélectionnée
