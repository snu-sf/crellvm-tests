	.text
	.file	"file-gif-load.bc"
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$3, %r11d
	movabsq	$query.load_args, %rbx
	movabsq	$query.load_return_vals, %r14
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	%r10, -56(%rbp)         # 8-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.20, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.26, %rcx
	movabsq	$.L.str.27, %r9
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	movl	$1, %r11d
	movl	$2, %r15d
	movl	$3, %r12d
	movabsq	$query.thumb_args, %r10
	movabsq	$query.thumb_return_vals, %rbx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movq	%r14, %r8
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	$3, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%r11d, -88(%rbp)        # 4-byte Spill
	movl	%r12d, -92(%rbp)        # 4-byte Spill
	movl	%r15d, -96(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.24, %rsi
	callq	gimp_register_thumbnail_loader
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
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
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.28, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.28, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.14, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	xorl	%esi, %esi
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -60(%rbp)
	jmp	.LBB1_8
.LBB1_4:                                # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.8
	movl	$1, %esi
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	load_image
	movl	%eax, -60(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.13
	movl	$1, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.14
	cmpl	$3, -44(%rbp)
	jne	.LBB1_19
# BB#9:                                 # %if.then.16
	cmpl	$-1, -60(%rbp)
	je	.LBB1_15
# BB#10:                                # %if.then.18
	cmpl	$0, promote_to_rgb
	jne	.LBB1_12
# BB#11:                                # %if.then.19
	movabsq	$gimp_cmap, %rsi
	movl	-60(%rbp), %edi
	movzbl	highest_used_index, %eax
	addl	$1, %eax
	movl	%eax, %edx
	callq	gimp_image_set_colormap
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB1_12:                               # %if.end.21
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-60(%rbp), %ecx
	movl	%ecx, run.values+48
	movq	-8(%rbp), %rdi
	movl	$.L.str.24, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.25
	movq	-32(%rbp), %rax
	movl	$4, (%rax)
	movl	$0, run.values+80
	movl	-60(%rbp), %edi
	callq	gimp_image_width
	movl	%eax, run.values+88
	movl	$0, run.values+120
	movl	-60(%rbp), %edi
	callq	gimp_image_height
	movl	%eax, run.values+128
.LBB1_14:                               # %if.end.28
	jmp	.LBB1_18
.LBB1_15:                               # %if.else.29
	movl	$0, -44(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.31
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_17:                               # %if.end.32
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.33
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.34
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
	addq	$96, %rsp
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
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
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
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1048, %rsp             # imm = 0x418
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movabsq	$.L.str.30, %rax
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -896(%rbp)
	movl	$-1, -904(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -924(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.31, %rdi
	movl	%eax, -928(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movl	-924(%rbp), %esi        # 4-byte Reload
	movl	-928(%rbp), %edx        # 4-byte Reload
	movq	-936(%rbp), %rcx        # 8-byte Reload
	movq	-944(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -44(%rbp)
	jmp	.LBB3_46
.LBB3_2:                                # %if.end
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$6, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movl	%eax, -956(%rbp)        # 4-byte Spill
	callq	fread
	cmpq	$0, %rax
	jne	.LBB3_4
# BB#3:                                 # %if.then.12
	movabsq	$.L.str.33, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -44(%rbp)
	jmp	.LBB3_46
.LBB3_4:                                # %if.end.13
	movabsq	$.L.str.34, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB3_6
# BB#5:                                 # %if.then.17
	movq	-72(%rbp), %rdi
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.36, %rdi
	movl	%eax, -972(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movabsq	$.L.str.35, %rcx
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movl	-972(%rbp), %esi        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -44(%rbp)
	jmp	.LBB3_46
.LBB3_6:                                # %if.end.20
	movl	$3, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	leaq	-900(%rbp), %rdi
	addq	$3, %rcx
	movq	%rcx, %rsi
	callq	strncpy
	leaq	-900(%rbp), %rdi
	movb	$0, -897(%rbp)
	movl	$.L.str.37, %r8d
	movl	%r8d, %esi
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_9
# BB#7:                                 # %land.lhs.true
	leaq	-900(%rbp), %rdi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_9
# BB#8:                                 # %if.then.30
	movabsq	$.L.str.39, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -44(%rbp)
	jmp	.LBB3_46
.LBB3_9:                                # %if.end.31
	movl	$7, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rdi
	movq	-80(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB3_11
# BB#10:                                # %if.then.35
	movabsq	$.L.str.40, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -44(%rbp)
	jmp	.LBB3_46
.LBB3_11:                               # %if.end.36
	movl	$2, %eax
	movzbl	-95(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-96(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, GifScreen
	movzbl	-93(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-94(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, GifScreen+4
	movzbl	-92(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, GifScreen+776
	movzbl	-92(%rbp), %eax
	andl	$112, %eax
	sarl	$3, %eax
	addl	$1, %eax
	movl	%eax, GifScreen+780
	movzbl	-91(%rbp), %eax
	movl	%eax, GifScreen+784
	movzbl	-90(%rbp), %eax
	movl	%eax, GifScreen+788
	movzbl	-92(%rbp), %eax
	andl	$128, %eax
	cmpl	$128, %eax
	jne	.LBB3_15
# BB#12:                                # %if.then.61
	movabsq	$GifScreen, %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	addq	$792, %rax              # imm = 0x318
	movq	-80(%rbp), %rdi
	movl	GifScreen+776, %esi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	ReadColorMap
	cmpl	$0, %eax
	jne	.LBB3_14
# BB#13:                                # %if.then.64
	movabsq	$.L.str.41, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -44(%rbp)
	jmp	.LBB3_46
.LBB3_14:                               # %if.end.65
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.66
	cmpl	$0, GifScreen+788
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.69
	cmpl	$49, GifScreen+788
	je	.LBB3_18
# BB#17:                                # %if.then.72
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB3_18:                               # %if.end.74
	movb	$0, highest_used_index
.LBB3_19:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-97(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -992(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-992(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$0, %rax
	jne	.LBB3_21
# BB#20:                                # %if.then.78
	movabsq	$.L.str.43, %rdi
	movb	$0, %al
	callq	g_message
	movl	-904(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB3_46
.LBB3_21:                               # %if.end.79
                                        #   in Loop: Header=BB3_19 Depth=1
	movzbl	-97(%rbp), %eax
	cmpl	$59, %eax
	jne	.LBB3_23
# BB#22:                                # %if.then.83
	movl	-904(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB3_46
.LBB3_23:                               # %if.end.84
                                        #   in Loop: Header=BB3_19 Depth=1
	movzbl	-97(%rbp), %eax
	cmpl	$33, %eax
	jne	.LBB3_27
# BB#24:                                # %if.then.88
                                        #   in Loop: Header=BB3_19 Depth=1
	leaq	-97(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	callq	fread
	cmpq	$0, %rax
	jne	.LBB3_26
# BB#25:                                # %if.then.92
	movabsq	$.L.str.44, %rdi
	movb	$0, %al
	callq	g_message
	movl	-904(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB3_46
.LBB3_26:                               # %if.end.93
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	-80(%rbp), %rdi
	movzbl	-97(%rbp), %esi
	callq	DoExtension
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	jmp	.LBB3_19
.LBB3_27:                               # %if.end.96
                                        #   in Loop: Header=BB3_19 Depth=1
	movzbl	-97(%rbp), %eax
	cmpl	$44, %eax
	je	.LBB3_29
# BB#28:                                # %if.then.100
                                        #   in Loop: Header=BB3_19 Depth=1
	movabsq	$.L.str.45, %rdi
	movzbl	-97(%rbp), %esi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB3_19
.LBB3_29:                               # %if.end.102
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	$9, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rdi
	movl	-896(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -896(%rbp)
	movq	-80(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB3_31
# BB#30:                                # %if.then.107
	movabsq	$.L.str.46, %rdi
	movb	$0, %al
	callq	g_message
	movl	-904(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB3_46
.LBB3_31:                               # %if.end.108
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	$1, %eax
	movzbl	-88(%rbp), %ecx
	andl	$128, %ecx
	cmpl	$128, %ecx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -888(%rbp)
	movzbl	-88(%rbp), %ecx
	andl	$7, %ecx
	addl	$1, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -892(%rbp)
	cmpl	$0, -888(%rbp)
	jne	.LBB3_35
# BB#32:                                # %if.then.120
                                        #   in Loop: Header=BB3_19 Depth=1
	leaq	-884(%rbp), %rcx
	leaq	-880(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movl	-892(%rbp), %esi
	callq	ReadColorMap
	cmpl	$0, %eax
	jne	.LBB3_34
# BB#33:                                # %if.then.124
	movabsq	$.L.str.47, %rdi
	movb	$0, %al
	callq	g_message
	movl	-904(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB3_46
.LBB3_34:                               # %if.end.125
                                        #   in Loop: Header=BB3_19 Depth=1
	leaq	-904(%rbp), %rax
	leaq	-880(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movzbl	-91(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-92(%rbp), %edx
	orl	%edx, %ecx
	movzbl	-89(%rbp), %edx
	shll	$8, %edx
	movzbl	-90(%rbp), %r9d
	orl	%r9d, %edx
	movl	-892(%rbp), %r9d
	movl	-884(%rbp), %r10d
	movzbl	-88(%rbp), %r11d
	andl	$64, %r11d
	cmpl	$64, %r11d
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %r11d
	movl	-896(%rbp), %r14d
	movzbl	-95(%rbp), %r15d
	shll	$8, %r15d
	movzbl	-96(%rbp), %r12d
	orl	%r12d, %r15d
	movzbl	-93(%rbp), %r12d
	shll	$8, %r12d
	movzbl	-94(%rbp), %r13d
	orl	%r13d, %r12d
	movl	GifScreen, %r13d
	movl	GifScreen+4, %ebx
	movl	%edx, -1008(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-1008(%rbp), %ecx       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%ebx, 48(%rsp)
	movq	%rax, 56(%rsp)
	callq	ReadImage
	movl	%eax, -908(%rbp)
	jmp	.LBB3_36
.LBB3_35:                               # %if.else
                                        #   in Loop: Header=BB3_19 Depth=1
	movabsq	$GifScreen, %rax
	addq	$8, %rax
	leaq	-904(%rbp), %rcx
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movzbl	-91(%rbp), %edx
	shll	$8, %edx
	movzbl	-92(%rbp), %r8d
	orl	%r8d, %edx
	movzbl	-89(%rbp), %r8d
	shll	$8, %r8d
	movzbl	-90(%rbp), %r9d
	orl	%r9d, %r8d
	movl	GifScreen+776, %r9d
	movl	GifScreen+792, %r10d
	movzbl	-88(%rbp), %r11d
	andl	$64, %r11d
	cmpl	$64, %r11d
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %r11d
	movl	-896(%rbp), %r14d
	movzbl	-95(%rbp), %r15d
	shll	$8, %r15d
	movzbl	-96(%rbp), %r12d
	orl	%r12d, %r15d
	movzbl	-93(%rbp), %r12d
	shll	$8, %r12d
	movzbl	-94(%rbp), %r13d
	orl	%r13d, %r12d
	movl	GifScreen, %r13d
	movl	GifScreen+4, %ebx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movq	%rax, %r8
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%ebx, 48(%rsp)
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movq	%rax, 56(%rsp)
	callq	ReadImage
	movl	%eax, -908(%rbp)
.LBB3_36:                               # %if.end.187
                                        #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, -908(%rbp)
	jne	.LBB3_38
# BB#37:                                # %if.then.189
	jmp	.LBB3_45
.LBB3_38:                               # %if.end.190
                                        #   in Loop: Header=BB3_19 Depth=1
	cmpq	$0, comment_parasite
	je	.LBB3_42
# BB#39:                                # %if.then.193
                                        #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, -60(%rbp)
	jne	.LBB3_41
# BB#40:                                # %if.then.195
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	-904(%rbp), %edi
	movq	comment_parasite, %rsi
	callq	gimp_image_attach_parasite
	movl	%eax, -1020(%rbp)       # 4-byte Spill
.LBB3_41:                               # %if.end.197
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	comment_parasite, %rdi
	callq	gimp_parasite_free
	movq	$0, comment_parasite
.LBB3_42:                               # %if.end.198
                                        #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB3_44
# BB#43:                                # %if.then.200
	jmp	.LBB3_45
.LBB3_44:                               # %if.end.201
                                        #   in Loop: Header=BB3_19 Depth=1
	jmp	.LBB3_19
.LBB3_45:                               # %while.end
	movl	-904(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB3_46:                               # %return
	movl	-44(%rbp), %eax
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB4_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB4_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_message, .Lfunc_end4-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	ReadColorMap,@function
ReadColorMap:                           # @ReadColorMap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$1, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$3, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-43(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB5_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_9
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movb	-43(%rbp), %dl
	movslq	-52(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
	movb	-42(%rbp), %dl
	movslq	-52(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movb	%dl, 256(%rdi,%rsi)
	movb	-41(%rbp), %dl
	movslq	-52(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movb	%dl, 512(%rdi,%rsi)
	movzbl	-43(%rbp), %eax
	movzbl	-42(%rbp), %r8d
	cmpl	%r8d, %eax
	movb	%cl, -53(%rbp)          # 1-byte Spill
	jne	.LBB5_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB5_1 Depth=1
	movzbl	-42(%rbp), %eax
	movzbl	-41(%rbp), %ecx
	cmpl	%ecx, %eax
	sete	%dl
	movb	%dl, -53(%rbp)          # 1-byte Spill
.LBB5_6:                                # %land.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	-53(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	andl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end
	movl	$2, %eax
	movl	$1, %ecx
	cmpl	$0, -48(%rbp)
	cmovnel	%ecx, %eax
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	$1, -4(%rbp)
.LBB5_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ReadColorMap, .Lfunc_end5-ReadColorMap
	.cfi_endproc

	.align	16, 0x90
	.type	DoExtension,@function
DoExtension:                            # @DoExtension
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%esi, %eax
	subl	$1, %esi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%esi, -40(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_24
.LBB6_24:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$249, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB6_11
	jmp	.LBB6_25
.LBB6_25:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$254, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_26
.LBB6_26:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_18
.LBB6_1:                                # %sw.bb
	jmp	.LBB6_19
.LBB6_2:                                # %sw.bb.1
	jmp	.LBB6_19
.LBB6_3:                                # %sw.bb.2
	jmp	.LBB6_4
.LBB6_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$DoExtension.buf, %rsi
	movq	-16(%rbp), %rdi
	callq	GetDataBlock
	cmpl	$0, %eax
	jle	.LBB6_10
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$DoExtension.buf, %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	jne	.LBB6_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_4
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	$0, comment_parasite
	je	.LBB6_9
# BB#8:                                 # %if.then.5
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	comment_parasite, %rdi
	callq	gimp_parasite_free
.LBB6_9:                                # %if.end.6
                                        #   in Loop: Header=BB6_4 Depth=1
	movabsq	$.L.str.48, %rdi
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-72(%rbp), %edx         # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, comment_parasite
	jmp	.LBB6_4
.LBB6_10:                               # %while.end
	movl	$1, -4(%rbp)
	jmp	.LBB6_23
.LBB6_11:                               # %sw.bb.9
	movabsq	$DoExtension.buf, %rsi
	movq	-16(%rbp), %rdi
	callq	GetDataBlock
	movzbl	DoExtension.buf, %ecx
	sarl	$2, %ecx
	andl	$7, %ecx
	movl	%ecx, Gif89+12
	movzbl	DoExtension.buf, %ecx
	sarl	$1, %ecx
	andl	$1, %ecx
	movl	%ecx, Gif89+8
	movzbl	DoExtension.buf+2, %ecx
	shll	$8, %ecx
	movzbl	DoExtension.buf+1, %edx
	orl	%edx, %ecx
	movl	%ecx, Gif89+4
	movzbl	DoExtension.buf, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB6_13
# BB#12:                                # %if.then.21
	movzbl	DoExtension.buf+3, %eax
	movl	%eax, Gif89
	jmp	.LBB6_14
.LBB6_13:                               # %if.else
	movl	$-1, Gif89
.LBB6_14:                               # %if.end.23
	jmp	.LBB6_15
.LBB6_15:                               # %while.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$DoExtension.buf, %rsi
	movq	-16(%rbp), %rdi
	callq	GetDataBlock
	cmpl	$0, %eax
	jle	.LBB6_17
# BB#16:                                # %while.body.28
                                        #   in Loop: Header=BB6_15 Depth=1
	jmp	.LBB6_15
.LBB6_17:                               # %while.end.29
	movl	$0, -4(%rbp)
	jmp	.LBB6_23
.LBB6_18:                               # %sw.default
	movabsq	$DoExtension.buf, %rdi
	movabsq	$.L.str.49, %rsi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB6_19:                               # %sw.epilog
	jmp	.LBB6_20
.LBB6_20:                               # %while.cond.31
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$DoExtension.buf, %rsi
	movq	-16(%rbp), %rdi
	callq	GetDataBlock
	cmpl	$0, %eax
	jle	.LBB6_22
# BB#21:                                # %while.body.35
                                        #   in Loop: Header=BB6_20 Depth=1
	jmp	.LBB6_20
.LBB6_22:                               # %while.end.36
	movl	$0, -4(%rbp)
.LBB6_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	DoExtension, .Lfunc_end6-DoExtension
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
.LCPI7_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	ReadImage,@function
ReadImage:                              # @ReadImage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
	movq	72(%rbp), %rax
	movl	64(%rbp), %r10d
	movl	56(%rbp), %r11d
	movl	48(%rbp), %ebx
	movl	40(%rbp), %r14d
	movl	32(%rbp), %r15d
	movl	24(%rbp), %r12d
	movl	16(%rbp), %r13d
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movl	%r13d, -88(%rbp)
	movl	%r12d, -92(%rbp)
	movl	%r15d, -96(%rbp)
	movl	%r14d, -100(%rbp)
	movl	%ebx, -104(%rbp)
	movl	%r11d, -108(%rbp)
	movl	%r10d, -112(%rbp)
	movq	%rax, -120(%rbp)
	movl	$0, -208(%rbp)
	movl	$0, -212(%rbp)
	movl	$0, -216(%rbp)
	movl	$0, -260(%rbp)
	cmpl	$1, -68(%rbp)
	jl	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -72(%rbp)
	jge	.LBB7_3
.LBB7_2:                                # %if.then
	movabsq	$.L.str.52, %rdi
	movb	$0, %al
	callq	g_message
	movq	-120(%rbp), %rdi
	movl	$-1, (%rdi)
	movl	$0, -44(%rbp)
	jmp	.LBB7_97
.LBB7_3:                                # %if.end
	leaq	-201(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$0, %rax
	jne	.LBB7_5
# BB#4:                                 # %if.then.3
	movabsq	$.L.str.43, %rdi
	movb	$0, %al
	callq	g_message
	movq	-120(%rbp), %rdi
	movl	$-1, (%rdi)
	movl	$0, -44(%rbp)
	jmp	.LBB7_97
.LBB7_5:                                # %if.end.4
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	movzbl	-201(%rbp), %edx
	callq	LZWReadByte
	cmpl	$0, %eax
	jge	.LBB7_7
# BB#6:                                 # %if.then.8
	movabsq	$.L.str.53, %rdi
	movb	$0, %al
	callq	g_message
	movq	-120(%rbp), %rdi
	movl	$-1, (%rdi)
	movl	$0, -44(%rbp)
	jmp	.LBB7_97
.LBB7_7:                                # %if.end.9
	cmpl	$1, ReadImage.frame_number
	jne	.LBB7_23
# BB#8:                                 # %if.then.12
	cmpl	$0, -108(%rbp)
	jne	.LBB7_10
# BB#9:                                 # %if.then.15
	movl	-68(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB7_10:                               # %if.end.16
	cmpl	$0, -112(%rbp)
	jne	.LBB7_12
# BB#11:                                # %if.then.19
	movl	-72(%rbp), %eax
	movl	%eax, -112(%rbp)
.LBB7_12:                               # %if.end.20
	movl	$2, %edx
	movl	-108(%rbp), %edi
	movl	-112(%rbp), %esi
	callq	gimp_image_new
	movq	-120(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-120(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-64(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	$0, -232(%rbp)
	movl	$0, -236(%rbp)
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB7_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB7_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	-232(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-236(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -236(%rbp)
	movslq	%esi, %rax
	movb	%dl, gimp_cmap(,%rax)
	movslq	-232(%rbp), %rax
	movb	%dl, used_cmap(,%rax)
	movslq	-232(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	256(%rcx,%rax), %dl
	movl	-236(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -236(%rbp)
	movslq	%esi, %rax
	movb	%dl, gimp_cmap(,%rax)
	movslq	-232(%rbp), %rax
	movb	%dl, used_cmap+256(,%rax)
	movslq	-232(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	512(%rcx,%rax), %dl
	movl	-236(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -236(%rbp)
	movslq	%esi, %rax
	movb	%dl, gimp_cmap(,%rax)
	movslq	-232(%rbp), %rax
	movb	%dl, used_cmap+512(,%rax)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB7_13
.LBB7_16:                               # %for.end
	movabsq	$gimp_cmap, %rsi
	movq	-120(%rbp), %rax
	movl	(%rax), %edi
	movl	-84(%rbp), %edx
	callq	gimp_image_set_colormap
	cmpl	$0, Gif89+4
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jge	.LBB7_18
# BB#17:                                # %if.then.50
	movabsq	$.L.str.54, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -248(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movabsq	$.L.str.56, %rdx
	imull	$10, Gif89+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -248(%rbp)
.LBB7_19:                               # %if.end.55
	movl	Gif89+12, %eax
	movl	%eax, ReadImage.previous_disposal
	cmpl	$-1, Gif89
	jne	.LBB7_21
# BB#20:                                # %if.then.58
	movl	$4, %r8d
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rax
	movl	(%rax), %edi
	movq	-248(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	gimp_layer_new
	movl	%eax, -124(%rbp)
	jmp	.LBB7_22
.LBB7_21:                               # %if.else.60
	movl	$5, %r8d
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rax
	movl	(%rax), %edi
	movq	-248(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	gimp_layer_new
	movl	%eax, -124(%rbp)
	movl	$1, -260(%rbp)
.LBB7_22:                               # %if.end.62
	movq	-248(%rbp), %rdi
	callq	g_free
	jmp	.LBB7_44
.LBB7_23:                               # %if.else.63
	movabsq	$.L.str.57, %rdi
	callq	gettext
	movq	-64(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	ReadImage.frame_number, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_set_text_printf
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_progress_pulse
	cmpl	$0, promote_to_rgb
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jne	.LBB7_33
# BB#24:                                # %if.then.68
	movl	$0, -232(%rbp)
.LBB7_25:                               # %for.cond.69
                                        # =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB7_32
# BB#26:                                # %for.body.72
                                        #   in Loop: Header=BB7_25 Depth=1
	movslq	-232(%rbp), %rax
	movzbl	used_cmap(,%rax), %ecx
	movslq	-232(%rbp), %rax
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB7_29
# BB#27:                                # %lor.lhs.false.82
                                        #   in Loop: Header=BB7_25 Depth=1
	movslq	-232(%rbp), %rax
	movzbl	used_cmap+256(,%rax), %ecx
	movslq	-232(%rbp), %rax
	movq	-80(%rbp), %rdx
	movzbl	256(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB7_29
# BB#28:                                # %lor.lhs.false.92
                                        #   in Loop: Header=BB7_25 Depth=1
	movslq	-232(%rbp), %rax
	movzbl	used_cmap+512(,%rax), %ecx
	movslq	-232(%rbp), %rax
	movq	-80(%rbp), %rdx
	movzbl	512(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB7_30
.LBB7_29:                               # %if.then.102
	movl	$1, promote_to_rgb
	movq	-120(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB7_32
.LBB7_30:                               # %if.end.104
                                        #   in Loop: Header=BB7_25 Depth=1
	jmp	.LBB7_31
.LBB7_31:                               # %for.inc.105
                                        #   in Loop: Header=BB7_25 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB7_25
.LBB7_32:                               # %for.end.107
	jmp	.LBB7_33
.LBB7_33:                               # %if.end.108
	cmpl	$0, Gif89+4
	jge	.LBB7_35
# BB#34:                                # %if.then.111
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movl	ReadImage.frame_number, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -248(%rbp)
	jmp	.LBB7_36
.LBB7_35:                               # %if.else.114
	movabsq	$.L.str.59, %rdi
	callq	gettext
	movabsq	$.L.str.56, %rcx
	movl	ReadImage.frame_number, %esi
	imull	$10, Gif89+4, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -248(%rbp)
.LBB7_36:                               # %if.end.118
	movl	ReadImage.previous_disposal(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$7, %rdx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	ja	.LBB7_42
# BB#98:                                # %if.end.118
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_37:                               # %sw.bb
	jmp	.LBB7_43
.LBB7_38:                               # %sw.bb.119
	movabsq	$.L.str.60, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-248(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	-248(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -248(%rbp)
	movq	-256(%rbp), %rdi
	callq	g_free
	jmp	.LBB7_43
.LBB7_39:                               # %sw.bb.121
	movabsq	$.L.str.61, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-248(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	-248(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -248(%rbp)
	movq	-256(%rbp), %rdi
	callq	g_free
	jmp	.LBB7_43
.LBB7_40:                               # %sw.bb.123
	movabsq	$.L.str.62, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-248(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	-248(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -248(%rbp)
	movq	-256(%rbp), %rdi
	callq	g_free
	jmp	.LBB7_43
.LBB7_41:                               # %sw.bb.125
	movabsq	$.L.str.63, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-248(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	-248(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -248(%rbp)
	movq	-256(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.64, %rdi
	callq	gettext
	movl	ReadImage.previous_disposal, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB7_43
.LBB7_42:                               # %sw.default
	movabsq	$.L.str.65, %rdi
	movb	$0, %al
	callq	g_message
.LBB7_43:                               # %sw.epilog
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	$5, %eax
	movl	$1, %ecx
	movl	Gif89+12, %edx
	movl	%edx, ReadImage.previous_disposal
	movq	-120(%rbp), %rsi
	movl	(%rsi), %edi
	movq	-248(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %r8d
	cmpl	$0, promote_to_rgb
	cmovnel	%ecx, %eax
	movl	%r8d, %ecx
	movl	%eax, %r8d
	callq	gimp_layer_new
	movl	%eax, -124(%rbp)
	movl	$1, -260(%rbp)
	movq	-248(%rbp), %rdi
	callq	g_free
.LBB7_44:                               # %if.end.130
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	ReadImage.frame_number, %eax
	addl	$1, %eax
	movl	%eax, ReadImage.frame_number
	movq	-120(%rbp), %rsi
	movl	(%rsi), %edi
	movl	-124(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-124(%rbp), %edi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_layer_translate
	movl	-124(%rbp), %edi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	$-1, %r8
	movq	%rax, -184(%rbp)
	movl	$0, -220(%rbp)
	movl	-72(%rbp), %ecx
	movl	%ecx, -224(%rbp)
	movslq	-68(%rbp), %rax
	movslq	-72(%rbp), %r9
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%r8, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%r9
	cmpl	$0, -260(%rbp)
	movq	%rax, -344(%rbp)        # 8-byte Spill
	je	.LBB7_46
# BB#45:                                # %cond.true
	movl	$2, %eax
	movl	$4, %ecx
	cmpl	$0, promote_to_rgb
	cmovnel	%ecx, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB7_47
.LBB7_46:                               # %cond.false
	movl	$1, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB7_47
.LBB7_47:                               # %cond.end
	movl	-348(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-344(%rbp), %rax        # 8-byte Reload
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jbe	.LBB7_49
# BB#48:                                # %if.then.145
	movq	-64(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.66, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-120(%rbp), %rsi
	movl	$-1, (%rsi)
	movl	$0, -44(%rbp)
	jmp	.LBB7_97
.LBB7_49:                               # %if.end.147
	cmpl	$0, -260(%rbp)
	je	.LBB7_51
# BB#50:                                # %if.then.149
	movl	$2, %eax
	movl	$4, %ecx
	movslq	-68(%rbp), %rdx
	movslq	-72(%rbp), %rsi
	imulq	%rsi, %rdx
	cmpl	$0, promote_to_rgb
	cmovnel	%ecx, %eax
	movslq	%eax, %rsi
	imulq	%rsi, %rdx
	movq	%rdx, %rdi
	callq	g_malloc
	movq	%rax, -192(%rbp)
	jmp	.LBB7_52
.LBB7_51:                               # %if.else.158
	movslq	-68(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, %rdi
	callq	g_malloc
	movq	%rax, -192(%rbp)
.LBB7_52:                               # %if.end.163
	cmpl	$0, -260(%rbp)
	jne	.LBB7_55
# BB#53:                                # %land.lhs.true
	cmpl	$0, promote_to_rgb
	je	.LBB7_55
# BB#54:                                # %if.then.166
	movabsq	$.L.str.67, %rdi
	movb	$0, %al
	callq	g_message
	callq	gimp_quit
.LBB7_55:                               # %if.end.167
	jmp	.LBB7_56
.LBB7_56:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movzbl	-201(%rbp), %edx
	callq	LZWReadByte
	movl	%eax, -228(%rbp)
	cmpl	$0, %eax
	jl	.LBB7_91
# BB#57:                                # %while.body
                                        #   in Loop: Header=BB7_56 Depth=1
	cmpl	$0, -260(%rbp)
	je	.LBB7_65
# BB#58:                                # %if.then.173
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-228(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movzbl	highest_used_index, %edx
	cmpl	%edx, %eax
	jle	.LBB7_61
# BB#59:                                # %land.lhs.true.179
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-228(%rbp), %eax
	cmpl	Gif89, %eax
	je	.LBB7_61
# BB#60:                                # %if.then.182
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-228(%rbp), %eax
	movb	%al, %cl
	movb	%cl, highest_used_index
.LBB7_61:                               # %if.end.184
                                        #   in Loop: Header=BB7_56 Depth=1
	cmpl	$0, promote_to_rgb
	je	.LBB7_63
# BB#62:                                # %if.then.186
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	$255, %eax
	xorl	%ecx, %ecx
	movq	-192(%rbp), %rdx
	movl	-212(%rbp), %esi
	imull	-68(%rbp), %esi
	addl	-208(%rbp), %esi
	shll	$2, %esi
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -200(%rbp)
	movslq	-228(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movb	(%rdi,%rdx), %r8b
	movq	-200(%rbp), %rdx
	movb	%r8b, (%rdx)
	movslq	-228(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movb	256(%rdi,%rdx), %r8b
	movq	-200(%rbp), %rdx
	movb	%r8b, 1(%rdx)
	movslq	-228(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movb	512(%rdi,%rdx), %r8b
	movq	-200(%rbp), %rdx
	movb	%r8b, 2(%rdx)
	movl	-228(%rbp), %esi
	cmpl	Gif89, %esi
	cmovel	%ecx, %eax
	movb	%al, %r8b
	movq	-200(%rbp), %rdx
	movb	%r8b, 3(%rdx)
	jmp	.LBB7_64
.LBB7_63:                               # %if.else.205
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	$255, %eax
	xorl	%ecx, %ecx
	movq	-192(%rbp), %rdx
	movl	-212(%rbp), %esi
	imull	-68(%rbp), %esi
	addl	-208(%rbp), %esi
	shll	$1, %esi
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -200(%rbp)
	movl	-228(%rbp), %esi
	movb	%sil, %r8b
	movq	-200(%rbp), %rdx
	movb	%r8b, (%rdx)
	movl	-228(%rbp), %esi
	cmpl	Gif89, %esi
	cmovel	%ecx, %eax
	movb	%al, %r8b
	movq	-200(%rbp), %rdx
	movb	%r8b, 1(%rdx)
.LBB7_64:                               # %if.end.217
                                        #   in Loop: Header=BB7_56 Depth=1
	jmp	.LBB7_68
.LBB7_65:                               # %if.else.218
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-228(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movzbl	highest_used_index, %edx
	cmpl	%edx, %eax
	jle	.LBB7_67
# BB#66:                                # %if.then.224
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-228(%rbp), %eax
	movb	%al, %cl
	movb	%cl, highest_used_index
.LBB7_67:                               # %if.end.226
                                        #   in Loop: Header=BB7_56 Depth=1
	movq	-192(%rbp), %rax
	movl	-212(%rbp), %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-208(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movl	-228(%rbp), %ecx
	movb	%cl, %sil
	movq	-200(%rbp), %rax
	movb	%sil, (%rax)
.LBB7_68:                               # %if.end.233
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	movl	-208(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB7_88
# BB#69:                                # %if.then.237
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	$0, -208(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB7_82
# BB#70:                                # %if.then.239
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-216(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -352(%rbp)        # 4-byte Spill
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	jb	.LBB7_71
	jmp	.LBB7_99
.LBB7_99:                               # %if.then.239
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-352(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	je	.LBB7_72
	jmp	.LBB7_100
.LBB7_100:                              # %if.then.239
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-352(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	je	.LBB7_73
	jmp	.LBB7_74
.LBB7_71:                               # %sw.bb.240
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-212(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB7_74
.LBB7_72:                               # %sw.bb.242
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-212(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB7_74
.LBB7_73:                               # %sw.bb.244
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-212(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -212(%rbp)
.LBB7_74:                               # %sw.epilog.246
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-212(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB7_81
# BB#75:                                # %if.then.249
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-216(%rbp), %eax
	incl	%eax
	movl	%eax, -216(%rbp)
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -368(%rbp)        # 4-byte Spill
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	je	.LBB7_76
	jmp	.LBB7_101
.LBB7_101:                              # %if.then.249
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-368(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	je	.LBB7_77
	jmp	.LBB7_102
.LBB7_102:                              # %if.then.249
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-368(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	je	.LBB7_78
	jmp	.LBB7_79
.LBB7_76:                               # %sw.bb.251
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	$4, -212(%rbp)
	jmp	.LBB7_80
.LBB7_77:                               # %sw.bb.252
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	$2, -212(%rbp)
	jmp	.LBB7_80
.LBB7_78:                               # %sw.bb.253
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	$1, -212(%rbp)
	jmp	.LBB7_80
.LBB7_79:                               # %sw.default.254
	jmp	.LBB7_94
.LBB7_80:                               # %sw.epilog.255
                                        #   in Loop: Header=BB7_56 Depth=1
	jmp	.LBB7_81
.LBB7_81:                               # %if.end.256
                                        #   in Loop: Header=BB7_56 Depth=1
	jmp	.LBB7_83
.LBB7_82:                               # %if.else.257
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
.LBB7_83:                               # %if.end.259
                                        #   in Loop: Header=BB7_56 Depth=1
	cmpl	$1, ReadImage.frame_number
	jne	.LBB7_87
# BB#84:                                # %if.then.262
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	$16, %eax
	movl	-220(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -220(%rbp)
	movl	-220(%rbp), %ecx
	movl	%eax, -384(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-384(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_86
# BB#85:                                # %if.then.266
                                        #   in Loop: Header=BB7_56 Depth=1
	cvtsi2sdl	-220(%rbp), %xmm0
	cvtsi2sdl	-224(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB7_86:                               # %if.end.271
                                        #   in Loop: Header=BB7_56 Depth=1
	jmp	.LBB7_87
.LBB7_87:                               # %if.end.272
                                        #   in Loop: Header=BB7_56 Depth=1
	jmp	.LBB7_88
.LBB7_88:                               # %if.end.273
                                        #   in Loop: Header=BB7_56 Depth=1
	movl	-212(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB7_90
# BB#89:                                # %if.then.276
	jmp	.LBB7_91
.LBB7_90:                               # %if.end.277
                                        #   in Loop: Header=BB7_56 Depth=1
	jmp	.LBB7_56
.LBB7_91:                               # %while.end
	cmpl	$0, -228(%rbp)
	jge	.LBB7_93
# BB#92:                                # %if.then.280
	movl	$0, -44(%rbp)
	jmp	.LBB7_97
.LBB7_93:                               # %if.end.281
	jmp	.LBB7_94
.LBB7_94:                               # %fini
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-184(%rbp), %rsi
	movq	-184(%rbp), %r8
	movl	4(%r8), %r8d
	movq	-184(%rbp), %r9
	movl	8(%r9), %r9d
	movl	%edx, -392(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-176(%rbp), %rdi
	xorl	%eax, %eax
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %r10
	movl	4(%r10), %r8d
	movq	-184(%rbp), %r10
	movl	8(%r10), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-184(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-184(%rbp), %rdi
	callq	gimp_drawable_detach
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movzbl	-201(%rbp), %edx
	callq	LZWReadByte
	cmpl	$0, %eax
	jl	.LBB7_96
# BB#95:                                # %if.then.290
	movabsq	$.L.str.68, %rdi
	movb	$0, %al
	callq	g_print
	movl	$0, -44(%rbp)
	jmp	.LBB7_97
.LBB7_96:                               # %if.end.291
	movl	$1, -44(%rbp)
.LBB7_97:                               # %return
	movl	-44(%rbp), %eax
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ReadImage, .Lfunc_end7-ReadImage
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_37
	.quad	.LBB7_38
	.quad	.LBB7_39
	.quad	.LBB7_40
	.quad	.LBB7_41
	.quad	.LBB7_41
	.quad	.LBB7_41
	.quad	.LBB7_41

	.text
	.align	16, 0x90
	.type	GetDataBlock,@function
GetDataBlock:                           # @GetDataBlock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-25(%rbp), %rax
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	fread
	cmpq	$0, %rax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.50, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB8_6
.LBB8_2:                                # %if.end
	movzbl	-25(%rbp), %eax
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, ZeroDataBlock
	movzbl	-25(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true
	movl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movzbl	-25(%rbp), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB8_5
# BB#4:                                 # %if.then.10
	movabsq	$.L.str.51, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.end.11
	movzbl	-25(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	GetDataBlock, .Lfunc_end8-GetDataBlock
	.cfi_endproc

	.align	16, 0x90
	.type	LZWReadByte,@function
LZWReadByte:                            # @LZWReadByte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB9_15
# BB#1:                                 # %if.then
	cmpl	$12, -24(%rbp)
	jg	.LBB9_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$1, -24(%rbp)
	jg	.LBB9_4
.LBB9_3:                                # %if.then.2
	movabsq	$.L.str.69, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB9_74
.LBB9_4:                                # %if.end
	xorl	%esi, %esi
	movl	$1, %eax
	movl	-24(%rbp), %ecx
	movl	%ecx, LZWReadByte.set_code_size
	movl	LZWReadByte.set_code_size, %ecx
	addl	$1, %ecx
	movl	%ecx, LZWReadByte.code_size
	movl	LZWReadByte.set_code_size, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	%eax, %edx
	shll	%cl, %edx
	movl	%edx, LZWReadByte.clear_code
	movl	LZWReadByte.clear_code, %edx
	addl	$1, %edx
	movl	%edx, LZWReadByte.end_code
	movl	LZWReadByte.clear_code, %edx
	shll	$1, %edx
	movl	%edx, LZWReadByte.max_code_size
	movl	LZWReadByte.clear_code, %edx
	addl	$2, %edx
	movl	%edx, LZWReadByte.max_code
	movq	-16(%rbp), %rdi
	movl	%eax, %edx
	callq	GetCode
	cmpl	$0, %eax
	jge	.LBB9_6
# BB#5:                                 # %if.then.6
	movl	$-1, -4(%rbp)
	jmp	.LBB9_74
.LBB9_6:                                # %if.end.7
	movabsq	$LZWReadByte.stack, %rax
	movl	$1, LZWReadByte.fresh
	movq	%rax, LZWReadByte.sp
	movl	$0, -36(%rbp)
.LBB9_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	LZWReadByte.clear_code, %eax
	jge	.LBB9_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB9_7 Depth=1
	movslq	-36(%rbp), %rax
	movl	$0, LZWReadByte.table(,%rax,4)
	movl	-36(%rbp), %ecx
	movslq	-36(%rbp), %rax
	movl	%ecx, LZWReadByte.table+16384(,%rax,4)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB9_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_7
.LBB9_10:                               # %for.end
	jmp	.LBB9_11
.LBB9_11:                               # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4096, -36(%rbp)        # imm = 0x1000
	jge	.LBB9_14
# BB#12:                                # %for.body.13
                                        #   in Loop: Header=BB9_11 Depth=1
	movslq	-36(%rbp), %rax
	movl	$0, LZWReadByte.table(,%rax,4)
	movslq	-36(%rbp), %rax
	movl	$0, LZWReadByte.table+16384(,%rax,4)
# BB#13:                                # %for.inc.18
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_11
.LBB9_14:                               # %for.end.20
	movl	$0, -4(%rbp)
	jmp	.LBB9_74
.LBB9_15:                               # %if.else
	cmpl	$0, LZWReadByte.fresh
	je	.LBB9_22
# BB#16:                                # %if.then.22
	movl	$0, LZWReadByte.fresh
.LBB9_17:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	LZWReadByte.code_size, %esi
	callq	GetCode
	movl	%eax, LZWReadByte.oldcode
	movl	%eax, LZWReadByte.firstcode
# BB#18:                                # %do.cond
                                        #   in Loop: Header=BB9_17 Depth=1
	movl	LZWReadByte.firstcode, %eax
	cmpl	LZWReadByte.clear_code, %eax
	je	.LBB9_17
# BB#19:                                # %do.end
	cmpl	$0, LZWReadByte.firstcode
	jge	.LBB9_21
# BB#20:                                # %if.then.26
	movl	$-1, -4(%rbp)
	jmp	.LBB9_74
.LBB9_21:                               # %if.end.27
	movl	LZWReadByte.firstcode, %eax
	andl	$255, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_74
.LBB9_22:                               # %if.end.28
	jmp	.LBB9_23
.LBB9_23:                               # %if.end.29
	movabsq	$LZWReadByte.stack, %rax
	cmpq	%rax, LZWReadByte.sp
	jbe	.LBB9_25
# BB#24:                                # %if.then.31
	movq	LZWReadByte.sp, %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, LZWReadByte.sp
	movl	-4(%rax), %edx
	andl	$255, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB9_74
.LBB9_25:                               # %if.end.33
	jmp	.LBB9_26
.LBB9_26:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_55 Depth 2
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	LZWReadByte.code_size, %esi
	callq	GetCode
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jl	.LBB9_71
# BB#27:                                # %while.body
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	-28(%rbp), %eax
	cmpl	LZWReadByte.clear_code, %eax
	jne	.LBB9_39
# BB#28:                                # %if.then.37
	movl	$0, -36(%rbp)
.LBB9_29:                               # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	LZWReadByte.clear_code, %eax
	jge	.LBB9_32
# BB#30:                                # %for.body.40
                                        #   in Loop: Header=BB9_29 Depth=1
	movslq	-36(%rbp), %rax
	movl	$0, LZWReadByte.table(,%rax,4)
	movl	-36(%rbp), %ecx
	movslq	-36(%rbp), %rax
	movl	%ecx, LZWReadByte.table+16384(,%rax,4)
# BB#31:                                # %for.inc.45
                                        #   in Loop: Header=BB9_29 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_29
.LBB9_32:                               # %for.end.47
	jmp	.LBB9_33
.LBB9_33:                               # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4096, -36(%rbp)        # imm = 0x1000
	jge	.LBB9_36
# BB#34:                                # %for.body.50
                                        #   in Loop: Header=BB9_33 Depth=1
	movslq	-36(%rbp), %rax
	movl	$0, LZWReadByte.table(,%rax,4)
	movslq	-36(%rbp), %rax
	movl	$0, LZWReadByte.table+16384(,%rax,4)
# BB#35:                                # %for.inc.55
                                        #   in Loop: Header=BB9_33 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_33
.LBB9_36:                               # %for.end.57
	xorl	%edx, %edx
	movabsq	$LZWReadByte.stack, %rax
	movl	LZWReadByte.set_code_size, %ecx
	addl	$1, %ecx
	movl	%ecx, LZWReadByte.code_size
	movl	LZWReadByte.clear_code, %ecx
	shll	$1, %ecx
	movl	%ecx, LZWReadByte.max_code_size
	movl	LZWReadByte.clear_code, %ecx
	addl	$2, %ecx
	movl	%ecx, LZWReadByte.max_code
	movq	%rax, LZWReadByte.sp
	movq	-16(%rbp), %rdi
	movl	LZWReadByte.code_size, %esi
	callq	GetCode
	movl	%eax, LZWReadByte.oldcode
	movl	%eax, LZWReadByte.firstcode
	cmpl	$0, LZWReadByte.firstcode
	jge	.LBB9_38
# BB#37:                                # %if.then.63
	movl	$-1, -4(%rbp)
	jmp	.LBB9_74
.LBB9_38:                               # %if.end.64
	movl	LZWReadByte.firstcode, %eax
	andl	$255, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_74
.LBB9_39:                               # %if.else.66
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	-28(%rbp), %eax
	cmpl	LZWReadByte.end_code, %eax
	je	.LBB9_41
# BB#40:                                # %lor.lhs.false.68
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	-28(%rbp), %eax
	cmpl	LZWReadByte.max_code, %eax
	jle	.LBB9_49
.LBB9_41:                               # %if.then.70
	cmpl	$0, ZeroDataBlock
	je	.LBB9_43
# BB#42:                                # %if.then.72
	movl	$-2, -4(%rbp)
	jmp	.LBB9_74
.LBB9_43:                               # %if.end.73
	jmp	.LBB9_44
.LBB9_44:                               # %while.cond.74
                                        # =>This Inner Loop Header: Depth=1
	leaq	-304(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	GetDataBlock
	movl	%eax, -40(%rbp)
	cmpl	$0, %eax
	jle	.LBB9_46
# BB#45:                                # %while.body.77
                                        #   in Loop: Header=BB9_44 Depth=1
	jmp	.LBB9_44
.LBB9_46:                               # %while.end
	cmpl	$0, -40(%rbp)
	je	.LBB9_48
# BB#47:                                # %if.then.79
	movabsq	$.L.str.70, %rdi
	movb	$0, %al
	callq	g_print
.LBB9_48:                               # %if.end.80
	movl	$-2, -4(%rbp)
	jmp	.LBB9_74
.LBB9_49:                               # %if.end.81
                                        #   in Loop: Header=BB9_26 Depth=1
	jmp	.LBB9_50
.LBB9_50:                               # %if.end.82
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	LZWReadByte.max_code, %eax
	jne	.LBB9_54
# BB#51:                                # %if.then.84
                                        #   in Loop: Header=BB9_26 Depth=1
	movabsq	$LZWReadByte.stack, %rax
	addq	$32768, %rax            # imm = 0x8000
	cmpq	%rax, LZWReadByte.sp
	jae	.LBB9_53
# BB#52:                                # %if.then.86
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	LZWReadByte.firstcode, %eax
	movq	LZWReadByte.sp, %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, LZWReadByte.sp
	movl	%eax, (%rcx)
.LBB9_53:                               # %if.end.88
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	LZWReadByte.oldcode, %eax
	movl	%eax, -28(%rbp)
.LBB9_54:                               # %if.end.89
                                        #   in Loop: Header=BB9_26 Depth=1
	jmp	.LBB9_55
.LBB9_55:                               # %while.cond.90
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	cmpl	LZWReadByte.clear_code, %eax
	movb	%cl, -305(%rbp)         # 1-byte Spill
	jl	.LBB9_57
# BB#56:                                # %land.rhs
                                        #   in Loop: Header=BB9_55 Depth=2
	movabsq	$LZWReadByte.stack, %rax
	addq	$32768, %rax            # imm = 0x8000
	cmpq	%rax, LZWReadByte.sp
	setb	%cl
	movb	%cl, -305(%rbp)         # 1-byte Spill
.LBB9_57:                               # %land.end
                                        #   in Loop: Header=BB9_55 Depth=2
	movb	-305(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_58
	jmp	.LBB9_61
.LBB9_58:                               # %while.body.93
                                        #   in Loop: Header=BB9_55 Depth=2
	movslq	-28(%rbp), %rax
	movl	LZWReadByte.table+16384(,%rax,4), %ecx
	movq	LZWReadByte.sp, %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, LZWReadByte.sp
	movl	%ecx, (%rax)
	movl	-28(%rbp), %ecx
	movslq	-28(%rbp), %rax
	cmpl	LZWReadByte.table(,%rax,4), %ecx
	jne	.LBB9_60
# BB#59:                                # %if.then.100
	movabsq	$.L.str.71, %rdi
	movb	$0, %al
	callq	g_message
	callq	gimp_quit
.LBB9_60:                               # %if.end.101
                                        #   in Loop: Header=BB9_55 Depth=2
	movslq	-28(%rbp), %rax
	movl	LZWReadByte.table(,%rax,4), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB9_55
.LBB9_61:                               # %while.end.104
                                        #   in Loop: Header=BB9_26 Depth=1
	movabsq	$LZWReadByte.stack, %rax
	addq	$32768, %rax            # imm = 0x8000
	cmpq	%rax, LZWReadByte.sp
	jae	.LBB9_63
# BB#62:                                # %if.then.106
                                        #   in Loop: Header=BB9_26 Depth=1
	movslq	-28(%rbp), %rax
	movl	LZWReadByte.table+16384(,%rax,4), %ecx
	movl	%ecx, LZWReadByte.firstcode
	movq	LZWReadByte.sp, %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, LZWReadByte.sp
	movl	%ecx, (%rax)
.LBB9_63:                               # %if.end.110
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	LZWReadByte.max_code, %eax
	movl	%eax, -28(%rbp)
	cmpl	$4096, %eax             # imm = 0x1000
	jge	.LBB9_68
# BB#64:                                # %if.then.112
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	LZWReadByte.oldcode, %eax
	movslq	-28(%rbp), %rcx
	movl	%eax, LZWReadByte.table(,%rcx,4)
	movl	LZWReadByte.firstcode, %eax
	movslq	-28(%rbp), %rcx
	movl	%eax, LZWReadByte.table+16384(,%rcx,4)
	movl	LZWReadByte.max_code, %eax
	addl	$1, %eax
	movl	%eax, LZWReadByte.max_code
	movl	LZWReadByte.max_code, %eax
	cmpl	LZWReadByte.max_code_size, %eax
	jl	.LBB9_67
# BB#65:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_26 Depth=1
	cmpl	$4096, LZWReadByte.max_code_size # imm = 0x1000
	jge	.LBB9_67
# BB#66:                                # %if.then.120
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	LZWReadByte.max_code_size, %eax
	shll	$1, %eax
	movl	%eax, LZWReadByte.max_code_size
	movl	LZWReadByte.code_size, %eax
	addl	$1, %eax
	movl	%eax, LZWReadByte.code_size
.LBB9_67:                               # %if.end.123
                                        #   in Loop: Header=BB9_26 Depth=1
	jmp	.LBB9_68
.LBB9_68:                               # %if.end.124
                                        #   in Loop: Header=BB9_26 Depth=1
	movabsq	$LZWReadByte.stack, %rax
	movl	-32(%rbp), %ecx
	movl	%ecx, LZWReadByte.oldcode
	cmpq	%rax, LZWReadByte.sp
	jbe	.LBB9_70
# BB#69:                                # %if.then.126
	movq	LZWReadByte.sp, %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, LZWReadByte.sp
	movl	-4(%rax), %edx
	andl	$255, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB9_74
.LBB9_70:                               # %if.end.129
                                        #   in Loop: Header=BB9_26 Depth=1
	jmp	.LBB9_26
.LBB9_71:                               # %while.end.130
	cmpl	$0, -28(%rbp)
	jge	.LBB9_73
# BB#72:                                # %if.then.132
	movl	$-1, -4(%rbp)
	jmp	.LBB9_74
.LBB9_73:                               # %if.end.133
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -4(%rbp)
.LBB9_74:                               # %return
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end9:
	.size	LZWReadByte, .Lfunc_end9-LZWReadByte
	.cfi_endproc

	.align	16, 0x90
	.type	GetCode,@function
GetCode:                                # @GetCode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, GetCode.curbit
	movl	$0, GetCode.lastbit
	movl	$0, GetCode.done
	movl	$2, GetCode.last_byte
	movl	$0, -4(%rbp)
	jmp	.LBB10_19
.LBB10_2:                               # %if.end
	jmp	.LBB10_3
.LBB10_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	GetCode.curbit, %eax
	addl	-20(%rbp), %eax
	cmpl	GetCode.lastbit, %eax
	jle	.LBB10_14
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB10_3 Depth=1
	cmpl	$0, GetCode.done
	je	.LBB10_8
# BB#5:                                 # %if.then.2
	movl	GetCode.curbit, %eax
	cmpl	GetCode.lastbit, %eax
	jl	.LBB10_7
# BB#6:                                 # %if.then.4
	movabsq	$.L.str.72, %rdi
	movb	$0, %al
	callq	g_message
.LBB10_7:                               # %if.end.5
	movl	$-1, -4(%rbp)
	jmp	.LBB10_19
.LBB10_8:                               # %if.end.6
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$GetCode.buf, %rax
	addq	$2, %rax
	movl	GetCode.last_byte, %ecx
	subl	$2, %ecx
	movslq	%ecx, %rdx
	movb	GetCode.buf(,%rdx), %sil
	movb	%sil, GetCode.buf
	movl	GetCode.last_byte, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movb	GetCode.buf(,%rdx), %sil
	movb	%sil, GetCode.buf+1
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	GetDataBlock
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jge	.LBB10_10
# BB#9:                                 # %if.then.11
	movl	$-1, -4(%rbp)
	jmp	.LBB10_19
.LBB10_10:                              # %if.else
                                        #   in Loop: Header=BB10_3 Depth=1
	cmpl	$0, -40(%rbp)
	jne	.LBB10_12
# BB#11:                                # %if.then.13
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$1, GetCode.done
.LBB10_12:                              # %if.end.14
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_13
.LBB10_13:                              # %if.end.15
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$2, %eax
	movl	%eax, GetCode.last_byte
	movl	GetCode.curbit, %eax
	subl	GetCode.lastbit, %eax
	addl	$16, %eax
	movl	%eax, GetCode.curbit
	movl	-40(%rbp), %eax
	addl	$2, %eax
	shll	$3, %eax
	movl	%eax, GetCode.lastbit
	jmp	.LBB10_3
.LBB10_14:                              # %while.end
	movl	$0, -36(%rbp)
	movl	GetCode.curbit, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB10_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB10_15 Depth=1
	movl	$1, %eax
	movl	$8, %ecx
	movl	-28(%rbp), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movzbl	GetCode.buf(,%rsi), %eax
	movl	-28(%rbp), %edi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-44(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movl	-48(%rbp), %edi         # 4-byte Reload
	andl	%edx, %edi
	cmpl	$0, %edi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	-32(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	orl	-36(%rbp), %edx
	movl	%edx, -36(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB10_15 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB10_15
.LBB10_18:                              # %for.end
	movl	-20(%rbp), %eax
	addl	GetCode.curbit, %eax
	movl	%eax, GetCode.curbit
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	GetCode, .Lfunc_end10-GetCode
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

	.type	query.thumb_args,@object # @query.thumb_args
	.section	.rodata,"a",@progbits
	.align	16
query.thumb_args:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.thumb_args, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"thumb-size"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Preferred thumbnail size"
	.size	.L.str.9, 25

	.type	query.thumb_return_vals,@object # @query.thumb_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.thumb_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.size	query.thumb_return_vals, 72

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"image-width"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Width of full-sized image"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"image-height"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Height of full-sized image"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"file-gif-load"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Loads files of Compuserve GIF file format"
	.size	.L.str.15, 42

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"FIXME: write help for gif_load"
	.size	.L.str.16, 31

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Spencer Kimball, Peter Mattis, Adam Moss, David Koblas"
	.size	.L.str.17, 55

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1995-2006"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GIF image"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"image/gif"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gif"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.zero	1
	.size	.L.str.22, 1

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"0,string,GIF8"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"file-gif-load-thumb"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Loads only the first frame of a GIF image, to be used as a thumbnail"
	.size	.L.str.25, 69

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Sven Neumann"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"2006"
	.size	.L.str.27, 5

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,160,16
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"UTF-8"
	.size	.L.str.29, 6

	.type	promote_to_rgb,@object  # @promote_to_rgb
	.local	promote_to_rgb
	.comm	promote_to_rgb,4,4
	.type	gimp_cmap,@object       # @gimp_cmap
	.local	gimp_cmap
	.comm	gimp_cmap,768,16
	.type	highest_used_index,@object # @highest_used_index
	.local	highest_used_index
	.comm	highest_used_index,1,1
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"rb"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.31, 36

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Opening '%s'"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Error reading magic number"
	.size	.L.str.33, 27

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GIF"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"This is not a GIF file"
	.size	.L.str.36, 23

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"87a"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"89a"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Bad version number, not '87a' or '89a'"
	.size	.L.str.39, 39

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Failed to read screen descriptor"
	.size	.L.str.40, 33

	.type	GifScreen,@object       # @GifScreen
	.local	GifScreen
	.comm	GifScreen,796,4
	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Error reading global colormap"
	.size	.L.str.41, 30

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Non-square pixels.  Image might look squashed."
	.size	.L.str.42, 47

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"EOF / read error on image data"
	.size	.L.str.43, 31

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"EOF / read error on extension function code"
	.size	.L.str.44, 44

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"GIF: bogus character 0x%02x, ignoring.\n"
	.size	.L.str.45, 40

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Couldn't read left/top/width/height"
	.size	.L.str.46, 36

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Error reading local colormap"
	.size	.L.str.47, 29

	.type	comment_parasite,@object # @comment_parasite
	.local	comment_parasite
	.comm	comment_parasite,8,8
	.type	DoExtension.buf,@object # @DoExtension.buf
	.local	DoExtension.buf
	.comm	DoExtension.buf,256,16
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-comment"
	.size	.L.str.48, 13

	.type	Gif89,@object           # @Gif89
	.data
	.align	4
Gif89:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.size	Gif89, 16

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"UNKNOWN (0x%02x)"
	.size	.L.str.49, 17

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Error in getting DataBlock size"
	.size	.L.str.50, 32

	.type	ZeroDataBlock,@object   # @ZeroDataBlock
	.local	ZeroDataBlock
	.comm	ZeroDataBlock,4,4
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Error in reading DataBlock"
	.size	.L.str.51, 27

	.type	ReadImage.frame_number,@object # @ReadImage.frame_number
	.data
	.align	4
ReadImage.frame_number:
	.long	1                       # 0x1
	.size	ReadImage.frame_number, 4

	.type	ReadImage.previous_disposal,@object # @ReadImage.previous_disposal
	.local	ReadImage.previous_disposal
	.comm	ReadImage.previous_disposal,4,4
	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"Bogus frame dimensions"
	.size	.L.str.52, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Error while reading"
	.size	.L.str.53, 20

	.type	used_cmap,@object       # @used_cmap
	.local	used_cmap
	.comm	used_cmap,768,16
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Background"
	.size	.L.str.54, 11

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Background (%d%s)"
	.size	.L.str.55, 18

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"ms"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Opening '%s' (frame %d)"
	.size	.L.str.57, 24

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Frame %d"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Frame %d (%d%s)"
	.size	.L.str.59, 16

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	" (combine)"
	.size	.L.str.60, 11

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	" (replace)"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	" (combine) (!)"
	.size	.L.str.62, 15

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	" (unknown disposal)"
	.size	.L.str.63, 20

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"GIF: Undocumented GIF composite type %d is not handled.  Animation might not play or re-save perfectly."
	.size	.L.str.64, 104

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Disposal word got corrupted.  Bug."
	.size	.L.str.65, 35

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"'%s' has a larger image size than GIMP can handle."
	.size	.L.str.66, 51

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Ouch!  Can't handle non-alpha RGB frames.\nPlease file a bug report in GIMP's bugzilla."
	.size	.L.str.67, 87

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"GIF: too much input data, ignoring extra...\n"
	.size	.L.str.68, 45

	.type	LZWReadByte.fresh,@object # @LZWReadByte.fresh
	.local	LZWReadByte.fresh
	.comm	LZWReadByte.fresh,4,4
	.type	LZWReadByte.code_size,@object # @LZWReadByte.code_size
	.local	LZWReadByte.code_size
	.comm	LZWReadByte.code_size,4,4
	.type	LZWReadByte.set_code_size,@object # @LZWReadByte.set_code_size
	.local	LZWReadByte.set_code_size
	.comm	LZWReadByte.set_code_size,4,4
	.type	LZWReadByte.max_code,@object # @LZWReadByte.max_code
	.local	LZWReadByte.max_code
	.comm	LZWReadByte.max_code,4,4
	.type	LZWReadByte.max_code_size,@object # @LZWReadByte.max_code_size
	.local	LZWReadByte.max_code_size
	.comm	LZWReadByte.max_code_size,4,4
	.type	LZWReadByte.firstcode,@object # @LZWReadByte.firstcode
	.local	LZWReadByte.firstcode
	.comm	LZWReadByte.firstcode,4,4
	.type	LZWReadByte.oldcode,@object # @LZWReadByte.oldcode
	.local	LZWReadByte.oldcode
	.comm	LZWReadByte.oldcode,4,4
	.type	LZWReadByte.clear_code,@object # @LZWReadByte.clear_code
	.local	LZWReadByte.clear_code
	.comm	LZWReadByte.clear_code,4,4
	.type	LZWReadByte.end_code,@object # @LZWReadByte.end_code
	.local	LZWReadByte.end_code
	.comm	LZWReadByte.end_code,4,4
	.type	LZWReadByte.table,@object # @LZWReadByte.table
	.local	LZWReadByte.table
	.comm	LZWReadByte.table,32768,16
	.type	LZWReadByte.stack,@object # @LZWReadByte.stack
	.local	LZWReadByte.stack
	.comm	LZWReadByte.stack,32768,16
	.type	LZWReadByte.sp,@object  # @LZWReadByte.sp
	.local	LZWReadByte.sp
	.comm	LZWReadByte.sp,8,8
	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Value out of range for code size (corrupted file?)"
	.size	.L.str.69, 51

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"GIF: missing EOD in data stream (common occurence)"
	.size	.L.str.70, 51

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Circular table entry.  Corrupt file."
	.size	.L.str.71, 37

	.type	GetCode.buf,@object     # @GetCode.buf
	.local	GetCode.buf
	.comm	GetCode.buf,280,16
	.type	GetCode.curbit,@object  # @GetCode.curbit
	.local	GetCode.curbit
	.comm	GetCode.curbit,4,4
	.type	GetCode.lastbit,@object # @GetCode.lastbit
	.local	GetCode.lastbit
	.comm	GetCode.lastbit,4,4
	.type	GetCode.done,@object    # @GetCode.done
	.local	GetCode.done
	.comm	GetCode.done,4,4
	.type	GetCode.last_byte,@object # @GetCode.last_byte
	.local	GetCode.last_byte
	.comm	GetCode.last_byte,4,4
	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Ran off the end of my bits"
	.size	.L.str.72, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
