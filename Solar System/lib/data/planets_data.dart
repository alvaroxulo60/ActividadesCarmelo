class PlanetsData {
  String nombre;
  String image;

  PlanetsData(this.nombre,this.image);


  static List<PlanetsData> planets = [
    PlanetsData("Earth","resources/images/earth.png"),
    PlanetsData("Jupiter","resources/images/jupiter.png"),
    PlanetsData("Mars","resources/images/mars.png"),
    PlanetsData("Mercury","resources/images/mercury.png"),
    PlanetsData("Moon","resources/images/moon.png"),
    PlanetsData("Neptune","resources/images/neptune.png"),
    PlanetsData("Pluto","resources/images/pluto.png"),
    PlanetsData("Saturn","resources/images/saturn.png"),
    PlanetsData("Sun","resources/images/sun.png"),
    PlanetsData("Uranus","resources/images/uranus.png"),
    PlanetsData("Venus","resources/images/venus.png"),

  ];
}

