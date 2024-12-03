
import 'dart:math';

void main() {  
  // إنشاء كائن random لتوليد أرقام عشوائية
  final random = Random();

  // توليد قائمة عشوائية تحتوي على 10 أرقام بين 0 و 99
  List<int> l1 = List.generate(10, (_) => random.nextInt(100));

  // طباعة القائمة العشوائية
  print("Original List: $l1");

  // تمرير القائمة العشوائية إلى دالة getlist واستلام النتيجة
  List <int> result = getlist(l1);
  // طباعة النتيجة (أول وآخر عنصر من القائمة)
  print("First and Last elements: $result");
}

// دالة تأخذ قائمة l1 وتعيد أول وآخر عنصر من القائمة
List<int> getlist(List<int> l1) {
  // إنشاء قائمة جديدة تحتوي على العنصر الأول والأخير من l1
  List<int> l2 = [l1.first, l1.last];
  return l2;
}
