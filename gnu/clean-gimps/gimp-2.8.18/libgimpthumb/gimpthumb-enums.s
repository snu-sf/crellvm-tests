	.text
	.file	"gimpthumb-enums.bc"
	.globl	gimp_thumb_file_type_get_type
	.align	16, 0x90
	.type	gimp_thumb_file_type_get_type,@function
gimp_thumb_file_type_get_type:          # @gimp_thumb_file_type_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_thumb_file_type_get_type.type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str.8(%rip), %rdi
	leaq	gimp_thumb_file_type_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	movq	%rax, gimp_thumb_file_type_get_type.type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_thumb_file_type_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_thumb_file_type_get_type, .Lfunc_end0-gimp_thumb_file_type_get_type
	.cfi_endproc

	.globl	gimp_thumb_size_get_type
	.align	16, 0x90
	.type	gimp_thumb_size_get_type,@function
gimp_thumb_size_get_type:               # @gimp_thumb_size_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_thumb_size_get_type.type(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.15(%rip), %rdi
	leaq	gimp_thumb_size_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	movq	%rax, gimp_thumb_size_get_type.type(%rip)
.LBB1_2:                                # %if.end
	movq	gimp_thumb_size_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_thumb_size_get_type, .Lfunc_end1-gimp_thumb_size_get_type
	.cfi_endproc

	.globl	gimp_thumb_state_get_type
	.align	16, 0x90
	.type	gimp_thumb_state_get_type,@function
gimp_thumb_state_get_type:              # @gimp_thumb_state_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_thumb_state_get_type.type(%rip)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	leaq	.L.str.32(%rip), %rdi
	leaq	gimp_thumb_state_get_type.values(%rip), %rsi
	callq	g_enum_register_static@PLT
	movq	%rax, gimp_thumb_state_get_type.type(%rip)
.LBB2_2:                                # %if.end
	movq	gimp_thumb_state_get_type.type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_thumb_state_get_type, .Lfunc_end2-gimp_thumb_state_get_type
	.cfi_endproc

	.type	gimp_thumb_file_type_get_type.values,@object # @gimp_thumb_file_type_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_thumb_file_type_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.zero	24
	.size	gimp_thumb_file_type_get_type.values, 120

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_THUMB_FILE_TYPE_NONE"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"none"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_THUMB_FILE_TYPE_REGULAR"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"regular"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_THUMB_FILE_TYPE_FOLDER"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"folder"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_THUMB_FILE_TYPE_SPECIAL"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"special"
	.size	.L.str.7, 8

	.type	gimp_thumb_file_type_get_type.type,@object # @gimp_thumb_file_type_get_type.type
	.local	gimp_thumb_file_type_get_type.type
	.comm	gimp_thumb_file_type_get_type.type,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GimpThumbFileType"
	.size	.L.str.8, 18

	.type	gimp_thumb_size_get_type.values,@object # @gimp_thumb_size_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_thumb_size_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	256                     # 0x100
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.zero	24
	.size	gimp_thumb_size_get_type.values, 96

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"GIMP_THUMB_SIZE_FAIL"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fail"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_THUMB_SIZE_NORMAL"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"normal"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_THUMB_SIZE_LARGE"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"large"
	.size	.L.str.14, 6

	.type	gimp_thumb_size_get_type.type,@object # @gimp_thumb_size_get_type.type
	.local	gimp_thumb_size_get_type.type
	.comm	gimp_thumb_size_get_type.type,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GimpThumbSize"
	.size	.L.str.15, 14

	.type	gimp_thumb_state_get_type.values,@object # @gimp_thumb_state_get_type.values
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_thumb_state_get_type.values:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.5
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.7
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.zero	24
	.size	gimp_thumb_state_get_type.values, 240

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"GIMP_THUMB_STATE_UNKNOWN"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"unknown"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_THUMB_STATE_REMOTE"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"remote"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_THUMB_STATE_FOLDER"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GIMP_THUMB_STATE_SPECIAL"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"GIMP_THUMB_STATE_NOT_FOUND"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"not-found"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"GIMP_THUMB_STATE_EXISTS"
	.size	.L.str.24, 24

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"exists"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GIMP_THUMB_STATE_OLD"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"old"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GIMP_THUMB_STATE_FAILED"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"failed"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"GIMP_THUMB_STATE_OK"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"ok"
	.size	.L.str.31, 3

	.type	gimp_thumb_state_get_type.type,@object # @gimp_thumb_state_get_type.type
	.local	gimp_thumb_state_get_type.type
	.comm	gimp_thumb_state_get_type.type,8,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GimpThumbState"
	.size	.L.str.32, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
