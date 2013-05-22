class Dinosaur.Models.Dino extends Backbone.Model
  paramRoot: 'dino'
	
	defaults:
		name: null
		description: null

class Dinosaur.Collections.DinosCollection extends Backbone.Collection
  model: Dinosaur.Models.Dino
  url: '/dinos'
