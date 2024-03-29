import 'package:teste_modular_routes/app/modules/compra/pages/carrinho/carrinho_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:teste_modular_routes/app/app_widget.dart';

import 'modules/compra/compra_module.dart';
import 'modules/loja/loja_module.dart';
import 'modules/produto/produto_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LojaModule()),
        ModularRouter('/produto', module: ProdutoModule()),
        ModularRouter('/compra', module: CompraModule()),
        ModularRouter('/carrinho', module: CarrinhoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
