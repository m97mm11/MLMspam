import 'dart:math';

void main() {
  int t = 50;
  num companyProfit = 0;
  num usersProfit = 0;
  int users = 0;

  for (int i = 0; i < t; i++) {
    for (int j = 0; j < pow(2, i); j++) {
      users++;
      companyProfit += 18000;
    }
  }
  int n = 0;
  int o = 1;
  int p = t;
  int q = 0;
  for (int k = 0; k < t - 1; k++) {
    for (int i = 0; i < p - 1; i++) {
      for (int j = 0; j < pow(2, i); j++) {
        n++;
      }
    }

    p--;
    q += n*o;
    n = 0;
    o*=2;
  }

  usersProfit = q * 2000;

  print(users);
  print(companyProfit);
  print(usersProfit);
  print(q);
}
