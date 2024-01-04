import 'dart:convert';

import 'package:dart/model/customer.dart';

import '../customer_service.dart';
import 'package:http/http.dart' as http;

class CustomerServiceImpl implements CustomerService{
  final String baseUrl = "http://localhost:8080/api/v1/customer";

  @override
  Future<Customer> createCustomer(Customer customer) async {
    try{
      final response = await http.post(Uri.parse("$baseUrl/create"),
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(customer.toJson()),);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return Customer.valueFromJson(data);
      } else {
        print('Error: ${response.statusCode}');
        print(response.body);
      }

    }catch(e){
      print(e);
    }
    return Customer();
  }

  @override
  Future<List<Customer>> getAllCustomer() async {
    try{
      final response = await http.get(Uri.parse("$baseUrl/getAll"));
      if(response.statusCode==200){
        var data = jsonDecode(response.body) as List;
        return data.map((item)=>Customer.valueFromJson(item)).toList();
      }

    }catch(e){
      print(e);
    }
    return <Customer>[];
  }
  
}