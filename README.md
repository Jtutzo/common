# common #
Auteur : Jtutzo, dernière version : 1.0.1, statut : stable

> C'est un module qui regroupe des méthodes utils pour l'environement nodeJs.
Il est composé de sous-modules qui sont les suivants :
 - [util](#util)
 - [expressUtil](#expressUtil)


## util <a id="util"></a>##

### Utilisations ###

`var util = require('common').Util();`

### Constantes ###
- [UNDEFINED](#constUndefined)
- [NULL](#constNull)
- [BOOLEAN](#constBoolean)
- [NUMBER](#constNumber)
- [STRING](#constString)
- [OBJECT](#constObject)
- [ARRAY](#constArray)
- [FUNCTION ](#constFunction)

### Exceptions ###
- [ARGUMENT_EXCEPTION](#constArgumentException)
- [NULL_OR_UNDEFINED_EXCEPTION](#constNullOrUndefinedException)
- [NOT_NULL_OR_UNDEFINED_EXCEPTION](#constNotNullOrUndefinedException)
- [NULL_EXCEPTION](#constNullException)
- [NOT_NULL_EXCEPTION](#constNotNullException)
- [UNDEFINED_EXCEPTION](#constUndefinedException)
- [NOT_UNDEFINED_EXCEPTION](#constNotUndefinedException)
- [BLANK_EXCEPTION](#constBlankException)
- [NOT_BLANK_EXCEPTION](#constNotBlankException)
- [EMPTY_EXCEPTION](#constEmptyException)
- [NOT_EMPTY_EXCEPTION](#constNotEmptyException)
- [BOOLEAN_EXCEPTION](#constBooleanException)
- [NOT_BOOLEAN_EXCEPTION](#constNotBooleanException)
- [NUMBER_EXCEPTION](#constNumberException)
- [NOT_NUMBER_EXCEPTION](#constNotNumberException)
- [STRING_EXCEPTION](#constStringException)
- [NOT_STRING_EXCEPTION](#constNotStringException)
- [OBJECT_EXCEPTION](#constObjectException)
- [NOT_OBJECT_EXCEPTION](#constNotObjectException)
- [ARRAY_EXCEPTION](#constArrayException)
- [NOT_ARRAY_EXCEPTION](#constNotArrayException)
- [FUNCTION_EXCEPTION](#constFunctionException)
- [FUNCTION_EXCEPTION](#constNotFunctionException)

### Méthodes génératrice d'exceptions ###
- [argumentException](#argumentException)
- [nullOrUndefinedException](#nullOrUndefinedException)
- [notNullOrUndefinedException](#notNullOrUndefinedException)
- [nullException](#nullException)
- [notNullException](#notNullException)
- [undefinedException](#undefinedException)
- [notUndefinedException](#notUndefinedException)
- [blankException](#blankException)
- [notBlankException](#notBlankException)
- [emptyException](#emptyException)
- [notEmptyException](#notEmptyException)
- [booleanException](#booleanException)
- [notBooleanException](#notBooleanException)
- [numberException](#numberException)
- [notNumberException](#notNumberException)
- [stringException](#stringException)
- [notStringException](#notStringException)
- [objectException](#objectException)
- [notObjectException](#notObjectException)
- [arrayException](#arrayException)
- [notArrayException](#notArrayException)
- [functionException](#functionException)
- [notFunctionException](#notFunctionException)

### Méthodes utils ###
- [isNullOrUndefined](#isNullOrUndefined)
- [isNotNullOrUndefined](#isNotNullOrUndefined)
- [isBlank](#isBlank)
- [isNotBlank](#isNotBlank)
- [isEmpty](#isEmpty)
- [isNotEmpty](#isNotEmpty)
- [oneIsEmpty](#oneIsEmpty)
- [isEquals](#isEquals)
- [oneIsEquals](#oneIsEquals)
- [contain](#contain)
- [noContain](#noContain)
- [clone](#clone)

### Méthodes pour la gestion des types ###
- [isNull](#isNull)
- [isNotNull](#isNotNull)
- [isUndefined](#isUndefined)
- [isNotUndefined](#isNotUndefined)
- [isBoolean](#isBoolean)
- [isNotBoolean](#isNotBoolean)
- [isNumber](#isNumber)
- [isNotNumber](#isNotNumber)
- [isString](#isString)
- [isNotString](#isNotString)
- [isObject](#isObject)
- [isNotObject](#isNotObject)
- [isArray](#isArray)
- [isNotArray](#isNotArray)
- [isFunction](#isFunction)
- [isNotFunction](#isNotFunction)
- [getType](#getType)

### Méthodes pour le débuggage ###
- [modeDebug](#modeDebug)
- [debug](#debug)
- [error](#error)

### Détails ###

**`UNDEFINED`<a id="constUndefined"></a>**

Constante correspondant au type `undefined`

**`NULL`<a id="constNull"></a>**

Constante correspondant au type `null`

**`BOOLEAN`<a id="constBoolean"></a>**

Constante correspondant au type `boolean`

**`NUMBER`<a id="constNumber"></a>**

Constante correspondant au type `number`

**`STRING`<a id="constString"></a>**

Constante correspondant au type `string`

**`OBJECT`<a id="constObject"></a>**

Constante correspondant au type `object`

**`ARRAY`<a id="constArray"></a>**

Constante correspondant au type `array`

**`FUNCTION`<a id="constFunction"></a>**

Constante correspondant au type `function`

**`ARGUMENT_EXCEPTION`<a id="constFunction"></a>**

Exception lorsque l'argument n'est pas correcte

**`NULL_OR_UNDEFINED_EXCEPTION`<a id="constNullOrUndefinedException"></a>**

Exception lorsque la valeur est `null` ou `undefined`

**`NOT_NULL_OR_UNDEFINED_EXCEPTION`<a id="constNotNullOrUndefinedException"></a>**

Exception lorsque la valeur n'est pas `null` ni `undefined`

**`NULL_EXCEPTION`<a id="constNullException"></a>**

Exception lorsque la valeur est `null`

**`NOT_NULL_EXCEPTION`<a id="constNotNullException"></a>**

Exception lorsque la valeur n'est pas `null`

**`UNDEFINED_EXCEPTION`<a id="constUndefinedException"></a>**

Exception lorsque la valeur est `undefined`

**`NOT_UNDEFINED_EXCEPTION`<a id="constNotUndefinedException"></a>**

Exception lorsque la valeur n'est pas `undefined`

**`BLANK_EXCEPTION`<a id="constBlankException"></a>**

Exception lorsque la valeur est vide (`undefined`, `null`, `""`, `" "`)

**`NOT_BLANK_EXCEPTION`<a id="constNotBlankException"></a>**

Exception lorsque la valeur n'est pas vide (`undefined`, `null`, `""`, `" "`)

**`EMPTY_EXCEPTION`<a id="constEmptyException"></a>**

Exception lorsque la valeur est vide (tous types)

**`NOT_EMPTY_EXCEPTION`<a id="constNotEmptyException"></a>**

Exception lorsque la valeur n'est pas vide (tous types)

**`BOOLEAN_EXCEPTION`<a id="constBooleanException"></a>**

Exception lorsque la valeur est un `boolean`

**`NOT_BOOLEAN_EXCEPTION`<a id="constNotBooleanException"></a>**

Exception lorsque la valeur n'est pas un `boolean`

**`NUMBER_EXCEPTION`<a id="constNumberException"></a>**

Exception lorsque la valeur est un `number`

**`NOT_NUMBER_EXCEPTION`<a id="constNotNumberException"></a>**

Exception lorsque la valeur n'est pas un `number`

**`STRING_EXCEPTION`<a id="constStringException"></a>**

Exception lorsque la valeur est un `string`

**`NOT_STRING_EXCEPTION`<a id="constNotStringException"></a>**

Exception lorsque la valeur n'est pas un `string`

**`OBJECT_EXCEPTION`<a id="constObjectException"></a>**

Exception lorsque la valeur est un `object`

**`NOT_OBJECT_EXCEPTION`<a id="constNotObjectException"></a>**

Exception lorsque la valeur n'est pas un `object`

**`ARRAY_EXCEPTION`<a id="constArrayException"></a>**

Exception lorsque la valeur est une `array`

**`NOT_ARRAY_EXCEPTION`<a id="constNotArrayException"></a>**

Exception lorsque la valeur n'est pas une `array`

**`FUNCTION_EXCEPTION`<a id="constFunctionException"></a>**

Exception lorsque la valeur est une `function`

**`NOT_FUNCTION_EXCEPTION`<a id="constNotFunctionException"></a>**

Exception lorsque la valeur n'est pas une `function`

**`argumentException`<a id="argumentException"></a>**

Lance une exception `ARGUMENT_EXCEPTION` si l'expression est `true`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|expr           |Boolean              |Expression à vérifier|
|message        |string               |Message à afficher si la condition est fausse|

**`nullOrUndefinedException`<a id="nullOrUndefinedException"></a>**

Lance une exception `NULL_OR_UNDEFINED_EXCEPTION` si la valeur est `null` ou `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est `null` ou `undefined`|

**`notNullOrUndefinedException`<a id="notNullOrUndefinedException"></a>**

Lance une exception `NOT_NULL_OR_UNDEFINED_EXCEPTION` si la valeur n'est pas `null` ou `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas `null` ou `undefined`|

**`nullException`<a id="nullException"></a>**

Lance une exception `NULL_EXCEPTION` si la valeur est `null`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est `null`|

**`notNullException`<a id="notNullException"></a>**

Lance une exception `NOT_NULL_EXCEPTION` si la valeur n'est pas `null`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas `null`|

**`undefinedException`<a id="undefinedException"></a>**

Lance une exception `UNDEFINED_EXCEPTION` si la valeur est `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est `undefined`|

**`notUndefinedException`<a id="notUndefinedException"></a>**

Lance une exception `NOT_UNDEFINED_EXCEPTION` si la valeur n'est pas `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas `undefined`|

**`blankException`<a id="blankException"></a>**

Lance une exception `BLANK_EXCEPTION` si la valeur est vide (pour un string)

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est vide|

**`notBlankException`<a id="notBlankException"></a>**

Lance une exception `NOT_BLANK_EXCEPTION` si la valeur n'est pas vide (pour un string)

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas vide|

**`emptyException`<a id="emptyException"></a>**

Lance une exception `EMPTY_EXCEPTION` si la valeur est vide

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est vide|

**`notEmptyException`<a id="notEmptyException"></a>**

Lance une exception `NOT_EMPTY_EXCEPTION` si la valeur n'est pas vide

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas vide|

**`booleanException`<a id="booleanException"></a>**

Lance une exception `BOOLEAN_EXCEPTION` si la valeur est un `boolean`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est un `boolean`|

**`notBooleanException`<a id="notBooleanException"></a>**

Lance une exception `NOT_BOOLEAN_EXCEPTION` si la valeur n'est pas un `boolean`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas un `boolean`|

**`numberException`<a id="numberException"></a>**

Lance une exception `NUMBER_EXCEPTION` si la valeur est un `number`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est un `number`|

**`notNumberException`<a id="notNumberException"></a>**

Lance une exception `NOT_NUMBER_EXCEPTION` si la valeur n'est pas un `number`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas un `number`|

**`stringException`<a id="stringException"></a>**

Lance une exception `STRING_EXCEPTION` si la valeur est un `string`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est un `string`|

**`notStringException`<a id="notStringException"></a>**

Lance une exception `NOT_STRING_EXCEPTION` si la valeur n'est pas un `string`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas un `string`|

**`objectException`<a id="objectException"></a>**

Lance une exception `OBJECT_EXCEPTION` si la valeur est un `object`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est un `object`|

**`notObjectException`<a id="notObjectException"></a>**

Lance une exception `NOT_OBJECT_EXCEPTION` si la valeur n'est pas un `object`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas un `object`|

**`arrayException`<a id="arrayException"></a>**

Lance une exception `ARRAY_EXCEPTION` si la valeur est une `array`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est une `array`|

**`notArrayException`<a id="notArrayException"></a>**

Lance une exception `NOT_ARRAY_EXCEPTION` si la valeur n'est pas une `array`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas une `array`|

**`functionException`<a id="functionException"></a>**

Lance une exception `FUNCTION_EXCEPTION` si la valeur est une `function`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est une `function`|

**`notFunctionException`<a id="notFunctionException"></a>**

Lance une exception `NOT_FUNCTION_EXCEPTION` si la valeur n'est pas une `function`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas une `function`|

**`isNullOrUndefined`<a id="isNullOrUndefined"></a>**

Test si la valeur est `null` ou `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotNullOrUndefined`<a id="isNotNullOrUndefined"></a>**

Test si la valeur n'est pas `null` ni `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isBlank`<a id="isBlank"></a>**

Test si la valeur est vide (`undefined`, `null`, `""`, `" "`)

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotBlank`<a id="isNotBlank"></a>**

Test si la valeur n'est pas vide (`undefined`, `null`, `""`, `" "`)

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isEmpty`<a id="isEmpty"></a>**

Test si la valeur est vide (tous types)

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotEmpty`<a id="isNotEmpty"></a>**

Test si la valeur n'est pas vide (tous types)

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`oneIsEmpty`<a id="oneIsEmpty"></a>**

Test si au moins une des valeurs de la liste est vide<br/>
***Exception*** : `NOT_ARRAY_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|array          |array               |Valeur à tester|

**`isEquals`<a id="isEquals"></a>**

Test si les deux valeurs sont egales<br/> 
***Attention*** : utilisation de JSON pour la comparaison

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value1         |unknow               |Valeur 1 à comparer|
|value2         |unknow               |Valeur 2 à comparer|

**`oneIsEquals`<a id="oneIsEquals"></a>**

Test si au moins 2 valeurs (de chaque liste) sont égales<br/> 
***Exception*** : `NOT_ARRAY_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|array1         |array               |Liste 1|
|array2         |array               |Liste 2|

**`contain`<a id="contain"></a>**

Test si la liste contient l'élément<br/> 
***Exception*** : `NOT_ARRAY_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|array          |array                |Liste à tester|
|el             |uknow                |Elément |

**`noContain`<a id="noContain"></a>**

Test si la liste ne contient pas l'élément<br/> 
***Exception*** : `NOT_ARRAY_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|array          |array                |Liste à tester|
|el             |uknow                |Elément |

**`clone`<a id="clone"></a>**

Clone l'élément<br/> 
***Exception*** : `UNDEFINED_EXCEPTION`, `FUNCTION_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|element          |uknow              |Elément à cloner|

**`isNull`<a id="isNull"></a>**

Test si la valeur est `null`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotNull`<a id="isNotNull"></a>**

Test si la valeur n'est pas `null`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isUndefined`<a id="isUndefined"></a>**

Test si la valeur est `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotUndefined`<a id="isNotUndefined"></a>**

Test si la valeur n'est pas `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isBoolean`<a id="isBoolean"></a>**

Test si la valeur est un `boolean`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotBoolean`<a id="isNotBoolean"></a>**

Test si la valeur n'est pas un `boolean`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNumber`<a id="isNumber"></a>**

Test si la valeur est un `number`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotNumber`<a id="isNotNumber"></a>**

Test si la valeur n'est pas un `number`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isString`<a id="isString"></a>**

Test si la valeur est un `string`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotString`<a id="isNotString"></a>**

Test si la valeur n'est pas un `string`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isObject`<a id="isObject"></a>**

Test si la valeur est un `object` <br />
***Attention*** : Une liste n'est pas considérée comme un objet tout comme la valeur `null`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotObject`<a id="isNotObject"></a>**

Test si la valeur n'est pas un `object` <br />
***Attention*** : Une liste n'est pas considérée comme un objet tout comme la valeur `null`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isArray`<a id="isArray"></a>**

Test si la valeur est une `array`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotArray`<a id="isNotArray"></a>**

Test si la valeur n'est pas une `array`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isFunction`<a id="isFunction"></a>**

Test si la valeur est une `function`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`isNotFunction`<a id="isNotFunction"></a>**

Test si la valeur n'est pas une `function`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`getType`<a id="getType"></a>**

Retourne le type de la valeur (`UNDEFINED`, `NULL`, `BOOLEAN`, `NUMBER`, `STRING`, `OBJECT`, `ARRAY`, `FUNCTION`) <br />
***Exception*** :  Si la valeur est indéterminée (peu probable)

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valeur à tester|

**`modeDebug`<a id="modeDebug"></a>**

Active/désactive le mode débug <br />
***Exception*** :  `NOT_BOOLEAN_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|isModeDebug    |boolean              |Active/désactive le mode débug|

**`debug`<a id="debug"></a>**

Affiche un message dans la console de debug

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|message        |string               |Message à afficher|

**`error`<a id="error"></a>**

Affiche un message dans la console d'erreur

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|message        |string               |Message à afficher|


## expressUtil <a id="expressUtil"></a>##

### Utilisations ###

`var expressUtil = require('common').ExpressUtil();`

### Méthodes ####
- [sendObject](#sendObject)
- [sendData](#sendData)
- [sendMessage](#sendMessage)
- [sendError](#sendError)
- [extractParam](#extractParam)

### Méthodes ####

**`sendObject`<a id="sendObject"></a>**

Envoie un `object` par l'intermédiaire d'une requête Ajax <br />
***Attention*** :  `array` et `null` ne sont pas considérés comme des `object` <br />
***Exception*** :  `NOT_OBJECT_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|res            |object               |response du framework expressJs|
|object            |object            |Object à envoyer|


**`sendData`<a id="sendData"></a>**

Envoie des données par l'intermédiaire d'une requête Ajax <br />
***Exception*** :  `NOT_OBJECT_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|res            |object               |response du framework expressJs|
|data           |uknow                |Données à envoyer|


**`sendMessage`<a id="sendMessage"></a>**

Envoie un message par l'intermédiaire d'une requête Ajax <br />
***Exception*** :  `NOT_OBJECT_EXCEPTION`, `NOT_STRING_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|res            |object               |response du framework expressJs|
|msg            |string               |message à envoyer|


**`sendError`<a id="sendError"></a>**

Envoie un message d'erreur par l'intermédiaire d'une requête Ajax <br />
***Exception*** :  `NOT_OBJECT_EXCEPTION`, `NOT_STRING_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|res            |object               |response du framework expressJs|
|msg            |string               |message d'erreur à envoyer|

**`extractParam`<a id="extractParam"></a>**

Extrait et test le paramètre correspondant au nom <br />
***Exception*** :  `NOT_OBJECT_EXCEPTION`, `NOT_STRING_EXCEPTION`, `BLANK_EXCEPTION`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|req            |object               |requête du framework expressJs|
|name           |string               |nom du paramètre à extraire|
|info.type      |string               |type du paramètre (optionnel)|
|info.required  |boolnean             |si le paramètre est obligatoire (optionnel)|
