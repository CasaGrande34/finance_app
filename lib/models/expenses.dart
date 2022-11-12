import 'dart:convert';

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
  
  
  factory Expenses.fromJson(String str) => Expenses.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Expenses.fromMap(Map<String, dynamic> json) => Expenses(
    
      year        : json['year'] ,
      mounth      : json['mounth'],
      day         : json['day'],
      state       : json['state'],
      money       : json['money'],
      type        : json['type'],
      account     : json['account'] ,
      subAccount  : json['subAccount'],
      category    : json['category'],
      subCategory : json['subCategory'],
      form        : json['form'],
      currency    : json['currency'],
      tag         : json['tag'],
      description : json['description']
  
  );

  Map<String, dynamic> toMap() => {
    
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
