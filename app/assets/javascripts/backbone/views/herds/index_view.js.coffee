Dinosaur.Views.Herds ||= {}

class Dinosaur.Views.Herds.IndexView extends Backbone.View
  template: JST["backbone/templates/herds/index"]

  initialize: () ->
    @options.herds.bind('reset', @addAll)

  addAll: () =>
    @options.herds.each(@addOne)

  addOne: (herd) =>
    view = new Dinosaur.Views.Herds.HerdView({model : herd})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(herds: @options.herds.toJSON() ))
    @addAll()

    return this
