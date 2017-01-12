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

#### notNullOrUndefinedException <a id="notNullOrUndefinedException"></a>####

> Lance une exception `NOT_NULL_OR_UNDEFINED_EXCEPTION` si la valeur n'est pas `null` ou `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas `null` ou `undefined`|

#### nullException <a id="nullException"></a>####

> Lance une exception `NULL_EXCEPTION` si la valeur est `null`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est `null`|

#### notNullException <a id="notNullException"></a>####

> Lance une exception `NOT_NULL_EXCEPTION` si la valeur n'est pas `null`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas `null`|

#### undefinedException <a id="undefinedException"></a>####

> Lance une exception `UNDEFINED_EXCEPTION` si la valeur est `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est `undefined`|

#### notUndefinedException <a id="notUndefinedException"></a>####

> Lance une exception `NOT_UNDEFINED_EXCEPTION` si la valeur n'est pas `undefined`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas `undefined`|

#### blankException <a id="blankException"></a>####

> Lance une exception `BLANK_EXCEPTION` si la valeur est vide (pour un string)

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est vide|

#### notBlankException <a id="notBlankException"></a>####

> Lance une exception `NOT_BLANK_EXCEPTION` si la valeur n'est pas vide (pour un string)

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas vide|

#### emptyException <a id="emptyException"></a>####

> Lance une exception `EMPTY_EXCEPTION` si la valeur est vide

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est vide|

#### notEmptyException <a id="notEmptyException"></a>####

> Lance une exception `NOT_EMPTY_EXCEPTION` si la valeur n'est pas vide

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas vide|

#### booleanException <a id="booleanException"></a>####

> Lance une exception `BOOLEAN_EXCEPTION` si la valeur est un `boolean`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est un `boolean`|

#### notBooleanException <a id="notBooleanException"></a>####

> Lance une exception `NOT_BOOLEAN_EXCEPTION` si la valeur n'est pas un `boolean`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas un `boolean`|

#### numberException <a id="numberException"></a>####

> Lance une exception `NUMBER_EXCEPTION` si la valeur est un `number`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est un `number`|

#### notNumberException <a id="notNumberException"></a>####

> Lance une exception `NOT_NUMBER_EXCEPTION` si la valeur n'est pas un `number`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas un `number`|

#### stringException <a id="stringException"></a>####

> Lance une exception `STRING_EXCEPTION` si la valeur est un `string`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est un `string`|

#### notStringException <a id="notStringException"></a>####

> Lance une exception `NOT_STRING_EXCEPTION` si la valeur n'est pas un `string`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas un `string`|

#### objectException <a id="objectException"></a>####

> Lance une exception `OBJECT_EXCEPTION` si la valeur est un `object`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est un `object`|

#### notObjectException <a id="notObjectException"></a>####

> Lance une exception `NOT_OBJECT_EXCEPTION` si la valeur n'est pas un `object`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas un `object`|

#### arrayException <a id="arrayException"></a>####

> Lance une exception `ARRAY_EXCEPTION` si la valeur est une `array`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est une `array`|

#### notArrayException <a id="notArrayException"></a>####

> Lance une exception `NOT_ARRAY_EXCEPTION` si la valeur n'est pas une `array`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas une `array`|

#### functionException <a id="functionException"></a>####

> Lance une exception `FUNCTION_EXCEPTION` si la valeur est une `function`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur est une `function`|

#### notFunctionException <a id="notFunctionException"></a>####

> Lance une exception `NOT_FUNCTION_EXCEPTION` si la valeur n'est pas une `function`

| Argument      |Type                 |Description |
| ------------- |-------------        | ---------  |
|value          |unknow               |Valuer à vérifier|
|message        |string               |Message à afficher si la valeur n'est pas une `function`|


## expressUtil <a id="expressUtil"></a>##

### Chargement ###
`var expressUtil = require('common').ExpressUtil();`
