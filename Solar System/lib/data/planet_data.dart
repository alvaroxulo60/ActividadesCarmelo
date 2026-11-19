class PlanetData {
  String nombre;
  String image;
  String distancia;
  String desc;

  PlanetData(this.nombre, this.image, this.distancia, this.desc);

  static List<PlanetData> planets = [
    PlanetData(
      "Sun",
      "resources/images/sun.png",
      "0 kilometers",
      "The Sun's gravity holds the solar system together, keeping everything — from the biggest planets to the smallest particles of debris — in its orbit.",
    ),
    PlanetData(
      "Mercury",
      "resources/images/mercury.png",
      "58 million kilometers",
      "Mercury is the planet nearest to the Sun, and the smallest planet in our solar system.",
    ),
    PlanetData(
      "Venus",
      "resources/images/venus.png",
      "108.2 million kilometers",
      "Venus is the second planet from the Sun, and the sixth largest planet",
    ),
    PlanetData(
      "Moon",
      "resources/images/moon.png",
      "149.6 million kilometers",
      "From lighting up our skies to preserving evidence of our solar system’s history, Earth’s closest neighbor plays a pivotal role in the study of our planet and beyond.",
    ),
    PlanetData(
      "Earth",
      "resources/images/earth.png",
      "150 million kilometers",
      "Earth – our home planet – is the third planet from the Sun, and the fifth largest planet.",
    ),
    PlanetData(
      "Mars",
      "resources/images/mars.png",
      "228 million kilometers",
      "Mars is the fourth planet from the Sun, and the seventh largest planet.",
    ),
    PlanetData(
      "Jupiter",
      "resources/images/jupiter.png",
      "778 million kilometers",
      "Jupiter is the fifth planet from the Sun, and the largest planet in our solar system.",
    ),
    PlanetData(
      "Saturn",
      "resources/images/saturn.png",
      "1.4 billion kilometers",
      "Saturn is the sixth planet from the Sun, the second largest planet in our solar system.",
    ),
    PlanetData(
      "Uranus",
      "resources/images/uranus.png",
      "2.9 billion kilometers",
      "Uranus is the seventh planet from the Sun, and the third largest planet in our solar system.",
    ),
    PlanetData(
      "Neptune",
      "resources/images/neptune.png",
      "4.5 billion kilometers",
      "Neptune is the eighth and most distant planet in our solar system. It's the fourth largest planet.",
    ),
    PlanetData(
      "Pluto",
      "resources/images/pluto.png",
      "5.9 billion kilometers",
      "Pluto was long considered our solar system's ninth planet. It was reclassified as a dwarf planet in 2006 by the International Astronomical Union.",
    ),
  ];
}
