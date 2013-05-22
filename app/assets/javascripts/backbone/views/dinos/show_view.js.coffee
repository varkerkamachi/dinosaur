Dinosaur.Views.Dinos ||= {}

class Dinosaur.Views.Dinos.ShowView extends Backbone.View
  template: JST["backbone/templates/dinos/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
