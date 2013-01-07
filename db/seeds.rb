# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dino.create(name: 'Allosaurus', description: 'Allosaurus was a large predator. Its skull was large and equipped with dozens of large, sharp teeth. It had large and powerful hindlimbs, and the body was balanced by a long, heavy tail.', image: 'assets/home/cover/dino1.jpg', thumb: 'assets/home/cover/dino1.jpg', terrain: 'flatland', geoX: '-34.43256', geoY: '86.2130990', weight: '2.3', height: '32', speed: '25', era: 'jurassic', diet: 'carnivore')
Dino.create(name: 'Brachiosaurus', description: 'Brachiosaurus was a quadrupedal animal with a small skull, a long neck, a large trunk with a high-ellipsoid cross section, a long, muscular tail and slender, columnar limbs. The skull had a robust, wide muzzle and thick jaw bones, with spoon-shaped teeth.', image: 'assets/home/cover/brachiosaurus.jpg', thumb: 'assets/home/cover/brachiosaurus.jpg', terrain: 'flatland, Colorado', geoX: '70.27421', geoY: '135.2475', weight: '38', height: '30', speed: '2', era: 'jurassic', diet: 'herbivore')
Dino.create(name: 'Pteranodon', description: 'Pteranodon is a genus of pterosaurs which included some of the largest known flying reptiles, with wingspans over 20 ft.', image: 'assets/home/cover/pteranodon.jpg', thumb: 'assets/home/cover/pteranodon.jpg', terrain: 'north america', geoX: '25.24509', geoY: '-12.1351', weight: '0.02', height: '20', speed: '17', era: 'cretaceous', diet: 'fish')