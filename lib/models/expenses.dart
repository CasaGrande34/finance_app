class Expenses {
  
    int year;
    int mounth;
    int day;
    String state; 
    int money; 
    String type; 
    String account; 
    String subAccount; 
    String category; 
    String subCategory; 
    String form;
    String currency;
    String? tag;
    String? description;
    
  Expenses({
    required this.year,
    required this.mounth,
    required this.day,
    required this.state,
    required this.money,
    required this.type,
    required this.account,
    required this.subAccount,
    required this.category,
    required this.subCategory,
    required this.form,
    required this.currency,
    this.tag,
    this.description,
  });
 
 Expenses.fromMap(Map<String, Object?> json) :
 this(
  
  year : json['year']! as int,
  mounth : json['mounth']! as int,
  day : json['day']! as int,
  state : json['state']! as String,
  money : json['money']! as int,
  type : json['type']! as String,
  account : json['account']! as String,
  subAccount : json['subAccount']! as String,
  category : json['category']! as String,
  subCategory : json['subCategory']! as String,
  form : json['form']! as String,
  currency : json['currency']! as String,
  tag : json['tag']! as String,
  description : json['description']! as String
  
 );
 
 Map<String, Object?> toJson() {
  
  return {
    
    'year' : year ,
    'mounth' : mounth ,
    'day' : day ,
    'state' : state ,
    'money' : money ,
    'type' : type ,
    'account' : account ,
    'subAccount' : subAccount ,
    'category' : category ,
    'subCategory' : subCategory ,
    'form' : form ,
    'currency' : currency ,
    'tag' : tag ,
    'description' : description
  };
  
 }
 
}
