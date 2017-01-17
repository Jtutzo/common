###====================================================================================
#                                     Constante
#===================================================================================###
#Type variable
UNDEFINED = 'undefined'
NULL = 'null'
BOOLEAN = 'boolean'
NUMBER = 'number'
STRING = 'string'
OBJECT = 'object'
ARRAY = 'array'
FUNCTION = 'function'

#Exceptions
ARGUMENT_EXCEPTION = 'ArgumentException'

NULL_OR_UNDEFINED_EXCEPTION = 'NullOrUndefinedException'
NOT_NULL_OR_UNDEFINED_EXCEPTION = 'NotNullOrUndefinedException'

NULL_EXCEPTION = 'NullException'
NOT_NULL_EXCEPTION = 'NotNullException'

UNDEFINED_EXCEPTION = 'UndefinedException'
NOT_UNDEFINED_EXCEPTION = 'NotUndefinedException'

BLANK_EXCEPTION = 'BlankException'
NOT_BLANK_EXCEPTION = 'NotBlankException'

EMPTY_EXCEPTION = 'EmptyException'
NOT_EMPTY_EXCEPTION = 'NotEmptyException'

BOOLEAN_EXCEPTION = 'BooleanException'
NOT_BOOLEAN_EXCEPTION = 'NotBooleanException'

NUMBER_EXCEPTION = 'NumberException'
NOT_NUMBER_EXCEPTION = 'NotNumberException'

STRING_EXCEPTION = 'StringException'
NOT_STRING_EXCEPTION = 'NotStringException'

OBJECT_EXCEPTION = 'ObjectException'
NOT_OBJECT_EXCEPTION = 'NotObjectException'

ARRAY_EXCEPTION = 'ArrayException'
NOT_ARRAY_EXCEPTION = 'NotArrayException'

FUNCTION_EXCEPTION = 'FunctionException'
NOT_FUNCTION_EXCEPTION = 'NotFunctionException'

#enable-disable mode debug
isModeDebug = false

###====================================================================================
#                         methodes exception
#===================================================================================###
###
# launch exception (ARGUMENT_EXCEPTION) if expr is true
# @param test
# @param message
###
argumentException = (expr, message) -> 
        
    if !isBoolean expr 
        error "util.argumentException => expr must be a boolean expression."
        throw new Error ARGUMENT_EXCEPTION
            
    if !isBlank message && !isString message
        error "util.argumentException => message must be a string value."
        throw new Error ARGUMENT_EXCEPTION
                
    if expr 
        exception = ARGUMENT_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.argumentException => expr is true [" + exception + "]"
        throw new Error ARGUMENT_EXCEPTION
    else debug "util.argumentException => expr is false."
                
        
###
# Launch exception (NULL_OR_UNDEFINED_EXCEPTION) if value is null or unedfined
# @param value
# @param message
###
nullOrUndefinedException = (value, message) -> 
    if isNull value || isUndefined value
        exception = NULL_OR_UNDEFINED_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.nullOrUndefinedException => value is null or undefined [" + exception + "]"
        throw new Error NULL_OR_UNDEFINED_EXCEPTION
    else debug "util.nullException => value isn't null or unedfined."
       
        
###
# Launch exception (NOT_NULL_OR_UNDEFINED_EXCEPTION) if value is null or unedfined
# @param value
# @param message
###
notNullOrUndefinedException = (value, message) -> 
    if isNotNull value || isNotUndefined value 
        exception = NOT_NULL_OR_UNDEFINED_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notNullOrUndefinedException => value isn't null or unedfined [" + exception + "]"
        throw new Error NOT_NULL_OR_UNDEFINED_EXCEPTION
    else debug "util.notNullOrUndefinedException => value is null or undefined."
        
        
###
# Launch exception (NULL_EXCEPTION) if value is null
# @param value
# @param message
###
nullException = (value, message) -> 
    if isNull value 
        exception = NULL_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.nullException => value is null [" + exception + "]"
        throw new Error NULL_EXCEPTION
    else debug "util.nullException => value isn't null."
        
        
