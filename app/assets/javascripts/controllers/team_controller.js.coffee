TacoManager.TeamController = Ember.ObjectController.extend(

  createTacoRule: ->
    description = @get("newDescription")
    return  unless description.trim()
    taco_rule = TacoManager.TacoRule.createRecord(
      description: description
    )
    taco_rule.set('team', @get('model'))
    @set "newDescription", ""
    taco_rule.save()
)
