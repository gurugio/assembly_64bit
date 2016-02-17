#include <stdio.h>

int asm_main(void);

int main(void)
{
	int ret;
	ret = asm_main();
	printf("print %d-bytes\n", ret);
	return 0;
}
