TacoManager.Router.map ->

  @resource "users", ->
    @resource "user",
      path: ':user_id'
  @resource "teams", ->
    @resource "team",
      path: ':team_id'
    , ->
      @resource "taco_points", ->
        @route 'new'


TacoManager.UsersRoute = Ember.Route.extend(
  model: ->
    TacoManager.User.find()
)

TacoManager.TeamsRoute = Ember.Route.extend(
  model: ->
    TacoManager.Team.find()
)

TacoManager.TacoPointsNewRoute = Ember.Route.extend(
  model: ->
    TacoManager.TacoRule.createRecord()

)
