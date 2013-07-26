TacoManager.TacoPointForm = Em.View.extend(
  tagName: 'form'
  templateName: 'taco_points_new',
  classNames: 'modal fade in form-custom-field-modal'.w()
  didInsertElement: ->
    @$().modal
      show: true
      backdrop: 'static'

  willDestroyElement: ->
    @$().modal 'hide'

  cancelTacoPoint: ->
    @destroy()

)