import 'package:flutter/cupertino.dart';

import 'Schuhe.dart';

class Cart extends ChangeNotifier{
  List<Schuhe> userCart=[];
  List<Schuhe> getUserCart(){return userCart;}
  void addItemFromCart(Schuhe schuhe){userCart.add(schuhe);
  notifyListeners();
  }
  void removeItemFromCart(Schuhe schuhe){userCart.remove(schuhe);
  notifyListeners();
  }
}