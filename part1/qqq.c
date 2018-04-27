#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

/* Check whether the integer array pointed to by A is an order-ORDER normal magic square. I.e., A should contain ORDER**2 elements, a permutation of the integers from 1 to ORDER**2, such that when they are viewed as an ORDERxORDER square array, each row, column, and both main diagonals have the same sum. Returns normally if the array is a magic square, otherwise aborts. */
void check_square(int order, int *a) {
    int max = order * order;

    /* Value that each row, column, and diagonal must sum to: */
    int target_sum = (order * (order * order + 1)) / 2;

    int i, j, n;

    /* For each integer from 1 to ORDER**2, */
    for (n = 1; n <= max; n++) {
        /* Check that it appears at least once. */
        int product = 1;
        for (i = 0; i < max; i++) {
            product &= (a[i] != n);
        }
        assert(product == 0);
    }
    /* If each of the numers appears at least once, it follows that
       they all also appear at most once, so we don't have to check
       that separately. */

    /* Check that each row has the correct sum. */
    for (i = 0; i < order; i++) {
        n = 0;
        for (j = 0; j < order; j++) {
            n += a[i * order + j];
        }
        assert(n == target_sum);
    }

    /* Check that each column has the correct sum. */
    for (i = 0; i < order; i++) {
        n = 0;
        for (j = 0; j < order; j++) {
            n += a[i + (j * order)];
        }
        assert(n == target_sum);
    }

    /* Check that both diagonals have the correct sum. */
    //0.0 - order.order diag
    n = 0;
    for (i = 0; i < order; i++) {
        n += a[i + i * order];
    }
    assert(n == target_sum);

    n = 0;
    for (i = 0; i < order; i++) {
        n += a[(order - i - 1) + i * order];
    }
    assert(n == target_sum);

//    printf("Check succeeded\n");
}

int main() {
    int order = 3;
    int a[9];
    klee_make_symbolic(a, sizeof(int) * 9, "a");
    check_square(order, a);
    return 0;
}
