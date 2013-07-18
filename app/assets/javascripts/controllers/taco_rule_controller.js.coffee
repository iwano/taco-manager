TacoManager.TacoRuleController = Ember.ObjectController.extend(
  isEditing: false

  editTacoRule: ->
    @set('isEditing', true)

  acceptChanges: ->
    @set('isEditing', false)
    @get('model').save() unless @get('model').get('isSaving')
)
