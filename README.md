# common #

> C'est un module qui regroupe des méthodes utils pour l'environement nodeJs.
Il est composé de sous-modules qui sont les suivants :
 - [util](#util)
 - [expressUtil](#expressUtil)

## util <a id="util"></a>##
### Chargement ###

`var util = require('common').Util();`

### Méthodes ###
- [argumentException](#argumentException)
- [nullOrUndefinedException](#nullOrUndefinedException)

### Documentation ###

#### argumentException <a id="argumentException"></a>####

> Lance une exception `ARGUMENT_EXCEPTION` si l'expression est `true`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|expr           |Boolean              |Expression à vérifier|
|message        |string               |Message à afficher si la condition est fausse|

#### nullOrUndefinedException <a id="nullOrUndefinedException"></a>####

> Lance une exception `NULL_OR_UNDEFINED_EXCEPTION` si la valeur est `null` ou `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est `null` ou `undefined`|


## expressUtil <a id="expressUtil"></a>##

### Chargement ###
`var util = require('common').ExpressUtil();`
