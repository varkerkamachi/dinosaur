Dinosaur.Views.Herds ||= {}

class Dinosaur.Views.Herds.ShowView extends Backbone.View
  template: JST["backbone/templates/herds/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
