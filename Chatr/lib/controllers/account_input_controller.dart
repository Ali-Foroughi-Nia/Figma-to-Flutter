import 'package:get/get.dart';

class AccountInputController extends GetxController{

  RxInt dropDownMenu = 0.obs;
  RxInt dropDownMenuIndex = 100.obs;
  var dropDownMenuItem = 'منو باز شونده'.obs;
  RxInt listItems = 0.obs;

  RxInt yearDropDownMenu = 0.obs;
  RxInt yearDropDownMenuIndex = 100.obs;
  var yearDropDownMenuItem = 'سال'.obs;

  RxInt monthDropDownMenu = 0.obs;
  RxInt monthDropDownMenuIndex = 100.obs;
  var monthDropDownMenuItem = 'ماه'.obs;

  RxInt dayDropDownMenu = 0.obs;
  RxInt dayDropDownMenuIndex = 100.obs;
  var dayDropDownMenuItem = 'روز'.obs;

}