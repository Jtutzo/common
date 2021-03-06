// Generated by CoffeeScript 1.12.2
(function() {
  var util;

  util = require('./util');


  /*
   * Send an ajax object
   * @param res
   * @param object
   * @exception NOT_OBJECT_EXCEPTION
   */

  module.exports.sendObject = function(res, object) {
    var response;
    util.notObjectException(res);
    util.notObjectException(object);
    response = {
      'object': object
    };
    res.setHeader('Content-Type', 'application/json');
    return res.send(response);
  };


  /*
   * Send an ajax data
   * @param res
   * @param object
   * @exception NOT_OBJECT_EXCEPTION
   */

  module.exports.sendData = function(res, data) {
    var response;
    util.notObjectException(res);
    response = {
      'aaData': data
    };
    res.setHeader('Content-Type', 'application/json');
    return res.send(response);
  };


  /*
   * Send an ajax message
   * @param res
   * @param object
   * @exception NOT_OBJECT_EXCEPTION, NOT_STRING_EXCEPTION
   */

  module.exports.sendMessage = function(res, msg) {
    util.notObjectException(res);
    util.notStringException(msg);
    res.setHeader('Content-Type', 'text/html');
    return res.send(msg);
  };


  /*
   * Send an ajax error
   * @param res
   * @param object
   * @exception NOT_OBJECT_EXCEPTION, NOT_STRING_EXCEPTION
   */

  module.exports.sendError = function(res, msg) {
    util.notObjectException(res);
    util.notStringException(msg);
    res.setHeader('Content-Type', 'text/html');
    return res.send("Error technique : [" + msg + "]");
  };


  /*
   * Vérifie et extrait le paramêtres correspondant au nom
   * @param req
   * @param name
   * @param info: {type: string, required: boolean}
   * @return params
   * @exception NOT_OBJECT_EXCEPTION, NOT_STRING_EXCEPTION, BLANK_EXCEPTION
   */

  module.exports.extractParam = function(req, name, info) {
    var param, required, type, typeParam;
    util.notObjectException(req);
    util.notStringException(name);
    util.blankException(name);
    param = util.isObject(req.body) ? req.body[name] : null;
    if (util.isNotNullOrUndefined(param)) {
      param = JSON.parse(param);
    }
    if (util.isObject(info)) {
      typeParam = util.getType(param);
      required = info['required'];
      type = info['type'];
      if (required && (typeParam === util.UNDEFINED || typeParam === util.NULL)) {
        throw new Error("module requestUtil => params : " + name + " is required.");
      }
      if (util.isString(type && util.isNotEmpty(type && typeParam !== type && ((!required && typeParam !== util.UNDEFINED && typeParam !== util.NULL) || required)))) {
        throw new Error("module requestUtil => params : " + name + " bad type");
      }
    }
    return param;
  };

}).call(this);
