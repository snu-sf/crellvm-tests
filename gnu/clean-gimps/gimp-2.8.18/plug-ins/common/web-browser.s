	.text
	.file	"web-browser.bc"
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movabsq	$.L.str.7, %r9
	xorl	%eax, %eax
	movl	%eax, %r10d
	movl	$1, %eax
	xorl	%r11d, %r11d
	movabsq	$query.args, %rbx
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r10, -16(%rbp)         # 8-byte Spill
	movl	%r11d, -20(%rbp)        # 4-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	addq	$72, %rsp
	popq	%rbx
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
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$3, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.8, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.8, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	cmpl	$1, -12(%rbp)
	jne	.LBB1_8
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_8
# BB#4:                                 # %land.lhs.true.5
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB1_8
# BB#5:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	browser_open_url
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.15
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_7:                                # %if.end
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movl	$1, -44(%rbp)
.LBB1_9:                                # %if.end.16
	movl	$21, run.values
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
	addq	$80, %rsp
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
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
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
	.type	browser_open_url,@function
browser_open_url:                       # @browser_open_url
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.10, %rax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	callq	gdk_screen_get_default
	movq	-8(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_get_current_event_time
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	gtk_show_uri
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	browser_open_url, .Lfunc_end3-browser_open_url
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

	.type	query.args,@object      # @query.args
	.align	16
query.args:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.size	query.args, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"url"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"URL to open"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"plug-in-web-browser"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Open an URL in the user specified web browser"
	.size	.L.str.3, 46

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Opens the given URL in the user specified web browser."
	.size	.L.str.4, 55

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Henrik Brix Andersen <brix@gimp.org>"
	.size	.L.str.5, 37

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"2003"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2003/09/16"
	.size	.L.str.7, 11

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"UTF-8"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"web-browser"
	.size	.L.str.10, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