###
# Launch exception (NOT_NULL_EXCEPTION) if value isn't null
# @param value
# @param message
###
notNullException = (value, message) -> 
    if isNotNull value
        exception = NOT_NULL_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notNullException => value isn't null [" + exception + "]"
        throw new Error NOT_NULL_EXCEPTION
     else debug "util.notNullException => value is null."
        
        
###
# Launch exception (UNDEFINED_EXCEPTION) if value is undefined
# @param value
# @param message
###
undefinedException = (value, message) -> 
    if isUndefined value 
        exception = UNDEFINED_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.undefinedException => value is unedfined [" + exception + "]"
        throw new Error UNDEFINED_EXCEPTION
    else debug "util.undefinedException => value isn't unedfined."
                
        
###
# Launch exception (NOT_UNDEFINED_EXCEPTION) if value isn't undefined
# @param value
# @param message
###
notUndefinedException = (value, message) -> 
    if isNotUndefined value 
        exception = NOT_UNDEFINED_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notUndefinedException => value isn't unedfined [" + exception + "]"
        throw new Error NOT_UNDEFINED_EXCEPTION
    else debug "util.notUndefinedException => value is unedfined."
        
        
###
# Launch exception (BLANK_EXCEPTION) if value is blank
# @param value
# @param message
###
blankException = (value, message) -> 
    if isBlank value 
        exception = BLANK_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.blankException => value is blank [" + exception + "]"
        throw new Error BLANK_EXCEPTION
    else debug "util.blankException => value isn't blank."
        
        
###
# Launch exception (NOT_BLANK_EXCEPTION) if value is blank
# @param value
# @param message
###
notBlankException = (value, message) -> 
    if isNotBlank value
        exception = NOT_BLANK_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notBlankException => value isn't blank [" + exception + "]"
        throw new Error NOT_BLANK_EXCEPTION
    else debug "util.notBlankException => value is blank."
        
        
###
# Launch exception (EMPTY_EXCEPTION) if value is empty
# @param value
# @param message
###
emptyException = (value, message) -> 
    if isEmpty value
        exception = EMPTY_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.emptyException => value is empty [" + exception + "]"
        throw new Error EMPTY_EXCEPTION
    else debug "util.emptyException => value isn't empty."
        
        
###
# Launch exception (NOT_EMPTY_EXCEPTION) if value isn't empty
# @param value
# @param message
###
notEmptyException = (value, message) -> 
    if isNotEmpty value
        exception = NOT_EMPTY_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notEmptyException => value isn't empty [" + exception + "]"
        throw new Error NOT_EMPTY_EXCEPTION
    else debug "util.notEmptyException => value is empty."
        
        
###
# launch exception (BOOLEAN_EXCEPTION) if is a boolean value
# @param value
# @param message
###
booleanException = (value, message) -> 
    if isBoolean value
        exception = BOOLEAN_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.booleanException => value is a boolean [" + exception + "]"
        throw new Error BOOLEAN_EXCEPTION
    else debug "util.booleanException => value isn't a boolean."
        
        
###
* launch exception (NOT_BOOLEAN_EXCEPTION) if isn't a boolean value
* @param value
* @param message
###
notBooleanException = (value, message) -> 
    if isNotBoolean value
        exception = NOT_BOOLEAN_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notBooleanException => value isn't a boolean [" + exception + "]"
        throw new Error NOT_BOOLEAN_EXCEPTION
    else debug "util.notBooleanException => value is a boolean."
        
        
###
# launch exception (NUMBER_EXCEPTION) if is a number value
# @param value
# @param message
###
numberException = (value, message) -> 
    if isNumber value
        exception = NUMBER_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.numberException => value is a number [" + exception + "]"
        throw new Error NUMBER_EXCEPTION
    else debug "util.numberException => value isn't a number."
                
                
###
# launch exception (NOT_NUMBER_EXCEPTION) if isn't a number value
# @param value
# @param message
###
notNumberException = (value, message) -> 
    if isNotNumber value
        exception = NOT_NUMBER_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notNumberException => value isn't a number [" + exception + "]"
        throw new Error NOT_NUMBER_EXCEPTION
    else debug "util.notNumberException => value is a number."
                
                
