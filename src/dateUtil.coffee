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
    'DD/MM/YYYY': [/(\d{2})\/(\d{2})\/(\d{4})/, "$2/$1/$3"],
    'DD/MM/YY': [/(\d{2})\/(\d{2})\/(\d{2})/, "$2/$1/$3"],
    'DD/MM/YYYY': [/(\d{2})-(\d{2})-(\d{4})/, "$2/$1/$3"],
    'DD/MM/YY': [/(\d{2})-(\d{2})-(\d{2})/, "$2/$1/$3"],
    'MM/DD/YYYY': [/(\d{2})\/(\d{2})\/(\d{4})/, "$1/$2/$3"],
    'MM/DD/YY': [/(\d{2})\/(\d{2})\/(\d{2})/, "$1/$2/$3"],
    'MM/DD/YYYY': [/(\d{2})-(\d{2})-(\d{4})/, "$1/$2/$3"],
    'MM/DD/YY': [/(\d{2})-(\d{2})-(\d{2})/, "$1/$2/$3"]
}


###====================================================================================
#                                   methodes date
#===================================================================================###
###
# Create a new date
# @param dateString
# @param format
# @return Date
###
toBuild = (dateString, format) -> 
    date = null;
    if util.isNullOrUndefined dateString then date = null
    else if util.isArray regexFormat[format] then date = new Date dateString.replace regexFormat[format][0], regexFormat[format][1]
    else date = new Date dateString
    date
        
        
###
# to format date
# @param date
# @param format
# @return string
# @exception NOT_STRING_EXCEPTION, ARGUMENT_EXCEPTION
###
toFormat = (date, format) -> 
    util.notStringException format, "dateUtil.toFormat => format must be an string value."
    util.argumentException isValideDate(date), "dateUtil.toFormat => date isn't a date value."
    moment(date).format format
            
        
###
# check if value is valide date
# @param value
# @return boolean
###
isValide = (value) -> 
    if (util.isObject date) and isNaN date.getTime() then true
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

module.exports.toBuild = toBuild
module.exports.toFormat = toFormat
module.exports.isValide = isValide