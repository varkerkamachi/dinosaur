Dinosaur.Views.Dinos ||= {}

class Dinosaur.Views.Dinos.NewView extends Backbone.View
  template: JST["backbone/templates/dinos/new"]

  events:
    "submit #new-dino": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (dino) =>
        @model = dino
        window.location.hash = "/#{@model.id}"

      error: (dino, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
