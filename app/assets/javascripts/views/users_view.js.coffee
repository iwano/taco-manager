TacoManager.UsersView = Em.View.extend(

  templateName: "users_view"

  showAddTacoPointModal: (event)->
    console.log @get('model')
    console.log @get('item')
    console.log @get('context')
    @get('controller').set('user', '')
    @get('myContainerView')
    newView = TacoManager.TacoPointForm.create()
    this.get("myContainerView").pushObject(newView)
)