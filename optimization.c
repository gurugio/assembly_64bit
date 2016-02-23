#include <stdint.h>

struct ll {
	uint64_t pad[8];
};

struct ll_big {
	uint64_t pad[32];
};

void delay(uint64_t count)
{
	for (;count > 0; count--)
		continue;
}

void copy_struct_ll(struct ll *dst, struct ll *src)
{
	*dst++ = *src++;
}

void copy_struct_ll_big(struct ll_big *dst, struct ll_big *src)
{
	*dst++ = *src++;
}

#define SET 90000

struct ll s1[SET], s2[SET];
struct ll_big b1[SET], b2[SET];

int main(void)
{
	int i;

	/* for (i = 0; i < SET; i++) */
	/* 	copy_struct_ll(&s1[i], &s2[i]); */
	
	for (i = 0; i < SET>>2; i++)
		copy_struct_ll_big(&b1[i], &b2[i]);

	return 0;
}
