class np.routers.Router extends Backbone.Router
  routes:
    ""        : "index"


  index: ->
    @swap(new np.views.IndexView())


  swap: (newView) ->
    $('#content').html(newView.render().el)