###
# launch exception (STRING_EXCEPTION) if is a string value
# @param value
# @param message
###
stringException = (value, message) -> 
    if isString value
        exception = STRING_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.stringException => value is a string [" + exception + "]"
        throw new Error STRING_EXCEPTION
    else debug "util.stringException => value isn't a string."
                
        
###
# launch exception (NOT_STRING_EXCEPTION) if isn't a string value
# @param value
# @param message
###
notStringException = (value, message) -> 
    if isNotString value
        exception = NOT_STRING_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notStringException => value isn't a string [" + exception + "]"
        throw new Error NOT_STRING_EXCEPTION
    else debug "util.notStringException => value is a string."
        
        
###
# launch exception (OBJECT_EXCEPTION) if is an object value
# @param value
# @param message
###
objectException = (value, message) -> 
    if isObject value
        exception = OBJECT_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.objectException => value is an object [" + exception + "]"
        throw new Error OBJECT_EXCEPTION
    else debug"util.objectException => value isn't an object."
            
        
###
# launch exception (NOT_OBJECT_EXCEPTION) if isn't an object value
# @param value
# @param message
###
notObjectException = (value, message) -> 
    if isNotObject value
        exception = NOT_OBJECT_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notObjectException => value isn't an object [" + exception + "]"
        throw new Error NOT_OBJECT_EXCEPTION
    else debug "util.notObjectException => value is an object."
        
        
###
# launch exception (ARRAY_EXCEPTION) if isn't an array value
# @param value
# @param message
###
arrayException = (value, message) -> 
    if isArray value
        exception = ARRAY_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.arrayException => value is an array [" + exception + "]"
        throw new Error ARRAY_EXCEPTION
    else debug "util.arrayException => value isn't an array."
                
        
###
# launch exception (NOT_ARRAY_EXCEPTION) if isn't an array value
# @param value
# @param message
###
notArrayException = (value, message) -> 
    if isNotArray value
        exception = NOT_ARRAY_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notArrayException => value isn't an array [" + exception + "]"
        throw new Error NOT_ARRAY_EXCEPTION
    else debug "util.notArrayException => value is an array."
                
                
###
# launch exception (FUNCTION_EXCEPTION) if isn't a function value
# @param value
# @param message
###
functionException = (value, message) -> 
    if isFunction value
        exception = FUNCTION_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.functionException => value is a function [" + exception + "]"
        throw new Error FUNCTION_EXCEPTION
    else debug "util.functionException => value isn't a function."
                
        
###
# launch exception (NOT_FUNCTION_EXCEPTION) if isn't a function value
# @param value
# @param message
###
notFunctionException = (value, message) -> 
    if isNotFunction value
        exception = NOT_FUNCTION_EXCEPTION + if !isBlank message then ": " + message else "."
        error "util.notFunctionException => value isn't a function [" + exception + "]"
        throw new Error NOT_FUNCTION_EXCEPTION
    else debug "util.notFunctionException => value is a function."
        
        
###====================================================================================
#                         methodes exception
#===================================================================================###
###
# Check if is null or undefined value
# @param value
###
isNullOrUndefined = (value) -> 
    if (isNull value) or (isUndefined value)
        debug "util.isNullOrUndefined => value is null or undefined.";true
    else debug "util.isNullOrUndefined => value isn't null and undefined.";false
        
        
###
* Check if isn't null or undefined value
* @param value
###
isNotNullOrUndefined = (value) -> not isNullOrUndefined value
        
        
###
# Check if is null, undefined or blank value
# @param value
###
isBlank = (value) -> 
    if (isNull value) or (isUndefined value) or ((isString value) and value.trim is 0)
        debug "util.isBlank => value is blank.";true
    else debug "util.isBlank => value isn't blank.";false
        
        
###
# Check if isn't null, undefined or blank value
# @param value
###
isNotBlank = (value) -> not isBlank value
        
        
###
# Check if value is null, undefined, blank or empty
# @param value
###
isEmpty = (value) -> 
    if (isBlank value) or ((isObject value) and Object.keys(value).length is 0) or (isArray valvalue.length is 0)
        debug "util.isEmpty => value is empty.";true
    else debug "util.isEmpty => value isn't empty.";false
        
        
