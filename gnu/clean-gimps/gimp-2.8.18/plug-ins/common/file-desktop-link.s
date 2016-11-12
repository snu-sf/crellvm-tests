	.text
	.file	"file-desktop-link.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.13, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$3, %r11d
	movabsq	$query.load_args, %rbx
	movabsq	$query.load_return_vals, %r14
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movl	%r8d, -28(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	%r10, -40(%rbp)         # 8-byte Spill
	movl	%r11d, -44(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	callq	gimp_register_load_handler
	movl	%eax, -48(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-48(%rbp), %esi
	movl	%esi, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.8, %esi
                                        # kill: RSI<def> ESI<kill>
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	load_image
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.5
	movl	$3, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-60(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_3:                                # %if.else
	cmpq	$0, -56(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.7
	jmp	.LBB1_8
.LBB1_7:                                # %if.else.8
	movl	$1, -48(%rbp)
.LBB1_8:                                # %if.end.9
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	callq	g_key_file_new
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$-1, -52(%rbp)
	movq	$0, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	g_key_file_load_from_file
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_11
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_key_file_get_start_group
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_4
# BB#3:                                 # %lor.lhs.false
	movq	-40(%rbp), %rdi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_5
.LBB3_4:                                # %if.then.5
	jmp	.LBB3_11
.LBB3_5:                                # %if.end.6
	movabsq	$.L.str.17, %rdx
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_key_file_get_value
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB3_7
# BB#6:                                 # %lor.lhs.false.9
	movq	-48(%rbp), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_8
.LBB3_7:                                # %if.then.12
	jmp	.LBB3_11
.LBB3_8:                                # %if.end.13
	movq	-48(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.19, %rdx
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_key_file_get_value
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.16
	movl	-12(%rbp), %edi
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_file_load
	movl	%eax, -52(%rbp)
.LBB3_10:                               # %if.end.18
	jmp	.LBB3_11
.LBB3_11:                               # %out
	cmpq	$0, -64(%rbp)
	je	.LBB3_13
# BB#12:                                # %if.then.20
	movabsq	$.L.str.20, %rdi
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-64(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %r9
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-64(%rbp), %rdi
	callq	g_error_free
.LBB3_13:                               # %if.end.23
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_key_file_free
	movl	-52(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.load_args,@object # @query.load_args
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.load_args, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The name entered"
	.size	.L.str.5, 17

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.load_return_vals, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Output image"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"file-desktop-link-load"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Follows a link to an image in a .desktop file"
	.size	.L.str.9, 46

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Opens a .desktop file and if it is a link, it asks GIMP to open the file the link points to."
	.size	.L.str.10, 93

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Sven Neumann"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"2006"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Desktop Link"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"desktop"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Desktop Entry"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Type"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Link"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"URL"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Error loading desktop file '%s': %s"
	.size	.L.str.20, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
