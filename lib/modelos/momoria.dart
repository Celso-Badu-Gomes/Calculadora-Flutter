class Memoria {
  static const operacoes = ['%', '/', 'x', '-', '+', '='];

  final _buffer = [0.0, 0.0];
  int _buffer_inicio = 0;
  late String _operacao;
  String _valor = '0';
  bool _appValor = false;

  void aplicarComand(String comando) {
    if (comando == 'AC') {
      _clear();
    } else if (operacoes.contains(comando)) {
      _setOperacao(comando);
    } else {
      _addDigito(comando);
    }
  }

  _setOperacao(String novaOperacao) {
    if (_buffer_inicio == 0) {
      _operacao = novaOperacao;
      _buffer_inicio = 1;
    } else {
      _buffer[0] = _calcular();
      _buffer[1] = 0.0;
      _valor = _buffer[0].toString();

      bool seIgual = novaOperacao == '=';
      final _operacao = seIgual ? null : novaOperacao;
      _buffer_inicio = seIgual ? 0 : 1;
    }
    _appValor = true;
  }

  _addDigito(String digito) {
    final isPonto = digito == '.';
    final appValor = (_valor == '0' && !isPonto) || _appValor;

    if (isPonto && _valor.contains('.') && !appValor) {
      return;
    }

    final emptyValor = isPonto ? '0' : '';
    final correntValor = appValor ? emptyValor : _valor;
    _valor = correntValor + digito;
    _appValor = false;

    _buffer[_buffer_inicio] = double.tryParse(_valor) ?? 0;
    print(_buffer);
  }

  _clear() {
    _valor = '0';
    _buffer.setAll(0, [0.0, 0.0]);
    _buffer_inicio = 0;
    //_operacao = null;
    _appValor = false;
  }

  _calcular() {
    switch (_operacao) {
      case '%':
        return _buffer[0] % _buffer[1];
      case '/':
        return _buffer[0] / _buffer[1];
      case 'x':
        return _buffer[0] * _buffer[1];
      case '-':
        return _buffer[0] - _buffer[1];
      case '+':
        return _buffer[0] + _buffer[1];
      default:
        return _buffer[0];
    }
  }

  String get valor {
    return _valor;
  }
}
