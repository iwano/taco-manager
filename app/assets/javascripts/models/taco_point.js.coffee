TacoManager.TacoPoint = DS.Model.extend({

  user:       DS.belongsTo('TacoManager.User')
  taco_rule:  DS.belongsTo('TacoManager.TacoRule')
  didCreate: ->
    user = @.get('user')
    current_tacopoints = user.get('current_tacopoints')
    user.set('current_tacopoints', current_tacopoints + 1)
});