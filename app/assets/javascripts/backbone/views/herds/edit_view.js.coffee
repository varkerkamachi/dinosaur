Dinosaur.Views.Herds ||= {}

class Dinosaur.Views.Herds.EditView extends Backbone.View
  template: JST["backbone/templates/herds/edit"]

  events:
    "submit #edit-herd": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (herd) =>
        @model = herd
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
