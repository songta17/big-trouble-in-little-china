# Le contrôleur ci-dessous souffre de problèmes de performance. Par ailleurs,
# les choix qui ont été fait pendant son écriture (dans la syntaxe, les méthodes utilisées,
# l'architecture générale, etc.) sont personnels.
#
# Que changeriez-vous dans ce contrôleur ? En plus de régler les lenteurs de l'action `index`,
# quels modifications voulez-vous apporter pour que le code vous semble plus correct, élégant,
# et conforme à votre style personnel et à vos convictions ?

# Que changeriez-vous dans ce contrôleur ? 
Answer = <<-HERE 
- Au lieu d'utiliser l'itérateur each, j'utiliserai l'itérateur find_each 
pour la mise en mémoire des données filtrées uniquement

- Ajouter à Asset un includes des associations "parent and author" pour résoudre 
le problème de query N + 1
HERE

# quels modifications voulez-vous apporter pour que le code vous semble plus correct, élégant,
# et conforme à votre style personnel et à vos convictions ?
Answer = <<-HERE 
- J'aurai placé les filtres de la requête Asset dans la méthode index plutôt 
dans le model sous forme de scope pour une meilleurs lisibilité 
du code et une réutilisation des filtres plus aisés.

- j'aurai tenté de privilégier un code DRY en retirant le code répétitif dans les 
methodes activate et deactivate puis le remplacer par une méthode set_asset 
qu'on mettra dans un before_action exclusivement poour les méthodes activate et deactivate.

- J'aurai mis les méthodes activate, deactived et activate_asset dans la partie des methodes private
HERE
  