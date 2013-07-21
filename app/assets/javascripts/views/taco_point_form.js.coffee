TacoManager.TacoPointsNewView = Em.View.extend
  tagName: 'form'
  classNames: 'modal fade in form-custom-field-modal'.w()
  didInsertElement: ->
     @$().modal 'show'
  willDestroyElement: ->
    @$().modal 'hide'
