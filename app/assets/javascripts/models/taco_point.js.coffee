TacoManager.TacoPoint = DS.Model.extend({

  user:       DS.belongsTo('TacoManager.User')
  taco_rule:  DS.belongsTo('TacoManager.TacoRule')

});