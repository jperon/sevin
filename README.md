Sevin
=====

Ce projet a pour premier but de rendre accessible le carnet
*Les chansons des Scouts de France* du Père Sevin.
Vous pouvez, si vous le désirez, télécharger directement [ce dernier ici](https://raw.githubusercontent.com/jperon/sevin/master/Sevin.pdf).

Par la suite, il s'est développé pour inclure aussi d'autres chants, dans une perspective beaucoup plus vaste.


Compilation
===========

Pré-requis
----------

Pour compiler ce document, il vous faut :

- une machine puissante ou une bonne dose de patience, au choix ; prévoyez même les deux pour la première compilation !
- un système Linux installé et fonctionnel ;
- [texlive](http://www.tug.org/texlive) 2013 ou ultérieur (les versions antérieures n'ont pas été testées) ;
- [lilypond](http://www.lilypond.org) pour les partitions des chants ;
- [gregorio](http://home.gna.org/gregorio) pour les pièces grégoriennes ;
- [gnu make](http://www.gnu.org/software/make) pour vous permettre de tout faire en une seule commande.

Peut-être y a-t-il moyen de compiler sous Windows avec cygwin, et probablement sous Os X, mais ce n'est ni testé ni supporté.

Compilation
-----------

Une fois que les pré-requis sont installés, ouvrez un terminal, placez vous dans le dossier des sources, et lancez simplement la commande :

    make

(Pour ne compiler que le carnet *Les chansons des Scouts de France*, make sevin)

Puis prenez votre mal en patience…

Si cela ne fonctionne pas, c'est probablement qu'il vous manque un pré-requis (la compilation est systématiquement testée sous TeXLive 2013 avant la mise en ligne des changements).

Contribuer
----------

N'hésitez pas à cloner ce dépôt, et le cas échéant à soumettre une *pull request*.

Le fichier TODO liste les tâches à accomplir ; il peut être mis-à-jour automatiquement grâce à la commande 'make todo'.
Pour que cela fonctionne, il suffit de respecter la syntaxe suivante :
%TODO:<tâche>:<éventuels détails>.
