#include <stdio.h>
#include <stdlib.h>

struct data
{
	int a;
	int b;
	int c;
};
int count[100];

#define __ACCESS_ONCE(x) ({(volatile typeof(x) *)&(x); })
#define ACCESS_ONCE(x) (*__ACCESS_ONCE(x))

int try_access(struct data *ddd)
{
	int v;

	while (1) {
		v = ACCESS_ONCE(ddd->a);
		if ((v == 1) && (ddd->b == 1)) {
			break;
		}
	}
}

int try_read(struct data *ddd)
{
	int v;

	while (1) {
		v = ddd->a;
		if ((v == 1) && (ddd->b == 1)) {
			break;
		}
	}
}

int try_reg(struct data *ddd)
{
	int v;

	while (1) {
		asm volatile ("" : : : "memory");
		v = ddd->a;
		if ((v == 1) && (ddd->b == 1)) {
			break;
		}
	}
	return v;
}

int main(void)
{
	int i;
	struct data testdata = {1, 2, 3};

	testdata.a = (random() % 6) + ((random() % 6) * 6);
	try_access(&testdata);
	try_read(&testdata);
	try_reg(&testdata);

	for (i = 0; i < 10; i++)
		printf("%d=>%d\n", i, count[i]);
	return 0;
}
