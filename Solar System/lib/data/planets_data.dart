class PlanetsData {
  String nombre;
  String image;
  String desc;

  PlanetsData(this.nombre,this.image,this.desc);


  static List<PlanetsData> planets = [
    PlanetsData("Earth","resources/images/earth.png","150 million kilometers"),
    PlanetsData("Jupiter","resources/images/jupiter.png","778 million kilometers"),
    PlanetsData("Mars","resources/images/mars.png","228 million kilometers"),
    PlanetsData("Mercury","resources/images/mercury.png","58 million kilometers"),
    PlanetsData("Moon","resources/images/moon.png","149.6 million kilometers"),
    PlanetsData("Neptune","resources/images/neptune.png","4.5 billion kilometers"),
    PlanetsData("Pluto","resources/images/pluto.png","5.9 billion kilometers"),
    PlanetsData("Saturn","resources/images/saturn.png","1.4 billion kilometers"),
    PlanetsData("Sun","resources/images/sun.png","0 kilometers"),
    PlanetsData("Uranus","resources/images/uranus.png","2.9 billion kilometers"),
    PlanetsData("Venus","resources/images/venus.png","108.2 million kilometers"),

  ];
}

