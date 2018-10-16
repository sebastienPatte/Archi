int fibo1(int a) {
    if (a <= 1) return a;
    return ( fibo1(a-1) + fibo1(a-2) );
}

void main () {
  int n;
  n=fibo1(8);
}
