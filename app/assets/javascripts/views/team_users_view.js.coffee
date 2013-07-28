TacoManager.TeamUsersView = Em.View.extend(

  templateName: "team_users_view"

  onClick: (obj)->
    user = TacoManager.User.find obj.get('id')
    @get('controller').set('user', user)
    newView = TacoManager.TacoPointForm.create()
    @get("myContainerView").pushObject(newView)

)