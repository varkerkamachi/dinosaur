Dinosaur.Views.Dinos ||= {}

class Dinosaur.Views.Dinos.EditView extends Backbone.View
  template: JST["backbone/templates/dinos/edit"]

  events:
    "submit #edit-dinos": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (dino) =>
        @model = dino
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
