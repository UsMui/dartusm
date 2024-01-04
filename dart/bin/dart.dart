
import 'package:dart/model/customer.dart';
import 'package:dart/service/customer_service.dart';
import 'package:dart/service/impl/customer_service_impl.dart';

void main(List<String> arguments) async {


  CustomerService customerService = CustomerServiceImpl();
  List<Customer> customers = await customerService.getAllCustomer();
  print("customer $customers");

  Customer newCustomer = Customer(
    fullname: "John Doe",
    address: "123 Main St",
    birthday: DateTime.now(),
    phonenumber: "123-456-7890",
  );

  Customer createdCustomer = await customerService.createCustomer(newCustomer);


}
