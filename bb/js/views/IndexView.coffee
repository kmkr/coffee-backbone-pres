class np.IndexView extends Backbone.View
  template: _.template(np.IndexTemplate)

  render: ->
    $(@el).html(@template)
    @