###
# Check if value isn't null, undefined, blank or empty
# @param value
###
isNotEmpty = (value) -> not isEmpty value
        
        
###
# Check if at least values is empty
# @param values (array)
# @exception NOT_ARRAY_EXCEPTION
###
oneIsEmpty = (array) -> 
    notArrayException array, "array must be an array value (util.oneIsEmpty)."
    for value in array
        if isEmpty value then debug "util.oneIsEmpty => at least value is empty.";return true
    debug "util.oneIsEmpty => any value is empty.";false
        
        
###
# Check if value1 and value2 are equals
# Caution : use JSON for camparaison !
# @param value1
# @param value2
###
isEquals = (value1, value2) -> 
    if JSON.stringify(obj1) is JSON.stringify(obj2) then debug "util.isEquals => value1 is equal to value2.";true;
    else debug "util.isEquals => value1 isn't equal to value2.";false
     

###
# Check if value1 and value2 aren't equals
# Caution : use JSON for camparaison !
# @param value1
# @param value2
###
isNotEquals = (value1, value2) -> not isNotEquals array, seq


###
# Check if at least value is equals
# @param array1
# @param array2
# @exception NOT_ARRAY_EXCEPTION
###
oneIsEquals = (array1, array2) -> 
    notArrayException array1, "array1 must be an array value (util.oneIsEquals)."
    notArrayException array2, "array2 must be an array value (util.oneIsEquals)."
    for value1 in array1
        for value2 in array2
            if value1 is value2 then debug "util.oneIsEquals => at least value are equals.";return true
    debug "util.oneIsEquals => no value are equals.";false
        
        
###
# Check if array contain seq
# @param array
# @param seq
# @exception NOT_ARRAY_EXCEPTION
###
contain = (array, seq) -> 
    notArrayException array, "array must be an array value."
    for value in array
        if (util.isObject seq) and (JSON.stringify(value) is JSON.stringify seq) then return true
        else if value is seq then return true
    false
        
        
###
* Check if array no contain seq
* @param array
* @param seq
* @exception NOT_ARRAY_EXCEPTION
###
noContain = (array, seq) -> not contain array, seq
        
        
###
* clone an element
* @param element
* @exception UNDEFINED_EXCEPTION, FUNCTION_EXCEPTION
###
clone = (element) -> 
    undefinedException element, "element mustn't be undefined (util.clone)"
    functionException element, "element mustn't be a function (util.clone)"
    debug "util.clone => clone element #{element}"
    JSON.parse JSON.stringify element


###====================================================================================
#                            methode check or get type
#===================================================================================###
###
# Check if value is null
# @param value
###
isNull = (value) -> 
    if value is null then debug "util.isNull => value is null.";true
    else debug "util.isNull => value isn't null.";false
        
        
###
# Check if value isn't null
# @param value
###
isNotNull = (value) -> not isNull value
        
        
###
# Check if value is undefined
# @param value
###
isUndefined = (value) -> 
    if value is undefined then debug "util.isUndefined => value is undefined.";true
    else debug "util.isUndefined => value isn't undefined.";false
        
        
###
# Check if value isn't undefined
# @param value
###
isNotUndefined = (value) -> not isUndefined value
        
        
###
# Check if value is a boolean
# @param value
# @return boolean
###
isBoolean = (value) -> 
    if (isNullOrUndefined value) or (typeof value isnt BOOLEAN)
        debug "util.isBoolean => value isn't a boolean.";false
    else debug "util.isBoolean => value is a boolean.";true
        
        
###
# Check if value isn't a boolean
# @param value
# @return boolean
###
isNotBoolean = (value) -> not isBoolean value
        
        
###
# Check if value is a number
# @param value
# @return boolean
###
isNumber = (value) -> 
    if (isNullOrUndefined value) or (typeof value isnt NUMBER)
        debug "util.isNumber => value isn't a number.";false
    else debug "util.isNumber => value is a number.";true
                
        
