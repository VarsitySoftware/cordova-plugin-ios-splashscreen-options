/*global cordova,window,console*/
/**
 * A SplashScreen Options plugin for Cordova
 * 
 * Developed by John Weaver for Varsity Software
 */

var SplashScreenOptions = function() {

};

SplashScreenOptions.prototype.hideSpinner = function(success, fail, options) {
	if (!options) {
		options = {};
	}

	return cordova.exec(success, fail, "SplashScreenOptions", "hideSpinner", [options]);
};

SplashScreenOptions.prototype.enableUserInteraction = function(success, fail, options) {
	if (!options) {
		options = {};
	}

	return cordova.exec(success, fail, "SplashScreenOptions", "enableUserInteraction", [options]);
};

window.splashScreenOptions = new SplashScreenOptions();
