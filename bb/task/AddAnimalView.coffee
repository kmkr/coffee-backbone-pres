class np.views.AddAnimalView extends Backbone.View
  template: _.template(np.templates.AddAnimalTemplate)

  events:
    "keypress input"      : "addAnimalOnEnter"

  addAnimalOnEnter: (e) ->
    if e.keyCode is 13
      e.preventDefault()
      @collection.add({type: @$('input').val()})

  render: ->
    $(@el).html(@template)
    @
