class Dinosaur.Routers.DinosRouter extends Backbone.Router
  initialize: (options) ->
    @dinos = new Dinosaur.Collections.DinosCollection()
    @dinos.reset options.dinos

  routes:
    "new"      : "newDino"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newDino: ->
    @view = new Dinosaur.Views.Dinos.NewView(collection: @dinos)
    $("#dinos").html(@view.render().el)

  index: ->
    @view = new Dinosaur.Views.Dinos.IndexView(dinos: @dinos)
    $("#dinos").html(@view.render().el)

  show: (id) ->
    dino = @dinos.get(id)

    @view = new Dinosaur.Views.Dinos.ShowView(model: dino)
    $("#dinos").html(@view.render().el)

  edit: (id) ->
    dino = @dinos.get(id)

    @view = new Dinosaur.Views.Dinos.EditView(model: dino)
    $("#dinos").html(@view.render().el)
