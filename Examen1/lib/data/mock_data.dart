// 1. MODELOS DE DATOS PLANOS (SIN ANIDAMIENTOS NI MAPAS)

class TipoPescado {
  final String id;
  final String nombre;
  final String categoria;
  final String imagenUrl;
  final String descripcion;

  const TipoPescado({
    required this.id,
    required this.nombre,
    required this.categoria,
    required this.imagenUrl,
    required this.descripcion,
  });
}

class Barco {
  final String id;
  final String nombre;
  final String patron;
  final String matricula;
  final String artePesca;

  const Barco({
    required this.id,
    required this.nombre,
    required this.patron,
    required this.matricula,
    required this.artePesca,
  });
}

class Captura {
  final String id;
  final String tipoPescadoId; // Relación por ID plano
  final String barcoId;       // Relación por ID plano
  final double precioPorKg;
  final double pesoDisponibleKg;
  final String horaDesembarque;
  final String calidad;
  final bool disponible;

  const Captura({
    required this.id,
    required this.tipoPescadoId,
    required this.barcoId,
    required this.precioPorKg,
    required this.pesoDisponibleKg,
    required this.horaDesembarque,
    required this.calidad,
    required this.disponible,
  });
}

// 2. MOCK DATA EN LISTAS INDEPENDIENTES

final List<TipoPescado> mockTiposPescado = const [
  TipoPescado(
    id: 'PES-001',
    nombre: 'Gamba Blanca de Isla Cristina',
    categoria: 'Marisco',
    imagenUrl: 'assets/images/gamba_blanca.jpg',
    descripcion: 'Gamba blanca fresca desembarcada en Lonja de Isla Cristina. Tamaño mediano-grande, ideal para cocedero o plancha.',
  ),
  TipoPescado(
    id: 'PES-002',
    nombre: 'Choco de la Costa',
    categoria: 'Molusco',
    imagenUrl: 'assets/images/choco.jpg',
    descripcion: 'Choco sucio de trasmallo, carne firme y máxima frescura para guisos o frito tradicional.',
  ),
  TipoPescado(
    id: 'PES-003',
    nombre: 'Sardina del Golfo',
    categoria: 'Pescado Azul',
    imagenUrl: 'assets/images/sardina.jpg',
    descripcion: 'Sardina de cerco seleccionada por calibre. Ideal para asador o freiduría.',
  ),
  TipoPescado(
    id: 'PES-004',
    nombre: 'Lomo de Atún Rojo',
    categoria: 'Pescado Azul',
    imagenUrl: 'assets/images/atun_rojo.png',
    descripcion: 'Pieza limpia de atún rojo de almadraba. Infiltración de grasa óptima para corte en tataki o plancha.',
  ),
];

final List<Barco> mockBarcos = const [
  Barco(
    id: 'BAR-001',
    nombre: 'Mar de Isla',
    patron: 'Manolo "El Rizo"',
    matricula: '3ª HU-2-1402',
    artePesca: 'Arrastre de fondo',
  ),
  Barco(
    id: 'BAR-002',
    nombre: 'El Tragaluz',
    patron: 'Paco González',
    matricula: '3ª HU-1-8834',
    artePesca: 'Trasmallo',
  ),
  Barco(
    id: 'BAR-003',
    nombre: 'Nuevo Horizonte',
    patron: 'José María Mirabent',
    matricula: '3ª HU-3-0912',
    artePesca: 'Cerco',
  ),
  Barco(
    id: 'BAR-004',
    nombre: 'Siempre Valiente',
    patron: 'Antonio "El Cano"',
    matricula: '3ª HU-2-5501',
    artePesca: 'Almadraba / Palangre',
  ),
];

final List<Captura> mockCapturas = const [
  Captura(
    id: 'CAP-001',
    tipoPescadoId: 'PES-001',
    barcoId: 'BAR-001',
    precioPorKg: 48.00,
    pesoDisponibleKg: 15.5,
    horaDesembarque: 'Hace 12 min',
    calidad: 'Extra (A+)',
    disponible: true,
  ),
  Captura(
    id: 'CAP-002',
    tipoPescadoId: 'PES-002',
    barcoId: 'BAR-002',
    precioPorKg: 12.50,
    pesoDisponibleKg: 35.0,
    horaDesembarque: 'Hace 35 min',
    calidad: 'Primera (A)',
    disponible: true,
  ),
  Captura(
    id: 'CAP-003',
    tipoPescadoId: 'PES-003',
    barcoId: 'BAR-003',
    precioPorKg: 4.80,
    pesoDisponibleKg: 60.0,
    horaDesembarque: 'Hace 1 hora',
    calidad: 'Primera (A)',
    disponible: true,
  ),
  Captura(
    id: 'CAP-004',
    tipoPescadoId: 'PES-004',
    barcoId: 'BAR-004',
    precioPorKg: 32.00,
    pesoDisponibleKg: 22.0,
    horaDesembarque: 'Hace 2 horas',
    calidad: 'Extra (A+)',
    disponible: false,
  ),
];

// 3. MÉTODOS DE BÚSQUEDA (Para vincular IDs en la UI)

TipoPescado obtenerPescadoPorId(String id) {
  return mockTiposPescado.firstWhere((p) => p.id == id);
}

Barco obtenerBarcoPorId(String id) {
  return mockBarcos.firstWhere((b) => b.id == id);
}