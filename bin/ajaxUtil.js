// Generated by CoffeeScript 1.12.2

/*====================================================================================
 *                                     Dépendances
#===================================================================================
 */

(function() {
  var $, ERROR, NO_DATA_RECEIVED_EXCEPTION, SUCCESS, confReferentiel, defaultConfAjax, newConfAjax, newConfReferentiel, paramsAjax, paramsReferentiel, query, referentiel, send, toObject, toReferentiel, util;

  $ = require('jquery');

  util = require('./util');


  /*====================================================================================
   *                                     Constantes
  #===================================================================================
   */

  SUCCESS = 'SUCCESS';

  ERROR = 'ERROR';

  NO_DATA_RECEIVED_EXCEPTION = "NoDataReceived";


  /*====================================================================================
   *                                     Variables
  #===================================================================================
   */

  paramsAjax = {
    url: "",
    data: null,
    success: null,
    failure: null,
    method: 'POST',
    async: true,
    labelTechnicalError: "Erreur technique"
  };

  paramsReferentiel = {
    url: "",
    repalceUrl: '{referentiel}',
    success: null,
    failure: null,
    method: 'POST',
    async: false,
    labelTechnicalError: "Erreur technique"
  };

  referentiel = {
    cache: [],
    alreadySend: [],
    callbacks: []
  };


  /*====================================================================================
   *                                   methodes ajax
  #===================================================================================
   */


  /*
   * default's configuration ajax query
   * @param confAjax
   * @return confAjax
   * @exception NOT_OBJECT_EXCEPTION
   */

  defaultConfAjax = function(confAjax) {
    return paramsAjax = newConfAjax(util.isUndefined(confAjax) ? {} : confAjax);
  };


  /*
   * default's configuration cache referenteil
   * @param confCache
   * @return confRef 
   * @exception NOT_OBJECT_EXCEPTION
   */

  confReferentiel = function(confRef) {
    return paramsReferentiel = newConfReferentiel(util.isUndefined(confRef) ? {} : confRef);
  };


  /*
   * Send ajax query 
   * @param confAjax
   * @exception NO_DATA_RECEIVED_EXCEPTION
   */

  send = function(confAjax) {
    var conf;
    confAjax = util.isNullOrUndefiend(confAjax) ? {} : confAjax;
    conf = newConfAjax(confAjax);
    query(conf);
    return true;
  };


  /*
   * Search in cache referentiel (or send query ajax)
   * @param name
   * @param success
   * @param failure
   * @exception BLANK_EXCEPTION, NOT_STRING_EXCEPTION, ARGUMENT_EXCEPTION, NO_DATA_RECEIVED_EXCEPTION
   */

  toReferentiel = function(name, success, faillure) {
    var conf, expr, response;
    util.blankException(name, "name mustn't be blank (ajaxUtil.toReferentiel).");
    util.notStringException(name, "name must be a string value (ajaxUtil.toReferentiel).");
    if (util.isNotBlank(referentiel['cache'][name])) {
      response = referentiel['cache'][name];
      if (typeof success === "function") {
        success(response);
      }
    } else if (referentiel['alreadySend'][name]) {
      referentiel.callbacks.push(success);
    } else {
      expr = paramsReferentiel['url'].indexOf(paramsReferentiel['repalceUrl']) < 0;
      util.argumentException(expr, "repalceUrl isn't present in default url (ajaxUtil.toReferentiel).");
      conf = newConfReferentiel({
        url: url.replace(repalceUrl, name),
        success: function(resp) {
          var callback, i, len, ref;
          resp = util.isNotNullOrUndefined(resp) ? resp.obj : resp;
          referentiel['cache'][name] = resp;
          if (typeof success === "function") {
            success(resp);
          }
          ref = referentiel['callbacks'];
          for (i = 0, len = ref.length; i < len; i++) {
            callback = ref[i];
            if (typeof callback === "function") {
              callback(resp);
            }
          }
          return true;
        },
        faillure: faillure
      });
      query(conf);
    }
    return true;
  };


  /*====================================================================================
   *                                   methodes privates
  #===================================================================================
   */


  /*
   * factory conf ajax query
   * @param conf
   * @private
   * @exception NOT_OBJECT_EXCEPTION, EMPTY_EXCEPTION, NOT_STRING_EXCEPTION, NOT_BOOLEAN_EXCEPTION, ARGUMENT_EXCEPTION
   */

  newConfAjax = function(conf) {
    var expr, retour;
    util.notObjectException(conf, "conf must be an object value (util.factoryParamsAjax).");
    retour = util.clone(paramsAjax);
    if (util.isNotNullOrUndefined(conf['url'])) {
      util.notStringException(conf['url'], "conf.url must be a string value (util.factoryParamsAjax).");
      retour['url'] = conf['url'];
    }
    if (util.isNotUndefined(conf['data'])) {
      expr = (util.isNotNull(conf['data'])) && util.isNotObject(conf['data']);
      util.argumentException(expr, "conf.data must be a null or an object value (util.factoryParamsAjax).");
      retour['data'] = util.clone(conf['data']);
    }
    if (util.isNotUndefined(conf['success'])) {
      expr = (util.isNotNull(conf['success'])) && util.isNotFunction(conf['success']);
      util.argumentException(expr, "conf.success must be a null or a function value (util.factoryParamsAjax).");
      retour['success'] = conf['success'];
    }
    if (util.isNotUndefined(conf['failure'])) {
      expr = (util.isNotNull(conf['failure'])) && util.isNotFunction(conf['failure']);
      util.argumentException(expr, "conf.failure must be a null or a function value (util.factoryParamsAjax).");
      retour['failure'] = conf['failure'];
    }
    if (util.isNotNullOrUndefined(conf['method'])) {
      util.notStringException(conf['method'], "conf.method must be a string value (util.factoryParamsAjax).");
      expr = conf['method'] !== 'POST' && conf['method'] !== 'GET';
      util.argumentException(expr, "conf.methode must be equals to 'GET' or 'POST' (util.factoryParamsAjax).");
      retour['method'] = conf['method'];
    }
    if (util.isNotNullOrUndefined(conf['async'])) {
      util.notBooleanException(conf['async'], "conf.async must be a boolean value (util.factoryParamsAjax).");
      retour['async'] = conf['async'];
    }
    return retour;
  };


  /*
   * factory conf referentiel query
   * @param conf
   * @private
   * @exception NOT_OBJECT_EXCEPTION, EMPTY_EXCEPTION, NOT_STRING_EXCEPTION, NOT_BOOLEAN_EXCEPTION, ARGUMENT_EXCEPTION
   */

  newConfReferentiel = function(conf) {
    var expr, retour;
    util.notObjectException(conf, "conf must be an object value (util.factoryConfReferentiel).");
    retour = util.clone(paramsReferentiel);
    if (util.isNotNullOrUndefined(conf['url'])) {
      util.notStringException(conf['url'], "conf.url must be a string value (util.factoryConfReferentiel).");
      retour['url'] = conf['url'];
    }
    if (util.isNotNullOrUndefined(conf['repalceUrl'])) {
      util.notStringException(conf['repalceUrl'], "conf.repalceUrl must be a string value (util.factoryConfReferentiel).");
      retour['repalceUrl'] = util.clone(conf['repalceUrl']);
    }
    if (isNotUndefined(conf['success'])) {
      expr = (util.isNotNull(conf['success'])) && util.isNotFunction(conf['success']);
      util.argumentException(expr, "conf.success must be a null or a function value (util.factoryParamsAjax).");
      retour['success'] = conf['success'];
    }
    if (isNotUndefined(conf['failure'])) {
      expr = (util.isNotNull(conf['failure'])) && util.isNotFunction(conf['failure']);
      util.argumentException(expr, "conf.failure must be a null or a function value (util.factoryParamsAjax).");
      retour['failure'] = conf['failure'];
    }
    if (isNotNullOrUndefined(conf['method'])) {
      util.notStringException(conf['method'], "conf.method must be a string value (util.factoryParamsAjax).");
      expr = conf['method'] !== 'POST' && conf['method'] !== 'GET';
      util.argumentException(expr, "conf.methode must be equals to 'GET' or 'POST' (util.factoryParamsAjax).");
      retour['method'] = conf['method'];
    }
    if (isNotNullOrUndefined(conf['async'])) {
      util.notBooleanException(conf['async'], "conf.async must be a boolean value (util.factoryParamsAjax).");
      retour['async'] = conf['async'];
    }
    return retour;
  };


  /*
   * Send query with ajax jquery lib 
   * @param conf
   * @private
   * @exception NO_DATA_RECEIVED_EXCEPTION
   */

  query = function(conf) {
    var failure, success;
    success = function(obj) {
      util.debug("Response : " + obj);
      return typeof conf.success === "function" ? conf.success(obj) : void 0;
    };
    failure = function(obj) {
      util.error("error : " + obj);
      return typeof conf.failure === "function" ? conf.failure(obj) : void 0;
    };
    util.notObjectException(conf, "options must be an object value (util.query).");
    $.ajaxSetup({
      async: (conf.async ? true : false)
    });
    util.debug("[" + conf.method + "][" + conf.url + "][data : " + conf.data + "]");
    $.ajax({
      type: conf.method,
      url: conf.url,
      data: conf.data
    }).done(function(response) {
      var e, obj;
      try {
        if ((response != null) && util.isNotUndefined(response)) {
          obj = toObject(response, conf);
          if (!obj) {
            throw Error(NO_DATA_RECEIVED_EXCEPTION);
          } else if (obj.typeMessage === SUCCESS) {
            success(obj);
          } else {
            if (typeof failure === "function") {
              failure(obj);
            }
          }
        } else {
          if (typeof failure === "function") {
            failure(obj);
          }
        }
      } catch (error) {
        e = error;
        util.error("exception : " + exception + " [response : " + response(+"]"));
      }
      return true;
    }).fail(function(jqXHR, textStatus) {
      var obj;
      obj = {};
      obj.errorMessages = [conf.url + ' -> [Statut : ' + jqXHR.status + ',' + jqXHR.statusText + ']'];
      if (typeof failure === "function") {
        failure(obj);
      }
      return true;
    });
    $.ajaxSetup({
      async: true
    });
    return true;
  };


  /*
   * Convert ajax response to object 
   * @param response
   * @return object
   * @private
   */

  toObject = function(response, conf) {
    var e, retour;
    retour = response;
    try {
      retour = JSON.parse(response);
    } catch (error) {
      e = error;
    }
    if (util.isString(retour)) {
      if (retour === SUCCESS) {
        retour = {
          typeMessage: SUCCESS,
          errorMessages: []
        };
      } else if (retour === ERROR) {
        retour = {
          typeMessage: ERROR,
          errorMessages: [conf['labelTechnicalError']]
        };
      } else {
        retour = {
          typeMessage: ERROR,
          errorMessages: [retour]
        };
      }
    } else if (typeof retour['aaData'] !== 'undefined') {
      retour = {
        typeMessage: SUCCESS,
        errorMessages: [],
        data: retour['aaData']
      };
    } else if (typeof retour['object'] !== 'undefined') {
      retour = {
        typeMessage: SUCCESS,
        errorMessages: [],
        data: retour['object']
      };
    }
    return retour;
  };


  /*====================================================================================
   *                                   Exports
  #===================================================================================
   */

  module.exports.SUCCESS = SUCCESS;

  module.exports.ERROR = ERROR;

  module.exports.NO_DATA_RECEIVED_EXCEPTION = NO_DATA_RECEIVED_EXCEPTION;

  module.exports.defaultConfAjax = defaultConfAjax;

  module.exports.confReferentiel = confReferentiel;

  module.exports.send = send;

  module.exports.toReferentiel = toReferentiel;

}).call(this);