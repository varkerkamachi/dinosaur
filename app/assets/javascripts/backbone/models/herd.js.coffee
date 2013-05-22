class Dinosaur.Models.Herd extends Backbone.Model
  paramRoot: 'herd'

  defaults:
    name: null
    size: null

class Dinosaur.Collections.HerdsCollection extends Backbone.Collection
  model: Dinosaur.Models.Herd
  url: '/herds'
