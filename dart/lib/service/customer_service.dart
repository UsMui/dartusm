import '../model/customer.dart';

abstract class CustomerService{
  Future<List<Customer>> getAllCustomer();
  Future<Customer> createCustomer(Customer customer);


}