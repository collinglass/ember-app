App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map (match) ->
  @route 'canvas'
  @route 'book'
  @route 'events'
  @resource 'users', ->
    @route 'new'
    @route 'edit',
      path: '/:user_id/edit'
    @route 'show',
      path: '/:user_id'


App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.CanvasRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'canvas')

App.BookRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'book')

App.EventsRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'events')

App.UsersRoute = Ember.Route.extend
  setupController: ->
    @controllerFor('application').set('currentRoute', 'users')

App.UsersIndexRoute = App.UsersRoute.extend
  model: ->
    App.User.find()
  setupController: (controller, model) ->
    @_super()
    controller.set('users', model)

App.UsersNewRoute = App.UsersRoute.extend
  model: ->
    App.User.createRecord()
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)

App.UserRoute = Ember.Route.extend
  model: (params) ->
    App.User.find(params.user_id)
  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('application').set('currentRoute', 'users')

App.UsersShowRoute = App.UserRoute.extend()
App.UsersEditRoute = App.UserRoute.extend()



