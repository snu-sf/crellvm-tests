	.text
	.file	"gximage4.bc"
	.align	16, 0x90
	.type	gx_begin_image4,@function
gx_begin_image4:                        # @gx_begin_image4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	88(%rsp), %rdx
	leaq	16(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r8, %rsi
	callq	gx_image_enum_alloc
	testl	%eax, %eax
	js	.LBB0_14
# BB#1:                                 # %if.end
	movq	16(%rsp), %rax
	movl	$0, 580(%rax)
	movb	$0, 1118(%rax)
	movl	$0, 1308(%rax)
	movl	$4, 24500(%rax)
	movb	40(%rbx), %cl
	movl	$1, %r15d
	shll	%cl, %r15d
	movq	576(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	testl	%eax, %eax
	jle	.LBB0_2
# BB#3:                                 # %for.body.lr.ph
	movq	%rbp, %r9
	decl	%r15d
	addl	%eax, %eax
	movq	16(%rsp), %rsi
	cltq
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 584(%rbx)
	je	.LBB0_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	588(%rbx,%rcx,4), %edx
	movl	592(%rbx,%rcx,4), %ebp
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_6:                                # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%ecx, %edx
	sarl	%edx
	movslq	%edx, %rdx
	movl	588(%rbx,%rdx,4), %edx
	movl	%edx, %ebp
.LBB0_7:                                # %if.end.11
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%ebp, %edi
	orl	%edx, %edi
	cmpl	%r15d, %edi
	ja	.LBB0_15
# BB#8:                                 # %if.end.14
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%ebp, %edx
	ja	.LBB0_9
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%edx, 584(%rsi,%rcx,4)
	movl	%ebp, 588(%rsi,%rcx,4)
	addq	$2, %rcx
	movb	$1, %dl
	cmpq	%rax, %rcx
	jl	.LBB0_4
	jmp	.LBB0_11
.LBB0_2:                                # %if.end.cleanup.cont.33_crit_edge
	movb	$1, %dl
	movq	16(%rsp), %rsi
	movq	88(%rsp), %rax
	jmp	.LBB0_12
.LBB0_15:                               # %cleanup.28
	movl	$.L.str.1, %edx
	movq	88(%rsp), %rdi
	callq	*24(%rdi)
	movl	$-15, %eax
	jmp	.LBB0_14
.LBB0_9:
	xorl	%edx, %edx
.LBB0_11:
	movq	88(%rsp), %rax
	movq	%r9, %rbp
.LBB0_12:                               # %cleanup.cont.33
	movq	80(%rsp), %r9
	movb	%dl, 1116(%rsi)
	movq	%rsi, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	gx_image_enum_begin
	testl	%eax, %eax
	js	.LBB0_14
# BB#13:                                # %if.then.37
	movq	96(%rsp), %rcx
	movq	16(%rsp), %rdx
	movq	%rdx, (%rcx)
.LBB0_14:                               # %cleanup.39
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_begin_image4, .Lfunc_end0-gx_begin_image4
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image4_sput,@function
gx_image4_sput:                         # @gx_image4_sput
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	584(%r15), %r13d
	movl	%r13d, %ecx
	callq	gx_pixel_image_sput
	movl	%eax, %r12d
	movq	576(%r15), %rdi
	callq	gs_color_space_num_components
	movl	%eax, %ebp
	cmpl	$1, %r13d
	movl	$1, %eax
	sbbl	$-1, %eax
	testl	%r12d, %r12d
	js	.LBB1_5
# BB#1:                                 # %for.cond.preheader
	movq	%rbx, %r12
	imull	%eax, %ebp
	testl	%ebp, %ebp
	jle	.LBB1_4
# BB#2:                                 # %for.body.lr.ph
	leaq	588(%r15), %rbx
	.align	16, 0x90
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %esi
	movq	%r14, %rdi
	callq	sput_variable_uint
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB1_3
.LBB1_4:                                # %for.end
	movq	576(%r15), %rax
	movq	%rax, (%r12)
	xorl	%r12d, %r12d
.LBB1_5:                                # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_image4_sput, .Lfunc_end1-gx_image4_sput
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image4_sget,@function
gx_image4_sget:                         # @gx_image4_sget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -48
.Ltmp32:
	.cfi_offset %r12, -40
.Ltmp33:
	.cfi_offset %r13, -32
.Ltmp34:
	.cfi_offset %r14, -24
.Ltmp35:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	gx_pixel_image_sget
	testl	%eax, %eax
	js	.LBB2_8
# BB#1:                                 # %if.end
	movq	$gs_image_type_4, (%r14)
	movl	%eax, 584(%r14)
	movq	%rbx, %rdi
	callq	gs_color_space_num_components
	movl	$2, %ecx
	cmpl	$0, 584(%r14)
	jne	.LBB2_3
# BB#2:                                 # %select.mid
	movl	$1, %ecx
.LBB2_3:                                # %select.end
	imull	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB2_7
# BB#4:                                 # %for.body.lr.ph
	movslq	%ecx, %r12
	leaq	588(%r14), %r13
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	sget_variable_uint
	testl	%eax, %eax
	js	.LBB2_8
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB2_6 Depth=1
	incq	%rbx
	addq	$4, %r13
	cmpq	%r12, %rbx
	jl	.LBB2_6
.LBB2_7:                                # %for.end
	movl	$4, 1108(%r14)
	xorl	%eax, %eax
.LBB2_8:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	gx_image4_sget, .Lfunc_end2-gx_image4_sget
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image4_release,@function
gx_image4_release:                      # @gx_image4_release
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_pixel_image_release  # TAILCALL
.Lfunc_end3:
	.size	gx_image4_release, .Lfunc_end3-gx_image4_release
	.cfi_endproc

	.globl	gs_image4_t_init
	.align	16, 0x90
	.type	gs_image4_t_init,@function
gs_image4_t_init:                       # @gs_image4_t_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_pixel_image_t_init
	movq	$gs_image_type_4, (%rbx)
	movl	$0, 584(%rbx)
	movl	$4, 1108(%rbx)
	popq	%rbx
	retq
.Lfunc_end4:
	.size	gs_image4_t_init, .Lfunc_end4-gs_image4_t_init
	.cfi_endproc

	.type	st_gs_image4,@object    # @st_gs_image4
	.section	.rodata,"a",@progbits
	.align	8
st_gs_image4:
	.long	1112                    # 0x458
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	image4_reloc_ptrs
	.size	st_gs_image4, 64

	.type	gs_image_type_4,@object # @gs_image_type_4
	.globl	gs_image_type_4
	.align	8
gs_image_type_4:
	.quad	st_gs_image4
	.quad	gx_begin_image4
	.quad	gx_data_image_source_size
	.quad	gx_image4_sput
	.quad	gx_image4_sget
	.quad	gx_image4_release
	.long	4                       # 0x4
	.zero	4
	.size	gs_image_type_4, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_image4_t"
	.size	.L.str, 12

	.type	image4_reloc_ptrs,@object # @image4_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
image4_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_pixel_image
	.quad	0
	.size	image4_reloc_ptrs, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_begin_image4"
	.size	.L.str.1, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
