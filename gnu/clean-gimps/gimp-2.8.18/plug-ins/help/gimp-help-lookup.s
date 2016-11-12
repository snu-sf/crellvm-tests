	.text
	.file	"gimp-help-lookup.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$64, %rsp
	movabsq	$.L.str, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	%rax, %rdi
	callq	g_getenv
	movq	%rax, help_base
	callq	gimp_data_directory
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movabsq	$.L.str.2, %rdi
	movq	%rax, help_root
	callq	g_option_context_new
	movabsq	$entries, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_option_context_add_main_entries
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdi
	callq	g_option_context_parse
	cmpl	$0, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_print
	movq	-40(%rbp), %rdi
	callq	g_error_free
	movl	$1, -4(%rbp)
	jmp	.LBB0_14
.LBB0_2:                                # %if.end
	callq	g_type_init
	cmpq	$0, help_base
	je	.LBB0_4
# BB#3:                                 # %if.then.6
	movq	help_base, %rdi
	callq	g_strdup
	movq	%rax, -32(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	help_root, %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_to_uri
	movq	%rax, -32(%rbp)
.LBB0_5:                                # %if.end.9
	movabsq	$.L.str.4, %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_help_register_domain
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, help_locales
	je	.LBB0_7
# BB#6:                                 # %cond.true
	movq	help_locales, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                # %cond.false
	movabsq	$.L.str.5, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_8
.LBB0_8:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	$0, help_ids
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB0_10
# BB#9:                                 # %cond.true.12
	movq	help_ids, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               # %cond.false.13
	movabsq	$.L.str.6, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_11
.LBB0_11:                               # %cond.end.14
	movq	-64(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.4, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then.18
	movabsq	$.L.str.3, %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_print
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB0_13:                               # %if.end.19
	movq	-24(%rbp), %rdi
	callq	g_option_context_free
	movq	help_root, %rdi
	callq	g_free
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, -32(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB0_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	lookup,@function
lookup:                                 # @lookup
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_help_lookup_domain
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	callq	progress_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_help_parse_locales
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	gimp_help_domain_map
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_help_progress_free
	movabsq	$g_free, %rsi
	movq	-56(%rbp), %rdi
	callq	g_list_free_full
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB1_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lookup, .Lfunc_end1-lookup
	.cfi_endproc

	.align	16, 0x90
	.type	show_version,@function
show_version:                           # @show_version
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
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movb	$0, %al
	callq	g_print
	xorl	%edi, %edi
	callq	exit
.Lfunc_end2:
	.size	show_version, .Lfunc_end2-show_version
	.cfi_endproc

	.align	16, 0x90
	.type	progress_new,@function
progress_new:                           # @progress_new
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
	movabsq	$progress_new.vtable, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gimp_help_progress_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	progress_new, .Lfunc_end3-progress_new
	.cfi_endproc

	.align	16, 0x90
	.type	progress_start,@function
progress_start:                         # @progress_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, be_verbose
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.23, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB4_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	progress_start, .Lfunc_end4-progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	progress_end,@function
progress_end:                           # @progress_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, be_verbose
	je	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	progress_end, .Lfunc_end5-progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	progress_set_value,@function
progress_set_value:                     # @progress_set_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	cmpl	$0, be_verbose
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.25, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB6_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	progress_set_value, .Lfunc_end6-progress_set_value
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP2_HELP_URI"
	.size	.L.str, 15

	.type	help_base,@object       # @help_base
	.local	help_base
	.comm	help_base,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"help"
	.size	.L.str.1, 5

	.type	help_root,@object       # @help_root
	.local	help_root
	.comm	help_root,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"HELP-ID"
	.size	.L.str.2, 8

	.type	entries,@object         # @entries
	.section	.rodata,"a",@progbits
	.align	16
entries:
	.quad	.L.str.7
	.byte	118                     # 0x76
	.zero	3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	show_version
	.quad	.L.str.8
	.quad	0
	.quad	.L.str.9
	.byte	98                      # 0x62
	.zero	3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	help_base
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.byte	114                     # 0x72
	.zero	3
	.long	0                       # 0x0
	.long	4                       # 0x4
	.zero	4
	.quad	help_root
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.byte	108                     # 0x6c
	.zero	3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	help_locales
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	be_verbose
	.quad	.L.str.19
	.quad	0
	.quad	.L.str.20
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	5                       # 0x5
	.zero	4
	.quad	help_ids
	.quad	0
	.quad	0
	.zero	48
	.size	entries, 336

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%s\n"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"http://www.gimp.org/help"
	.size	.L.str.4, 25

	.type	help_locales,@object    # @help_locales
	.local	help_locales
	.comm	help_locales,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"en"
	.size	.L.str.5, 3

	.type	help_ids,@object        # @help_ids
	.local	help_ids
	.comm	help_ids,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-main"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"version"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Show version information and exit"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"base"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Specifies base URI"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"URI"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"root"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Specifies root directory for index files"
	.size	.L.str.13, 41

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"DIR"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"lang"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Specifies help language"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"LANG"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"verbose"
	.size	.L.str.18, 8

	.type	be_verbose,@object      # @be_verbose
	.local	be_verbose
	.comm	be_verbose,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Be more verbose"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.zero	1
	.size	.L.str.20, 1

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-help-lookup version %s\n"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"2.8.18"
	.size	.L.str.22, 7

	.type	progress_new.vtable,@object # @progress_new.vtable
	.section	.rodata,"a",@progbits
	.align	8
progress_new.vtable:
	.quad	progress_start
	.quad	progress_end
	.quad	progress_set_value
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	progress_new.vtable, 56

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"\n%s\n"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"done\n"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"."
	.size	.L.str.25, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
