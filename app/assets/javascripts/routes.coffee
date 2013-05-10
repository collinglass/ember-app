App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map (match) ->
  @resource 'users', ->
    @route 'show',
      path: '/:user_id'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.UsersRoute = Ember.Route.extend
  setupController: ->
    @controllerFor('application').set('currentRoute', 'users')

App.UsersIndexRoute = App.UsersRoute.extend
  model: ->
    App.User.find()
  setupController: (controller, model) ->
    @_super()
    controller.set('users', model)

App.UsersShowRoute = App.UsersRoute.extend
  model: (params) ->
    App.User.find(params.user_id)
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)



