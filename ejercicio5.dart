/*
5. Cree una clase CuentaBancaria que tenga las propiedades titular y saldo. Implemente métodos
para:
a. Depositar dinero.
b. Retirar dinero (asegurándote de que el saldo no sea negativo).
c. Consultar el saldo.
*/
class CuentaBancaria {
  final String titular;
  double saldo;

  CuentaBancaria(this.titular, this.saldo);

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print('Deposito exitoso. Nuevo saldo: $saldo');
    } else {
      print('La cantidad a depositar no es valida.');
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0 && cantidad <= saldo) {
      saldo -= cantidad;
      print('Retiro exitoso. Nuevo saldo: $saldo');
    } else {
      print('Fondos insuficientes o cantidad invalida para retiro.');
    }
  }

  void consultarSaldo() {
    print('Saldo actual: $saldo');
  }
}

void main() {
  final CuentaBancaria cuenta = CuentaBancaria('Angie Hernandez', 1000);
  print('\n=================');
  print(' Cuenta Bancaria ');
  print('=================');
  cuenta.consultarSaldo();
  cuenta.depositar(500);
  cuenta.retirar(200);
  cuenta.retirar(2000); //Ejemplo de fondos insuficientes para el retiro.
  print('');
  cuenta.consultarSaldo();
}
