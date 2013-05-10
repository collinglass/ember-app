App.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
  ).property('currentRoute')

  isCanvas: (->
    @get('currentRoute') == 'canvas'
  ).property('currentRoute')

  isUsers: (->
    @get('currentRoute') == 'users'
  ).property('currentRoute')

