###====================================================================================
#                                     Dépendances
#===================================================================================###
moment = require 'moment'
util = require './util'


###====================================================================================
#                                     Constantes
#===================================================================================###
#Format date
DATE_FR = 'DD/MM/YYYY'
DATE_FR_2 = 'DD/MM/YY'
DATE_FR_3 = 'DD-MM-YYYY'
DATE_FR_4 = 'DD-MM-YY'
DATE_EN = 'MM/DD/YYYY'
DATE_EN_2 = 'MM/DD/YY'
DATE_EN_3 = 'MM-DD-YYYY'
DATE_EN_4 = 'MM-DD-YY'

#regex for formatted date
regexFormat = {
    'DD/MM/YYYY': {regex: /(\d{2})\/(\d{2})\/(\d{4})/, result: "$2/$1/$3"},
    'DD/MM/YY': {regex: /(\d{2})\/(\d{2})\/(\d{2})/, result: "$2/$1/$3"},
    'DD-MM-YYYY': {regex: /(\d{2})-(\d{2})-(\d{4})/, result: "$2/$1/$3"},
    'DD-MM-YY': {regex: /(\d{2})-(\d{2})-(\d{2})/, result: "$2/$1/$3"},
    'MM/DD/YYYY': {regex: /(\d{2})\/(\d{2})\/(\d{4})/, result: "$1/$2/$3"},
    'MM/DD/YY': {regex: /(\d{2})\/(\d{2})\/(\d{2})/, result: "$1/$2/$3"},
    'MM-DD-YYYY': {regex: /(\d{2})-(\d{2})-(\d{4})/, result: "$1/$2/$3"},
    'MM-DD-YY': {regex: /(\d{2})-(\d{2})-(\d{2})/, result: "$1/$2/$3"}
}

defaultFormat = DATE_EN

###====================================================================================
#                                   methodes date
#===================================================================================###
###
# Set default format
# @param format
# @exception ARGUMENT_EXCEPTION
###
setDefaultFormat = (format) -> 
    util.argumentException util.isNotObject(regexFormat[format]), "bad format (util.setDefaultFormat)"
    defaultFormat = format 


###
# Create a new date
# @param dateString
# @param format
# @return Date
###
toBuild = (dateString, format) -> 
    date = null;
    if util.isNotString dateString then date = null
    else if util.isObject regexFormat[format]
            date = new Date dateString.replace regexFormat[format]['regex'], regexFormat[format]['result']
    else date = new Date dateString.replace regexFormat[defaultFormat]['regex'], regexFormat[defaultFormat]['result']
    date
        
        
###
# to format date
# @param date
# @param format
# @return string
# @exception ARGUMENT_EXCEPTION
###
toFormat = (date, format) -> 
    util.argumentException not isValide(date), "dateUtil.toFormat => date isn't a date value."
    if util.isObject regexFormat[format] then moment(date).format format else moment(date).format defaultFormat
            
        
###
# check if value is valide date
# @param value
# @return boolean
###
isValide = (value) -> 
    if (value instanceof Date) and not isNaN value.getTime() then true
    else false


###====================================================================================
#                                   Exports
#===================================================================================###
module.exports.DATE_FR = DATE_FR
module.exports.DATE_FR_2 = DATE_FR_2
module.exports.DATE_FR_3 = DATE_FR_3
module.exports.DATE_FR_4 = DATE_FR_4
module.exports.DATE_EN = DATE_EN
module.exports.DATE_EN_2 = DATE_EN_2
module.exports.DATE_EN_3 = DATE_EN_3
module.exports.DATE_EN_4 = DATE_EN_4

module.exports.setDefaultFormat = setDefaultFormat
module.exports.toBuild = toBuild
module.exports.toFormat = toFormat
module.exports.isValide = isValide