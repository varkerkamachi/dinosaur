Dinosaur.Views.Herds ||= {}

class Dinosaur.Views.Herds.HerdView extends Backbone.View
  template: JST["backbone/templates/herds/herd"]

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
