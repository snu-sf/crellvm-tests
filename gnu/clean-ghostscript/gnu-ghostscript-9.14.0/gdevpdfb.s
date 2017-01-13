	.text
	.file	"gdevpdfb.bc"
	.globl	gdev_pdf_copy_mono
	.align	16, 0x90
	.type	gdev_pdf_copy_mono,@function
gdev_pdf_copy_mono:                     # @gdev_pdf_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 80
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movl	88(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB0_3
# BB#1:                                 # %entry
	movl	96(%rsp), %r10d
	testl	%r10d, %r10d
	jle	.LBB0_3
# BB#2:                                 # %if.end
	movq	112(%rsp), %r11
	movq	104(%rsp), %rbx
	movl	80(%rsp), %ebp
	movq	%r11, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	$0, 40(%rsp)
	callq	pdf_copy_mono
	jmp	.LBB0_4
.LBB0_3:                                # %cleanup
	xorl	%eax, %eax
.LBB0_4:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gdev_pdf_copy_mono, .Lfunc_end0-gdev_pdf_copy_mono
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	pdf_copy_mono,@function
pdf_copy_mono:                          # @pdf_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$968, %rsp              # imm = 0x3C8
.Ltmp11:
	.cfi_def_cfa_offset 1024
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%r8, %r15
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	1064(%rsp), %rbp
	movq	28840(%r14), %r13
	movq	%rbp, %rsi
	callq	pdf_must_put_clip_path
	testl	%eax, %eax
	je	.LBB1_3
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pdf_open_page
	testl	%eax, %eax
	js	.LBB1_68
# BB#2:                                 # %if.end
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	pdf_put_clip_path
	testl	%eax, %eax
	js	.LBB1_68
.LBB1_3:                                # %if.end.7
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	1056(%rsp), %rbx
	movq	1048(%rsp), %r12
	movl	1032(%rsp), %ebp
	movl	1024(%rsp), %ecx
	cmpq	$-1, %r12
	je	.LBB1_4
# BB#22:                                # %if.else.76
	movl	%ecx, %r13d
	cmpq	$-1, %rbx
	je	.LBB1_23
# BB#25:                                # %if.else.80
	movq	8832(%r14), %rax
	movq	8840(%r14), %rcx
	cmpq	%r12, %rax
	jne	.LBB1_28
# BB#26:                                # %if.else.80
	cmpq	%rbx, %rcx
	jne	.LBB1_28
# BB#27:                                # %if.then.86
	movq	24(%r14), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	328(%rsp), %rdi
	movl	$1, %edx
	movq	%rax, %rsi
	callq	gs_image_t_init_adjust
	xorl	%ebx, %ebx
	jmp	.LBB1_32
.LBB1_4:                                # %if.then.9
	xorl	%eax, %eax
	cmpq	$-1, %rbx
	movq	64(%rsp), %r12          # 8-byte Reload
	je	.LBB1_68
# BB#5:                                 # %if.end.12
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_19
# BB#6:                                 # %if.end.12
	testq	%r15, %r15
	je	.LBB1_19
# BB#7:                                 # %if.end.12
	testq	%r13, %r13
	je	.LBB1_19
# BB#8:                                 # %if.then.17
	cmpl	$0, 584(%r13)
	je	.LBB1_10
# BB#9:                                 # %if.then.19
	movq	568(%r13), %rax
	movq	%rax, 28792(%r14)
	jmp	.LBB1_11
.LBB1_23:                               # %if.then.79
	leaq	328(%rsp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	gs_image_t_init_mask_adjust
	leaq	7512(%r14), %rdx
	leaq	7500(%r14), %rcx
	movl	$psdf_set_fill_color_commands, %r8d
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	pdf_set_pure_color
	cmpl	$0, 9544(%r14)
	movl	$0, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jne	.LBB1_32
# BB#24:                                # %if.then.i.191
	leaq	8144(%r14), %rdx
	leaq	7504(%r14), %rcx
	movl	$psdf_set_stroke_color_commands, %r8d
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	pdf_set_pure_color
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB1_32
.LBB1_28:                               # %if.else.88
	cmpq	%r12, %rcx
	jne	.LBB1_41
# BB#29:                                # %if.else.88
	cmpq	%rbx, %rax
	jne	.LBB1_41
# BB#30:                                # %if.then.96
	movq	24(%r14), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	328(%rsp), %rdi
	movl	$1, %edx
	movq	%rax, %rsi
	callq	gs_image_t_init_adjust
	jmp	.LBB1_31
.LBB1_19:                               # %if.end.75
	movl	%ecx, %r13d
	leaq	7512(%r14), %rdx
	leaq	7500(%r14), %rcx
	movl	$psdf_set_fill_color_commands, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_set_pure_color
	cmpl	$0, 9544(%r14)
	jne	.LBB1_21
# BB#20:                                # %if.then.i.181
	leaq	8144(%r14), %rdx
	leaq	7504(%r14), %rcx
	movl	$psdf_set_stroke_color_commands, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_set_pure_color
.LBB1_21:                               # %set_image_color.exit182
	leaq	328(%rsp), %rdi
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movl	$1, %edx
	callq	gs_image_t_init_mask_adjust
.LBB1_31:                               # %if.end.149
	movb	$-1, %bl
.LBB1_32:                               # %if.end.149
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	%ebp, 360(%rsp)
	movl	1040(%rsp), %r8d
	movl	%r8d, 364(%rsp)
	leaq	336(%rsp), %r12
	movq	%r12, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	%r13d, %edx
	movl	%ebp, %ecx
	movq	%rbp, %r15
	movl	%r8d, %r9d
	movl	%r8d, %r13d
	callq	pdf_make_bitmap_matrix
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pdf_open_page
	testl	%eax, %eax
	js	.LBB1_68
# BB#33:                                # %if.end.159
	leal	7(%r15), %eax
	sarl	$3, %eax
	cltq
	movslq	%r13d, %rcx
	imulq	%rax, %rcx
	movq	9592(%r14), %rax
	cmpq	%rax, %rcx
	sbbl	%ebp, %ebp
	andl	$1, %ebp
	cmpq	%rax, %rcx
	jae	.LBB1_35
# BB#34:                                # %if.then.163
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	pdf_put_image_matrix
.LBB1_35:                               # %cleanup.170
	leaq	136(%rsp), %rbx
	movq	%rbx, %rdi
	callq	pdf_image_writer_init
	movl	%ebp, (%rsp)
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %ecx
	movl	%r13d, %r8d
	callq	pdf_begin_write_image
	testl	%eax, %eax
	jns	.LBB1_36
	jmp	.LBB1_68
.LBB1_41:                               # %if.else.99
	movq	%rbp, %r15
	movl	100(%r14), %ebp
	movq	24(%r14), %rdi
	leaq	112(%rsp), %rsi
	movl	%ebp, %edx
	callq	pdf_cspace_init_Device
	testl	%eax, %eax
	js	.LBB1_68
# BB#42:                                # %if.end.105
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	psdf_adjust_color_index
	movq	%rax, %r12
	movq	%r12, 80(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	psdf_adjust_color_index
	movq	%rax, 88(%rsp)
	movq	24(%r14), %rdi
	movl	$gs_color_space_type_Indexed, %esi
	callq	gs_cspace_alloc
	movq	112(%rsp), %rdi
	testq	%rax, %rax
	je	.LBB1_43
# BB#44:                                # %if.end.114
	leaq	928(%rsp), %r8
	movq	%rdi, 40(%rax)
	movl	$1, 72(%rax)
	movl	%ebp, 76(%rax)
	testl	%ebp, %ebp
	movq	%r8, %rsi
	jle	.LBB1_54
# BB#45:                                # %for.body.123.preheader
	movl	$4294967288, %r9d       # imm = 0xFFFFFFF8
	leaq	(,%rbp,8), %rcx
	addl	$-8, %ecx
	shrq	%cl, %r12
	leaq	929(%rsp), %rsi
	movb	%r12b, 928(%rsp)
	cmpl	$2, %ebp
	jl	.LBB1_51
# BB#46:                                # %for.body.123.for.body.123_crit_edge.preheader
	testb	$1, %bpl
	movq	%rbp, %rdi
	jne	.LBB1_48
# BB#47:                                # %for.body.123.for.body.123_crit_edge.prol
	leaq	-1(%rbp), %rdi
	movq	80(%rsp), %rbx
	leaq	-8(,%rbp,8), %rcx
	addl	%r9d, %ecx
	andl	%r9d, %ecx
	shrq	%cl, %rbx
	leaq	930(%rsp), %rsi
	movb	%bl, 929(%rsp)
.LBB1_48:                               # %for.body.123.for.body.123_crit_edge.preheader.split
	cmpl	$2, %ebp
	je	.LBB1_51
# BB#49:                                # %for.body.123.for.body.123_crit_edge.preheader.split.split
	leaq	-8(%r9,%rdi,8), %rbx
.LBB1_50:                               # %for.body.123.for.body.123_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%rsp), %rdx
	movl	%ebx, %ecx
	andl	%r9d, %ecx
	shrq	%cl, %rdx
	movb	%dl, (%rsi)
	movq	80(%rsp), %rdx
	leal	-8(%rbx), %ecx
	andl	%r9d, %ecx
	shrq	%cl, %rdx
	movb	%dl, 1(%rsi)
	addq	$2, %rsi
	addq	$-16, %rbx
	addl	$-2, %edi
	cmpl	$1, %edi
	jg	.LBB1_50
.LBB1_51:                               # %for.inc.127
	testl	%ebp, %ebp
	jle	.LBB1_54
# BB#52:                                # %for.body.123.1.preheader
	leaq	(%r9,%rbp,8), %rdi
	incl	%ebp
	.align	16, 0x90
.LBB1_53:                               # %for.body.123.1
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rdx
	movl	%edi, %ecx
	andl	%r9d, %ecx
	shrq	%cl, %rdx
	movb	%dl, (%rsi)
	incq	%rsi
	addq	$-8, %rdi
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB1_53
.LBB1_54:                               # %for.inc.127.1
	movq	%r8, 80(%rax)
	subl	%r8d, %esi
	movl	%esi, 88(%rax)
	movl	$0, 96(%rax)
	leaq	328(%rsp), %rdi
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	callq	gs_image_t_init_adjust
	movl	$1, 368(%rsp)
	movq	%r15, %rbp
	xorl	%ebx, %ebx
	jmp	.LBB1_32
.LBB1_10:                               # %if.else
	cvtsi2sdl	560(%r13), %xmm0
	mulsd	.LCPI1_1(%rip), %xmm0
	movsd	%xmm0, 28792(%r14)
.LBB1_11:                               # %if.end.25
	movl	$7, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	pdf_find_resource_by_gs_id
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB1_12
# BB#15:                                # %if.else.63
	cmpq	$0, 28840(%r14)
	jne	.LBB1_18
# BB#16:                                # %if.else.67
	leaq	7512(%r14), %rdx
	leaq	7500(%r14), %rcx
	movl	$psdf_set_fill_color_commands, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_set_pure_color
	cmpl	$0, 9544(%r14)
	jne	.LBB1_18
# BB#17:                                # %if.then.i
	leaq	8144(%r14), %rdx
	leaq	7504(%r14), %rcx
	movl	$psdf_set_stroke_color_commands, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_set_pure_color
.LBB1_18:                               # %cleanup
	movq	%rbp, %r13
	movq	%r13, 80(%rsp)
	movq	%r13, %rdi
	callq	pdf_charproc_x_offset
	subl	%eax, %r12d
	movq	%r13, %rdi
	callq	pdf_charproc_y_offset
	movl	1040(%rsp), %ebx
	movl	1024(%rsp), %edx
	subl	%ebx, %edx
	subl	%eax, %edx
	movl	1032(%rsp), %r15d
	movl	%r15d, 360(%rsp)
	movl	%ebx, 364(%rsp)
	leaq	336(%rsp), %rbp
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movl	%ebx, %r9d
	callq	pdf_make_bitmap_matrix
	jmp	.LBB1_67
.LBB1_12:                               # %if.then.29
	leaq	328(%rsp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	gs_image_t_init_mask_adjust
	movq	104(%r13), %rax
	cvttsd2si	176(%rax), %esi
	subl	%esi, %r12d
	cvttsd2si	184(%rax), %edx
	movl	1024(%rsp), %ebp
	subl	%edx, %ebp
	movl	1040(%rsp), %r13d
	subl	%r13d, %edx
	movl	1032(%rsp), %ebx
	movl	%ebx, 360(%rsp)
	movl	%r13d, 364(%rsp)
	leaq	336(%rsp), %rdi
	movl	%ebx, %ecx
	movl	%r13d, %r8d
	movl	%r13d, %r9d
	callq	pdf_make_bitmap_matrix
	leaq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, (%rsp)
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	%ebp, %r8d
	movl	%r12d, %r9d
	callq	pdf_begin_char_proc
	testl	%eax, %eax
	movq	%r12, %r15
	movq	%rbx, %r12
	js	.LBB1_68
# BB#13:                                # %if.end.44
	movl	%ebp, %ebx
	negl	%ebx
	movsd	28792(%r14), %xmm0      # xmm0 = mem[0],zero
	movl	$100, %edi
	movl	$10, %esi
	callq	psdf_round
	movq	5848(%r14), %rdi
	movl	$.L.str.20, %esi
	callq	pprintg1
	movq	5848(%r14), %rdi
	addl	%r13d, %ebp
	negl	%ebp
	leal	(%r15,%r12), %r8d
	movl	$.L.str.21, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r9d
	callq	pprintd4
	movq	5848(%r14), %rdi
	movl	$.L.str.22, %esi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	movl	%ebp, %r9d
	callq	pprintd4
	leaq	136(%rsp), %r15
	movq	%r15, %rdi
	callq	pdf_image_writer_init
	movl	$1, (%rsp)
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%r12d, %ecx
	movl	%r13d, %r8d
	callq	pdf_begin_write_image
	testl	%eax, %eax
	js	.LBB1_68
# BB#14:                                # %cleanup.thread196
	movq	%r12, %r15
	movq	80(%rsp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movb	$-1, %al
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB1_36:                               # %wr
	xorl	%r12d, %r12d
	cmpl	$0, 912(%rsp)
	jne	.LBB1_38
# BB#37:                                # %if.else.176
	movq	272(%rsp), %r8
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	944(%rsp), %r12
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%ebp, %r9d
	callq	pdf_color_space_named
	testl	%eax, %eax
	js	.LBB1_68
.LBB1_38:                               # %if.end.182
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	je	.LBB1_55
# BB#39:                                # %if.then.184
	cmpl	$0, 30756(%r14)
	jne	.LBB1_56
# BB#40:                                # %if.then.186
	movl	372(%rsp), %eax
	movl	376(%rsp), %ecx
	movl	%ecx, 372(%rsp)
	movl	%eax, 376(%rsp)
	movq	360(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	leaq	136(%rsp), %rdi
	movl	$1, %ecx
	callq	psdf_CFE_binary
	movq	40(%rsp), %rax          # 8-byte Reload
	notb	%al
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB1_56
.LBB1_55:                               # %if.else.199
	movq	9368(%r14), %rax
	movq	%rax, 8872(%r14)
	movl	%ebp, (%rsp)
	leaq	136(%rsp), %rsi
	leaq	328(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r14, %rdi
	callq	psdf_setup_image_filters
.LBB1_56:                               # %if.end.203
	movl	%r13d, %ebx
	movl	60(%rsp), %r13d         # 4-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	leaq	136(%rsp), %rsi
	leaq	328(%rsp), %rdx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%r12, %rcx
	callq	pdf_begin_image_data
	movq	152(%rsp), %rdi
	movq	40(%rsp), %rax          # 8-byte Reload
	movzbl	%al, %eax
	movl	%eax, (%rsp)
	movq	%rbp, %rsi
	movl	76(%rsp), %edx          # 4-byte Reload
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	movl	%ebx, %r9d
	callq	pdf_copy_mask_bits
	testl	%eax, %eax
	js	.LBB1_68
# BB#57:                                # %if.end.212
	movl	288(%rsp), %edx
	leaq	136(%rsp), %rsi
	movq	%r14, %rdi
	callq	pdf_end_image_binary
	movq	64(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB1_58
# BB#62:                                # %if.end.221
	movq	$.L.str.24, 304(%rsp)
	leaq	136(%rsp), %rsi
	movq	%r14, %rdi
	callq	pdf_end_write_image
	cmpl	$1, %eax
	jne	.LBB1_63
# BB#65:                                # %sw.epilog
	movq	%rbp, %r12
	leaq	120(%rsp), %rsi
	movq	%r14, %rdi
	callq	pdf_end_char_proc
	testl	%eax, %eax
	js	.LBB1_68
# BB#66:                                # %sw.epilog.rx_crit_edge
	leaq	336(%rsp), %rbp
	movq	%r12, %r13
.LBB1_67:                               # %rx
	movq	16(%rbp), %rax
	movq	%rax, 96(%rsp)
	movups	(%rbp), %xmm0
	movaps	%xmm0, 80(%rsp)
	movaps	80(%rsp), %xmm0
	movd	%ebx, %xmm1
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	%r15d, %xmm2
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	cvtdq2ps	%xmm2, %xmm1
	divps	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	pdf_do_char_image
	jmp	.LBB1_68
.LBB1_58:                               # %if.then.215
	leaq	136(%rsp), %rsi
	movq	%r14, %rdi
	callq	pdf_end_write_image
	testl	%eax, %eax
	jne	.LBB1_59
# BB#61:                                # %sw.bb.217
	movq	280(%rsp), %rsi
	leaq	336(%rsp), %rdx
	movl	$1, %ecx
	movq	%r14, %rdi
	callq	pdf_do_image
	jmp	.LBB1_68
.LBB1_63:                               # %if.end.221
	testl	%eax, %eax
	jne	.LBB1_68
# BB#64:                                # %sw.bb.224
	movl	$-100, %eax
	jmp	.LBB1_68
.LBB1_59:                               # %if.then.215
	cmpl	$1, %eax
	jne	.LBB1_68
# BB#60:                                # %sw.bb
	xorl	%eax, %eax
	jmp	.LBB1_68
.LBB1_43:                               # %if.then.113
	movl	$.L.str.23, %esi
	callq	rc_decrement_cs
	movl	$-25, %eax
.LBB1_68:                               # %cleanup.240
	addq	$968, %rsp              # imm = 0x3C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf_copy_mono, .Lfunc_end1-pdf_copy_mono
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pdf_copy_color_data
	.align	16, 0x90
	.type	pdf_copy_color_data,@function
pdf_copy_color_data:                    # @pdf_copy_color_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 160
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movl	%ecx, %r14d
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movzwl	108(%rbx), %ebp
	shrl	$3, %ebp
	movq	24(%rbx), %rdi
	leaq	96(%rsp), %rsi
	movl	%ebp, %edx
	callq	pdf_cspace_init_Device
	testl	%eax, %eax
	js	.LBB2_18
# BB#1:                                 # %if.end
	movl	$1, %eax
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	je	.LBB2_18
# BB#2:                                 # %if.end.4
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	%r14d, 36(%rsp)         # 4-byte Spill
	movq	184(%rsp), %rbx
	movl	176(%rsp), %r14d
	movl	%ebp, 32(%rsp)          # 4-byte Spill
	movl	168(%rsp), %r15d
	movq	96(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gs_image_t_init_adjust
	movl	%r15d, 32(%rbx)
	movl	%r14d, 36(%rbx)
	leaq	8(%rbx), %r12
	movq	%r12, %rdi
	movl	%r13d, %esi
	movq	%rbx, %r13
	movl	160(%rsp), %edx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movl	%r14d, %r9d
	callq	pdf_make_bitmap_matrix
	movq	%r14, %rdx
	movl	$8, 40(%r13)
	movslq	%r15d, %rax
	movl	%ebp, %ecx
	movslq	%edx, %rbp
	imulq	%rax, %rbp
	imulq	%rcx, %rbp
	movl	200(%rsp), %r15d
	cmpl	$1, %r15d
	jne	.LBB2_4
# BB#3:                                 # %if.end.27.thread
	leal	-1(%rdx), %eax
	movl	36(%rsp), %ecx          # 4-byte Reload
	imull	%ecx, %eax
	cltq
	addq	%rax, 64(%rsp)          # 8-byte Folded Spill
	negl	%ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	movq	192(%rsp), %rbx
	movq	%rdx, %r12
	jmp	.LBB2_9
.LBB2_4:                                # %if.else
	movq	40(%rsp), %rdi          # 8-byte Reload
	cmpq	9592(%rdi), %rbp
	sbbl	%r14d, %r14d
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r12, %rsi
	movq	%rdi, %r12
	callq	pdf_put_image_matrix
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	movq	192(%rsp), %rbx
	je	.LBB2_6
# BB#5:                                 # %if.then.20
	movl	$4, %esi
	movq	%r12, %rdi
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	pdf_find_resource_by_gs_id
	movq	%rax, %rcx
	movq	%rcx, 144(%rbx)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jne	.LBB2_18
.LBB2_6:                                # %if.end.27
	andl	$1, %r14d
	testl	%r15d, %r15d
	jns	.LBB2_8
# BB#7:                                 # %if.then.30
	movq	5848(%r12), %rdi
	movl	$.L.str, %esi
	callq	stream_puts
.LBB2_8:                                # %if.end.32
	movl	176(%rsp), %r12d
.LBB2_9:                                # %if.end.32
	movq	%rbx, %rdi
	callq	pdf_image_writer_init
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	9368(%rdi), %rax
	movq	%rax, 8872(%rdi)
	movl	%r14d, (%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movl	168(%rsp), %ecx
	movl	%r12d, %r8d
	movq	%rdi, %r12
	callq	pdf_begin_write_image
	testl	%eax, %eax
	js	.LBB2_18
# BB#10:                                # %lor.lhs.false
	movq	96(%rsp), %rcx
	movq	136(%rbx), %r8
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	72(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	movl	%r14d, %r9d
	callq	pdf_color_space_named
	testl	%eax, %eax
	js	.LBB2_18
# BB#11:                                # %lor.lhs.false.39
	cmpl	$2, %r15d
	jl	.LBB2_13
# BB#12:                                # %lor.lhs.false.39
	cmpq	$511999, %rbp           # imm = 0x7CFFF
	jbe	.LBB2_13
# BB#14:                                # %cond.false
	movl	$0, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	psdf_setup_image_filters
	jmp	.LBB2_15
.LBB2_13:                               # %cond.true
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	psdf_setup_lossless_filters
.LBB2_15:                               # %cond.end
	testl	%eax, %eax
	js	.LBB2_18
# BB#16:                                # %lor.lhs.false.51
	leaq	72(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	pdf_begin_image_data
	testl	%eax, %eax
	js	.LBB2_18
# BB#17:                                # %if.end.56
	movq	16(%rbx), %rdi
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	168(%rsp), %r8d
	movl	176(%rsp), %r9d
	callq	pdf_copy_color_bits
	movl	152(%rbx), %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_end_image_binary
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_end_write_image
.LBB2_18:                               # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdf_copy_color_data, .Lfunc_end2-pdf_copy_color_data
	.cfi_endproc

	.globl	gdev_pdf_copy_color
	.align	16, 0x90
	.type	gdev_pdf_copy_color,@function
gdev_pdf_copy_color:                    # @gdev_pdf_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$856, %rsp              # imm = 0x358
.Ltmp37:
	.cfi_def_cfa_offset 912
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	920(%rsp), %r14d
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB3_8
# BB#1:                                 # %entry
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movl	%r9d, 60(%rsp)          # 4-byte Spill
	movl	928(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.LBB3_8
# BB#2:                                 # %if.end
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_page
	testl	%eax, %eax
	js	.LBB3_8
# BB#3:                                 # %if.end.4
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_put_clip_path
	testl	%eax, %eax
	js	.LBB3_8
# BB#4:                                 # %if.end.8
	movl	912(%rsp), %eax
	leaq	64(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	leaq	256(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$0, 40(%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	60(%rsp), %r9d          # 4-byte Reload
	callq	pdf_copy_color_data
	testl	%eax, %eax
	jne	.LBB3_5
# BB#7:                                 # %sw.bb.10
	movq	208(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	pdf_do_image
	jmp	.LBB3_8
.LBB3_5:                                # %if.end.8
	cmpl	$1, %eax
	jne	.LBB3_8
# BB#6:                                 # %sw.bb
	xorl	%eax, %eax
.LBB3_8:                                # %cleanup
	addq	$856, %rsp              # imm = 0x358
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gdev_pdf_copy_color, .Lfunc_end3-gdev_pdf_copy_color
	.cfi_endproc

	.globl	gdev_pdf_fill_mask
	.align	16, 0x90
	.type	gdev_pdf_fill_mask,@function
gdev_pdf_fill_mask:                     # @gdev_pdf_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 144
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	152(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.LBB4_6
# BB#1:                                 # %entry
	movl	160(%rsp), %r12d
	testl	%r12d, %r12d
	jle	.LBB4_6
# BB#2:                                 # %if.end
	cmpl	$1, 176(%rsp)
	jg	.LBB4_8
# BB#3:                                 # %lor.lhs.false.3
	movq	192(%rsp), %rsi
	movq	168(%rsp), %r14
	movl	144(%rsp), %edx
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%r14)
	je	.LBB4_5
# BB#4:                                 # %land.lhs.true
	movq	%r14, %rdi
	movl	%r9d, 84(%rsp)          # 4-byte Spill
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edx, 64(%rsp)          # 4-byte Spill
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	callq	gx_dc_is_pattern1_color
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	64(%rsp), %edx          # 4-byte Reload
	movl	68(%rsp), %ecx          # 4-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	84(%rsp), %r9d          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB4_8
.LBB4_5:                                # %if.end.8
	movq	8(%r14), %rax
	movq	%rsi, 40(%rsp)
	movq	%rax, 32(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%edx, (%rsp)
	movq	$-1, 24(%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	callq	pdf_copy_mono
	jmp	.LBB4_7
.LBB4_6:                                # %cleanup
	xorl	%eax, %eax
.LBB4_7:                                # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_8:                                # %if.then.6
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_fill_mask    # TAILCALL
.Lfunc_end4:
	.size	gdev_pdf_fill_mask, .Lfunc_end4-gdev_pdf_fill_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4634766966517661696     # double 72
.LCPI5_1:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gdev_pdf_strip_tile_rectangle
	.align	16, 0x90
	.type	gdev_pdf_strip_tile_rectangle,@function
gdev_pdf_strip_tile_rectangle:          # @gdev_pdf_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$1000, %rsp             # imm = 0x3E8
.Ltmp63:
	.cfi_def_cfa_offset 1056
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, %r13d
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	1056(%rsp), %r15
	movzwl	32(%rbp), %edx
	movzwl	34(%rbp), %eax
	cmpq	$0, 24(%rbp)
	je	.LBB5_35
# BB#1:                                 # %lor.lhs.false
	cmpw	$0, 38(%rbp)
	jne	.LBB5_35
# BB#2:                                 # %lor.lhs.false.11
	movss	884(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cmpl	%r13d, %edx
	jle	.LBB5_5
# BB#3:                                 # %land.lhs.true
	cmpq	$-1, %r15
	jne	.LBB5_35
# BB#4:                                 # %land.lhs.true
	cmpl	%r12d, %eax
	jle	.LBB5_6
	jmp	.LBB5_35
.LBB5_5:                                # %lor.lhs.false.16
	cmpq	$-1, %r15
	jne	.LBB5_35
.LBB5_6:                                # %if.end
	cmpq	$-1, 1064(%rsp)
	je	.LBB5_8
# BB#7:                                 # %if.then.21
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	968(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%r13d, %r15d
	movl	%r14d, %r13d
	movl	%r12d, %r14d
	movl	%ecx, %r12d
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movss	%xmm0, 124(%rsp)        # 4-byte Spill
	movss	%xmm1, 112(%rsp)        # 4-byte Spill
	callq	pdf_cs_Pattern_uncolored
	movss	112(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	124(%rsp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movq	128(%rsp), %r8          # 8-byte Reload
	movl	%r12d, %ecx
	movl	%r14d, %r12d
	movl	%r13d, %r14d
	movl	%r15d, %r13d
	movq	1056(%rsp), %r15
	movl	$pdf_copy_mask_data, %edi
	movl	$1, %edx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rdx         # 8-byte Reload
	movl	$1, %esi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	jmp	.LBB5_9
.LBB5_8:                                # %if.else
	movzwl	108(%rbx), %esi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	968(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%r13d, %r15d
	movl	%r14d, %r13d
	movl	%r12d, %r14d
	movl	%ecx, %r12d
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movss	%xmm0, 124(%rsp)        # 4-byte Spill
	movss	%xmm1, 112(%rsp)        # 4-byte Spill
	callq	pdf_cs_Pattern_colored
	movss	112(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	124(%rsp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movq	128(%rsp), %r8          # 8-byte Reload
	movl	%r12d, %ecx
	movl	%r14d, %r12d
	movl	%r13d, %r14d
	movl	%r15d, %r13d
	movq	1056(%rsp), %r15
	movl	$pdf_copy_color_data, %edi
	xorl	%edx, %edx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rdx         # 8-byte Reload
.LBB5_9:                                # %if.end.25
	testl	%eax, %eax
	js	.LBB5_35
# BB#10:                                # %if.end.29
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	%ecx, 124(%rsp)         # 4-byte Spill
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 112(%rsp)        # 8-byte Spill
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 88(%rsp)         # 8-byte Spill
	movq	24(%rbp), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	pdf_find_resource_by_gs_id
	movq	%rax, 992(%rsp)
	testq	%rax, %rax
	jne	.LBB5_29
# BB#11:                                # %if.then.32
	movq	136(%rsp), %rdx         # 8-byte Reload
	movq	96(%rsp), %rax          # 8-byte Reload
	imulq	%rdx, %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	128(%rsp), %rcx         # 8-byte Reload
	imulq	%rcx, %rax
	movq	%rax, %rdi
	movq	9592(%rbx), %r8
	xorl	%esi, %esi
	cmpl	12(%rbp), %edx
	jne	.LBB5_14
# BB#12:                                # %land.lhs.true.44
	xorl	%esi, %esi
	cmpl	16(%rbp), %ecx
	jne	.LBB5_14
# BB#13:                                # %cond.true
	movq	24(%rbp), %rsi
.LBB5_14:                               # %cond.end
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	cmpq	%r8, %rdi
	jl	.LBB5_18
# BB#15:                                # %if.else.52
	cmpq	$65500, %rdi            # imm = 0xFFDC
	ja	.LBB5_34
# BB#16:                                # %if.else.56
	movq	(%rbp), %rsi
	movl	8(%rbp), %ecx
	leaq	176(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	$1, 40(%rsp)
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	72(%rsp), %r8           # 8-byte Reload
	callq	*80(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB5_34
# BB#17:                                # %if.end.61
	movq	320(%rsp), %rdi
	callq	pdf_resource_id
	movq	136(%rsp), %rdx         # 8-byte Reload
.LBB5_18:                               # %if.end.65
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	24(%rbp), %rdx
	leaq	992(%rsp), %rcx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	pdf_begin_resource
	testl	%eax, %eax
	js	.LBB5_34
# BB#19:                                # %if.end.71
	movq	5848(%rbx), %rdi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %edx
	movl	$.L.str.1, %esi
	callq	pprintd1
	movq	64(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB5_24
# BB#20:                                # %if.then.76
	movl	$.L.str.2, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%rdx, %rcx
	callq	pprintld2
	movq	104(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	$.L.str.4, %eax
	movl	$.L.str.5, %edx
	cmovneq	%rax, %rdx
	movl	$.L.str.3, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	pprints1
	movq	136(%rsp), %rax         # 8-byte Reload
	cvtsi2sdl	%eax, %xmm0
	divsd	112(%rsp), %xmm0        # 8-byte Folded Reload
	movq	128(%rsp), %rax         # 8-byte Reload
	cvtsi2sdl	%eax, %xmm1
	divsd	88(%rsp), %xmm1         # 8-byte Folded Reload
	movl	$.L.str.6, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	pprintg2
	movl	$.L.str.7, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	stream_puts
	leaq	144(%rsp), %rdi
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	gs_sprintf
	leaq	144(%rsp), %rdi
	callq	strlen
	movl	$.L.str.9, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %edx
	callq	pprintd1
	cmpl	$0, 9564(%rbx)
	je	.LBB5_22
# BB#21:                                # %if.then.97
	leaq	144(%rsp), %rdx
	movl	$.L.str.10, %esi
	jmp	.LBB5_23
.LBB5_34:                               # %cleanup.thread
	movl	124(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB5_35
.LBB5_24:                               # %if.else.105.critedge
	movq	104(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	$.L.str.4, %eax
	movl	$.L.str.5, %edx
	cmovneq	%rax, %rdx
	movl	$.L.str.3, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	pprints1
	movq	136(%rsp), %rax         # 8-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	112(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	128(%rsp), %rax         # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	88(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movl	$.L.str.6, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	pprintg2
	movl	$.L.str.7, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	stream_puts
	movq	%rbx, %rdi
	callq	pdf_obj_ref
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$.L.str.12, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rdx
	callq	pprintld1
	movq	%rbx, %rdi
	callq	pdf_stell
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	(%rbp), %rsi
	movl	8(%rbp), %ecx
	leaq	176(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	368(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movl	$-1, 40(%rsp)
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	72(%rsp), %r8           # 8-byte Reload
	callq	*80(%rsp)               # 8-byte Folded Reload
	cmpl	$1, %eax
	jne	.LBB5_25
# BB#27:                                # %sw.epilog
	movq	%rbx, %rdi
	callq	pdf_stell
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	$.L.str.13, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	stream_puts
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	pdf_end_resource
	movl	$34, %edx
	movq	%rbx, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	pdf_open_separate
	movq	5848(%rbx), %rdi
	movq	136(%rsp), %rdx         # 8-byte Reload
	subq	56(%rsp), %rdx          # 8-byte Folded Reload
	movl	$.L.str.14, %esi
	callq	pprintld1
	movl	$34, %esi
	movq	%rbx, %rdi
	callq	pdf_end_separate
	jmp	.LBB5_28
.LBB5_22:                               # %if.else.100
	leaq	144(%rsp), %rdx
	movl	$.L.str.11, %esi
.LBB5_23:                               # %if.end.103
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	pprints1
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	pdf_end_resource
.LBB5_28:                               # %cleanup
	movq	992(%rsp), %rax
	movq	64(%rax), %rax
	movb	$1, 50(%rax)
.LBB5_29:                               # %if.end.130
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_page
	testl	%eax, %eax
	movl	124(%rsp), %ecx         # 4-byte Reload
	js	.LBB5_35
# BB#30:                                # %if.end.137
	movl	%r14d, %r15d
	movl	%ecx, %r14d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_put_clip_path
	testl	%eax, %eax
	js	.LBB5_36
# BB#31:                                # %if.end.142
	movq	5848(%rbx), %rbp
	movl	$.L.str.15, %esi
	movq	%rbp, %rdi
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pprintg2
	leaq	968(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cos_value_write
	movl	$.L.str.16, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movq	104(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB5_33
# BB#32:                                # %if.then.148
	movq	1064(%rsp), %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI5_1(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm0
	movzbl	%ch, %eax  # NOREX
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm3, %xmm1
	movzbl	%cl, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm3, %xmm2
	movl	$.L.str.17, %esi
	movq	%rbp, %rdi
	callq	pprintg3
.LBB5_33:                               # %cleanup.cont.176
	movq	992(%rsp), %rdi
	callq	pdf_resource_id
	movl	$.L.str.18, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	pprintld1
	cvtsi2sdl	%r15d, %xmm0
	movsd	112(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm0
	cvtsi2sdl	%r14d, %xmm1
	divsd	88(%rsp), %xmm1         # 8-byte Folded Reload
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%r13d, %xmm2
	divsd	%xmm4, %xmm2
	cvtsi2sdl	%r12d, %xmm3
	divsd	%xmm4, %xmm3
	movl	$.L.str.19, %esi
	movq	%rbp, %rdi
	callq	pprintg4
	xorl	%eax, %eax
	jmp	.LBB5_36
.LBB5_35:                               # %use_default
	movl	1080(%rsp), %eax
	movl	1072(%rsp), %edx
	movl	%eax, 24(%rsp)
	movl	%edx, 16(%rsp)
	movq	1064(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, (%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
	movl	%r13d, %r8d
	movl	%r12d, %r9d
	callq	gx_default_strip_tile_rectangle
.LBB5_36:                               # %cleanup.178
	addq	$1000, %rsp             # imm = 0x3E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_25:                               # %if.else.105.critedge
	testl	%eax, %eax
	jne	.LBB5_36
# BB#26:                                # %sw.bb
	movl	$-100, %eax
	jmp	.LBB5_36
.Lfunc_end5:
	.size	gdev_pdf_strip_tile_rectangle, .Lfunc_end5-gdev_pdf_strip_tile_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	pdf_copy_mask_data,@function
pdf_copy_mask_data:                     # @pdf_copy_mask_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 128
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movl	%r9d, 44(%rsp)          # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%ecx, %r12d
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	168(%rsp), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movq	160(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	152(%rsp), %r13
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	144(%rsp), %r15d
	movl	136(%rsp), %r14d
	movl	128(%rsp), %ebp
	movl	$1, %esi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	gs_image_t_init_mask_adjust
	movl	%r14d, 32(%r13)
	movl	%r15d, 36(%r13)
	leaq	8(%r13), %r13
	movq	%r13, %rdi
	movl	44(%rsp), %esi          # 4-byte Reload
	movl	%ebp, %edx
	movl	%r14d, %ecx
	movl	%r15d, %r8d
	movl	%r15d, %r9d
	callq	pdf_make_bitmap_matrix
	movl	40(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	je	.LBB6_1
# BB#3:                                 # %if.end.14
	movq	48(%rsp), %rcx          # 8-byte Reload
	leal	-1(%r15), %eax
	imull	%r12d, %eax
	cltq
	addq	%rax, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	negl	%r12d
	movl	%r12d, 44(%rsp)         # 4-byte Spill
	movl	%edx, %ebx
	shrl	$31, %ebx
	movq	%rcx, %r13
	testl	%edx, %edx
	jns	.LBB6_5
# BB#4:                                 # %if.then.17
	movq	5848(%r13), %rdi
	movl	$.L.str, %esi
	callq	stream_puts
	jmp	.LBB6_5
.LBB6_1:                                # %if.else
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	%r12d, 44(%rsp)         # 4-byte Spill
	movslq	%r14d, %rax
	movslq	%r15d, %rcx
	imulq	%rax, %rcx
	addq	$7, %rcx
	shrq	$3, %rcx
	movq	48(%rsp), %rbp          # 8-byte Reload
	cmpq	9592(%rbp), %rcx
	sbbl	%ebx, %ebx
	andl	$1, %ebx
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	pdf_put_image_matrix
	movq	64(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movq	%rbp, %r13
	je	.LBB6_5
# BB#2:                                 # %if.then.9
	movl	$4, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	callq	pdf_find_resource_by_gs_id
	movq	%rax, %rcx
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rcx, 144(%rbp)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jne	.LBB6_9
	jmp	.LBB6_6
.LBB6_5:                                # %if.end.19
	movq	56(%rsp), %rbp          # 8-byte Reload
.LBB6_6:                                # %if.end.19
	movq	%rbp, %rdi
	callq	pdf_image_writer_init
	movq	9368(%r13), %rax
	movq	%rax, 8872(%r13)
	movl	%ebx, (%rsp)
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	movl	%r15d, %r8d
	callq	pdf_begin_write_image
	testl	%eax, %eax
	js	.LBB6_9
# BB#7:                                 # %lor.lhs.false
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	%ebx, %ecx
	callq	psdf_setup_lossless_filters
	testl	%eax, %eax
	js	.LBB6_9
# BB#8:                                 # %lor.lhs.false.26
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	pdf_begin_image_data
	testl	%eax, %eax
	js	.LBB6_9
# BB#10:                                # %if.end.31
	movq	16(%rbp), %rdi
	movl	$0, (%rsp)
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	28(%rsp), %edx          # 4-byte Reload
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%r14d, %r8d
	movl	%r15d, %r9d
	callq	pdf_copy_mask_bits
	movl	152(%rbp), %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	pdf_end_image_binary
	movq	%r13, %rdi
	movq	%rbp, %rsi
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_end_write_image     # TAILCALL
.LBB6_9:                                # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pdf_copy_mask_data, .Lfunc_end6-pdf_copy_mask_data
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"q "
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/PatternType 1/PaintType %d/TilingType 1/Resources<<\n"
	.size	.L.str.1, 54

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/XObject<</R%ld %ld 0 R>>"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/ProcSet[/PDF/Image%s]>>\n"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"B"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"C"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/Matrix[%g 0 0 %g 0 0]"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/BBox[0 0 1 1]/XStep 1/YStep 1/Length "
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/R%ld Do\n"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%d>>stream\n"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s\nendstream\n"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%sendstream\n"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%ld 0 R>>stream\n"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\nendstream\n"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%ld\n"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"q %g 0 0 %g 0 0 cm\n"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	" cs"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	" %g %g %g"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/R%ld scn"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" %g %g %g %g re f Q\n"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%g "
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"0 %d %d %d %d d1\n"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%d 0 0 %d %d %d cm\n"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"pdf_copy_mono"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.zero	1
	.size	.L.str.24, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
