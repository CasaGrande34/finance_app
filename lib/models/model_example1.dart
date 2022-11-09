
class ExampleGraficData {
  
  final String category;
  final int transation;
  
  ExampleGraficData({
    
    required this.category,
    required this.transation,
    
  });
  
}

List<ExampleGraficData> getChartData() {
  
  final List<ExampleGraficData> chartData = [
    
    ExampleGraficData( category: 'Salario', transation     : 120000 ),
    ExampleGraficData( category: 'Acciones', transation    : 35000 ),
    ExampleGraficData( category: 'Supermercado', transation: -15800 ),
    ExampleGraficData( category: 'Deporte', transation     : -7000 ),
    ExampleGraficData( category: 'Tarjeta de credito', transation: -14600 ),
    ExampleGraficData( category: 'Regalos', transation           : -5000 )
    
  ];
  return chartData;
}