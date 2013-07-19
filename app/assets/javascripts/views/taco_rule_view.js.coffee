TacoManager.EditTacoRuleView = Ember.TextField.extend(

  classNames: ["editing"]

  insertNewline: ->
    @get("controller").acceptChanges()

  focusOut: ->
    @get("controller").acceptChanges()

  didInsertElement: ->
    @$().focus()

)
