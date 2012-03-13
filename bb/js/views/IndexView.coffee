class np.views.IndexView extends Backbone.View
  template: _.template(np.templates.IndexTemplate)

  events:
    "click button"      : "showAnimals"

  showAnimals: ->
    ul = $('<ul>')
    @collection.forEach( (animal) =>
      li = $('<li>').text(animal.get('type'))
      ul.append(li)
    )
    @$el.append(ul)
    @$('ul:last').show('slow')

  render: ->
    @$el.html(@template)
    @
