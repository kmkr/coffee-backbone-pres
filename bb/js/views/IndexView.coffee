class np.views.IndexView extends Backbone.View
  template: _.template(np.templates.IndexTemplate)

  render: ->
    $(@el).html(@template)
    @
