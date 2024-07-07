abstract class Serializable {
  String toJson();
}
class User implements Serializable{
final String name;
final int age;
final String email;
User(this.age,this.email,this.name);
@override
  String toJson(){

    return'{"name": "$name", "age": $age, "email": "$email"}';
  }
}
class Product implements Serializable {
  final String productName;
  final double price;
  final int quantity;

  Product(this.productName, this.price, this.quantity);

  @override
  String toJson() {
    return '{"productName": "$productName", "price": $price, "quantity": $quantity"}';
    }
}
void main() {
  User user = User(30, "Manar", 'manar@example.com');
  Product product = Product('Laptop', 999.99, 5);

  print('User JSON: ${user.toJson()}');
  print('Product JSON: ${product.toJson()}');
}

