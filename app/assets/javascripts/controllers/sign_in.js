EmberLearn.UsersSignInController = Ember.Controller.extend({
	email: '',
	password: '',
	actions: {
		sign_in: function(){
			var controller = this;
			var session = controller.store.createRecord('session',{
				email: controller.get('email'),
				password: controller.get('password'),
			});
			console.log(this.get('email'));
			console.log(this.get('password'));
			if(session.get('email') && session.get('password')){
				session.save().then(function(res){
						console.log(res);
					console.log('Logged in');
				},
				function(res){
					var val = JSON.parse(res.responseText);
					console.log(val);
				});
			}
		}
	}
});