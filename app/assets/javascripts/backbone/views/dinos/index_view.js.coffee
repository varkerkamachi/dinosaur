Dinosaur.Views.Dinos ||= {}

class Dinosaur.Views.Dinos.IndexView extends Backbone.View
  template: JST["backbone/templates/dinos/index"]

  initialize: () ->
    @options.dinos.bind('reset', @addAll)

  addAll: () =>
    @options.dinos.each(@addOne)

  addOne: (dino) =>
    view = new Dinosaur.Views.Dinos.DinoView({model : dino})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(dinos: @options.dinos.toJSON() ))
    @addAll()

    return this