###
# Check if value isn't a number
# @param value
# @return boolean
###
isNotNumber = (value) -> not isNumber value
        
        
###
# Check if is a string value
# @param value
# @return boolean
###
isString = (value) -> 
    if (isNullOrUndefined value) or (typeof value isnt STRING)
        debug "util.isString => value isn't a string.";false
    else debug "util.isString => value is a string.";true
        
        
###
# Check if isn't a string value
# @param value
# @return boolean
###
isNotString = (value) -> not isString value
        
        
###
# Check if is an object value
# Caution : array is not object !
# @param value
# @return boolean
###
isObject = (value) -> 
    if (isNullOrUndefined value) or (typeof value isnt OBJECT) or isArray value 
        debug "util.isObject => value isn't an object.";false
    else debug "util.isObject => value is an object.";true
        
        
###
# Check if isn't an object value
# Caution : array is not object !
# @param value
# @return boolean
###
isNotObject = (value) -> not isObject value
        
        
###
# Check if is an array value
# @param value
# @return boolean
###
isArray = (value) -> 
    if (isNullOrUndefined value) or !Array.isArray value
        debug "util.isArray => value isn't an array.";false
    else debug "util.isArray => value is an array.";true
        
        
###
# Check if isn't an array value
# @param value
# @return boolean
###
isNotArray = (value) -> not isArray value
        
        
###
# Check if is a function value
# @param value
# @return boolean
###
isFunction = (value) -> 
    if (isNullOrUndefined value) or (typeof value isnt FUNCTION)
        debug "util.isFunction => value isn't a function.";false
    else debug "util.isFunction => value is a function.";true
        
        
###
# Check if isn't a function value
# @param value
# @return boolean
###
isNotFunction = (value) -> not isFunction value
        
        
###
# Get type name of value
# @param value
# @return String (type name)
# @exception if type is unknow
###
getType = (value) -> 
    if isUndefined value then debug "util.getType => value is " + UNDEFINED + ".";UNDEFINED
    else if isNull value then debug "util.getType => value is " + NULL + ".";NULL
    else if isBoolean value then debug "util.getType => value is " + BOOLEAN + ".";BOOLEAN
    else if isNumber value then debug "util.getType => value is " + NUMBER + ".";NUMBER
    else if isString value then debug "util.getType => value is " + STRING + ".";STRING
    else if isObject value then debug "util.getType => value is " + OBJECT + ".";OBJECT
    else if isArray value then debug "util.getType => value is " + ARRAY + ".";ARRAY
    else if isFunction value then debug "util.getType => value is " + FUNCTION + ".";FUNCTION
    else error "util.getType => type unknow.";throw new Error "util.getType => type unknow."
    
    
###====================================================================================
#                                   methodes debug
#===================================================================================###
###
# enable/disable mode debug
# @param modeDebug
###
setDebug = (isModeDebug) -> 
    isModeDebug = if isModeDebug then true else false


###
# Return mode debug
# @return isModeDebug
###
isDebug = () -> isModeDebug
        
###
# write in console debug
# @param message
###
debug = (message) -> if isModeDebug then console.log "DEBUG #{message}"
        
        
###
# write in console error
# @param message
###
error = (message) -> console.error "ERROR #{message}"


###====================================================================================
#                                   Exports
#===================================================================================###
module.exports.UNDEFINED = UNDEFINED
module.exports.NULL = NULL
module.exports.BOOLEAN = BOOLEAN
module.exports.NUMBER = NUMBER
module.exports.STRING = STRING
module.exports.OBJEC = OBJECT
module.exports.ARRAY = ARRAY
module.exports.FUNCTION = FUNCTION

