	.text
	.file	"file-header.bc"
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movl	$1, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.save_args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.16, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -84(%rbp)         # 4-byte Spill
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
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
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.19, %rdi
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
	movl	$.L.str.9, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#3:                                 # %if.then
	movl	$0, -60(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_7
.LBB1_4:                                # %sw.bb
	movabsq	$.L.str.21, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.22, %rdx
	movl	$5, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.13
	movl	$4, run.values+8
	jmp	.LBB1_15
.LBB1_6:                                # %if.end
	jmp	.LBB1_8
.LBB1_7:                                # %sw.default
	jmp	.LBB1_8
.LBB1_8:                                # %sw.epilog
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.17
	movl	$0, -48(%rbp)
.LBB1_10:                               # %if.end.18
	cmpl	$2, -60(%rbp)
	jne	.LBB1_12
# BB#11:                                # %if.then.20
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB1_12:                               # %if.end.22
	jmp	.LBB1_14
.LBB1_13:                               # %if.else
	movl	$1, -48(%rbp)
.LBB1_14:                               # %if.end.23
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_15:                               # %return
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
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
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
	.type	save_image,@function
save_image:                             # @save_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.25, %rcx
	movabsq	$.L.str.24, %r8
	movabsq	$.L.str.23, %r9
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%r9, -120(%rbp)
	movq	%r8, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -96(%rbp)
	cmpq	$0, %rax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_48
.LBB3_2:                                # %if.end
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -80(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rcx
	movl	4(%rcx), %r8d
	movl	8(%rcx), %r9d
	movq	%rsp, %rdx
	movl	$0, 8(%rdx)
	movl	$0, (%rdx)
	leaq	-72(%rbp), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movq	-96(%rbp), %rdi
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	movl	$.L.str.29, %eax
	movl	%eax, %r10d
	cmoveq	%rsi, %r10
	movq	-16(%rbp), %rcx
	movl	$.L.str.27, %eax
	movl	%eax, %esi
	movl	-176(%rbp), %eax        # 4-byte Reload
	movb	%al, %r11b
	movq	%r10, %rdx
	movb	%r11b, %al
	movb	%r11b, -177(%rbp)       # 1-byte Spill
	callq	fprintf
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	$.L.str.30, %r8d
	movl	%r8d, %esi
	movb	-177(%rbp), %r11b       # 1-byte Reload
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movb	%r11b, %al
	callq	fprintf
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	$.L.str.31, %r8d
	movl	%r8d, %esi
	movb	-177(%rbp), %r11b       # 1-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movb	%r11b, %al
	callq	fprintf
	movq	-96(%rbp), %rdi
	movl	$.L.str.32, %edx
	movl	%edx, %esi
	movb	-177(%rbp), %r11b       # 1-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movb	%r11b, %al
	callq	fprintf
	movl	-84(%rbp), %edx
	testl	%edx, %edx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%edx, -200(%rbp)        # 4-byte Spill
	je	.LBB3_3
	jmp	.LBB3_49
.LBB3_49:                               # %if.end
	movl	-200(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB3_24
	jmp	.LBB3_46
.LBB3_3:                                # %sw.bb
	movabsq	$.L.str.33, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.34, %rsi
	movq	-96(%rbp), %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rdi
	movl	4(%rdi), %ecx
	movq	-80(%rbp), %rdi
	imull	12(%rdi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -104(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
                                        #       Child Loop BB3_8 Depth 3
	movl	-104(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB3_23
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	-72(%rbp), %rdi
	xorl	%edx, %edx
	movq	-160(%rbp), %rsi
	movl	-104(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -100(%rbp)
.LBB3_6:                                # %for.cond.18
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_8 Depth 3
	movl	-100(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB3_21
# BB#7:                                 # %for.body.22
                                        #   in Loop: Header=BB3_6 Depth=2
	movq	-160(%rbp), %rax
	movl	-100(%rbp), %ecx
	movq	-80(%rbp), %rdx
	imull	12(%rdx), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	sarl	$2, %ecx
	andl	$63, %ecx
	addl	$33, %ecx
	movb	%cl, %sil
	movb	%sil, -140(%rbp)
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$3, %ecx
	shll	$4, %ecx
	movq	-152(%rbp), %rax
	movzbl	1(%rax), %edi
	sarl	$4, %edi
	orl	%edi, %ecx
	andl	$63, %ecx
	addl	$33, %ecx
	movb	%cl, %sil
	movb	%sil, -139(%rbp)
	movq	-152(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$15, %ecx
	shll	$2, %ecx
	movq	-152(%rbp), %rax
	movzbl	2(%rax), %edi
	sarl	$6, %edi
	orl	%edi, %ecx
	andl	$63, %ecx
	addl	$33, %ecx
	movb	%cl, %sil
	movb	%sil, -138(%rbp)
	movq	-152(%rbp), %rax
	movzbl	2(%rax), %ecx
	andl	$63, %ecx
	addl	$33, %ecx
	movb	%cl, %sil
	movb	%sil, -137(%rbp)
	movl	$0, -108(%rbp)
.LBB3_8:                                # %for.cond.56
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -108(%rbp)
	jge	.LBB3_17
# BB#9:                                 # %for.body.59
                                        #   in Loop: Header=BB3_8 Depth=3
	movslq	-108(%rbp), %rax
	movsbl	-140(%rbp,%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB3_11
# BB#10:                                # %if.then.64
                                        #   in Loop: Header=BB3_8 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rdi
	movq	-96(%rbp), %rcx
	callq	fwrite
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB3_15
.LBB3_11:                               # %if.else
                                        #   in Loop: Header=BB3_8 Depth=3
	movslq	-108(%rbp), %rax
	movsbl	-140(%rbp,%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB3_13
# BB#12:                                # %if.then.71
                                        #   in Loop: Header=BB3_8 Depth=3
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rdi
	movq	-96(%rbp), %rcx
	callq	fwrite
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.73
                                        #   in Loop: Header=BB3_8 Depth=3
	movl	$1, %eax
	movl	%eax, %ecx
	leaq	-140(%rbp), %rdx
	movslq	-108(%rbp), %rsi
	addq	%rsi, %rdx
	movq	-96(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB3_14:                               # %if.end.77
                                        #   in Loop: Header=BB3_8 Depth=3
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.78
                                        #   in Loop: Header=BB3_8 Depth=3
	jmp	.LBB3_16
.LBB3_16:                               # %for.inc
                                        #   in Loop: Header=BB3_8 Depth=3
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB3_8
.LBB3_17:                               # %for.end
                                        #   in Loop: Header=BB3_6 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	cmpl	$16, -112(%rbp)
	jl	.LBB3_19
# BB#18:                                # %if.then.82
                                        #   in Loop: Header=BB3_6 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-136(%rbp), %rdi
	movq	-96(%rbp), %rcx
	callq	fwrite
	movl	$0, -112(%rbp)
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB3_19:                               # %if.end.84
                                        #   in Loop: Header=BB3_6 Depth=2
	jmp	.LBB3_20
.LBB3_20:                               # %for.inc.85
                                        #   in Loop: Header=BB3_6 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB3_6
.LBB3_21:                               # %for.end.87
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_22
.LBB3_22:                               # %for.inc.88
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB3_4
.LBB3_23:                               # %for.end.90
	movabsq	$.L.str.35, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB3_47
.LBB3_24:                               # %sw.bb.92
	movabsq	$.L.str.36, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	leaq	-172(%rbp), %rsi
	movl	-20(%rbp), %edi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_image_get_colormap
	movabsq	$.L.str.37, %rsi
	movq	%rax, -168(%rbp)
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.38, %rsi
	movq	-96(%rbp), %rdi
	movq	-168(%rbp), %rcx
	movzbl	(%rcx), %edx
	movq	-168(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	movq	-168(%rbp), %r8
	movzbl	2(%r8), %r8d
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$1, -112(%rbp)
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB3_25:                               # %for.cond.103
                                        # =>This Inner Loop Header: Depth=1
	movl	-112(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB3_28
# BB#26:                                # %for.body.106
                                        #   in Loop: Header=BB3_25 Depth=1
	movabsq	$.L.str.39, %rsi
	movq	-96(%rbp), %rdi
	imull	$3, -112(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edx
	imull	$3, -112(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %r8
	movzbl	(%r8,%rcx), %ecx
	imull	$3, -112(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %r8
	movq	-168(%rbp), %r9
	movzbl	(%r9,%r8), %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -276(%rbp)        # 4-byte Spill
# BB#27:                                # %for.inc.122
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB3_25
.LBB3_28:                               # %for.end.124
	jmp	.LBB3_29
.LBB3_29:                               # %for.cond.125
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -112(%rbp)        # imm = 0x100
	jge	.LBB3_32
# BB#30:                                # %for.body.128
                                        #   in Loop: Header=BB3_29 Depth=1
	movabsq	$.L.str.40, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -280(%rbp)        # 4-byte Spill
# BB#31:                                # %for.inc.130
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB3_29
.LBB3_32:                               # %for.end.132
	movabsq	$.L.str.41, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-168(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	g_free
	movabsq	$.L.str.42, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rdi
	movl	4(%rdi), %ecx
	movq	-80(%rbp), %rdi
	imull	12(%rdi), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -104(%rbp)
.LBB3_33:                               # %for.cond.140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_35 Depth 2
	movl	-104(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB3_45
# BB#34:                                # %for.body.144
                                        #   in Loop: Header=BB3_33 Depth=1
	leaq	-72(%rbp), %rdi
	xorl	%edx, %edx
	movq	-160(%rbp), %rsi
	movl	-104(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -100(%rbp)
.LBB3_35:                               # %for.cond.146
                                        #   Parent Loop BB3_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jae	.LBB3_40
# BB#36:                                # %for.body.150
                                        #   in Loop: Header=BB3_35 Depth=2
	movabsq	$.L.str.43, %rsi
	movq	-160(%rbp), %rax
	movl	-100(%rbp), %ecx
	movq	-80(%rbp), %rdx
	imull	12(%rdx), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-96(%rbp), %rdi
	movq	-152(%rbp), %rax
	movzbl	(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	-112(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -112(%rbp)
	cmpl	$16, -112(%rbp)
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jl	.LBB3_38
# BB#37:                                # %if.then.161
                                        #   in Loop: Header=BB3_35 Depth=2
	movabsq	$.L.str.44, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$0, -112(%rbp)
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB3_38:                               # %if.end.163
                                        #   in Loop: Header=BB3_35 Depth=2
	jmp	.LBB3_39
.LBB3_39:                               # %for.inc.164
                                        #   in Loop: Header=BB3_35 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB3_35
.LBB3_40:                               # %for.end.166
                                        #   in Loop: Header=BB3_33 Depth=1
	movl	-104(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB3_42
# BB#41:                                # %if.then.171
                                        #   in Loop: Header=BB3_33 Depth=1
	movabsq	$.L.str.45, %rsi
	movq	-96(%rbp), %rdi
	movq	-152(%rbp), %rax
	movzbl	1(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB3_43
.LBB3_42:                               # %if.else.175
                                        #   in Loop: Header=BB3_33 Depth=1
	movabsq	$.L.str.46, %rsi
	movq	-96(%rbp), %rdi
	movq	-152(%rbp), %rax
	movzbl	1(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB3_43:                               # %if.end.179
                                        #   in Loop: Header=BB3_33 Depth=1
	movl	$0, -112(%rbp)
# BB#44:                                # %for.inc.180
                                        #   in Loop: Header=BB3_33 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB3_33
.LBB3_45:                               # %for.end.182
	movabsq	$.L.str.47, %rsi
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB3_47
.LBB3_46:                               # %sw.default
	movabsq	$.L.str.48, %rdi
	movl	-84(%rbp), %esi
	movb	$0, %al
	callq	g_warning
	movq	-96(%rbp), %rdi
	callq	fclose
	movq	-160(%rbp), %rdi
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB3_48
.LBB3_47:                               # %sw.epilog
	movq	-96(%rbp), %rdi
	callq	fclose
	movq	-160(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	$1, -4(%rbp)
.LBB3_48:                               # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end3:
	.size	save_image, .Lfunc_end3-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
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

	.type	query.save_args,@object # @query.save_args
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.7
	.size	query.save_args, 120

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
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Drawable to save"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"filename"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"raw-filename"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file-header-save"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"saves files as C unsigned character array"
	.size	.L.str.10, 42

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"FIXME: write help"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.12, 31

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1997"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"C source code header"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"INDEXED, RGB"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"text/x-chdr"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"h"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.zero	1
	.size	.L.str.18, 1

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UTF-8"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"file-header"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Header"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\\\\"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\\\""
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\"\n\t\""
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"w"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/*  GIMP header image file format (%s): %s  */\n\n"
	.size	.L.str.27, 49

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"RGB"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"INDEXED"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"static unsigned int width = %d;\n"
	.size	.L.str.30, 33

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"static unsigned int height = %d;\n\n"
	.size	.L.str.31, 35

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"/*  Call this macro repeatedly.  After each use, the pixel data can be extracted  */\n\n"
	.size	.L.str.32, 87

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"#define HEADER_PIXEL(data,pixel) {\\\npixel[0] = (((data[0] - 33) << 2) | ((data[1] - 33) >> 4)); \\\npixel[1] = ((((data[1] - 33) & 0xF) << 4) | ((data[2] - 33) >> 2)); \\\npixel[2] = ((((data[2] - 33) & 0x3) << 6) | ((data[3] - 33))); \\\ndata += 4; \\\n}\n"
	.size	.L.str.33, 249

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"static char *header_data =\n\t\""
	.size	.L.str.34, 30

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\";\n"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"#define HEADER_PIXEL(data,pixel) {\\\npixel[0] = header_data_cmap[(unsigned char)data[0]][0]; \\\npixel[1] = header_data_cmap[(unsigned char)data[0]][1]; \\\npixel[2] = header_data_cmap[(unsigned char)data[0]][2]; \\\ndata ++; }\n\n"
	.size	.L.str.36, 223

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"static char header_data_cmap[256][3] = {"
	.size	.L.str.37, 41

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"\n\t{%3d,%3d,%3d}"
	.size	.L.str.38, 16

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	",\n\t{%3d,%3d,%3d}"
	.size	.L.str.39, 17

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	",\n\t{255,255,255}"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"\n\t};\n"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"static char header_data[] = {\n\t"
	.size	.L.str.42, 32

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%d,"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\n\t"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%d,\n\t"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%d\n\t"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"};\n"
	.size	.L.str.47, 4

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"unhandled drawable type (%d)"
	.size	.L.str.48, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
