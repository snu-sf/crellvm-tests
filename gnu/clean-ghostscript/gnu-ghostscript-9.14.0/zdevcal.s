	.text
	.file	"zdevcal.bc"
	.align	16, 0x90
	.type	calendar_get_params,@function
calendar_get_params:                    # @calendar_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 96
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	leaq	72(%rsp), %rdi
	callq	time
	cmpq	$-1, %rax
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	leaq	72(%rsp), %rdi
	callq	localtime
	testq	%rax, %rax
	je	.LBB0_2
# BB#3:                                 # %if.else
	movq	48(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	addl	$1900, 36(%rsp)         # imm = 0x76C
	incl	32(%rsp)
	movl	$1, %eax
	jmp	.LBB0_4
.LBB0_2:                                # %if.then
	movl	$0, 36(%rsp)
	movl	$0, 32(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	xorl	%eax, %eax
.LBB0_4:                                # %if.end
	movl	%eax, 12(%rsp)
	leaq	16(%rsp), %rsi
	xorl	%edx, %edx
	movl	$calendar_get_params.items, %ecx
	movq	%rbx, %rdi
	callq	gs_param_write_items
	testl	%eax, %eax
	js	.LBB0_6
# BB#5:                                 # %if.end.8
	leaq	12(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
.LBB0_6:                                # %cleanup
	addq	$80, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	calendar_get_params, .Lfunc_end0-calendar_get_params
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%Calendar%"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Special"
	.size	.L.str.1, 8

	.type	gs_iodev_calendar,@object # @gs_iodev_calendar
	.section	.rodata,"a",@progbits
	.globl	gs_iodev_calendar
	.align	8
gs_iodev_calendar:
	.quad	.L.str
	.quad	.L.str.1
	.quad	iodev_no_init
	.quad	iodev_no_open_device
	.quad	iodev_no_open_file
	.quad	iodev_no_fopen
	.quad	iodev_no_fclose
	.quad	iodev_no_delete_file
	.quad	iodev_no_rename_file
	.quad	iodev_no_file_status
	.quad	iodev_no_enumerate_files
	.quad	0
	.quad	0
	.quad	calendar_get_params
	.quad	iodev_no_put_params
	.quad	0
	.size	gs_iodev_calendar, 128

	.type	calendar_get_params.items,@object # @calendar_get_params.items
	.align	16
calendar_get_params.items:
	.quad	.L.str.2
	.byte	2                       # 0x2
	.zero	1
	.short	20                      # 0x14
	.zero	4
	.quad	.L.str.3
	.byte	2                       # 0x2
	.zero	1
	.short	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.byte	2                       # 0x2
	.zero	1
	.short	12                      # 0xc
	.zero	4
	.quad	.L.str.5
	.byte	2                       # 0x2
	.zero	1
	.short	24                      # 0x18
	.zero	4
	.quad	.L.str.6
	.byte	2                       # 0x2
	.zero	1
	.short	8                       # 0x8
	.zero	4
	.quad	.L.str.7
	.byte	2                       # 0x2
	.zero	1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.8
	.byte	2                       # 0x2
	.zero	1
	.short	0                       # 0x0
	.zero	4
	.zero	16
	.size	calendar_get_params.items, 128

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Year"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Month"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Day"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Weekday"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Hour"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Minute"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Second"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Running"
	.size	.L.str.9, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
