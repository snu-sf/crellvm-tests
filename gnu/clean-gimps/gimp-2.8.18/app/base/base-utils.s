	.text
	.file	"base-utils.bc"
	.globl	get_pid
	.align	16, 0x90
	.type	get_pid,@function
get_pid:                                # @get_pid
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
	callq	getpid
	popq	%rbp
	retq
.Lfunc_end0:
	.size	get_pid, .Lfunc_end0-get_pid
	.cfi_endproc

	.globl	get_number_of_processors
	.align	16, 0x90
	.type	get_number_of_processors,@function
get_number_of_processors:               # @get_number_of_processors
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
	subq	$16, %rsp
	movl	$84, %edi
	movl	$1, -4(%rbp)
	callq	sysconf
	movl	%eax, %edi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	get_number_of_processors, .Lfunc_end1-get_number_of_processors
	.cfi_endproc

	.globl	get_physical_memory_size
	.align	16, 0x90
	.type	get_physical_memory_size,@function
get_physical_memory_size:               # @get_physical_memory_size
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
	subq	$16, %rsp
	movl	$85, %edi
	callq	sysconf
	movl	$30, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	sysconf
	movq	-8(%rbp), %rcx          # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_physical_memory_size, .Lfunc_end2-get_physical_memory_size
	.cfi_endproc

	.globl	get_backtrace
	.align	16, 0x90
	.type	get_backtrace,@function
get_backtrace:                          # @get_backtrace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$832, %rsp              # imm = 0x340
	movl	$100, %esi
	leaq	-800(%rbp), %rdi
	callq	backtrace
	leaq	-800(%rbp), %rdi
	movl	%eax, -812(%rbp)
	movl	-812(%rbp), %esi
	callq	backtrace_symbols
	movabsq	$.L.str, %rdi
	movq	%rax, -808(%rbp)
	callq	g_string_new
	movq	%rax, -824(%rbp)
	movl	$0, -816(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-816(%rbp), %eax
	cmpl	-812(%rbp), %eax
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	-824(%rbp), %rdi
	movslq	-816(%rbp), %rax
	movq	-808(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	g_string_append_printf
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-816(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -816(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movq	-808(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	xorl	%esi, %esi
	movq	-824(%rbp), %rdi
	callq	g_string_free
	addq	$832, %rsp              # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_backtrace, .Lfunc_end3-get_backtrace
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s\n"
	.size	.L.str.1, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
