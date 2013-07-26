TacoManager.TeamController = Ember.ObjectController.extend(

  user: null

  taco_rule: null

  createTacoRule: ->
    description = @get("newDescription")
    return  unless description.trim()
    taco_rule = TacoManager.TacoRule.createRecord(
      description: description
    )
    taco_rule.set('team', @get('model'))
    @set "newDescription", ""
    taco_rule.save()

  lastUpdatedAt: (->
    taco_rules = @get('taco_rules')
    last_updated = ''
    taco_rules.forEach((item) ->
      date = item.get("updated_at")

      last_updated = date if date > last_updated
    )

    last_updated
  ).property("taco_rules.@each.updated_at")

  usersCount: (->
    users = this.get('users')
    users.get('length')
  ).property("users.@each")

  inflection: (->
    count = this.get('usersCount')
    count == 1 ? 'user' : 'users'
  ).property('usersCount')

  addTacoRule: ->
    taco_point = TacoManager.TacoPoint.createRecord(
      user: @user
    )
    taco_point.save()

)
