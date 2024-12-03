//(Fibonacci numbers) هي سلسلة من الأرقام التي تُعرف بقانون رياضي معين. تبدأ السلسلة بالرقمين الأولين 0 و 1، ومن ثم يتم حساب كل رقم لاحق في السلسلة عن طريق جمع الرقمين السابقين له.
import 'dart:io';

void main() {
  // طلب من المستخدم إدخال عدد الأرقام التي يريد توليدها
  print("Enter how many Fibonacci numbers you want to generate:");
  int num = int.parse(stdin.readLineSync()!); // قراءة عدد الأرقام من المستخدم

  // طباعة أول "num" رقم من سلسلة فيبوناتشي
  print("The first $num Fibonacci numbers are:");
  
  // استدعاء الدالة لإظهار الأرقام
  getFibonacci(num);
}

void getFibonacci(int num) {
  // قائمة تحتوي على أول رقمين في السلسلة
  List<int> fibonacci = [0, 1];
  
  // التحقق إذا كان العدد المدخل أقل من أو يساوي 0
  if (num <= 0) {
    print("Please enter a positive number.");
    return;
  }

  // إذا كان عدد الأرقام المدخل 1 أو أقل
  if (num == 1) {
    print([0]);
    return;
  }

  // توليد باقي الأرقام في السلسلة
  for (var i = 2; i < num; i++) {
    // إضافة الرقم الجديد في السلسلة
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }

  // طباعة السلسلة المولدة
  print(fibonacci);
}
