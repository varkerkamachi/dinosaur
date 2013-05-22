Dinosaur.Views.Herds ||= {}

class Dinosaur.Views.Herds.NewView extends Backbone.View
  template: JST["backbone/templates/herds/new"]

  events:
    "submit #new-herd": "save"

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
      success: (herd) =>
        @model = herd
        window.location.hash = "/#{@model.id}"

      error: (herd, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
