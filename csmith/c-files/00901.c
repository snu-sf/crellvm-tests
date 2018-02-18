/*
 * This is a RANDOMLY GENERATED PROGRAM.
 *
 * Generator: csmith 2.3.0
 * Git version: unknown
 * Options:   --output 00901.c
 * Seed:      1466196246
 */

#include "csmith.h"


static long __undefined;

/* --- Struct/Union Declarations --- */
#pragma pack(push)
#pragma pack(1)
struct S0 {
   int16_t  f0;
   unsigned f1 : 22;
};
#pragma pack(pop)

#pragma pack(push)
#pragma pack(1)
struct S1 {
   volatile int8_t  f0;
   volatile int64_t  f1;
};
#pragma pack(pop)

/* --- GLOBAL VARIABLES --- */
static int32_t g_4 = 0x0FA72C25L;
static int32_t g_6 = 0x4E703026L;
static struct S1 g_13 = {-1L,0xEBA4D3EC93CC2542LL};/* VOLATILE GLOBAL g_13 */
static struct S0 g_17 = {-8L,1790};
static struct S0 * volatile g_16 = &g_17;/* VOLATILE GLOBAL g_16 */


/* --- FORWARD DECLARATIONS --- */
static int64_t  func_1(void);
static struct S1  func_10(int32_t  p_11, int32_t * p_12);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : g_4 g_6 g_13 g_16
 * writes: g_6 g_13 g_17
 */
static int64_t  func_1(void)
{ /* block id: 0 */
    int32_t *l_2 = (void*)0;
    int32_t *l_3 = &g_4;
    int32_t *l_5[4];
    uint32_t l_7 = 0x672D714FL;
    struct S1 *l_14 = &g_13;
    struct S0 l_15 = {0xFC3EL,584};
    int i;
    for (i = 0; i < 4; i++)
        l_5[i] = &g_4;
    --l_7;
    (*l_14) = func_10((*l_3), &g_6);
    (*g_16) = l_15;
    return (*l_3);
}


/* ------------------------------------------ */
/* 
 * reads : g_6 g_13
 * writes: g_6
 */
static struct S1  func_10(int32_t  p_11, int32_t * p_12)
{ /* block id: 2 */
    (*p_12) &= 0L;
    return g_13;
}




/* ---------------------------------------- */
int main (int argc, char* argv[])
{
    int print_hash_value = 0;
    if (argc == 2 && strcmp(argv[1], "1") == 0) print_hash_value = 1;
    platform_main_begin();
    crc32_gentab();
    func_1();
    transparent_crc(g_4, "g_4", print_hash_value);
    transparent_crc(g_6, "g_6", print_hash_value);
    transparent_crc(g_13.f0, "g_13.f0", print_hash_value);
    transparent_crc(g_13.f1, "g_13.f1", print_hash_value);
    transparent_crc(g_17.f0, "g_17.f0", print_hash_value);
    transparent_crc(g_17.f1, "g_17.f1", print_hash_value);
    platform_main_end(crc32_context ^ 0xFFFFFFFFUL, print_hash_value);
    return 0;
}

/************************ statistics *************************
XXX max struct depth: 1
breakdown:
   depth: 0, occurrence: 2
   depth: 1, occurrence: 2
XXX total union variables: 0

XXX non-zero bitfields defined in structs: 1
XXX zero bitfields defined in structs: 0
XXX const bitfields defined in structs: 0
XXX volatile bitfields defined in structs: 0
XXX structs with bitfields in the program: 1
breakdown:
   indirect level: 0, occurrence: 1
XXX full-bitfields structs in the program: 0
breakdown:
XXX times a bitfields struct's address is taken: 1
XXX times a bitfields struct on LHS: 0
XXX times a bitfields struct on RHS: 1
XXX times a single bitfield on LHS: 0
XXX times a single bitfield on RHS: 0

XXX max expression depth: 3
breakdown:
   depth: 1, occurrence: 9
   depth: 3, occurrence: 1

XXX total number of pointers: 6

XXX times a variable address is taken: 5
XXX times a pointer is dereferenced on RHS: 2
breakdown:
   depth: 1, occurrence: 2
XXX times a pointer is dereferenced on LHS: 3
breakdown:
   depth: 1, occurrence: 3
XXX times a pointer is compared with null: 0
XXX times a pointer is compared with address of another variable: 0
XXX times a pointer is compared with another pointer: 0
XXX times a pointer is qualified to be dereferenced: 23

XXX max dereference level: 1
breakdown:
   level: 0, occurrence: 0
   level: 1, occurrence: 7
XXX number of pointers point to pointers: 0
XXX number of pointers point to scalars: 4
XXX number of pointers point to structs: 2
XXX percent of pointers has null in alias set: 16.7
XXX average alias set size: 1

XXX times a non-volatile is read: 6
XXX times a non-volatile is write: 6
XXX times a volatile is read: 0
XXX    times read thru a pointer: 0
XXX times a volatile is write: 1
XXX    times written thru a pointer: 0
XXX times a volatile is available for access: 2
XXX percentage of non-volatile access: 92.3

XXX forward jumps: 0
XXX backward jumps: 0

XXX stmts: 6
XXX max block depth: 0
breakdown:
   depth: 0, occurrence: 6

XXX percentage a fresh-made variable is used: 28.6
XXX percentage an existing variable is used: 71.4
FYI: the random generator makes assumptions about the integer size. See platform.info for more details.
********************* end of statistics **********************/

