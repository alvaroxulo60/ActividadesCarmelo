class PlanetData {
  String nombre;
  String image;
  String desc;

  PlanetData(this.nombre,this.image,this.desc);


  static List<PlanetData> planets = [
    PlanetData("Earth","resources/images/earth.png","150 million kilometers"),
    PlanetData("Jupiter","resources/images/jupiter.png","778 million kilometers"),
    PlanetData("Mars","resources/images/mars.png","228 million kilometers"),
    PlanetData("Mercury","resources/images/mercury.png","58 million kilometers"),
    PlanetData("Moon","resources/images/moon.png","149.6 million kilometers"),
    PlanetData("Neptune","resources/images/neptune.png","4.5 billion kilometers"),
    PlanetData("Pluto","resources/images/pluto.png","5.9 billion kilometers"),
    PlanetData("Saturn","resources/images/saturn.png","1.4 billion kilometers"),
    PlanetData("Sun","resources/images/sun.png","0 kilometers"),
    PlanetData("Uranus","resources/images/uranus.png","2.9 billion kilometers"),
    PlanetData("Venus","resources/images/venus.png","108.2 million kilometers"),

  ];
}

