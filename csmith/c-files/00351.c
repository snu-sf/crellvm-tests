/*
 * This is a RANDOMLY GENERATED PROGRAM.
 *
 * Generator: csmith 2.3.0
 * Git version: unknown
 * Options:   --output 00351.c
 * Seed:      3459955567
 */

#include "csmith.h"


static long __undefined;

/* --- Struct/Union Declarations --- */
/* --- GLOBAL VARIABLES --- */
static uint8_t g_5 = 2UL;
static volatile uint64_t g_9 = 5UL;/* VOLATILE GLOBAL g_9 */
static int32_t g_11[4] = {0x95998AB5L,0x95998AB5L,0x95998AB5L,0x95998AB5L};


/* --- FORWARD DECLARATIONS --- */
static uint8_t  func_1(void);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : g_5 g_9 g_11
 * writes: g_5 g_11
 */
static uint8_t  func_1(void)
{ /* block id: 0 */
    uint8_t *l_4[3][9] = {{&g_5,&g_5,&g_5,&g_5,&g_5,&g_5,&g_5,&g_5,&g_5},{&g_5,&g_5,&g_5,&g_5,&g_5,&g_5,&g_5,&g_5,&g_5},{&g_5,&g_5,&g_5,&g_5,&g_5,&g_5,&g_5,&g_5,&g_5}};
    int32_t l_6[3];
    int32_t *l_10 = &g_11[0];
    int i, j;
    for (i = 0; i < 3; i++)
        l_6[i] = 0x2C36544DL;
    (*l_10) ^= (safe_mul_func_uint8_t_u_u((g_5++), (g_9 >= l_6[2])));
    return (*l_10);
}




/* ---------------------------------------- */
int main (int argc, char* argv[])
{
    int i;
    int print_hash_value = 0;
    if (argc == 2 && strcmp(argv[1], "1") == 0) print_hash_value = 1;
    platform_main_begin();
    crc32_gentab();
    func_1();
    transparent_crc(g_5, "g_5", print_hash_value);
    transparent_crc(g_9, "g_9", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(g_11[i], "g_11[i]", print_hash_value);
        if (print_hash_value) printf("index = [%d]\n", i);

    }
    platform_main_end(crc32_context ^ 0xFFFFFFFFUL, print_hash_value);
    return 0;
}

/************************ statistics *************************
XXX max struct depth: 0
breakdown:
   depth: 0, occurrence: 2
XXX total union variables: 0

XXX non-zero bitfields defined in structs: 0
XXX zero bitfields defined in structs: 0
XXX const bitfields defined in structs: 0
XXX volatile bitfields defined in structs: 0
XXX structs with bitfields in the program: 0
breakdown:
XXX full-bitfields structs in the program: 0
breakdown:
XXX times a bitfields struct's address is taken: 0
XXX times a bitfields struct on LHS: 0
XXX times a bitfields struct on RHS: 0
XXX times a single bitfield on LHS: 0
XXX times a single bitfield on RHS: 0

XXX max expression depth: 4
breakdown:
   depth: 1, occurrence: 2
   depth: 4, occurrence: 1

XXX total number of pointers: 2

XXX times a variable address is taken: 13
XXX times a pointer is dereferenced on RHS: 1
breakdown:
   depth: 1, occurrence: 1
XXX times a pointer is dereferenced on LHS: 1
breakdown:
   depth: 1, occurrence: 1
XXX times a pointer is compared with null: 0
XXX times a pointer is compared with address of another variable: 0
XXX times a pointer is compared with another pointer: 0
XXX times a pointer is qualified to be dereferenced: 1

XXX max dereference level: 1
breakdown:
   level: 0, occurrence: 0
   level: 1, occurrence: 4
XXX number of pointers point to pointers: 0
XXX number of pointers point to scalars: 2
XXX number of pointers point to structs: 0
XXX percent of pointers has null in alias set: 50
XXX average alias set size: 1.5

XXX times a non-volatile is read: 3
XXX times a non-volatile is write: 3
XXX times a volatile is read: 1
XXX    times read thru a pointer: 0
XXX times a volatile is write: 0
XXX    times written thru a pointer: 0
XXX times a volatile is available for access: 0
XXX percentage of non-volatile access: 85.7

XXX forward jumps: 0
XXX backward jumps: 0

XXX stmts: 2
XXX max block depth: 0
breakdown:
   depth: 0, occurrence: 2

XXX percentage a fresh-made variable is used: 33.3
XXX percentage an existing variable is used: 66.7
FYI: the random generator makes assumptions about the integer size. See platform.info for more details.
********************* end of statistics **********************/

