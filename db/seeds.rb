# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dino.create(name: 'Allosaurus', description: 'Allosaurus was a large predator. Its skull was large and equipped with dozens of large, sharp teeth. It had large and powerful hindlimbs, and the body was balanced by a long, heavy tail.', image: 'images/home/cover/dino1.jpg', thumb: 'images/home/cover/dino1.jpg', terrain: 'flatland', weight: '2.3', height: '32', speed: '25')
Dino.create(name: 'Brachiosaurus', description: 'Brachiosaurus was a quadrupedal animal with a small skull, a long neck, a large trunk with a high-ellipsoid cross section, a long, muscular tail and slender, columnar limbs. The skull had a robust, wide muzzle and thick jaw bones, with spoon-shaped teeth.', image: 'images/home/cover/brachiosaurus.jpg', thumb: 'images/home/cover/brachiosaurus.jpg', terrain: 'flatland, Colorado', weight: '38', height: '30', speed: '2')
Dino.create(name: 'Pteranodon', description: 'Pteranodon is a genus of pterosaurs which included some of the largest known flying reptiles, with wingspans over 20 ft.', image: 'images/home/cover/pteranodon.jpg', thumb: 'images/home/cover/pteranodon.jpg', terrain: 'north america', weight: '0.02', height: '20', speed: '17')