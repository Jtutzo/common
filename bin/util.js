// Generated by CoffeeScript 1.12.2

/*====================================================================================
 *                                     Constante
#===================================================================================
 */

(function() {
  var ARGUMENT_EXCEPTION, ARRAY, ARRAY_EXCEPTION, BLANK_EXCEPTION, BOOLEAN, BOOLEAN_EXCEPTION, EMPTY_EXCEPTION, FUNCTION, FUNCTION_EXCEPTION, NOT_ARRAY_EXCEPTION, NOT_BLANK_EXCEPTION, NOT_BOOLEAN_EXCEPTION, NOT_EMPTY_EXCEPTION, NOT_FUNCTION_EXCEPTION, NOT_NULL_EXCEPTION, NOT_NULL_OR_UNDEFINED_EXCEPTION, NOT_NUMBER_EXCEPTION, NOT_OBJECT_EXCEPTION, NOT_STRING_EXCEPTION, NOT_UNDEFINED_EXCEPTION, NULL, NULL_EXCEPTION, NULL_OR_UNDEFINED_EXCEPTION, NUMBER, NUMBER_EXCEPTION, OBJECT, OBJECT_EXCEPTION, STRING, STRING_EXCEPTION, UNDEFINED, UNDEFINED_EXCEPTION, argumentException, arrayException, blankException, booleanException, clone, contains, debug, emptyException, error, functionException, getType, isArray, isBlank, isBoolean, isDebug, isEmpty, isEquals, isFunction, isModeDebug, isNotArray, isNotBlank, isNotBoolean, isNotEmpty, isNotEquals, isNotFunction, isNotNull, isNotNullOrUndefined, isNotNumber, isNotObject, isNotString, isNotUndefined, isNull, isNullOrUndefined, isNumber, isObject, isString, isUndefined, noContains, notArrayException, notBlankException, notBooleanException, notEmptyException, notFunctionException, notNullException, notNullOrUndefinedException, notNumberException, notObjectException, notStringException, notUndefinedException, nullException, nullOrUndefinedException, numberException, objectException, setDebug, stringException, undefinedException;

  UNDEFINED = 'undefined';

  NULL = 'null';

  BOOLEAN = 'boolean';

  NUMBER = 'number';

  STRING = 'string';

  OBJECT = 'object';

  ARRAY = 'array';

  FUNCTION = 'function';

  ARGUMENT_EXCEPTION = 'ArgumentException';

  NULL_OR_UNDEFINED_EXCEPTION = 'NullOrUndefinedException';

  NOT_NULL_OR_UNDEFINED_EXCEPTION = 'NotNullOrUndefinedException';

  NULL_EXCEPTION = 'NullException';

  NOT_NULL_EXCEPTION = 'NotNullException';

  UNDEFINED_EXCEPTION = 'UndefinedException';

  NOT_UNDEFINED_EXCEPTION = 'NotUndefinedException';

  BLANK_EXCEPTION = 'BlankException';

  NOT_BLANK_EXCEPTION = 'NotBlankException';

  EMPTY_EXCEPTION = 'EmptyException';

  NOT_EMPTY_EXCEPTION = 'NotEmptyException';

  BOOLEAN_EXCEPTION = 'BooleanException';

  NOT_BOOLEAN_EXCEPTION = 'NotBooleanException';

  NUMBER_EXCEPTION = 'NumberException';

  NOT_NUMBER_EXCEPTION = 'NotNumberException';

  STRING_EXCEPTION = 'StringException';

  NOT_STRING_EXCEPTION = 'NotStringException';

  OBJECT_EXCEPTION = 'ObjectException';

  NOT_OBJECT_EXCEPTION = 'NotObjectException';

  ARRAY_EXCEPTION = 'ArrayException';

  NOT_ARRAY_EXCEPTION = 'NotArrayException';

  FUNCTION_EXCEPTION = 'FunctionException';

  NOT_FUNCTION_EXCEPTION = 'NotFunctionException';

  isModeDebug = false;


  /*====================================================================================
   *                         methodes exception
  #===================================================================================
   */


  /*
   * launch exception (ARGUMENT_EXCEPTION) if expr is true
   * @param test
   * @param message
   */

  argumentException = function(expr, message) {
    var exception;
    if (!isBoolean(expr)) {
      error("util.argumentException => expr must be a boolean expression.");
      throw new Error(ARGUMENT_EXCEPTION);
    }
    if ((isBlank(message)) && (isNotString(message))) {
      error("util.argumentException => message must be a string value.");
      throw new Error(ARGUMENT_EXCEPTION);
    }
    if (expr) {
      exception = ARGUMENT_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.argumentException => expr is true [" + exception + "]");
      throw new Error(ARGUMENT_EXCEPTION);
    } else {
      return debug("util.argumentException => expr is false.");
    }
  };


  /*
   * Launch exception (NULL_OR_UNDEFINED_EXCEPTION) if value is null or unedfined
   * @param value
   * @param message
   */

  nullOrUndefinedException = function(value, message) {
    var exception;
    if ((isNull(value)) || (isUndefined(value))) {
      exception = NULL_OR_UNDEFINED_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.nullOrUndefinedException => value is null or undefined [" + exception + "]");
      throw new Error(NULL_OR_UNDEFINED_EXCEPTION);
    } else {
      return debug("util.nullException => value isn't null or unedfined.");
    }
  };


  /*
   * Launch exception (NOT_NULL_OR_UNDEFINED_EXCEPTION) if value is null or unedfined
   * @param value
   * @param message
   */

  notNullOrUndefinedException = function(value, message) {
    var exception;
    if ((isNotNull(value)) && (isNotUndefined(value))) {
      exception = NOT_NULL_OR_UNDEFINED_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notNullOrUndefinedException => value isn't null or unedfined [" + exception + "]");
      throw new Error(NOT_NULL_OR_UNDEFINED_EXCEPTION);
    } else {
      return debug("util.notNullOrUndefinedException => value is null or undefined.");
    }
  };


  /*
   * Launch exception (NULL_EXCEPTION) if value is null
   * @param value
   * @param message
   */

  nullException = function(value, message) {
    var exception;
    if (isNull(value)) {
      exception = NULL_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.nullException => value is null [" + exception + "]");
      throw new Error(NULL_EXCEPTION);
    } else {
      return debug("util.nullException => value isn't null.");
    }
  };


  /*
   * Launch exception (NOT_NULL_EXCEPTION) if value isn't null
   * @param value
   * @param message
   */

  notNullException = function(value, message) {
    var exception;
    if (isNotNull(value)) {
      exception = NOT_NULL_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notNullException => value isn't null [" + exception + "]");
      throw new Error(NOT_NULL_EXCEPTION);
    } else {
      return debug("util.notNullException => value is null.");
    }
  };


  /*
   * Launch exception (UNDEFINED_EXCEPTION) if value is undefined
   * @param value
   * @param message
   */

  undefinedException = function(value, message) {
    var exception;
    if (isUndefined(value)) {
      exception = UNDEFINED_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.undefinedException => value is unedfined [" + exception + "]");
      throw new Error(UNDEFINED_EXCEPTION);
    } else {
      return debug("util.undefinedException => value isn't unedfined.");
    }
  };


  /*
   * Launch exception (NOT_UNDEFINED_EXCEPTION) if value isn't undefined
   * @param value
   * @param message
   */

  notUndefinedException = function(value, message) {
    var exception;
    if (isNotUndefined(value)) {
      exception = NOT_UNDEFINED_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notUndefinedException => value isn't unedfined [" + exception + "]");
      throw new Error(NOT_UNDEFINED_EXCEPTION);
    } else {
      return debug("util.notUndefinedException => value is unedfined.");
    }
  };


  /*
   * Launch exception (BLANK_EXCEPTION) if value is blank
   * @param value
   * @param message
   */

  blankException = function(value, message) {
    var exception;
    if (isBlank(value)) {
      exception = BLANK_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.blankException => value is blank [" + exception + "]");
      throw new Error(BLANK_EXCEPTION);
    } else {
      return debug("util.blankException => value isn't blank.");
    }
  };


  /*
   * Launch exception (NOT_BLANK_EXCEPTION) if value is blank
   * @param value
   * @param message
   */

  notBlankException = function(value, message) {
    var exception;
    if (isNotBlank(value)) {
      exception = NOT_BLANK_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notBlankException => value isn't blank [" + exception + "]");
      throw new Error(NOT_BLANK_EXCEPTION);
    } else {
      return debug("util.notBlankException => value is blank.");
    }
  };


  /*
   * Launch exception (EMPTY_EXCEPTION) if value is empty
   * @param value
   * @param message
   */

  emptyException = function(value, message) {
    var exception;
    if (isEmpty(value)) {
      exception = EMPTY_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.emptyException => value is empty [" + exception + "]");
      throw new Error(EMPTY_EXCEPTION);
    } else {
      return debug("util.emptyException => value isn't empty.");
    }
  };


  /*
   * Launch exception (NOT_EMPTY_EXCEPTION) if value isn't empty
   * @param value
   * @param message
   */

  notEmptyException = function(value, message) {
    var exception;
    if (isNotEmpty(value)) {
      exception = NOT_EMPTY_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notEmptyException => value isn't empty [" + exception + "]");
      throw new Error(NOT_EMPTY_EXCEPTION);
    } else {
      return debug("util.notEmptyException => value is empty.");
    }
  };


  /*
   * launch exception (BOOLEAN_EXCEPTION) if is a boolean value
   * @param value
   * @param message
   */

  booleanException = function(value, message) {
    var exception;
    if (isBoolean(value)) {
      exception = BOOLEAN_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.booleanException => value is a boolean [" + exception + "]");
      throw new Error(BOOLEAN_EXCEPTION);
    } else {
      return debug("util.booleanException => value isn't a boolean.");
    }
  };


  /*
  * launch exception (NOT_BOOLEAN_EXCEPTION) if isn't a boolean value
  * @param value
  * @param message
   */

  notBooleanException = function(value, message) {
    var exception;
    if (isNotBoolean(value)) {
      exception = NOT_BOOLEAN_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notBooleanException => value isn't a boolean [" + exception + "]");
      throw new Error(NOT_BOOLEAN_EXCEPTION);
    } else {
      return debug("util.notBooleanException => value is a boolean.");
    }
  };


  /*
   * launch exception (NUMBER_EXCEPTION) if is a number value
   * @param value
   * @param message
   */

  numberException = function(value, message) {
    var exception;
    if (isNumber(value)) {
      exception = NUMBER_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.numberException => value is a number [" + exception + "]");
      throw new Error(NUMBER_EXCEPTION);
    } else {
      return debug("util.numberException => value isn't a number.");
    }
  };


  /*
   * launch exception (NOT_NUMBER_EXCEPTION) if isn't a number value
   * @param value
   * @param message
   */

  notNumberException = function(value, message) {
    var exception;
    if (isNotNumber(value)) {
      exception = NOT_NUMBER_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notNumberException => value isn't a number [" + exception + "]");
      throw new Error(NOT_NUMBER_EXCEPTION);
    } else {
      return debug("util.notNumberException => value is a number.");
    }
  };


  /*
   * launch exception (STRING_EXCEPTION) if is a string value
   * @param value
   * @param message
   */

  stringException = function(value, message) {
    var exception;
    if (isString(value)) {
      exception = STRING_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.stringException => value is a string [" + exception + "]");
      throw new Error(STRING_EXCEPTION);
    } else {
      return debug("util.stringException => value isn't a string.");
    }
  };


  /*
   * launch exception (NOT_STRING_EXCEPTION) if isn't a string value
   * @param value
   * @param message
   */

  notStringException = function(value, message) {
    var exception;
    if (isNotString(value)) {
      exception = NOT_STRING_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notStringException => value isn't a string [" + exception + "]");
      throw new Error(NOT_STRING_EXCEPTION);
    } else {
      return debug("util.notStringException => value is a string.");
    }
  };


  /*
   * launch exception (OBJECT_EXCEPTION) if is an object value
   * @param value
   * @param message
   */

  objectException = function(value, message) {
    var exception;
    if (isObject(value)) {
      exception = OBJECT_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.objectException => value is an object [" + exception + "]");
      throw new Error(OBJECT_EXCEPTION);
    } else {
      return debug`util.objectException => value isn't an object.`;
    }
  };


  /*
   * launch exception (NOT_OBJECT_EXCEPTION) if isn't an object value
   * @param value
   * @param message
   */

  notObjectException = function(value, message) {
    var exception;
    if (isNotObject(value)) {
      exception = NOT_OBJECT_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notObjectException => value isn't an object [" + exception + "]");
      throw new Error(NOT_OBJECT_EXCEPTION);
    } else {
      return debug("util.notObjectException => value is an object.");
    }
  };


  /*
   * launch exception (ARRAY_EXCEPTION) if isn't an array value
   * @param value
   * @param message
   */

  arrayException = function(value, message) {
    var exception;
    if (isArray(value)) {
      exception = ARRAY_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.arrayException => value is an array [" + exception + "]");
      throw new Error(ARRAY_EXCEPTION);
    } else {
      return debug("util.arrayException => value isn't an array.");
    }
  };


  /*
   * launch exception (NOT_ARRAY_EXCEPTION) if isn't an array value
   * @param value
   * @param message
   */

  notArrayException = function(value, message) {
    var exception;
    if (isNotArray(value)) {
      exception = NOT_ARRAY_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notArrayException => value isn't an array [" + exception + "]");
      throw new Error(NOT_ARRAY_EXCEPTION);
    } else {
      return debug("util.notArrayException => value is an array.");
    }
  };


  /*
   * launch exception (FUNCTION_EXCEPTION) if isn't a function value
   * @param value
   * @param message
   */

  functionException = function(value, message) {
    var exception;
    if (isFunction(value)) {
      exception = FUNCTION_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.functionException => value is a function [" + exception + "]");
      throw new Error(FUNCTION_EXCEPTION);
    } else {
      return debug("util.functionException => value isn't a function.");
    }
  };


  /*
   * launch exception (NOT_FUNCTION_EXCEPTION) if isn't a function value
   * @param value
   * @param message
   */

  notFunctionException = function(value, message) {
    var exception;
    if (isNotFunction(value)) {
      exception = NOT_FUNCTION_EXCEPTION + (!isBlank(message) ? ": " + message : ".");
      error("util.notFunctionException => value isn't a function [" + exception + "]");
      throw new Error(NOT_FUNCTION_EXCEPTION);
    } else {
      return debug("util.notFunctionException => value is a function.");
    }
  };


  /*====================================================================================
   *                         methodes exception
  #===================================================================================
   */


  /*
   * Check if is null or undefined value
   * @param value
   */

  isNullOrUndefined = function(value) {
    if ((isNull(value)) || (isUndefined(value))) {
      debug("util.isNullOrUndefined => value is null or undefined.");
      return true;
    } else {
      debug("util.isNullOrUndefined => value isn't null and undefined.");
      return false;
    }
  };


  /*
  * Check if isn't null or undefined value
  * @param value
   */

  isNotNullOrUndefined = function(value) {
    return !isNullOrUndefined(value);
  };


  /*
   * Check if is null, undefined or blank value
   * @param value
   */

  isBlank = function(value) {
    if ((isNull(value)) || (isUndefined(value)) || ((isString(value)) && value.trim() === "")) {
      debug("util.isBlank => value is blank.");
      return true;
    } else {
      debug("util.isBlank => value isn't blank.");
      return false;
    }
  };


  /*
   * Check if isn't null, undefined or blank value
   * @param value
   */

  isNotBlank = function(value) {
    return !isBlank(value);
  };


  /*
   * Check if value is null, undefined, blank or empty
   * @param value
   */

  isEmpty = function(value) {
    if ((isBlank(value)) || ((isObject(value)) && Object.keys(value).length === 0) || ((isArray(value)) && value.length === 0)) {
      debug("util.isEmpty => value is empty.");
      return true;
    } else {
      debug("util.isEmpty => value isn't empty.");
      return false;
    }
  };


  /*
   * Check if value isn't null, undefined, blank or empty
   * @param value
   */

  isNotEmpty = function(value) {
    return !isEmpty(value);
  };


  /*
   * Check if value1 and value2 are equals
   * Caution : use JSON for camparaison !
   * @param value1
   * @param value2
   * @exception FUNCTION_EXCEPTION
   */

  isEquals = function(value1, value2) {
    var result;
    functionException(value1, "value1 mustn't be a function (util.isEquals)");
    functionException(value2, "value2 mustn't be a function (util.isEquals)");
    result = false;
    if ((isNullOrUndefined(value1)) || (isNullOrUndefined(value2))) {
      debug("util.isEquals => value1 is equal to value2.");
      result = value1 === value2;
    } else if (JSON.stringify(value1) === JSON.stringify(value2)) {
      debug("util.isEquals => value1 is equal to value2.");
      result = true;
    } else {
      debug("util.isEquals => value1 isn't equal to value2.");
      result = false;
    }
    return result;
  };


  /*
   * Check if value1 and value2 aren't equals
   * Caution : use JSON for camparaison !
   * @param value1
   * @param value2
   * @exception FUNCTION_EXCEPTION
   */

  isNotEquals = function(value1, value2) {
    return !isEquals(value1, value2);
  };


  /*
   * Check if array contain seq
   * @param array
   * @param seq
   * @exception NOT_ARRAY_EXCEPTION
   */

  contains = function(array, seq) {
    var i, j, k, len, len1, result, value, value2;
    notArrayException(array, "array must be an array value.");
    seq = isArray(seq) ? seq : [seq];
    i = 0;
    for (j = 0, len = seq.length; j < len; j++) {
      value = seq[j];
      result = false;
      if (i === array.length) {
        return false;
      }
      for (k = 0, len1 = array.length; k < len1; k++) {
        value2 = array[k];
        if (isEquals(value, value2)) {
          result = true;
          break;
        }
      }
      i++;
      if (!result) {
        return false;
      }
    }
    return true;
  };


  /*
  * Check if array no contain seq
  * @param array
  * @param seq
  * @exception NOT_ARRAY_EXCEPTION
   */

  noContains = function(array, seq) {
    return !contains(array, seq);
  };


  /*
  * clone an element
  * @param element
  * @exception UNDEFINED_EXCEPTION, FUNCTION_EXCEPTION
   */

  clone = function(element) {
    undefinedException(element, "element mustn't be undefined (util.clone)");
    functionException(element, "element mustn't be a function (util.clone)");
    debug("util.clone => clone element " + element);
    return JSON.parse(JSON.stringify(element));
  };


  /*====================================================================================
   *                            methode check or get type
  #===================================================================================
   */


  /*
   * Check if value is null
   * @param value
   */

  isNull = function(value) {
    if (value === null) {
      debug("util.isNull => value is null.");
      return true;
    } else {
      debug("util.isNull => value isn't null.");
      return false;
    }
  };


  /*
   * Check if value isn't null
   * @param value
   */

  isNotNull = function(value) {
    return !isNull(value);
  };


  /*
   * Check if value is undefined
   * @param value
   */

  isUndefined = function(value) {
    if (value === void 0) {
      debug("util.isUndefined => value is undefined.");
      return true;
    } else {
      debug("util.isUndefined => value isn't undefined.");
      return false;
    }
  };


  /*
   * Check if value isn't undefined
   * @param value
   */

  isNotUndefined = function(value) {
    return !isUndefined(value);
  };


  /*
   * Check if value is a boolean
   * @param value
   * @return boolean
   */

  isBoolean = function(value) {
    if ((isNullOrUndefined(value)) || (typeof value !== BOOLEAN)) {
      debug("util.isBoolean => value isn't a boolean.");
      return false;
    } else {
      debug("util.isBoolean => value is a boolean.");
      return true;
    }
  };


  /*
   * Check if value isn't a boolean
   * @param value
   * @return boolean
   */

  isNotBoolean = function(value) {
    return !isBoolean(value);
  };


  /*
   * Check if value is a number
   * @param value
   * @return boolean
   */

  isNumber = function(value) {
    if ((isNullOrUndefined(value)) || (typeof value !== NUMBER)) {
      debug("util.isNumber => value isn't a number.");
      return false;
    } else {
      debug("util.isNumber => value is a number.");
      return true;
    }
  };


  /*
   * Check if value isn't a number
   * @param value
   * @return boolean
   */

  isNotNumber = function(value) {
    return !isNumber(value);
  };


  /*
   * Check if is a string value
   * @param value
   * @return boolean
   */

  isString = function(value) {
    if ((isNullOrUndefined(value)) || (typeof value !== STRING)) {
      debug("util.isString => value isn't a string.");
      return false;
    } else {
      debug("util.isString => value is a string.");
      return true;
    }
  };


  /*
   * Check if isn't a string value
   * @param value
   * @return boolean
   */

  isNotString = function(value) {
    return !isString(value);
  };


  /*
   * Check if is an object value
   * Caution : array is not object !
   * @param value
   * @return boolean
   */

  isObject = function(value) {
    if ((isNullOrUndefined(value)) || (typeof value !== OBJECT) || isArray(value)) {
      debug("util.isObject => value isn't an object.");
      return false;
    } else {
      debug("util.isObject => value is an object.");
      return true;
    }
  };


  /*
   * Check if isn't an object value
   * Caution : array is not object !
   * @param value
   * @return boolean
   */

  isNotObject = function(value) {
    return !isObject(value);
  };


  /*
   * Check if is an array value
   * @param value
   * @return boolean
   */

  isArray = function(value) {
    if ((isNullOrUndefined(value)) || !Array.isArray(value)) {
      debug("util.isArray => value isn't an array.");
      return false;
    } else {
      debug("util.isArray => value is an array.");
      return true;
    }
  };


  /*
   * Check if isn't an array value
   * @param value
   * @return boolean
   */

  isNotArray = function(value) {
    return !isArray(value);
  };


  /*
   * Check if is a function value
   * @param value
   * @return boolean
   */

  isFunction = function(value) {
    if ((isNullOrUndefined(value)) || (typeof value !== FUNCTION)) {
      debug("util.isFunction => value isn't a function.");
      return false;
    } else {
      debug("util.isFunction => value is a function.");
      return true;
    }
  };


  /*
   * Check if isn't a function value
   * @param value
   * @return boolean
   */

  isNotFunction = function(value) {
    return !isFunction(value);
  };


  /*
   * Get type name of value
   * @param value
   * @return String (type name)
   * @exception if type is unknow
   */

  getType = function(value) {
    if (isNull(value)) {
      debug("util.getType => value is " + NULL + ".");
      return NULL;
    } else if (isBoolean(value)) {
      debug("util.getType => value is " + BOOLEAN + ".");
      return BOOLEAN;
    } else if (isNumber(value)) {
      debug("util.getType => value is " + NUMBER + ".");
      return NUMBER;
    } else if (isString(value)) {
      debug("util.getType => value is " + STRING + ".");
      return STRING;
    } else if (isObject(value)) {
      debug("util.getType => value is " + OBJECT + ".");
      return OBJECT;
    } else if (isArray(value)) {
      debug("util.getType => value is " + ARRAY + ".");
      return ARRAY;
    } else if (isFunction(value)) {
      debug("util.getType => value is " + FUNCTION + ".");
      return FUNCTION;
    } else {
      debug("util.getType => value is " + UNDEFINED + ".");
      return UNDEFINED;
    }
  };


  /*====================================================================================
   *                                   methodes debug
  #===================================================================================
   */


  /*
   * enable/disable mode debug
   * @param modeDebug
   */

  setDebug = function(isDebug) {
    return isModeDebug = isDebug ? true : false;
  };


  /*
   * Return mode debug
   * @return isModeDebug
   */

  isDebug = function() {
    return isModeDebug;
  };


  /*
   * write in console debug
   * @param message
   */

  debug = function(message) {
    if (isModeDebug) {
      return console.log("DEBUG " + message);
    }
  };


  /*
   * write in console error
   * @param message
   */

  error = function(message) {
    return console.error("ERROR " + message);
  };


  /*====================================================================================
   *                                   Exports
  #===================================================================================
   */

  module.exports.UNDEFINED = UNDEFINED;

  module.exports.NULL = NULL;

  module.exports.BOOLEAN = BOOLEAN;

  module.exports.NUMBER = NUMBER;

  module.exports.STRING = STRING;

  module.exports.OBJEC = OBJECT;

  module.exports.ARRAY = ARRAY;

  module.exports.FUNCTION = FUNCTION;

  module.exports.ARGUMENT_EXCEPTION = ARGUMENT_EXCEPTION;

  module.exports.NULL_OR_UNDEFINED_EXCEPTION = NULL_OR_UNDEFINED_EXCEPTION;

  module.exports.NOT_NULL_OR_UNDEFINED_EXCEPTION = NOT_NULL_OR_UNDEFINED_EXCEPTION;

  module.exports.NULL_EXCEPTION = NULL_EXCEPTION;

  module.exports.NOT_NULL_EXCEPTION = NOT_NULL_EXCEPTION;

  module.exports.UNDEFINED_EXCEPTION = UNDEFINED_EXCEPTION;

  module.exports.NOT_UNDEFINED_EXCEPTION = NOT_UNDEFINED_EXCEPTION;

  module.exports.BLANK_EXCEPTION = BLANK_EXCEPTION;

  module.exports.NOT_BLANK_EXCEPTION = NOT_BLANK_EXCEPTION;

  module.exports.EMPTY_EXCEPTION = EMPTY_EXCEPTION;

  module.exports.NOT_EMPTY_EXCEPTION = NOT_EMPTY_EXCEPTION;

  module.exports.BOOLEAN_EXCEPTION = BOOLEAN_EXCEPTION;

  module.exports.NOT_BOOLEAN_EXCEPTION = NOT_BOOLEAN_EXCEPTION;

  module.exports.NUMBER_EXCEPTION = NUMBER_EXCEPTION;

  module.exports.NOT_NUMBER_EXCEPTION = NOT_NUMBER_EXCEPTION;

  module.exports.STRING_EXCEPTION = STRING_EXCEPTION;

  module.exports.NOT_STRING_EXCEPTION = NOT_STRING_EXCEPTION;

  module.exports.OBJECT_EXCEPTION = OBJECT_EXCEPTION;

  module.exports.NOT_OBJECT_EXCEPTION = NOT_OBJECT_EXCEPTION;

  module.exports.ARRAY_EXCEPTION = ARRAY_EXCEPTION;

  module.exports.NOT_ARRAY_EXCEPTION = NOT_ARRAY_EXCEPTION;

  module.exports.FUNCTION_EXCEPTION = FUNCTION_EXCEPTION;

  module.exports.NOT_FUNCTION_EXCEPTION = NOT_FUNCTION_EXCEPTION;

  module.exports.argumentException = argumentException;

  module.exports.nullOrUndefinedException = nullOrUndefinedException;

  module.exports.notNullOrUndefinedException = notNullOrUndefinedException;

  module.exports.nullException = nullException;

  module.exports.notNullException = notNullException;

  module.exports.undefinedException = undefinedException;

  module.exports.notUndefinedException = notUndefinedException;

  module.exports.blankException = blankException;

  module.exports.notBlankException = notBlankException;

  module.exports.emptyException = emptyException;

  module.exports.notEmptyException = notEmptyException;

  module.exports.booleanException = booleanException;

  module.exports.notBooleanException = notBooleanException;

  module.exports.numberException = numberException;

  module.exports.notNumberException = notNumberException;

  module.exports.stringException = stringException;

  module.exports.notStringException = notStringException;

  module.exports.objectException = objectException;

  module.exports.notObjectException = notObjectException;

  module.exports.arrayException = arrayException;

  module.exports.notArrayException = notArrayException;

  module.exports.functionException = functionException;

  module.exports.notFunctionException = notFunctionException;

  module.exports.isNullOrUndefined = isNullOrUndefined;

  module.exports.isNotNullOrUndefined = isNotNullOrUndefined;

  module.exports.isBlank = isBlank;

  module.exports.isNotBlank = isNotBlank;

  module.exports.isEmpty = isEmpty;

  module.exports.isNotEmpty = isNotEmpty;

  module.exports.isEquals = isEquals;

  module.exports.isNotEquals = isNotEquals;

  module.exports.contains = contains;

  module.exports.noContains = noContains;

  module.exports.clone = clone;

  module.exports.isNull = isNull;

  module.exports.isNotNull = isNotNull;

  module.exports.isUndefined = isUndefined;

  module.exports.isNotUndefined = isNotUndefined;

  module.exports.isBoolean = isBoolean;

  module.exports.isNotBoolean = isNotBoolean;

  module.exports.isNumber = isNumber;

  module.exports.isNotNumber = isNotNumber;

  module.exports.isString = isString;

  module.exports.isNotString = isNotString;

  module.exports.isObject = isObject;

  module.exports.isNotObject = isNotObject;

  module.exports.isArray = isArray;

  module.exports.isNotArray = isNotArray;

  module.exports.isFunction = isFunction;

  module.exports.isNotFunction = isNotFunction;

  module.exports.getType = getType;

  module.exports.setDebug = setDebug;

  module.exports.isDebug = isDebug;

  module.exports.debug = debug;

  module.exports.error = error;

}).call(this);