module.exports.ARGUMENT_EXCEPTION = ARGUMENT_EXCEPTION
module.exports.NULL_OR_UNDEFINED_EXCEPTION = NULL_OR_UNDEFINED_EXCEPTION
module.exports.NOT_NULL_OR_UNDEFINED_EXCEPTION = NOT_NULL_OR_UNDEFINED_EXCEPTION
module.exports.NULL_EXCEPTION = NULL_EXCEPTION
module.exports.NOT_NULL_EXCEPTION = NOT_NULL_EXCEPTION
module.exports.UNDEFINED_EXCEPTION = UNDEFINED_EXCEPTION
module.exports.NOT_UNDEFINED_EXCEPTION = NOT_UNDEFINED_EXCEPTION
module.exports.BLANK_EXCEPTION = BLANK_EXCEPTION
module.exports.NOT_BLANK_EXCEPTION = NOT_BLANK_EXCEPTION
module.exports.EMPTY_EXCEPTION = EMPTY_EXCEPTION
module.exports.NOT_EMPTY_EXCEPTION = NOT_EMPTY_EXCEPTION
module.exports.BOOLEAN_EXCEPTION = BOOLEAN_EXCEPTION
module.exports.NOT_BOOLEAN_EXCEPTION = NOT_BOOLEAN_EXCEPTION
module.exports.NUMBER_EXCEPTION = NUMBER_EXCEPTION
module.exports.NOT_NUMBER_EXCEPTION = NOT_NUMBER_EXCEPTION
module.exports.STRING_EXCEPTION = STRING_EXCEPTION
module.exports.NOT_STRING_EXCEPTION = NOT_STRING_EXCEPTION
module.exports.OBJECT_EXCEPTION = OBJECT_EXCEPTION
module.exports.NOT_OBJECT_EXCEPTION = NOT_OBJECT_EXCEPTION
module.exports.ARRAY_EXCEPTION = ARRAY_EXCEPTION
module.exports.NOT_ARRAY_EXCEPTION = NOT_ARRAY_EXCEPTION
module.exports.FUNCTION_EXCEPTION = FUNCTION_EXCEPTION
module.exports.NOT_FUNCTION_EXCEPTION = NOT_FUNCTION_EXCEPTION

module.exports.argumentException = argumentException
module.exports.nullOrUndefinedException = nullOrUndefinedException
module.exports.notNullOrUndefinedException = notNullOrUndefinedException
module.exports.nullException = nullException
module.exports.notNullException = notNullException
module.exports.undefinedException = undefinedException
module.exports.notUndefinedException = notUndefinedException
module.exports.blankException = blankException
module.exports.notBlankException = notBlankException
module.exports.emptyException = emptyException
module.exports.notEmptyException = notEmptyException
module.exports.booleanException = booleanException
module.exports.notBooleanException = notBooleanException
module.exports.numberException = numberException
module.exports.notNumberException = notNumberException
module.exports.stringException = stringException
module.exports.notStringException = notStringException
module.exports.objectException = objectException
module.exports.notObjectException = notObjectException
module.exports.arrayException = arrayException
module.exports.notArrayException = notArrayException
module.exports.functionException = functionException
module.exports.notFunctionException = notFunctionException

module.exports.isNullOrUndefined = isNullOrUndefined
module.exports.isNotNullOrUndefined = isNotNullOrUndefined
module.exports.isBlank = isBlank
module.exports.isNotBlank = isNotBlank
module.exports.isEmpty = isEmpty
module.exports.isNotEmpty = isNotEmpty
module.exports.oneIsEmpty = oneIsEmpty
module.exports.isEquals = isEquals
module.exports.isNotEquals = isNotEquals
module.exports.oneIsEquals = oneIsEquals
module.exports.contain = contain
module.exports.noContain = noContain
module.exports.clone = clone

module.exports.isNull = isNull
module.exports.isNotNull = isNotNull
module.exports.isUndefined = isUndefined
module.exports.isNotUndefined = isNotUndefined
module.exports.isBoolean = isBoolean
module.exports.isNotBoolean = isNotBoolean
module.exports.isNumber = isNumber
module.exports.isNotNumber = isNotNumber
module.exports.isString = isString
module.exports.isNotString = isNotString
module.exports.isObject = isObject
module.exports.isNotObject = isNotObject
module.exports.isArray = isArray
module.exports.isNotArray = isNotArray
module.exports.isFunction = isFunction
module.exports.isNotFunction = isNotFunction
module.exports.getType = getType

module.exports.setDebug = setDebug
module.exports.isDebug = isDebug
module.exports.debug = debug
module.exports.error = error