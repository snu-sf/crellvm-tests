	.text
	.file	"gximage1.bc"
	.globl	gx_begin_image1
	.align	16, 0x90
	.type	gx_begin_image1,@function
gx_begin_image1:                        # @gx_begin_image1
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
	movq	%r9, %r14
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	88(%rsp), %rbp
	leaq	16(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r8, %rsi
	movq	%rbp, %rdx
	callq	gx_image_enum_alloc
	testl	%eax, %eax
	js	.LBB0_6
# BB#1:                                 # %if.end
	movq	80(%rsp), %r9
	movl	592(%rbx), %ecx
	movq	16(%rsp), %rax
	movl	%ecx, 580(%rax)
	movb	$0, 1116(%rax)
	movl	596(%rbx), %ecx
	movl	%ecx, 24500(%rax)
	movl	584(%rbx), %edx
	movb	%dl, 1118(%rax)
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.LBB0_4
# BB#2:                                 # %land.rhs
	movl	$64, %ecx
	cmpl	$0, 588(%rbx)
	jne	.LBB0_4
# BB#3:                                 # %select.mid
	xorl	%ecx, %ecx
.LBB0_4:                                # %land.end
	movl	%ecx, 1308(%rax)
	movq	%rax, 8(%rsp)
	movq	%rbp, (%rsp)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	gx_image_enum_begin
	testl	%eax, %eax
	js	.LBB0_6
# BB#5:                                 # %if.then.9
	movq	96(%rsp), %rcx
	movq	16(%rsp), %rdx
	movq	%rdx, (%rcx)
.LBB0_6:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_begin_image1, .Lfunc_end0-gx_begin_image1
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image1_sput,@function
gx_image1_sput:                         # @gx_image1_sput
	.cfi_startproc
# BB#0:                                 # %entry
	movl	592(%rdi), %ecx
	jmp	gx_pixel_image_sput     # TAILCALL
.Lfunc_end1:
	.size	gx_image1_sput, .Lfunc_end1-gx_image1_sput
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image1_sget,@function
gx_image1_sget:                         # @gx_image1_sget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gx_pixel_image_sget
	testl	%eax, %eax
	js	.LBB2_2
# BB#1:                                 # %if.end
	movq	$gs_image_type_1, (%rbx)
	movl	$0, 584(%rbx)
	movl	%eax, 592(%rbx)
	movl	$0, 596(%rbx)
	xorl	%eax, %eax
.LBB2_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	gx_image1_sget, .Lfunc_end2-gx_image1_sget
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image1_release,@function
gx_image1_release:                      # @gx_image1_release
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_pixel_image_release  # TAILCALL
.Lfunc_end3:
	.size	gx_image1_release, .Lfunc_end3-gx_image1_release
	.cfi_endproc

	.align	16, 0x90
	.type	gx_image1_mask_sput,@function
gx_image1_mask_sput:                    # @gx_image1_mask_sput
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_image_matrix_is_default
	movl	%eax, %ebp
	testl	%ebp, %ebp
	sete	%al
	movzbl	%al, %ecx
	movss	44(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$2, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB4_2
	jp	.LBB4_2
# BB#1:                                 # %select.mid
	xorl	%eax, %eax
.LBB4_2:                                # %select.end
	orl	%ecx, %eax
	movl	$4, %ecx
	cmpl	$0, 564(%rbx)
	jne	.LBB4_4
# BB#3:                                 # %select.mid16
	xorl	%ecx, %ecx
.LBB4_4:                                # %select.end15
	orl	%ecx, %eax
	movl	$8, %ecx
	cmpl	$0, 588(%rbx)
	jne	.LBB4_6
# BB#5:                                 # %select.mid18
	xorl	%ecx, %ecx
.LBB4_6:                                # %select.end17
	orl	%ecx, %eax
	movl	592(%rbx), %ecx
	shll	$4, %ecx
	orl	%eax, %ecx
	movl	40(%rbx), %esi
	shll	$6, %esi
	addl	$-64, %esi
	orl	%ecx, %esi
	movq	%r14, %rdi
	callq	sput_variable_uint
	movl	32(%rbx), %esi
	movq	%r14, %rdi
	callq	sput_variable_uint
	movl	36(%rbx), %esi
	movq	%r14, %rdi
	callq	sput_variable_uint
	testl	%ebp, %ebp
	jne	.LBB4_8
# BB#7:                                 # %if.then
	addq	$8, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sput_matrix
.LBB4_8:                                # %if.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gx_image1_mask_sput, .Lfunc_end4-gx_image1_mask_sput
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.align	16, 0x90
	.type	gx_image1_mask_sget,@function
gx_image1_mask_sget:                    # @gx_image1_mask_sget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 48
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	12(%rsp), %rsi
	movq	%r14, %rdi
	callq	sget_variable_uint
	testl	%eax, %eax
	js	.LBB5_11
# BB#1:                                 # %if.end
	movl	12(%rsp), %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_pixel_image_t_init
	movq	$gs_image_type_mask1, (%rbx)
	andl	$2, %ebp
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	je	.LBB5_3
# BB#2:                                 # %if.end
	movaps	%xmm0, %xmm1
.LBB5_3:                                # %if.end
	leaq	32(%rbx), %rsi
	testl	%ebp, %ebp
	je	.LBB5_5
# BB#4:                                 # %if.end
	xorps	%xmm0, %xmm0
.LBB5_5:                                # %if.end
	movss	%xmm1, 44(%rbx)
	movss	%xmm0, 48(%rbx)
	movaps	.LCPI5_1(%rip), %xmm0   # xmm0 = [1,1,0,0]
	movups	%xmm0, 584(%rbx)
	movq	%r14, %rdi
	callq	sget_variable_uint
	testl	%eax, %eax
	js	.LBB5_11
# BB#6:                                 # %lor.lhs.false
	leaq	36(%rbx), %rsi
	movq	%r14, %rdi
	callq	sget_variable_uint
	testl	%eax, %eax
	js	.LBB5_11
# BB#7:                                 # %if.end.9
	testb	$1, 12(%rsp)
	jne	.LBB5_8
# BB#9:                                 # %if.else
	movq	%rbx, %rdi
	callq	gx_image_matrix_set_default
	jmp	.LBB5_10
.LBB5_8:                                # %if.then.11
	leaq	8(%rbx), %rsi
	movq	%r14, %rdi
	callq	sget_matrix
	testl	%eax, %eax
	js	.LBB5_11
.LBB5_10:                               # %if.end.17
	movl	12(%rsp), %eax
	movl	%eax, %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	movl	%ecx, 564(%rbx)
	movl	%eax, %ecx
	shrl	$3, %ecx
	andl	$1, %ecx
	movl	%ecx, 588(%rbx)
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	$3, %ecx
	movl	%ecx, 592(%rbx)
	shrl	$6, %eax
	andl	$15, %eax
	incl	%eax
	movl	%eax, 40(%rbx)
	xorl	%eax, %eax
.LBB5_11:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_image1_mask_sget, .Lfunc_end5-gx_image1_mask_sget
	.cfi_endproc

	.globl	gs_image_t_init_adjust
	.align	16, 0x90
	.type	gs_image_t_init_adjust,@function
gs_image_t_init_adjust:                 # @gs_image_t_init_adjust
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	callq	gs_pixel_image_t_init
	testq	%rbx, %rbx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 584(%rbp)
	movl	%r14d, 588(%rbp)
	movl	$gs_image_type_mask1, %eax
	movl	$gs_image_type_1, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, (%rbp)
	movq	$0, 592(%rbp)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gs_image_t_init_adjust, .Lfunc_end6-gs_image_t_init_adjust
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1065353216              # float 1
	.text
	.globl	gs_image_t_init_mask_adjust
	.align	16, 0x90
	.type	gs_image_t_init_mask_adjust,@function
gs_image_t_init_mask_adjust:            # @gs_image_t_init_mask_adjust
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gs_pixel_image_t_init
	movl	$1, 584(%rbx)
	movl	$1, 588(%rbx)
	movq	$gs_image_type_mask1, (%rbx)
	movl	$0, 592(%rbx)
	movl	$0, 596(%rbx)
	testl	%ebp, %ebp
	movss	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	je	.LBB7_2
# BB#1:                                 # %entry
	movaps	%xmm0, %xmm1
.LBB7_2:                                # %entry
	je	.LBB7_4
# BB#3:                                 # %entry
	xorps	%xmm0, %xmm0
.LBB7_4:                                # %entry
	movss	%xmm1, 44(%rbx)
	movss	%xmm0, 48(%rbx)
	movl	%r14d, 588(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_image_t_init_mask_adjust, .Lfunc_end7-gs_image_t_init_mask_adjust
	.cfi_endproc

	.globl	gx_image_free_enum
	.align	16, 0x90
	.type	gx_image_free_enum,@function
gx_image_free_enum:                     # @gx_image_free_enum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	(%r14), %r15
	movq	24(%r15), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*120(%rbx)
	movl	%eax, %edx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	memset
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movq	$0, (%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	gx_image_free_enum, .Lfunc_end8-gx_image_free_enum
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_image1_t"
	.size	.L.str, 12

	.type	image1_reloc_ptrs,@object # @image1_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
image1_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_pixel_image
	.quad	0
	.size	image1_reloc_ptrs, 24

	.type	st_gs_image1,@object    # @st_gs_image1
	.globl	st_gs_image1
	.align	8
st_gs_image1:
	.long	600                     # 0x258
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	image1_reloc_ptrs
	.size	st_gs_image1, 64

	.type	gs_image_type_1,@object # @gs_image_type_1
	.globl	gs_image_type_1
	.align	8
gs_image_type_1:
	.quad	st_gs_image1
	.quad	gx_begin_image1
	.quad	gx_data_image_source_size
	.quad	gx_image1_sput
	.quad	gx_image1_sget
	.quad	gx_image1_release
	.long	1                       # 0x1
	.zero	4
	.size	gs_image_type_1, 56

	.type	gs_image_type_mask1,@object # @gs_image_type_mask1
	.globl	gs_image_type_mask1
	.align	8
gs_image_type_mask1:
	.quad	st_gs_image1
	.quad	gx_begin_image1
	.quad	gx_data_image_source_size
	.quad	gx_image1_mask_sput
	.quad	gx_image1_mask_sget
	.quad	gx_image_default_release
	.long	1                       # 0x1
	.zero	4
	.size	gs_image_type_mask1, 56

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_image_free_enum"
	.size	.L.str.1, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
