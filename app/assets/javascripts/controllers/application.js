EmberLearn.ApplicationController = Ember.Controller.extend({
	isSignedIn: function(){
		 return this.get('content') != null ;
		}.property('content')
});