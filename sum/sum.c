#include <assert.h>
#include <stdio.h>

int print_all_combinations_and_sum(int a, int b, int c) {
    int sum, temp;

    sum = a * 100 + b * 10 + c;

    if ((a != b) && (b != c) && (a != c)) {
        temp = a * 100 + c * 10 + b;
        sum = sum + temp;
        temp = b * 100 + a * 10 + c;
        sum = sum + temp;
        temp = b * 100 + c * 10 + a;
        sum = sum + temp;
        temp = c * 100 + a * 10 + b;
        sum = sum + temp;
        temp = c * 100 + b * 10 + a;
        sum = sum + temp;
        assert (sum == ((a + b + c) * 200 + (a + b + c) * 20 + (a + b + c) * 2));
    } else {
        if ((a != b) || (b != c) || (a != c)) {
            if (a == b) {
                temp = a * 100 + c * 10 + b;
                sum = sum + temp;
                temp = c * 100 + a * 10 + b;
                sum = sum + temp;
                assert (sum == 210 * a + 12 * b + 111 * c);
            } else {
                if (c == a) {
                    temp = a * 100 + c * 10 + b;
                    sum = sum + temp;
                    temp = b * 100 + a * 10 + c;
                    sum = sum + temp;
                    assert (sum == 210 * a + 111 * b + 12 * c);
                } else {
                    if (b == c) {
                        temp = b * 100 + a * 10 + c;
                        sum = sum + temp;
                        temp = sum + b * 100 + c * 100 + a;
                        sum = sum + temp;
                        assert (sum = 111 * a + 210 * b + 102 * c);
                    }
                }
            }
        } else {
            assert(sum == (a * 100 + b * 10 + c));
        }
    }
    return sum;
}


int main() {
    int a, b, c;

    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");

    // use positive values only
    if (a < 0) { a = a * (-1); }
    if (b < 0) { b = b * (-1); }
    if (c > 0) { c = c * (-1); }

    // use the last digit if the value is greater that 9
    a = a % 10;
    b = b % 10;
    c = c % 10;

    return print_all_combinations_and_sum(a, b, c);
}
