TacoManager.TacoRule = DS.Model.extend({

  description: DS.attr('string')
  team:        DS.belongsTo('TacoManager.Team')
  updated_at:  DS.attr('string')

});
