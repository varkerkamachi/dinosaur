class Dinosaur.Routers.HerdsRouter extends Backbone.Router
  initialize: (options) ->
    @herds = new Dinosaur.Collections.HerdsCollection()
    @herds.reset options.herds

  routes:
    "new"      : "newHerd"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newHerd: ->
    @view = new Dinosaur.Views.Herds.NewView(collection: @herds)
    $("#herds").html(@view.render().el)

  index: ->
    @view = new Dinosaur.Views.Herds.IndexView(herds: @herds)
    $("#herds").html(@view.render().el)

  show: (id) ->
    herd = @herds.get(id)

    @view = new Dinosaur.Views.Herds.ShowView(model: herd)
    $("#herds").html(@view.render().el)

  edit: (id) ->
    herd = @herds.get(id)

    @view = new Dinosaur.Views.Herds.EditView(model: herd)
    $("#herds").html(@view.render().el)
