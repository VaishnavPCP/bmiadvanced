import 'dart:math';

class Calculate {
  late final int height;
  late final int weight;

  Calculate({required this.height, required this.weight});

  late double resultt;
  String calculation() {
    resultt = weight / pow(height / 100,2);
    return resultt.toStringAsFixed(1);
  }
  String results(){
    if(resultt>=25){
      return "OVER";
    }else if(resultt>18.5){
      return "NORMAL";
    }else{
      return "UNDER";
    }
  }
  String lst(){
    if(resultt>=25){
      return "You have under body weight";
    }else if(resultt>18.5){
      return "You have a normal body weight";
    }else{
      return "You have lower body weight";
    }
  }
}
