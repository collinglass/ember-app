App.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
  ).property('currentRoute')

  isCanvas: (->
    @get('currentRoute') == 'canvas'
  ).property('currentRoute')

  isBook: (->
    @get('currentRoute') == 'book'
  ).property('currentRoute')

  isEvents: (->
    @get('currentRoute') == 'events'
  ).property('currentRoute')

  isUsers: (->
    @get('currentRoute') == 'users'
  ).property('currentRoute')

