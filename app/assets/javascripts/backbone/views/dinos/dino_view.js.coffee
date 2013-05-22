Dinosaur.Views.Dinos ||= {}

class Dinosaur.Views.Dinos.DinoView extends Backbone.View
  template: JST["backbone/templates/dinos/dino"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
