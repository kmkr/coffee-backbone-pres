class np.views.IndexView extends Backbone.View
  template: _.template(np.templates.IndexTemplate)

  events:
    "click button"      : "showAnimals"


  showAnimals: ->
    @collection.forEach( (animal) =>
      p = $('<p>').text(animal.get('type'))
      @$el.append(p)
    )

  render: ->
    @$el.html(@template)
    @
