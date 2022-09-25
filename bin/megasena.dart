import 'dart:math';

void main(List<String> arguments) {
  List<int> listaParaSorteio = listaDe0A60();

  List<int> listaSorteada = [];
  for (int max = 60; max > 1; max--) {
    int sorteio = Random().nextInt(max);
    listaSorteada.add(listaParaSorteio.elementAt(sorteio));
    listaParaSorteio.removeAt(sorteio);
  }
  listaSorteada.add(listaParaSorteio.elementAt(0));
  listaParaSorteio.removeAt(0);

  listaParaSorteio = listaDe0A60();

  listaParaSorteio.removeWhere((element) => listaSorteada[59] == element);
  listaParaSorteio.removeWhere((element) => listaSorteada[58] == element);
  listaParaSorteio.removeWhere((element) => listaSorteada[57] == element);
  listaParaSorteio.removeWhere((element) => listaSorteada[56] == element);

  for (int max = 56; max > 53; max--) {
    int sorteio = Random().nextInt(max);
    listaSorteada.add(listaParaSorteio.elementAt(sorteio));
    listaParaSorteio.removeAt(sorteio);
  }

  List<String> volantes = [];
  for (int n = 1; n <= 9; n++) {
    String volante = '${listaSorteada.elementAt(7 * (n - 1))} ';
    volante += '${listaSorteada.elementAt(7 * (n - 1) + 1)} ';
    volante += '${listaSorteada.elementAt(7 * (n - 1) + 2)} ';
    volante += '${listaSorteada.elementAt(7 * (n - 1) + 3)} ';
    volante += '${listaSorteada.elementAt(7 * (n - 1) + 4)} ';
    volante += '${listaSorteada.elementAt(7 * (n - 1) + 5)} ';
    volante += '${listaSorteada.elementAt(7 * (n - 1) + 6)}';
    volantes.add(volante);
  }
  int index = 1;
  for (var volante in volantes) {
    print('${index++}) $volante');
  }
}

List<int> listaDe0A60() {
  List<int> lista = [];
  for (int i = 1; i <= 60; i++) {
    lista.add(i);
  }
  return lista;
}
