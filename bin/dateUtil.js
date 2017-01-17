// Generated by CoffeeScript 1.12.2

/*====================================================================================
 *                                     Dépendances
#===================================================================================
 */

(function() {
  var DATE_EN, DATE_EN_2, DATE_EN_3, DATE_EN_4, DATE_FR, DATE_FR_2, DATE_FR_3, DATE_FR_4, isValide, moment, regexFormat, toBuild, toFormat, util;

  moment = require('moment');

  util = require('./util');


  /*====================================================================================
   *                                     Constantes
  #===================================================================================
   */

  DATE_FR = 'DD/MM/YYYY';

  DATE_FR_2 = 'DD/MM/YY';

  DATE_FR_3 = 'DD-MM-YYYY';

  DATE_FR_4 = 'DD-MM-YY';

  DATE_EN = 'MM/DD/YYYY';

  DATE_EN_2 = 'MM/DD/YY';

  DATE_EN_3 = 'MM-DD-YYYY';

  DATE_EN_4 = 'MM-DD-YY';

  regexFormat = {
    'DD/MM/YYYY': [/(\d{2})\/(\d{2})\/(\d{4})/, "$2/$1/$3"],
    'DD/MM/YY': [/(\d{2})\/(\d{2})\/(\d{2})/, "$2/$1/$3"],
    'DD/MM/YYYY': [/(\d{2})-(\d{2})-(\d{4})/, "$2/$1/$3"],
    'DD/MM/YY': [/(\d{2})-(\d{2})-(\d{2})/, "$2/$1/$3"],
    'MM/DD/YYYY': [/(\d{2})\/(\d{2})\/(\d{4})/, "$1/$2/$3"],
    'MM/DD/YY': [/(\d{2})\/(\d{2})\/(\d{2})/, "$1/$2/$3"],
    'MM/DD/YYYY': [/(\d{2})-(\d{2})-(\d{4})/, "$1/$2/$3"],
    'MM/DD/YY': [/(\d{2})-(\d{2})-(\d{2})/, "$1/$2/$3"]
  };


  /*====================================================================================
   *                                   methodes date
  #===================================================================================
   */


  /*
   * Create a new date
   * @param dateString
   * @param format
   * @return Date
   */

  toBuild = function(dateString, format) {
    var date;
    date = null;
    if (util.isNullOrUndefined(dateString)) {
      date = null;
    } else if (util.isArray(regexFormat[format])) {
      date = new Date(dateString.replace(regexFormat[format][0], regexFormat[format][1]));
    } else {
      date = new Date(dateString);
    }
    return date;
  };


  /*
   * to format date
   * @param date
   * @param format
   * @return string
   * @exception NOT_STRING_EXCEPTION, ARGUMENT_EXCEPTION
   */

  toFormat = function(date, format) {
    util.notStringException(format, "dateUtil.toFormat => format must be an string value.");
    util.argumentException(isValideDate(date), "dateUtil.toFormat => date isn't a date value.");
    return moment(date).format(format);
  };


  /*
   * check if value is valide date
   * @param value
   * @return boolean
   */

  isValide = function(value) {
    if ((util.isObject(date)) && isNaN(date.getTime())) {
      return true;
    } else {
      return false;
    }
  };


  /*====================================================================================
   *                                   Exports
  #===================================================================================
   */

  module.exports.DATE_FR = DATE_FR;

  module.exports.DATE_FR_2 = DATE_FR_2;

  module.exports.DATE_FR_3 = DATE_FR_3;

  module.exports.DATE_FR_4 = DATE_FR_4;

  module.exports.DATE_EN = DATE_EN;

  module.exports.DATE_EN_2 = DATE_EN_2;

  module.exports.DATE_EN_3 = DATE_EN_3;

  module.exports.DATE_EN_4 = DATE_EN_4;

  module.exports.toBuild = toBuild;

  module.exports.toFormat = toFormat;

  module.exports.isValide = isValide;

}).call(this);
