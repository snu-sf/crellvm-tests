	.text
	.file	"gxfill.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1132462080              # float 256
.LCPI0_1:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_2:
	.zero	16
	.text
	.globl	gx_default_fill_path
	.align	16, 0x90
	.type	gx_default_fill_path,@function
gx_default_fill_path:                   # @gx_default_fill_path
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
	subq	$10296, %rsp            # imm = 0x2838
.Ltmp6:
	.cfi_def_cfa_offset 10352
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
	movq	%r9, %rbp
	movq	%r8, %rbx
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	%rbx, %rdi
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	jne	.LBB0_4
# BB#1:                                 # %lor.lhs.false
	movl	$gx_dc_type_data_ht_colored, %eax
	cmpq	%rax, (%rbx)
	je	.LBB0_4
# BB#2:                                 # %lor.lhs.false.1
	movq	%rbx, %rdi
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB0_24
# BB#3:                                 # %land.lhs.true
	movq	8(%rbx), %rdi
	callq	gx_pattern_tile_is_clist
	testl	%eax, %eax
	je	.LBB0_24
.LBB0_4:                                # %if.then
	movq	%r15, 152(%rsp)         # 8-byte Spill
	testq	%r12, %r12
	je	.LBB0_5
# BB#6:                                 # %if.then.7
	movq	24(%r13), %rdx
	leaq	7912(%rsp), %rdi
	movl	$1, %ecx
	movq	%rbp, %rsi
	callq	gx_cpath_init_local_shared_nested
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_335
# BB#7:                                 # %if.end
	testq	%rbp, %rbp
	jne	.LBB0_10
# BB#8:                                 # %if.end.14
	movq	%r14, %r15
	leaq	464(%rsp), %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*1432(%r13)
	leaq	7912(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%r15, %r14
	callq	gx_cpath_from_rectangle
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_9
.LBB0_10:                               # %if.end.19
	movq	152(%rsp), %r8          # 8-byte Reload
	movl	(%r8), %edx
	leaq	7912(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	callq	gx_cpath_intersect_with_params
	movl	%eax, %r15d
	movq	%rbp, 9816(%rsp)
	testl	%r15d, %r15d
	jns	.LBB0_11
	jmp	.LBB0_21
.LBB0_5:                                # %if.end.19.thread
	movq	%rbp, 9816(%rsp)
.LBB0_11:                               # %if.end.23
	leaq	160(%rsp), %rdx
	leaq	9816(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gx_dc_pattern2_clip_with_bbox
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_20
# BB#12:                                # %if.then.25
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movq	9816(%rsp), %rdi
	leaq	10088(%rsp), %rsi
	callq	gx_cpath_outer_box
	movslq	10088(%rsp), %r14
	movq	%rbx, %rdi
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movslq	10092(%rsp), %r12
	movq	%r13, %rbx
	movslq	10096(%rsp), %r13
	movslq	10100(%rsp), %rbp
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	je	.LBB0_14
# BB#13:                                # %land.lhs.true.54
	movl	$7, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	jle	.LBB0_14
# BB#17:                                # %if.end.74
	movq	9816(%rsp), %r9
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	136(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movq	144(%rsp), %rdx         # 8-byte Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	callq	*1336(%rbx)
	movq	%r15, %rcx
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB0_18
	jmp	.LBB0_19
.LBB0_14:                               # %if.else.63
	movq	9816(%rsp), %rsi
	leaq	464(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	gx_make_clip_device_on_stack
	movl	$4, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	jle	.LBB0_15
# BB#16:                                # %if.then.69
	movq	$pass_shading_area_through_clip_path_device, 1800(%rsp)
.LBB0_15:
	movq	%r15, %rbx
	movq	136(%rsp), %rcx         # 8-byte Reload
.LBB0_18:                               # %if.then.77
	addq	$127, %r14
	shrq	$8, %r14
	addq	$127, %r12
	shrq	$8, %r12
	addq	$127, %r13
	shrq	$8, %r13
	addq	$127, %rbp
	shrq	$8, %rbp
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	subl	%r14d, %r13d
	subl	%r12d, %ebp
	movl	212(%rcx), %ecx
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r14d, %esi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	movq	%rbx, %r9
	callq	*40(%rax)
	movl	%eax, %r15d
.LBB0_19:                               # %if.end.93
	movq	144(%rsp), %r12         # 8-byte Reload
	movq	120(%rsp), %rbp         # 8-byte Reload
.LBB0_20:                               # %if.end.94
	testq	%r12, %r12
	jne	.LBB0_21
	jmp	.LBB0_22
.LBB0_24:                               # %if.else.107
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movl	212(%r14), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movl	88(%r13), %r14d
	movq	%r15, %rbp
	movl	4(%rbp), %r15d
	movl	104(%r12), %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	leaq	7688(%rsp), %rax
	movq	%rax, 872(%rsp)
	leaq	9800(%rsp), %rsi
	movq	%r12, %rdi
	callq	gx_path_bbox
	cmpl	$-1, %r15d
	je	.LBB0_25
# BB#30:                                # %if.else.i
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movl	%r15d, 72(%rsp)         # 4-byte Spill
	movl	%r14d, 76(%rsp)         # 4-byte Spill
	movq	%r13, 112(%rsp)         # 8-byte Spill
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movl	4(%rbp), %r14d
	movl	8(%rbp), %r13d
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rbp, %r12
	jmp	.LBB0_31
.LBB0_25:                               # %land.lhs.true.i
	movq	%rbp, %rcx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movl	%r15d, 72(%rsp)         # 4-byte Spill
	movl	%r14d, 76(%rsp)         # 4-byte Spill
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movl	$san_open, %eax
	xorl	%r14d, %r14d
	cmpq	%rax, 1144(%r13)
	movq	%r13, 112(%rsp)         # 8-byte Spill
	movl	$0, %eax
	je	.LBB0_29
# BB#26:                                # %land.lhs.true.8.i
	movl	9812(%rsp), %eax
	subl	9804(%rsp), %eax
	cmpl	$127999, %eax           # imm = 0x1F3FF
	jg	.LBB0_27
# BB#28:                                # %land.rhs.i
	movl	9808(%rsp), %eax
	subl	9800(%rsp), %eax
	cmpl	$128000, %eax           # imm = 0x1F400
	setl	%al
	jmp	.LBB0_29
.LBB0_9:                                # %if.end.19.thread60
	movq	%rbp, 9816(%rsp)
.LBB0_21:                               # %if.then.97
	leaq	7912(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_cpath_free
.LBB0_22:                               # %if.end.98
	cmpq	%rbp, 9816(%rsp)
	je	.LBB0_335
# BB#23:                                # %if.then.101
	leaq	160(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_cpath_free
.LBB0_335:                              # %cleanup.122
	movl	%r15d, %eax
	addq	$10296, %rsp            # imm = 0x2838
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_27:
	xorl	%eax, %eax
.LBB0_29:                               # %land.end.thread.i
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movzbl	%al, %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	xorl	%r13d, %r13d
	movq	%rcx, %r12
.LBB0_31:                               # %if.end.i
	movq	120(%rsp), %rdi         # 8-byte Reload
	movl	$0, 880(%rsp)
	movq	$0, 840(%rsp)
	movslq	9800(%rsp), %rax
	movslq	%r14d, %rcx
	subq	%rcx, %rax
	movabsq	$1099511627775, %rcx    # imm = 0xFFFFFFFFFF
	addq	%rax, %rcx
	shrq	$8, %rcx
	movl	%ecx, 852(%rsp)
	movl	9808(%rsp), %eax
	leal	255(%r14,%rax), %eax
	cltq
	shrq	$8, %rax
	subl	%ecx, %eax
	movl	%eax, 856(%rsp)
	testq	%rdi, %rdi
	je	.LBB0_33
# BB#32:                                # %if.then.40.i
	leaq	9784(%rsp), %rsi
	movq	%rdi, %rbp
	callq	gx_cpath_inner_box
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.42.i
	movq	%rdi, %rbp
	leaq	9784(%rsp), %rsi
	movq	112(%rsp), %rdi         # 8-byte Reload
	callq	*1432(%rdi)
.LBB0_34:                               # %if.end.43.i
	movl	9812(%rsp), %edi
	cmpl	9796(%rsp), %edi
	jg	.LBB0_38
# BB#35:                                # %land.lhs.true.50.i
	movl	9808(%rsp), %eax
	cmpl	9792(%rsp), %eax
	jg	.LBB0_38
# BB#36:                                # %land.lhs.true.57.i
	movl	9804(%rsp), %ecx
	cmpl	9788(%rsp), %ecx
	jl	.LBB0_38
# BB#37:                                # %land.lhs.true.64.i
	movl	9800(%rsp), %ebx
	cmpl	9784(%rsp), %ebx
	movq	112(%rsp), %r15         # 8-byte Reload
	jge	.LBB0_52
.LBB0_38:                               # %if.then.71.i
	testq	%rbp, %rbp
	je	.LBB0_40
# BB#39:                                # %if.then.73.i
	leaq	9784(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_cpath_outer_box
.LBB0_40:                               # %do.body.79.i
	movl	9784(%rsp), %eax
	movl	9800(%rsp), %ebx
	cmpl	%ebx, %eax
	jle	.LBB0_42
# BB#41:                                # %if.then.86.i
	movl	%eax, 9800(%rsp)
	movl	%eax, %ebx
.LBB0_42:                               # %if.end.91.i
	movl	9792(%rsp), %ecx
	movl	9808(%rsp), %eax
	cmpl	%eax, %ecx
	jge	.LBB0_44
# BB#43:                                # %if.then.98.i
	movl	%ecx, 9808(%rsp)
	movl	%ecx, %eax
.LBB0_44:                               # %if.end.103.i
	movl	9788(%rsp), %edx
	movl	9804(%rsp), %ecx
	cmpl	%ecx, %edx
	jle	.LBB0_46
# BB#45:                                # %if.then.110.i
	movl	%edx, 9804(%rsp)
	movl	%edx, %ecx
.LBB0_46:                               # %if.end.115.i
	movq	%rbp, %rsi
	movl	9796(%rsp), %edx
	movl	9812(%rsp), %edi
	cmpl	%edi, %edx
	jge	.LBB0_48
# BB#47:                                # %if.then.122.i
	movl	%edx, 9812(%rsp)
	movl	%edx, %edi
.LBB0_48:                               # %do.end.129.i
	movl	%ebx, %edx
	subl	%r14d, %edx
	leal	(%rax,%r14), %ebp
	xorl	%r15d, %r15d
	cmpl	%ebp, %edx
	jge	.LBB0_335
# BB#49:                                # %lor.lhs.false.i
	movl	%ecx, %edx
	subl	%r13d, %edx
	leal	(%rdi,%r13), %ebp
	cmpl	%ebp, %edx
	jge	.LBB0_335
# BB#50:                                # %if.end.151.i
	testq	%rsi, %rsi
	movq	112(%rsp), %r15         # 8-byte Reload
	je	.LBB0_52
# BB#51:                                # %if.then.153.i
	leaq	7912(%rsp), %r15
	movq	%r15, %rdi
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	gx_make_clip_device_on_stack
	movl	88(%rbx), %eax
	movl	%eax, 8000(%rsp)
	movl	9800(%rsp), %ebx
	movl	9804(%rsp), %ecx
	movl	9808(%rsp), %eax
	movl	9812(%rsp), %edi
.LBB0_52:                               # %if.end.157.i
	cmpl	$128, %r14d
	movl	$127, %edx
	movl	%r14d, %ebp
	cmovel	%edx, %ebp
	movl	%r14d, 7732(%rsp)
	movl	%ebp, 7728(%rsp)
	cmpl	$128, %r13d
	cmovnel	%r13d, %edx
	movl	%r13d, 7740(%rsp)
	movl	%edx, 7736(%rsp)
	movq	144(%rsp), %rdx         # 8-byte Reload
	movq	40(%rdx), %rdx
	movq	%rdx, 464(%rsp)
	movq	$0, 472(%rsp)
	leaq	888(%rsp), %rbp
	movq	%rbp, 480(%rsp)
	leaq	5528(%rsp), %rbp
	movq	%rbp, 488(%rsp)
	movl	$0, 496(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 504(%rsp)
	movups	%xmm0, 752(%rsp)
	movups	%xmm0, 808(%rsp)
	movups	%xmm0, 776(%rsp)
	movl	$0, 800(%rsp)
	movl	$0, 768(%rsp)
	movq	$0, 832(%rsp)
	movl	$0, 848(%rsp)
	leaq	6008(%rsp), %rbp
	movq	%rbp, 792(%rsp)
	leaq	6808(%rsp), %rbp
	movq	%rbp, 824(%rsp)
	subl	%r14d, %ebx
	movl	%ebx, 9768(%rsp)
	movl	%ecx, %esi
	subl	%r13d, %esi
	movl	%esi, 9772(%rsp)
	addl	%r14d, %eax
	movl	%eax, 9776(%rsp)
	leal	(%r13,%rdi), %eax
	movl	%eax, 9780(%rsp)
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, 7688(%rsp)
	movq	128(%rsp), %r13         # 8-byte Reload
	movq	%r13, 7704(%rsp)
	movq	96(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, 7712(%rsp)
	movss	12(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, 7720(%rsp)
	movl	%ecx, 7692(%rsp)
	movl	%edi, 7696(%rsp)
	movq	%r15, 7744(%rsp)
	leaq	9768(%rsp), %rax
	movq	%rax, 7752(%rsp)
	movl	(%r12), %eax
	movl	%eax, 7764(%rsp)
	movq	1144(%r15), %rax
	movl	$san_open, %ecx
	cmpq	%rcx, %rax
	sete	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 7760(%rsp)
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%r13)
	sete	%cl
	movl	%ebp, %esi
	movq	%rbp, %rdi
	andl	$563, %esi              # imm = 0x233
	cmpl	$48, %esi
	sete	%bl
	andb	%cl, %bl
	movzbl	%bl, %esi
	movl	%esi, 7716(%rsp)
	xorl	%ecx, %ecx
	cmpl	$1, %esi
	jne	.LBB0_54
# BB#53:                                # %cond.true.i
	movq	1200(%r15), %rcx
.LBB0_54:                               # %cond.end.i
	movq	%rcx, 7768(%rsp)
	movq	1360(%r15), %rcx
	movq	%rcx, 7776(%rsp)
	movb	$1, %cl
	movq	88(%rsp), %rsi          # 8-byte Reload
	testb	%sil, %sil
	movq	144(%rsp), %rbp         # 8-byte Reload
	jne	.LBB0_56
# BB#55:                                # %lor.lhs.false.226.i
	movl	$san_open, %ecx
	cmpq	%rcx, %rax
	sete	%sil
	cmpl	$0, 108(%rbp)
	sete	%bl
	ucomiss	.LCPI0_1(%rip), %xmm0
	setae	%cl
	orb	%bl, %cl
	orb	%sil, %cl
.LBB0_56:                               # %lor.end.i
	movl	$san_open, %esi
	movzbl	%cl, %r14d
	cmpq	%rsi, %rax
	setne	%al
	testb	%r14b, %r14b
	je	.LBB0_61
# BB#57:                                # %lor.end.i
	testb	%al, %al
	je	.LBB0_61
# BB#58:                                # %land.lhs.true.240.i
	leal	(%rdi,%rdi), %eax
	movl	%edi, %ecx
	notl	%ecx
	andl	%eax, %ecx
	andl	$170, %ecx
	movl	%edi, %eax
	movq	%rdi, %rbx
	andl	$1024, %eax             # imm = 0x400
	orl	%ecx, %eax
	je	.LBB0_61
# BB#59:                                # %if.then.247.i
	leaq	160(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_path_is_rectangular
	testl	%eax, %eax
	je	.LBB0_60
# BB#336:                               # %cleanup.i
	movslq	160(%rsp), %rax
	movq	7728(%rsp), %rcx
	movq	7736(%rsp), %rdi
	movslq	%ecx, %rdx
	negq	%rdx
	leaq	127(%rax,%rdx), %rsi
	shrq	$8, %rsi
	movslq	164(%rsp), %rax
	movslq	%edi, %rdx
	negq	%rdx
	leaq	127(%rax,%rdx), %rdx
	shrq	$8, %rdx
	movslq	168(%rsp), %rax
	sarq	$32, %rcx
	leaq	127(%rax,%rcx), %rcx
	shrq	$8, %rcx
	movslq	172(%rsp), %rax
	sarq	$32, %rdi
	leaq	127(%rdi,%rax), %r8
	shrq	$8, %r8
	movq	(%r13), %rax
	subl	%esi, %ecx
	subl	%edx, %r8d
	movl	%ebx, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r13, %rdi
	movq	%r15, %r9
	callq	*40(%rax)
	movl	%eax, %r15d
	jmp	.LBB0_335
.LBB0_60:                               # %cleanup.thread.i
	movq	7728(%rsp), %rax
	movq	7736(%rsp), %rcx
	movq	%rax, %rdx
	shrq	$32, %rdx
	orl	%eax, %edx
	movl	%ecx, %eax
	orl	%edx, %eax
	shrq	$32, %rcx
	xorl	%edx, %edx
	orl	%eax, %ecx
	cmovnel	%edx, %r14d
	movq	40(%rbp), %rdx
.LBB0_61:                               # %if.end.298.i
	leaq	7784(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_path_init_local_shared
	cmpl	$50, 104(%rsp)          # 4-byte Folded Reload
	jg	.LBB0_63
# BB#62:                                # %land.lhs.true.302.i
	movq	144(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 108(%rax)
	movq	%rax, %rcx
	je	.LBB0_69
.LBB0_63:                               # %if.else.307.i
	movl	$san_open, %eax
	cmpq	%rax, 1144(%r15)
	movq	144(%rsp), %rcx         # 8-byte Reload
	je	.LBB0_69
# BB#64:                                # %if.else.311.i
	cmpl	$50, 104(%rsp)          # 4-byte Folded Reload
	jg	.LBB0_66
# BB#65:                                # %land.lhs.true.313.i
	movl	7720(%rsp), %edx
	movl	$8, %esi
	movq	144(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	gx_path__check_curves
	testl	%eax, %eax
	movq	%rbx, %rcx
	jne	.LBB0_69
.LBB0_66:                               # %if.else.318.i
	movl	7720(%rsp), %edx
	leaq	7784(%rsp), %rbx
	xorl	%ecx, %ecx
	movl	$8, %r8d
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	gx_path_copy_reducing
	movq	%rbx, %rcx
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_335
# BB#67:                                # %if.end.324.i
	cmpl	$51, 104(%rsp)          # 4-byte Folded Reload
	jl	.LBB0_69
# BB#68:                                # %if.then.326.i
	leaq	7784(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gx_path_merge_contacting_contours
	movq	%rbx, %rcx
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_335
.LBB0_69:                               # %if.end.335.i
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	%r14d, 7724(%rsp)
	movl	%r14d, 120(%rsp)        # 4-byte Spill
	movq	56(%rcx), %rax
	movq	24(%rax), %r12
	movl	$0, 10008(%rsp)
	movl	$2147483647, 864(%rsp)  # imm = 0x7FFFFFFF
	jmp	.LBB0_70
	.align	16, 0x90
.LBB0_302:                              # %for.inc.i.132.i
                                        #   in Loop: Header=BB0_70 Depth=1
	incl	880(%rsp)
	movq	32(%r12), %rax
	movq	8(%rax), %r12
.LBB0_70:                               # %if.end.335.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_82 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_144 Depth 3
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #       Child Loop BB0_166 Depth 3
                                        #       Child Loop BB0_186 Depth 3
                                        #       Child Loop BB0_189 Depth 3
                                        #       Child Loop BB0_206 Depth 3
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_250 Depth 3
                                        #       Child Loop BB0_253 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	testq	%r12, %r12
	je	.LBB0_303
# BB#71:                                # %for.body.i.127.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	32(%r12), %rax
	leaq	9816(%rsp), %rcx
	movq	%rcx, 9984(%rsp)
	movzwl	16(%rax), %ecx
	cmpl	$2, %ecx
	je	.LBB0_75
# BB#72:                                # %if.then.i.129.i
                                        #   in Loop: Header=BB0_70 Depth=1
	leaq	48(%r12), %rcx
	movq	8(%rax), %rdx
	movq	%rdx, 56(%r12)
	movq	%rax, 48(%r12)
	movq	%rcx, 8(%rax)
	testq	%rdx, %rdx
	je	.LBB0_74
# BB#73:                                # %if.then.8.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	%rcx, (%rdx)
.LBB0_74:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movw	$2, 64(%r12)
	movq	20(%r12), %rax
	movq	%rax, 68(%r12)
	movq	%r12, 80(%r12)
	movq	%rcx, 32(%r12)
	incl	496(%rsp)
	movq	%rcx, %rax
.LBB0_75:                               # %if.end.14.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	(%rax), %rcx
	movq	872(%rsp), %rbx
	cmpq	%r12, %rcx
	je	.LBB0_80
# BB#76:                                # %if.end.14.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	(%rbx), %edx
	testl	%edx, %edx
	je	.LBB0_80
# BB#77:                                # %land.lhs.true.19.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	20(%rcx), %edx
	cmpl	20(%rax), %edx
	jne	.LBB0_80
# BB#78:                                # %land.lhs.true.25.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	24(%rcx), %edx
	cmpl	24(%rax), %edx
	jne	.LBB0_80
# BB#79:                                # %if.then.31.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	%rcx, %rax
	movq	(%rcx), %rcx
	.align	16, 0x90
.LBB0_80:                               # %if.end.33.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	%rcx, 9952(%rsp)
	movq	%rax, 9960(%rsp)
	movq	%r12, 9968(%rsp)
	movq	%rax, 9976(%rsp)
	xorl	%esi, %esi
	movl	$64, %edx
	leaq	10016(%rsp), %rdi
	callq	memset
	movl	$0, 10280(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 10256(%rsp)
	movl	$2, 10064(%rsp)
	movl	$0, 860(%rsp)
	leaq	464(%rsp), %rdi
	leaq	9952(%rsp), %rsi
	callq	init_contour_cursor
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
# BB#81:                                # %for.cond.4.preheader.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	xorl	%r14d, %r14d
.LBB0_82:                               # %for.cond.4.preheader.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
	movq	9984(%rsp), %r13
	jmp	.LBB0_83
	.align	16, 0x90
.LBB0_92:                               # %cond.end.23.i.i.i
                                        #   in Loop: Header=BB0_83 Depth=3
	movl	%eax, 860(%rsp)
.LBB0_83:                               # %for.cond.4.preheader.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	callq	gx_flattened_iterator__next
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
# BB#84:                                # %if.end.9.i.i.i
                                        #   in Loop: Header=BB0_83 Depth=3
	testl	%r15d, %r15d
	je	.LBB0_93
# BB#85:                                # %if.end.11.i.i.i
                                        #   in Loop: Header=BB0_83 Depth=3
	movl	$0, 9996(%rsp)
	movl	124(%r13), %eax
	movl	132(%r13), %ecx
	cmpl	%ecx, %eax
	movl	%ecx, %edx
	cmovgel	%eax, %edx
	cmpl	4(%rbx), %edx
	jl	.LBB0_90
# BB#86:                                # %if.end.i.i.i.i
                                        #   in Loop: Header=BB0_83 Depth=3
	cmpl	%ecx, %eax
	movl	%ecx, %edx
	cmovlel	%eax, %edx
	cmpl	8(%rbx), %edx
	jle	.LBB0_87
.LBB0_90:                               # %cond.false.thread384.i.i.i
                                        #   in Loop: Header=BB0_83 Depth=3
	movl	$2, 10000(%rsp)
.LBB0_91:                               # %cond.false.21.i.i.i
                                        #   in Loop: Header=BB0_83 Depth=3
	movl	860(%rsp), %eax
	jmp	.LBB0_92
	.align	16, 0x90
.LBB0_87:                               # %if.end.9.i.i.i.i
                                        #   in Loop: Header=BB0_83 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB0_88
# BB#89:                                # %cond.false.i.i.i
                                        #   in Loop: Header=BB0_83 Depth=3
	movl	$1, 10000(%rsp)
	movl	$1, %eax
	movl	%eax, 860(%rsp)
	jmp	.LBB0_83
.LBB0_88:                               # %compute_dir.exit.i.i.i
                                        #   in Loop: Header=BB0_83 Depth=3
	movl	$-1, %eax
	movl	$0, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, 10000(%rsp)
	jle	.LBB0_91
	jmp	.LBB0_92
.LBB0_93:                               # %for.end.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	movl	124(%r13), %eax
	movl	132(%r13), %ecx
	cmpl	%ecx, %eax
	movl	%ecx, %edx
	cmovgel	%eax, %edx
	cmpl	4(%rbx), %edx
	jl	.LBB0_109
# BB#94:                                # %if.end.i.127.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	cmpl	%ecx, %eax
	movl	%ecx, %edx
	cmovlel	%eax, %edx
	cmpl	8(%rbx), %edx
	jle	.LBB0_95
.LBB0_109:                              # %cond.false.35.thread398.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	movl	$2, 10000(%rsp)
	movl	$0, 9992(%rsp)
	movl	$2, %eax
	jmp	.LBB0_110
.LBB0_95:                               # %if.end.9.i.130.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	cmpl	%ecx, %eax
	jl	.LBB0_97
# BB#96:                                # %compute_dir.exit132.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	movl	$-1, %ecx
	movl	$0, %eax
	cmovgl	%ecx, %eax
	movl	%eax, 10000(%rsp)
	movl	$0, 9992(%rsp)
	jg	.LBB0_98
.LBB0_110:                              # %cond.end.43.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	xorl	%ebp, %ebp
	cmpl	$0, 860(%rsp)
	jne	.LBB0_99
# BB#111:                               # %if.end.49.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	testl	%r14d, %r14d
	jne	.LBB0_114
# BB#112:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	xorl	%r14d, %r14d
	cmpl	$2, %eax
	je	.LBB0_114
# BB#113:                               # %if.then.53.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	movaps	9952(%rsp), %xmm0
	movaps	9968(%rsp), %xmm1
	movaps	9984(%rsp), %xmm2
	movaps	10000(%rsp), %xmm3
	movaps	%xmm3, 10064(%rsp)
	movaps	%xmm2, 10048(%rsp)
	movaps	%xmm1, 10032(%rsp)
	movaps	%xmm0, 10016(%rsp)
	movl	$136, %edx
	leaq	10088(%rsp), %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	$1, %r14d
.LBB0_114:                              # %if.end.55.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	movq	9952(%rsp), %rax
	movl	$1, %ebp
	cmpq	9968(%rsp), %rax
	je	.LBB0_99
# BB#115:                               # %for.inc.i.i.i
                                        #   in Loop: Header=BB0_82 Depth=2
	movq	%rax, 9960(%rsp)
	movq	(%rax), %rax
	movq	%rax, 9952(%rsp)
	leaq	464(%rsp), %rdi
	leaq	9952(%rsp), %rsi
	callq	init_contour_cursor
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB0_82
	jmp	.LBB0_300
.LBB0_97:                               # %cond.false.35.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	$1, 10000(%rsp)
	movl	$0, 9992(%rsp)
	movl	$1, %ecx
.LBB0_98:                               # %cond.end.43.thread.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	%ecx, 860(%rsp)
	xorl	%ebp, %ebp
.LBB0_99:                               # %for.end.64.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	testl	%r14d, %r14d
	movq	%r13, %r14
	je	.LBB0_101
# BB#100:                               # %if.then.66.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movaps	10016(%rsp), %xmm0
	movaps	10032(%rsp), %xmm1
	movaps	10048(%rsp), %xmm2
	movaps	10064(%rsp), %xmm3
	movaps	%xmm3, 10000(%rsp)
	movaps	%xmm2, 9984(%rsp)
	movaps	%xmm1, 9968(%rsp)
	movaps	%xmm0, 9952(%rsp)
	movq	9984(%rsp), %r14
	movl	$136, %edx
	movq	%r14, %rdi
	leaq	10088(%rsp), %rsi
	callq	memcpy
	movq	%r14, %r13
.LBB0_101:                              # %if.end.68.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	9968(%rsp), %rdx
	movq	9976(%rsp), %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	cmpq	%rsi, %rdx
	je	.LBB0_299
# BB#102:                               # %for.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movl	10008(%rsp), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
.LBB0_103:                              # %for.body.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
                                        #       Child Loop BB0_144 Depth 3
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_163 Depth 3
                                        #       Child Loop BB0_166 Depth 3
                                        #       Child Loop BB0_186 Depth 3
                                        #       Child Loop BB0_189 Depth 3
                                        #       Child Loop BB0_206 Depth 3
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_250 Depth 3
                                        #       Child Loop BB0_253 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	testl	%ebp, %ebp
	movq	%rdx, 10224(%rsp)
	movq	8(%rdx), %rax
	movq	%rax, 10232(%rsp)
	jne	.LBB0_116
# BB#104:                               # %for.body.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB0_116
# BB#105:                               # %lor.lhs.false.76.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	20(%rdx), %ecx
	cmpl	20(%rax), %ecx
	jne	.LBB0_116
# BB#106:                               # %lor.lhs.false.82.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	24(%rdx), %ecx
	cmpl	24(%rax), %ecx
	jne	.LBB0_116
# BB#107:                               # %lor.lhs.false.89.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movzwl	16(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB0_108
.LBB0_116:                              # %if.then.93.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	%ebp, %r14d
	leaq	464(%rsp), %rdi
	leaq	10224(%rsp), %rsi
	callq	init_contour_cursor
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
# BB#117:                               # %do.body.preheader.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	10256(%rsp), %rbp
.LBB0_118:                              # %do.body.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rdi
	callq	gx_flattened_iterator__next
	testl	%eax, %eax
	js	.LBB0_119
# BB#120:                               # %if.end.104.i.i.i
                                        #   in Loop: Header=BB0_118 Depth=3
	movl	%eax, 10264(%rsp)
	movl	124(%rbp), %ecx
	movl	132(%rbp), %edi
	cmpl	%edi, %ecx
	movl	%edi, %edx
	cmovgel	%ecx, %edx
	cmpl	4(%rbx), %edx
	jl	.LBB0_123
# BB#121:                               # %if.end.i.141.i.i.i
                                        #   in Loop: Header=BB0_118 Depth=3
	cmpl	%edi, %ecx
	movl	%edi, %esi
	cmovlel	%ecx, %esi
	movl	8(%rbx), %edx
	cmpl	%edx, %esi
	jle	.LBB0_122
.LBB0_123:                              # %compute_dir.exit146.i.i.i
                                        #   in Loop: Header=BB0_118 Depth=3
	movl	$2, 10272(%rsp)
	testl	%eax, %eax
	jne	.LBB0_118
# BB#124:                               # %do.end.loopexit.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	8(%rbx), %edx
	movl	$2, %r8d
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	jmp	.LBB0_125
.LBB0_122:                              # %compute_dir.exit146.thread.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	%eax, 96(%rsp)          # 4-byte Spill
	cmpl	%edi, %ecx
	movl	$0, %r8d
	movl	$-1, %esi
	cmovgl	%esi, %r8d
	movl	$1, %esi
	cmovll	%esi, %r8d
	movl	%r8d, 10272(%rsp)
.LBB0_125:                              # %do.end.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	864(%rsp), %esi
	cmpl	%edx, %ecx
	jle	.LBB0_128
# BB#126:                               # %do.end.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	%ecx, %esi
	jle	.LBB0_128
# BB#127:                               # %if.then.126.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	%ecx, 864(%rsp)
	movl	%ecx, %esi
.LBB0_128:                              # %if.end.130.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	%edx, %edi
	jle	.LBB0_131
# BB#129:                               # %if.end.130.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	%edi, %esi
	jle	.LBB0_131
# BB#130:                               # %if.then.142.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	%edi, 864(%rsp)
.LBB0_131:                              # %if.end.146.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	10276(%rsp), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	testl	%r8d, %r8d
	jne	.LBB0_172
# BB#132:                               # %if.end.146.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	je	.LBB0_172
# BB#133:                               # %land.lhs.true.152.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$0, (%rbx)
	jne	.LBB0_153
# BB#134:                               # %land.lhs.true.155.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	(%rax,%rcx), %edx
	cmpl	$254, %edx
	movq	10232(%rsp), %rsi
	jg	.LBB0_136
# BB#135:                               # %lor.lhs.false.159.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	24(%rsi), %edx
	addl	%edx, %eax
	subl	%ecx, %edx
	movslq	%edx, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	cltq
	addq	$127, %rax
	shrq	$8, %rax
	cmpl	%eax, %ecx
	jge	.LBB0_153
.LBB0_136:                              # %if.then.178.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	%r14d, 36(%rsp)         # 4-byte Spill
	movq	10224(%rsp), %r14
	movq	480(%rsp), %rax
	cmpq	488(%rsp), %rax
	je	.LBB0_137
# BB#139:                               # %if.else.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	leaq	232(%rax), %rcx
	movq	%rcx, 480(%rsp)
	jmp	.LBB0_140
.LBB0_108:                              #   in Loop: Header=BB0_103 Depth=2
	movq	%r13, %r15
	jmp	.LBB0_298
.LBB0_137:                              # %if.then.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	464(%rsp), %rdi
	movl	$st_active_line, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_300
# BB#138:                               # %if.end.i.i.150.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	472(%rsp), %rcx
	movq	%rcx, 224(%rax)
	movq	%rax, 472(%rsp)
.LBB0_140:                              # %make_al.exit.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	880(%rsp), %ecx
	movl	%ecx, 200(%rax)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_300
# BB#141:                               # %if.end.i.153.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	$0, 196(%rax)
	movl	$0, 48(%rax)
	movq	20(%r14), %rdx
	movq	%rdx, (%rax)
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	20(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	%r14, 40(%rax)
	movq	512(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_142
# BB#143:                               # %if.else.i.158.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	shrq	$32, %rdx
	cmpl	4(%rcx), %edx
	movq	128(%rsp), %r8          # 8-byte Reload
	jge	.LBB0_144
.LBB0_147:                              # %while.cond.16.i.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rsi
	movq	208(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_150
# BB#148:                               # %land.rhs.19.i.i.i.i
                                        #   in Loop: Header=BB0_147 Depth=3
	cmpl	4(%rcx), %edx
	jl	.LBB0_147
# BB#149:                               # %if.then.30.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rcx, 208(%rax)
	movq	%rsi, 216(%rax)
	movq	%rax, 208(%rsi)
	movq	%rax, 216(%rcx)
	jmp	.LBB0_152
.LBB0_144:                              # %while.cond.i.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rsi
	movq	216(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_151
# BB#145:                               # %land.rhs.i.i.i.i
                                        #   in Loop: Header=BB0_144 Depth=3
	cmpl	4(%rcx), %edx
	jg	.LBB0_144
# BB#146:                               # %if.then.13.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rcx, 216(%rax)
	movq	%rsi, 208(%rax)
	movq	%rax, 216(%rsi)
	movq	%rax, 208(%rcx)
	jmp	.LBB0_152
.LBB0_142:                              # %if.end.186.thread558.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	xorps	%xmm0, %xmm0
	movups	%xmm0, 208(%rax)
	movq	%rax, 504(%rsp)
	movq	%rax, 512(%rsp)
	movl	36(%rsp), %r14d         # 4-byte Reload
	movq	128(%rsp), %r8          # 8-byte Reload
	jmp	.LBB0_153
.LBB0_150:                              # %if.else.32.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 208(%rax)
	movq	%rsi, 216(%rax)
	movq	%rax, 208(%rsi)
	movq	%rax, 504(%rsp)
	jmp	.LBB0_152
.LBB0_151:                              # %if.end.36.critedge.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 216(%rax)
	movq	%rsi, 208(%rax)
	movq	%rax, 216(%rsi)
.LBB0_152:                              # %if.end.186.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 512(%rsp)
	movl	36(%rsp), %r14d         # 4-byte Reload
.LBB0_153:                              # %land.lhs.true.193.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	testl	%r14d, %r14d
	je	.LBB0_172
# BB#154:                               # %land.lhs.true.193.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	(%rbx), %eax
	testl	%eax, %eax
	je	.LBB0_172
# BB#155:                               # %if.then.198.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movl	%r14d, 36(%rsp)         # 4-byte Spill
	movq	10224(%rsp), %r14
	movq	10232(%rsp), %rsi
	movq	480(%rsp), %rax
	cmpq	488(%rsp), %rax
	je	.LBB0_156
# BB#158:                               # %if.else.i.i.176.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	leaq	232(%rax), %rcx
	movq	%rcx, 480(%rsp)
	jmp	.LBB0_159
.LBB0_156:                              # %if.then.i.i.171.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	464(%rsp), %rdi
	movq	%rsi, %r15
	movl	$st_active_line, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movq	%r15, %rsi
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_300
# BB#157:                               # %if.end.i.i.174.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	472(%rsp), %rcx
	movq	%rcx, 224(%rax)
	movq	%rax, 472(%rsp)
.LBB0_159:                              # %make_al.exit.i.181.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	880(%rsp), %ecx
	movl	%ecx, 200(%rax)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_300
# BB#160:                               # %if.end.i.184.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	$0, 196(%rax)
	movl	$0, 48(%rax)
	movq	20(%r14), %rdx
	movq	%rdx, (%rax)
	movq	20(%rsi), %rcx
	movq	%rcx, 8(%rax)
	movq	%r14, 40(%rax)
	movq	512(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_161
# BB#162:                               # %if.else.i.198.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	shrq	$32, %rdx
	cmpl	4(%rcx), %edx
	movl	36(%rsp), %r14d         # 4-byte Reload
	movq	128(%rsp), %r8          # 8-byte Reload
	jge	.LBB0_163
.LBB0_166:                              # %while.cond.16.i.213.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rsi
	movq	208(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_169
# BB#167:                               # %land.rhs.19.i.216.i.i.i
                                        #   in Loop: Header=BB0_166 Depth=3
	cmpl	4(%rcx), %edx
	jl	.LBB0_166
# BB#168:                               # %if.then.30.i.220.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rcx, 208(%rax)
	movq	%rsi, 216(%rax)
	movq	%rax, 208(%rsi)
	movq	%rax, 216(%rcx)
	jmp	.LBB0_171
.LBB0_163:                              # %while.cond.i.202.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rsi
	movq	216(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_170
# BB#164:                               # %land.rhs.i.205.i.i.i
                                        #   in Loop: Header=BB0_163 Depth=3
	cmpl	4(%rcx), %edx
	jg	.LBB0_163
# BB#165:                               # %if.then.13.i.209.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rcx, 216(%rax)
	movq	%rsi, 208(%rax)
	movq	%rax, 216(%rsi)
	movq	%rax, 208(%rcx)
	jmp	.LBB0_171
.LBB0_161:                              # %if.then.i.195.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	xorps	%xmm0, %xmm0
	movups	%xmm0, 208(%rax)
	movq	%rax, 504(%rsp)
	movl	36(%rsp), %r14d         # 4-byte Reload
	movq	128(%rsp), %r8          # 8-byte Reload
	jmp	.LBB0_171
.LBB0_169:                              # %if.else.32.i.224.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 208(%rax)
	movq	%rsi, 216(%rax)
	movq	%rax, 208(%rsi)
	movq	%rax, 504(%rsp)
	jmp	.LBB0_171
.LBB0_170:                              # %if.end.36.critedge.i.227.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 216(%rax)
	movq	%rsi, 208(%rax)
	movq	%rax, 216(%rsi)
.LBB0_171:                              # %add_y_line_aux.exit188.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 512(%rsp)
.LBB0_172:                              # %if.end.206.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	%r14d, 36(%rsp)         # 4-byte Spill
	cmpl	$1, %r8d
	jne	.LBB0_215
# BB#173:                               # %if.end.206.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	4(%rbx), %eax
	movq	104(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, 124(%rcx)
	jl	.LBB0_215
# BB#174:                               # %if.end.206.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$-1, 860(%rsp)
	jne	.LBB0_215
# BB#175:                               # %if.then.219.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$0, 10004(%rsp)
	movq	9952(%rsp), %rbp
	movq	9960(%rsp), %rdx
	je	.LBB0_194
# BB#176:                               # %if.then.i.230.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	480(%rsp), %r14
	cmpq	488(%rsp), %r14
	je	.LBB0_177
# BB#179:                               # %if.else.i.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	leaq	232(%r14), %rax
	movq	%rax, 480(%rsp)
	jmp	.LBB0_180
.LBB0_194:                              # %if.end.i.239.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$0, 9996(%rsp)
	sete	%al
	movzbl	%al, %r9d
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$-1, %ecx
	leaq	464(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%r13, %r8
	callq	add_y_curve_part
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB0_195
	jmp	.LBB0_300
.LBB0_177:                              # %if.then.i.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	464(%rsp), %rdi
	movl	$st_active_line, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_300
# BB#178:                               # %if.end.i.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	472(%rsp), %rax
	movq	%rax, 224(%r14)
	movq	%r14, 472(%rsp)
.LBB0_180:                              # %make_al.exit.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	880(%rsp), %eax
	movl	%eax, 200(%r14)
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_300
# BB#181:                               # %if.end.i.i.233.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	$0, 196(%r14)
	movl	$-1, 48(%r14)
	movq	%r14, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	leaq	464(%rsp), %rcx
	callq	init_al
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
# BB#182:                               # %sw.epilog.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	512(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_183
# BB#185:                               # %if.else.i.i.235.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	4(%r14), %ecx
	cmpl	4(%rax), %ecx
	jge	.LBB0_186
.LBB0_189:                              # %while.cond.16.i.i.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
	movq	208(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_192
# BB#190:                               # %land.rhs.19.i.i.i.i.i
                                        #   in Loop: Header=BB0_189 Depth=3
	cmpl	4(%rax), %ecx
	jl	.LBB0_189
# BB#191:                               # %if.then.30.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 208(%r14)
	movq	%rdx, 216(%r14)
	movq	%r14, 208(%rdx)
	movq	%r14, 216(%rax)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_195
.LBB0_186:                              # %while.cond.i.i.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
	movq	216(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_193
# BB#187:                               # %land.rhs.i.i.i.i.i
                                        #   in Loop: Header=BB0_186 Depth=3
	cmpl	4(%rax), %ecx
	jg	.LBB0_186
# BB#188:                               # %if.then.13.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 216(%r14)
	movq	%rdx, 208(%r14)
	movq	%r14, 216(%rdx)
	movq	%r14, 208(%rax)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_195
.LBB0_183:                              # %if.then.i.i.234.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	xorps	%xmm0, %xmm0
	movups	%xmm0, 208(%r14)
	jmp	.LBB0_184
.LBB0_192:                              # %if.else.32.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 208(%r14)
	movq	%rdx, 216(%r14)
	movq	%r14, 208(%rdx)
.LBB0_184:                              # %if.end.6.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%r14, 504(%rsp)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_195
.LBB0_193:                              # %if.end.36.critedge.i.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 216(%r14)
	movq	%rdx, 208(%r14)
	movq	%r14, 216(%rdx)
	movq	%r14, 512(%rsp)
.LBB0_195:                              # %if.end.6.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movq	10224(%rsp), %rsi
	movq	10232(%rsp), %rbp
	je	.LBB0_214
# BB#196:                               # %if.then.9.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	480(%rsp), %r14
	cmpq	488(%rsp), %r14
	je	.LBB0_197
# BB#199:                               # %if.else.i.i.36.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	leaq	232(%r14), %rax
	movq	%rax, 480(%rsp)
	jmp	.LBB0_200
.LBB0_214:                              # %start_al_pair.exit.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	10280(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$1, %ecx
	leaq	464(%rsp), %rdi
	movq	%rbp, %rdx
	movq	104(%rsp), %r8          # 8-byte Reload
	movl	96(%rsp), %r9d          # 4-byte Reload
	callq	add_y_curve_part
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB0_215
	jmp	.LBB0_300
.LBB0_197:                              # %if.then.i.i.31.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	464(%rsp), %rdi
	movl	$st_active_line, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_300
# BB#198:                               # %if.end.i.i.34.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	472(%rsp), %rax
	movq	%rax, 224(%r14)
	movq	%r14, 472(%rsp)
.LBB0_200:                              # %make_al.exit.i.41.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	880(%rsp), %eax
	movl	%eax, 200(%r14)
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_300
# BB#201:                               # %if.end.i.44.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	$0, 196(%r14)
	movl	$1, 48(%r14)
	movq	%r14, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	leaq	464(%rsp), %rcx
	callq	init_al
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
# BB#202:                               # %sw.epilog.i.45.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	512(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_203
# BB#205:                               # %if.else.i.57.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	4(%r14), %ecx
	cmpl	4(%rax), %ecx
	jge	.LBB0_206
.LBB0_209:                              # %while.cond.16.i.72.i.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
	movq	208(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_212
# BB#210:                               # %land.rhs.19.i.75.i.i.i.i
                                        #   in Loop: Header=BB0_209 Depth=3
	cmpl	4(%rax), %ecx
	jl	.LBB0_209
# BB#211:                               # %if.then.30.i.79.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 208(%r14)
	movq	%rdx, 216(%r14)
	movq	%r14, 208(%rdx)
	movq	%r14, 216(%rax)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_215
.LBB0_206:                              # %while.cond.i.61.i.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
	movq	216(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_213
# BB#207:                               # %land.rhs.i.64.i.i.i.i
                                        #   in Loop: Header=BB0_206 Depth=3
	cmpl	4(%rax), %ecx
	jg	.LBB0_206
# BB#208:                               # %if.then.13.i.68.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 216(%r14)
	movq	%rdx, 208(%r14)
	movq	%r14, 216(%rdx)
	movq	%r14, 208(%rax)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_215
.LBB0_203:                              # %if.then.i.54.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	xorps	%xmm0, %xmm0
	movups	%xmm0, 208(%r14)
	jmp	.LBB0_204
.LBB0_212:                              # %if.else.32.i.83.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 208(%r14)
	movq	%rdx, 216(%r14)
	movq	%r14, 208(%rdx)
.LBB0_204:                              # %if.end.225.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%r14, 504(%rsp)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_215
.LBB0_213:                              # %if.end.36.critedge.i.86.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 216(%r14)
	movq	%rdx, 208(%r14)
	movq	%r14, 216(%rdx)
	movq	%r14, 512(%rsp)
.LBB0_215:                              # %if.end.225.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	4(%rbx), %eax
	movq	104(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, 124(%rcx)
	jge	.LBB0_237
# BB#216:                               # %land.lhs.true.231.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, 132(%rcx)
	jl	.LBB0_237
# BB#217:                               # %if.then.237.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movq	10224(%rsp), %rsi
	movq	10232(%rsp), %rbp
	je	.LBB0_236
# BB#218:                               # %if.then.240.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	480(%rsp), %r14
	cmpq	488(%rsp), %r14
	je	.LBB0_219
# BB#221:                               # %if.else.i.i.259.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	leaq	232(%r14), %rax
	movq	%rax, 480(%rsp)
	jmp	.LBB0_222
.LBB0_236:                              # %if.end.250.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	10280(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$1, %ecx
	leaq	464(%rsp), %rdi
	movq	%rbp, %rdx
	movq	104(%rsp), %r8          # 8-byte Reload
	movl	96(%rsp), %r9d          # 4-byte Reload
	callq	add_y_curve_part
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB0_237
	jmp	.LBB0_300
.LBB0_219:                              # %if.then.i.i.254.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	464(%rsp), %rdi
	movl	$st_active_line, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_300
# BB#220:                               # %if.end.i.i.257.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	472(%rsp), %rax
	movq	%rax, 224(%r14)
	movq	%r14, 472(%rsp)
.LBB0_222:                              # %make_al.exit.i.264.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	880(%rsp), %eax
	movl	%eax, 200(%r14)
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_300
# BB#223:                               # %if.end.i.267.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	$0, 196(%r14)
	movl	$1, 48(%r14)
	movq	%r14, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	leaq	464(%rsp), %rcx
	callq	init_al
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
# BB#224:                               # %sw.epilog.i.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	512(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_225
# BB#227:                               # %if.else.i.280.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	4(%r14), %ecx
	cmpl	4(%rax), %ecx
	jge	.LBB0_228
.LBB0_231:                              # %while.cond.16.i.295.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
	movq	208(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_234
# BB#232:                               # %land.rhs.19.i.298.i.i.i
                                        #   in Loop: Header=BB0_231 Depth=3
	cmpl	4(%rax), %ecx
	jl	.LBB0_231
# BB#233:                               # %if.then.30.i.302.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 208(%r14)
	movq	%rdx, 216(%r14)
	movq	%r14, 208(%rdx)
	movq	%r14, 216(%rax)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_237
.LBB0_228:                              # %while.cond.i.284.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
	movq	216(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_235
# BB#229:                               # %land.rhs.i.287.i.i.i
                                        #   in Loop: Header=BB0_228 Depth=3
	cmpl	4(%rax), %ecx
	jg	.LBB0_228
# BB#230:                               # %if.then.13.i.291.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 216(%r14)
	movq	%rdx, 208(%r14)
	movq	%r14, 216(%rdx)
	movq	%r14, 208(%rax)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_237
.LBB0_225:                              # %if.then.i.277.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	xorps	%xmm0, %xmm0
	movups	%xmm0, 208(%r14)
	jmp	.LBB0_226
.LBB0_234:                              # %if.else.32.i.306.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 208(%r14)
	movq	%rdx, 216(%r14)
	movq	%r14, 208(%rdx)
.LBB0_226:                              # %if.end.255.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%r14, 504(%rsp)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_237
.LBB0_235:                              # %if.end.36.critedge.i.309.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 216(%r14)
	movq	%rdx, 208(%r14)
	movq	%r14, 216(%rdx)
	movq	%r14, 512(%rsp)
.LBB0_237:                              # %if.end.255.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	4(%rbx), %eax
	movq	104(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, 124(%rcx)
	jl	.LBB0_259
# BB#238:                               # %land.lhs.true.261.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, 132(%rcx)
	jge	.LBB0_259
# BB#239:                               # %if.then.267.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movq	10224(%rsp), %rsi
	movq	10232(%rsp), %rbp
	je	.LBB0_258
# BB#240:                               # %if.then.270.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	480(%rsp), %r14
	cmpq	488(%rsp), %r14
	je	.LBB0_241
# BB#243:                               # %if.else.i.i.326.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	leaq	232(%r14), %rax
	movq	%rax, 480(%rsp)
	jmp	.LBB0_244
.LBB0_258:                              # %if.end.282.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$0, 10268(%rsp)
	sete	%al
	movzbl	%al, %r9d
	movl	10280(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$-1, %ecx
	leaq	464(%rsp), %rdi
	movq	%rbp, %rdx
	movq	104(%rsp), %r8          # 8-byte Reload
	callq	add_y_curve_part
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB0_259
	jmp	.LBB0_300
.LBB0_241:                              # %if.then.i.i.321.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	464(%rsp), %rdi
	movl	$st_active_line, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_300
# BB#242:                               # %if.end.i.i.324.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	472(%rsp), %rax
	movq	%rax, 224(%r14)
	movq	%r14, 472(%rsp)
.LBB0_244:                              # %make_al.exit.i.331.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	880(%rsp), %eax
	movl	%eax, 200(%r14)
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_300
# BB#245:                               # %if.end.i.334.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	$0, 196(%r14)
	movl	$-1, 48(%r14)
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	464(%rsp), %rcx
	callq	init_al
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
# BB#246:                               # %sw.epilog.i.336.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	512(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_247
# BB#249:                               # %if.else.i.348.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	4(%r14), %ecx
	cmpl	4(%rax), %ecx
	jge	.LBB0_250
.LBB0_253:                              # %while.cond.16.i.363.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
	movq	208(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_256
# BB#254:                               # %land.rhs.19.i.366.i.i.i
                                        #   in Loop: Header=BB0_253 Depth=3
	cmpl	4(%rax), %ecx
	jl	.LBB0_253
# BB#255:                               # %if.then.30.i.370.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 208(%r14)
	movq	%rdx, 216(%r14)
	movq	%r14, 208(%rdx)
	movq	%r14, 216(%rax)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_259
.LBB0_250:                              # %while.cond.i.352.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
	movq	216(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_257
# BB#251:                               # %land.rhs.i.355.i.i.i
                                        #   in Loop: Header=BB0_250 Depth=3
	cmpl	4(%rax), %ecx
	jg	.LBB0_250
# BB#252:                               # %if.then.13.i.359.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%rax, 216(%r14)
	movq	%rdx, 208(%r14)
	movq	%r14, 216(%rdx)
	movq	%r14, 208(%rax)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_259
.LBB0_247:                              # %if.then.i.345.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	xorps	%xmm0, %xmm0
	movups	%xmm0, 208(%r14)
	jmp	.LBB0_248
.LBB0_256:                              # %if.else.32.i.374.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 208(%r14)
	movq	%rdx, 216(%r14)
	movq	%r14, 208(%rdx)
.LBB0_248:                              # %if.end.287.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	%r14, 504(%rsp)
	movq	%r14, 512(%rsp)
	jmp	.LBB0_259
.LBB0_257:                              # %if.end.36.critedge.i.377.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	$0, 216(%r14)
	movq	%rdx, 208(%r14)
	movq	%r14, 216(%rdx)
	movq	%r14, 512(%rsp)
.LBB0_259:                              # %if.end.287.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	128(%rsp), %rcx         # 8-byte Reload
	cmpl	$-1, %ecx
	movl	$1, %eax
	cmovel	%ecx, %eax
	jne	.LBB0_261
# BB#260:                               #   in Loop: Header=BB0_103 Depth=2
	movq	104(%rsp), %r15         # 8-byte Reload
	movl	96(%rsp), %edx          # 4-byte Reload
	jmp	.LBB0_263
.LBB0_261:                              # %if.end.287.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$1, %ecx
	movq	104(%rsp), %r15         # 8-byte Reload
	movl	96(%rsp), %edx          # 4-byte Reload
	je	.LBB0_263
# BB#262:                               # %cond.false.297.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	860(%rsp), %eax
.LBB0_263:                              # %cond.end.301.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movl	%eax, 860(%rsp)
	testl	%edx, %edx
	je	.LBB0_295
# BB#264:                               # %cond.end.301.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	jne	.LBB0_295
# BB#265:                               # %if.then.309.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	872(%rsp), %rbp
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	10224(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	10232(%rsp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	10280(%rsp), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
.LBB0_266:                              # %do.body.i.i.i.i
                                        #   Parent Loop BB0_70 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %rdi
	callq	gx_flattened_iterator__next
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_267
# BB#268:                               # %if.end.i.116.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	%r14d, 10264(%rsp)
	movl	124(%r15), %edx
	movl	132(%r15), %eax
	cmpl	%eax, %edx
	movl	%eax, %esi
	cmovgel	%edx, %esi
	movl	4(%rbp), %ecx
	cmpl	%ecx, %esi
	jge	.LBB0_270
# BB#269:                               # %if.end.compute_dir.exit_crit_edge.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	8(%rbp), %esi
	movl	$2, %ebp
	jmp	.LBB0_272
.LBB0_270:                              # %if.end.i.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	%eax, %edx
	movl	%eax, %edi
	cmovlel	%edx, %edi
	movl	8(%rbp), %esi
	movl	$2, %ebp
	cmpl	%esi, %edi
	jg	.LBB0_272
# BB#271:                               # %if.end.9.i.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	%eax, %edx
	movl	$0, %ebp
	movl	$-1, %edi
	cmovgl	%edi, %ebp
	movl	$1, %edi
	cmovll	%edi, %ebp
.LBB0_272:                              # %compute_dir.exit.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	864(%rsp), %edi
	cmpl	%esi, %edx
	jle	.LBB0_275
# BB#273:                               # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	4(%r15), %edi
	jle	.LBB0_275
# BB#274:                               # %if.then.10.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	%edx, 864(%rsp)
	movl	%edx, %edi
.LBB0_275:                              # %if.end.14.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	%esi, %eax
	jle	.LBB0_278
# BB#276:                               # %if.end.14.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	%eax, %edi
	jle	.LBB0_278
# BB#277:                               # %if.then.24.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	%eax, 864(%rsp)
.LBB0_278:                              # %if.end.28.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	$1, %ebp
	jne	.LBB0_284
# BB#279:                               # %land.lhs.true.30.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	%ecx, %edx
	jl	.LBB0_284
# BB#280:                               # %land.lhs.true.30.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	$-1, 860(%rsp)
	jne	.LBB0_284
# BB#281:                               # %if.then.36.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	$1, (%rsp)
	movl	$-1, %ecx
	movl	$1, %r9d
	leaq	464(%rsp), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	%r15, %r8
	movq	%r15, %rbp
	callq	add_y_curve_part
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
# BB#282:                               # %if.end.41.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$1, %ecx
	leaq	464(%rsp), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %r8
	movl	%r14d, %r9d
	callq	add_y_curve_part
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
# BB#283:                               # %if.end.91.thread.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 10268(%rsp)
	movl	$1, %ecx
	movl	$1, %eax
	movq	%rbp, %r15
	jmp	.LBB0_294
.LBB0_284:                              # %if.else.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movq	%r15, %rbp
	cmpl	%ecx, %edx
	jge	.LBB0_287
# BB#285:                               # %land.lhs.true.55.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	%ecx, %eax
	jl	.LBB0_290
# BB#286:                               # %if.then.60.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$1, %ecx
	leaq	464(%rsp), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %r8
	movl	%r14d, %r9d
	jmp	.LBB0_289
.LBB0_287:                              # %land.lhs.true.75.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB0_290
# BB#288:                               # %if.then.80.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$-1, %ecx
	movl	$1, %r9d
	leaq	464(%rsp), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %r8
.LBB0_289:                              # %if.then.80.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	callq	add_y_curve_part
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_300
.LBB0_290:                              # %if.end.91.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	$0, 10268(%rsp)
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 10272(%rsp)
	cmpl	$-1, %ecx
	movl	$1, %eax
	cmovel	%ecx, %eax
	jne	.LBB0_292
# BB#291:                               #   in Loop: Header=BB0_266 Depth=3
	movq	%rbp, %r15
	jmp	.LBB0_294
.LBB0_292:                              # %if.end.91.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	cmpl	$1, %ecx
	movq	%rbp, %r15
	je	.LBB0_294
# BB#293:                               # %cond.false.96.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movl	860(%rsp), %eax
.LBB0_294:                              # %cond.end.98.i.i.i.i
                                        #   in Loop: Header=BB0_266 Depth=3
	movq	96(%rsp), %rbp          # 8-byte Reload
	movl	%eax, 860(%rsp)
	xorl	%edx, %edx
	testl	%r14d, %r14d
	jne	.LBB0_266
.LBB0_295:                              # %if.end.315.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	leal	1(%rcx), %eax
	cmpl	$2, %eax
	jae	.LBB0_296
# BB#337:                               # %if.then.323.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movaps	10224(%rsp), %xmm0
	movaps	%xmm0, 9952(%rsp)
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, 10004(%rsp)
	movl	%edx, 9992(%rsp)
	movl	10268(%rsp), %eax
	movl	%eax, 9996(%rsp)
	movq	%r15, 9984(%rsp)
	movl	%ecx, 10000(%rsp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 10256(%rsp)
	movq	%r15, %r14
	movl	36(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB0_297
.LBB0_296:                              #   in Loop: Header=BB0_103 Depth=2
	movq	%r13, %r15
	movl	36(%rsp), %ebp          # 4-byte Reload
	movq	48(%rsp), %r14          # 8-byte Reload
.LBB0_297:                              # %for.cond.70.backedge.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
.LBB0_298:                              # %for.cond.70.backedge.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=2
	movq	8(%rdx), %rdx
	cmpq	%rsi, %rdx
	movq	%r15, %r13
	jne	.LBB0_103
.LBB0_299:                              # %for.end.344.i.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	$0, 9984(%rsp)
	xorl	%r15d, %r15d
	jmp	.LBB0_300
.LBB0_119:                              #   in Loop: Header=BB0_70 Depth=1
	movl	%eax, %r15d
	jmp	.LBB0_300
.LBB0_267:                              #   in Loop: Header=BB0_70 Depth=1
	movl	%r14d, %r15d
	.align	16, 0x90
.LBB0_300:                              # %scan_contour.exit.i.i
                                        #   in Loop: Header=BB0_70 Depth=1
	testl	%r15d, %r15d
	jns	.LBB0_302
# BB#301:                               # %add_y_list.exit.thread138.i
	movq	144(%rsp), %r14         # 8-byte Reload
	jmp	.LBB0_322
.LBB0_303:                              # %if.end.341.i
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	movl	$spot_into_scan_lines, %eax
	movl	$spot_into_trapezoids, %r13d
	cmoveq	%rax, %r13
	movl	856(%rsp), %ebp
	cmpl	$101, %ebp
	movl	7688(%rsp), %eax
	jl	.LBB0_304
# BB#305:                               # %if.end.341.i
	testl	%eax, %eax
	movq	112(%rsp), %r12         # 8-byte Reload
	je	.LBB0_308
# BB#306:                               # %if.then.352.i
	movq	24(%r12), %rdi
	addl	%ebp, %ebp
	movl	$st_section, %edx
	movl	$.L.str.1, %ecx
	movl	%ebp, %esi
	callq	*104(%rdi)
	movq	%rax, 792(%rsp)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_335
# BB#307:                               # %if.end.364.i
	movslq	856(%rsp), %rbp
	leaq	(%rax,%rbp,8), %rax
	movq	%rax, 824(%rsp)
	movl	7688(%rsp), %eax
	jmp	.LBB0_308
.LBB0_304:
	movq	112(%rsp), %r12         # 8-byte Reload
.LBB0_308:                              # %if.end.369.i
	testl	%eax, %eax
	movq	136(%rsp), %rbx         # 8-byte Reload
	je	.LBB0_310
# BB#309:                               # %if.then.372.i
	movq	792(%rsp), %rdi
	xorl	%esi, %esi
	movl	%ebp, %edx
	callq	init_section
	movq	824(%rsp), %rdi
	movl	856(%rsp), %edx
	xorl	%esi, %esi
	callq	init_section
.LBB0_310:                              # %if.end.379.i
	movq	8(%rbx), %rdi
	callq	gs_currentcpsimode
	cmpl	$-1, 72(%rsp)           # 4-byte Folded Reload
	movq	144(%rsp), %r14         # 8-byte Reload
	jne	.LBB0_316
# BB#311:                               # %if.end.379.i
	testl	%eax, %eax
	je	.LBB0_316
# BB#312:                               # %if.then.385.i
	movl	880(%rsp), %esi
	cmpl	$21, %esi
	jb	.LBB0_314
# BB#313:                               # %if.then.390.i
	movq	24(%r12), %rdi
	movl	$4, %edx
	movl	$.L.str.1, %ecx
	callq	*88(%rdi)
	movq	%rax, %rdi
	movl	880(%rsp), %esi
	jmp	.LBB0_315
.LBB0_314:                              # %if.else.397.i
	leaq	7608(%rsp), %rdi
.LBB0_315:                              # %if.end.399.i
	movq	%rdi, 840(%rsp)
	movslq	%esi, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_316:                              # %if.end.405.i
	movl	76(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	negl	%eax
	shll	$8, %eax
	testl	%ecx, %ecx
	movl	$-2147483648, %esi      # imm = 0xFFFFFFFF80000000
	cmovnel	%eax, %esi
	leaq	464(%rsp), %rdi
	callq	*%r13
	movl	%eax, %r15d
	movq	792(%rsp), %rax
	leaq	6008(%rsp), %rcx
	cmpq	%rcx, %rax
	je	.LBB0_319
# BB#317:                               # %if.end.405.i
	leaq	6808(%rsp), %rcx
	cmpq	%rcx, %rax
	je	.LBB0_319
# BB#318:                               # %if.then.426.i
	movq	24(%r12), %rdi
	movq	824(%rsp), %rsi
	cmpq	%rsi, %rax
	cmovbq	%rax, %rsi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
.LBB0_319:                              # %if.end.444.i
	movq	840(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_322
# BB#320:                               # %if.end.444.i
	leaq	7608(%rsp), %rax
	cmpq	%rax, %rsi
	je	.LBB0_322
# BB#321:                               # %if.then.454.i
	movq	24(%r12), %rdi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
.LBB0_322:                              # %nope.i
	movl	496(%rsp), %eax
	testl	%eax, %eax
	je	.LBB0_330
# BB#323:                               # %for.body.lr.ph.i.i
	movq	152(%rsp), %rcx         # 8-byte Reload
	movq	56(%rcx), %rcx
	addq	$24, %rcx
	.align	16, 0x90
.LBB0_324:                              # %for.body.outer.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_326 Depth 2
	movq	(%rcx), %rdx
	jmp	.LBB0_326
	.align	16, 0x90
.LBB0_325:                              # %for.inc.thread.i.i
                                        #   in Loop: Header=BB0_326 Depth=2
	movq	8(%rcx), %rdx
.LBB0_326:                              # %for.inc.thread.i.i
                                        #   Parent Loop BB0_324 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%rdx), %rcx
	leaq	48(%rdx), %rsi
	cmpq	%rsi, %rcx
	jne	.LBB0_325
# BB#327:                               #   in Loop: Header=BB0_324 Depth=1
	leaq	32(%rdx), %rsi
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	testq	%rdx, %rdx
	je	.LBB0_329
# BB#328:                               # %if.then.7.i.i
                                        #   in Loop: Header=BB0_324 Depth=1
	movq	%rcx, (%rdx)
.LBB0_329:                              # %for.inc.i.i
                                        #   in Loop: Header=BB0_324 Depth=1
	movq	%rcx, (%rsi)
	addq	$8, %rcx
	decl	%eax
	jne	.LBB0_324
.LBB0_330:                              # %if.end.468.i
	movq	472(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_333
# BB#331:                               # %while.body.lr.ph.i.i
	movq	464(%rsp), %rbx
	.align	16, 0x90
.LBB0_332:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	224(%rsi), %rbp
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	%rbp, 472(%rsp)
	testq	%rbp, %rbp
	movq	%rbp, %rsi
	jne	.LBB0_332
.LBB0_333:                              # %free_line_list.exit.i
	leaq	464(%rsp), %rdi
	callq	free_all_margins
	movq	152(%rsp), %rdi         # 8-byte Reload
	cmpq	%r14, %rdi
	je	.LBB0_335
# BB#334:                               # %if.then.471.i
	movl	$.L.str.1, %esi
	callq	gx_path_free
	jmp	.LBB0_335
.Lfunc_end0:
	.size	gx_default_fill_path, .Lfunc_end0-gx_default_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	pass_shading_area_through_clip_path_device,@function
pass_shading_area_through_clip_path_device: # @pass_shading_area_through_clip_path_device
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%r8, %r8
	je	.LBB1_1
# BB#2:                                 # %if.end
	jmp	gx_default_fill_path    # TAILCALL
.LBB1_1:                                # %if.then
	movq	1728(%rdi), %rdi
	movq	1336(%rdi), %rax
	xorl	%r8d, %r8d
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	pass_shading_area_through_clip_path_device, .Lfunc_end1-pass_shading_area_through_clip_path_device
	.cfi_endproc

	.align	16, 0x90
	.type	spot_into_trapezoids,@function
spot_into_trapezoids:                   # @spot_into_trapezoids
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp19:
	.cfi_def_cfa_offset 336
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
	movl	%esi, 204(%rsp)         # 4-byte Spill
	movq	%rdi, %rbx
	movl	$4294966912, %eax       # imm = 0xFFFFFE80
	movq	408(%rbx), %rdx
	cmpl	$0, 72(%rdx)
	je	.LBB2_58
# BB#1:                                 # %if.then
	movq	40(%rbx), %r14
	xorl	%edi, %edi
	testq	%r14, %r14
	je	.LBB2_960
# BB#2:                                 # %if.end.i
	movl	8(%rdx), %ecx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movq	56(%rdx), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movq	72(%rdx), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	80(%rdx), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	16(%rdx), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	4(%r14), %r15d
	leaq	272(%rbx), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r15), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	%rbx, %r12
	movq	%r12, 160(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
                                        # implicit-def: EDI
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_56:                               # %if.end.285.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	288(%r12), %rax
	movq	%rax, 296(%r12)
	movq	$0, 288(%r12)
	movl	192(%rsp), %edi         # 4-byte Reload
.LBB2_3:                                # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #       Child Loop BB2_5 Depth 3
                                        #         Child Loop BB2_18 Depth 4
                                        #     Child Loop BB2_31 Depth 2
                                        #     Child Loop BB2_46 Depth 2
	movslq	%r15d, %rax
	addq	$127, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movl	%r15d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	leal	1(%rcx), %r13d
	andq	$-256, %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
.LBB2_4:                                # %while.cond.14.outer.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_5 Depth 3
                                        #         Child Loop BB2_18 Depth 4
	movl	%edi, 208(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	testq	%r14, %r14
	movq	%r14, %r9
	movl	$0, %r14d
	xorps	%xmm3, %xmm3
	je	.LBB2_27
	.align	16, 0x90
.LBB2_5:                                # %land.rhs.i
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_18 Depth 4
	movb	$1, %cl
	cmpl	%r15d, 4(%r9)
	jne	.LBB2_6
# BB#7:                                 # %while.body.21.i
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	216(%r9), %r14
	movq	%r14, 40(%r12)
	cmpq	%r9, 48(%r12)
	jne	.LBB2_9
# BB#8:                                 # %if.then.26.i
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	%r14, 48(%r12)
.LBB2_9:                                # %if.end.28.i
                                        #   in Loop: Header=BB2_5 Depth=3
	testq	%r14, %r14
	je	.LBB2_11
# BB#10:                                # %if.then.31.i
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	$0, 208(%r14)
.LBB2_11:                               # %if.end.32.i
                                        #   in Loop: Header=BB2_5 Depth=3
	movl	(%r9), %r10d
	cmpl	$0, 48(%r9)
	je	.LBB2_12
# BB#16:                                # %if.else.85.i
                                        #   in Loop: Header=BB2_5 Depth=3
	movl	%r10d, 32(%r9)
	movl	%r10d, 36(%r9)
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rax, %rdi
	movq	224(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_23
# BB#17:                                # %land.rhs.i.lr.ph.i
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_18:                               # %land.rhs.i.i
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_4 Depth=2
                                        #       Parent Loop BB2_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbx, %r8
	movq	%rsi, %rbx
	cmpl	%r10d, 32(%rbx)
	jl	.LBB2_22
# BB#19:                                # %if.else.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	jg	.LBB2_25
# BB#20:                                # %if.end.6.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	movl	(%rbx), %r11d
	movl	8(%rbx), %eax
	movl	%eax, %ebp
	subl	%r11d, %ebp
	setg	%dl
	movl	8(%r9), %esi
	subl	%r10d, %esi
	setg	%cl
	movzbl	%cl, %ecx
	movzbl	%dl, %edx
	cmpl	%ecx, %edx
	je	.LBB2_24
# BB#21:                                # %if.then.17.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	cmpl	%r11d, %eax
	jle	.LBB2_22
	jmp	.LBB2_25
	.align	16, 0x90
.LBB2_24:                               # %do.end.21.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	movl	12(%rbx), %eax
	subl	4(%rbx), %eax
	movl	12(%r9), %ecx
	subl	%r15d, %ecx
	cvtsi2sdl	%ebp, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_25
.LBB2_22:                               # %while.cond.i.backedge.i
                                        #   in Loop: Header=BB2_18 Depth=4
	leaq	216(%rbx), %rdi
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_18
.LBB2_23:                               # %if.end.critedge.i.i
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	$0, 216(%r9)
	movq	%rbx, 208(%r9)
	jmp	.LBB2_26
	.align	16, 0x90
.LBB2_25:                               # %if.then.i.i
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	%rbx, 216(%r9)
	movq	%r8, 208(%r9)
	movq	%r9, 208(%rbx)
.LBB2_26:                               # %insert_x_new.exit.i
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	%r9, (%rdi)
	xorl	%ecx, %ecx
	testq	%r14, %r14
	movq	%r14, %r9
	movl	$0, %r14d
	jne	.LBB2_5
	jmp	.LBB2_27
	.align	16, 0x90
.LBB2_12:                               # %if.then.35.i
                                        #   in Loop: Header=BB2_4 Depth=2
	movslq	%r10d, %rsi
	movslq	8(%r9), %rcx
	cmpl	%ecx, %r10d
	jle	.LBB2_13
# BB#14:                                # %if.else.i
                                        #   in Loop: Header=BB2_4 Depth=2
	addq	$127, %rcx
	shrq	$8, %rcx
	addq	$127, %rsi
	shrq	$8, %rsi
	movl	%esi, %eax
	subl	%ecx, %eax
	movl	%ecx, %esi
	movl	%eax, %ecx
	jmp	.LBB2_15
.LBB2_13:                               # %if.then.44.i
                                        #   in Loop: Header=BB2_4 Depth=2
	addq	$127, %rsi
	shrq	$8, %rsi
	addq	$127, %rcx
	shrq	$8, %rcx
	subl	%esi, %ecx
.LBB2_15:                               # %do.end.78.i
                                        #   in Loop: Header=BB2_4 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %r9
	movl	$1, %r8d
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	184(%rsp), %rdx         # 8-byte Reload
	callq	*144(%rsp)              # 8-byte Folded Reload
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	jns	.LBB2_4
	jmp	.LBB2_960
	.align	16, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%r9, %r14
.LBB2_27:                               # %while.end.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_28
# BB#30:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	4(%r14), %rdx
	testb	%cl, %cl
	cmoveq	152(%rsp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %ecx
	movq	192(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	cmovlel	%ecx, %r13d
	movl	%r13d, 256(%rsp)
	.align	16, 0x90
.LBB2_31:                               # %for.body.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%r13d, %ecx
	jge	.LBB2_33
# BB#32:                                # %if.then.120.i
                                        #   in Loop: Header=BB2_31 Depth=2
	movl	%ecx, 256(%rsp)
	movl	%ecx, %r13d
.LBB2_33:                               # %for.inc.i
                                        #   in Loop: Header=BB2_31 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_31
# BB#34:                                # %for.end.i
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	%r13d, %r15d
	jne	.LBB2_35
# BB#36:                                # %if.then.127.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	process_h_segments
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB2_57
# BB#37:                                # %if.end.132.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	js	.LBB2_960
# BB#38:                                # %cleanup.cont.140.i
                                        #   in Loop: Header=BB2_3 Depth=1
	testl	%ebx, %ebx
	jle	.LBB2_39
# BB#961:                               # %if.then.143.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	40(%r12), %r14
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_28:                               # %if.then.94.i
                                        #   in Loop: Header=BB2_3 Depth=1
	testq	%r14, %r14
	je	.LBB2_959
# BB#29:                                # %if.end.98.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	4(%r14), %r15d
	movq	288(%r12), %rax
	movq	%rax, 296(%r12)
	movq	$0, 288(%r12)
	movl	208(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_35:                               #   in Loop: Header=BB2_3 Depth=1
	movl	208(%rsp), %edx         # 4-byte Reload
	jmp	.LBB2_40
.LBB2_39:                               #   in Loop: Header=BB2_3 Depth=1
	movl	%edi, %edx
.LBB2_40:                               # %if.end.146.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	176(%rsp), %rbp         # 8-byte Reload
	cmpl	128(%rsp), %r15d        # 4-byte Folded Reload
	jge	.LBB2_959
# BB#41:                                # %if.end.150.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movslq	%r13d, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %rbp
	setl	%cl
	cmpl	%r13d, %r15d
	jne	.LBB2_43
# BB#42:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%edx, 192(%rsp)         # 4-byte Spill
	movzbl	%cl, %eax
	movl	%r15d, %ecx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB2_44
	.align	16, 0x90
.LBB2_43:                               # %if.then.163.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%edx, 192(%rsp)         # 4-byte Spill
	cmpq	%rax, %rbp
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%r12, %rdi
	movl	%r15d, %esi
	leaq	256(%rsp), %rdx
	movq	120(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r8d
	callq	intersect_al
	movslq	256(%rsp), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %rbp
	setl	%al
	movzbl	%al, %eax
.LBB2_44:                               # %if.end.175.i
                                        #   in Loop: Header=BB2_3 Depth=1
	orl	%ebx, %eax
	je	.LBB2_55
# BB#45:                                # %for.cond.184.preheader.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	xorl	%r13d, %r13d
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB2_55
	.align	16, 0x90
.LBB2_46:                               # %for.body.187.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %edx
	movl	48(%rbx), %eax
	leal	(%rax,%rdx), %r12d
	movl	%r12d, %ecx
	movq	216(%rsp), %rsi         # 8-byte Reload
	andl	%esi, %ecx
	testl	%esi, %edx
	je	.LBB2_47
# BB#48:                                # %if.end.206.i
                                        #   in Loop: Header=BB2_46 Depth=2
	testl	%ecx, %ecx
	jne	.LBB2_54
# BB#49:                                # %if.end.213.i
                                        #   in Loop: Header=BB2_46 Depth=2
	movq	216(%rbx), %rcx
	testq	%rcx, %rcx
	movl	32(%rbx), %r8d
	je	.LBB2_53
# BB#50:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_46 Depth=2
	cmpl	32(%rcx), %r8d
	jne	.LBB2_53
# BB#51:                                # %land.lhs.true.222.i
                                        #   in Loop: Header=BB2_46 Depth=2
	movl	36(%rbx), %edx
	cmpl	36(%rcx), %edx
	jne	.LBB2_53
# BB#52:                                # %if.then.227.i
                                        #   in Loop: Header=BB2_46 Depth=2
	addl	48(%rcx), %r12d
	movq	%rcx, %rbx
	jmp	.LBB2_54
	.align	16, 0x90
.LBB2_47:                               # %if.then.198.i
                                        #   in Loop: Header=BB2_46 Depth=2
	testl	%ecx, %ecx
	cmovneq	%rbx, %r13
	jmp	.LBB2_54
.LBB2_53:                               # %cleanup.269.i
                                        #   in Loop: Header=BB2_46 Depth=2
	movl	32(%r13), %ecx
	movl	36(%r13), %r9d
	movl	36(%rbx), %edx
	movq	40(%r13), %rsi
	movq	40(%rbx), %rdi
	movl	48(%r13), %ebp
	movl	%eax, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, (%rsp)
	movq	168(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movq	208(%rsp), %rdx         # 8-byte Reload
	callq	gx_san_trap_store
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
	.align	16, 0x90
.LBB2_54:                               # %for.inc.272.i
                                        #   in Loop: Header=BB2_46 Depth=2
	movq	216(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB2_46
.LBB2_55:                               # %if.end.280.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	160(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	208(%rsp), %r15         # 8-byte Reload
	movl	%r15d, %esi
	callq	move_al_by_y
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB2_56
.LBB2_57:                               # %cleanup.289.thread185.i
	movl	%ebx, %edi
	jmp	.LBB2_960
.LBB2_58:                               # %if.end
	cmpl	$0, (%rdx)
	je	.LBB2_481
# BB#59:                                # %if.then.3
	movq	72(%rdx), %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	cmpq	$0, 376(%rbx)
	movl	28(%rdx), %ecx
	movl	8(%rdx), %esi
	movl	%esi, 152(%rsp)         # 4-byte Spill
	movq	16(%rdx), %rsi
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movl	24(%rdx), %esi
	movl	%esi, 136(%rsp)         # 4-byte Spill
	movq	56(%rdx), %rsi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	movq	64(%rdx), %rsi
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	je	.LBB2_307
# BB#60:                                # %if.then.4
	testl	%ecx, %ecx
	je	.LBB2_184
# BB#61:                                # %if.then.6
	movq	40(%rbx), %r9
	xorl	%edi, %edi
	testq	%r9, %r9
	je	.LBB2_960
# BB#62:                                # %if.end.i.43
	movq	80(%rdx), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	4(%r9), %r13d
	leaq	272(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r13), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	leaq	304(%rbx), %rsi
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	leaq	336(%rbx), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EAX
	movl	%eax, 112(%rsp)         # 4-byte Spill
	jmp	.LBB2_63
.LBB2_481:                              # %if.end.16
	movl	52(%rdx), %ecx
	orl	48(%rdx), %ecx
	orl	40(%rdx), %ecx
	orl	44(%rdx), %ecx
	je	.LBB2_668
# BB#482:                               # %if.then.20
	movq	40(%rdx), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	48(%rdx), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	72(%rdx), %rcx
	movq	%rcx, %rsi
	shrq	$32, %rsi
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	cmpl	$0, 28(%rdx)
	movl	8(%rdx), %esi
	movl	%esi, 88(%rsp)          # 4-byte Spill
	movq	16(%rdx), %rsi
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movl	24(%rdx), %esi
	movl	%esi, 72(%rsp)          # 4-byte Spill
	movq	56(%rdx), %rsi
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	64(%rdx), %rsi
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	je	.LBB2_577
# BB#483:                               # %if.then.23
	movq	40(%rbx), %r13
	xorl	%edi, %edi
	testq	%r13, %r13
	je	.LBB2_960
# BB#484:                               # %if.end.i.933
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	80(%rdx), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	88(%rdx), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	4(%r13), %r12d
	leaq	272(%rbx), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r12), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
	movq	%r15, 160(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movq	192(%rsp), %rax         # 8-byte Reload
	orl	%eax, %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EDI
	jmp	.LBB2_485
.LBB2_575:                              # %if.end.413.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	288(%r15), %rax
	movq	%rax, 296(%r15)
	movq	$0, 288(%r15)
	movq	208(%rsp), %r12         # 8-byte Reload
	xorps	%xmm3, %xmm3
	movl	76(%rsp), %edi          # 4-byte Reload
.LBB2_485:                              # %while.body.i.941
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_486 Depth 2
                                        #       Child Loop BB2_487 Depth 3
                                        #         Child Loop BB2_504 Depth 4
                                        #     Child Loop BB2_514 Depth 2
                                        #     Child Loop BB2_530 Depth 2
	movl	%r12d, %ecx
	movq	192(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ecx
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	movslq	%ecx, %rax
	addq	$127, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movl	%r12d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leal	1(%rcx), %r14d
	andq	$-256, %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
.LBB2_486:                              # %while.cond.14.outer.i.944
                                        #   Parent Loop BB2_485 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_487 Depth 3
                                        #         Child Loop BB2_504 Depth 4
	movl	%edi, 208(%rsp)         # 4-byte Spill
	jmp	.LBB2_487
	.align	16, 0x90
.LBB2_509:                              # %if.end.critedge.i.i.1016
                                        #   in Loop: Header=BB2_487 Depth=3
	movq	$0, 216(%r9)
	movq	%rbp, 208(%r9)
	movq	%r9, (%rdi)
.LBB2_487:                              # %while.cond.14.outer.i.944
                                        #   Parent Loop BB2_485 Depth=1
                                        #     Parent Loop BB2_486 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_504 Depth 4
	xorl	%ecx, %ecx
	testq	%r13, %r13
	movq	%r13, %r9
	movl	$0, %r13d
	je	.LBB2_490
# BB#488:                               # %land.rhs.i.947
                                        #   in Loop: Header=BB2_487 Depth=3
	movb	$1, %cl
	cmpl	%r12d, 4(%r9)
	jne	.LBB2_489
# BB#493:                               # %while.body.21.i.950
                                        #   in Loop: Header=BB2_487 Depth=3
	movq	216(%r9), %r13
	movq	%r13, 40(%r15)
	cmpq	%r9, 48(%r15)
	jne	.LBB2_495
# BB#494:                               # %if.then.26.i.951
                                        #   in Loop: Header=BB2_487 Depth=3
	movq	%r13, 48(%r15)
.LBB2_495:                              # %if.end.28.i.953
                                        #   in Loop: Header=BB2_487 Depth=3
	testq	%r13, %r13
	je	.LBB2_497
# BB#496:                               # %if.then.31.i.955
                                        #   in Loop: Header=BB2_487 Depth=3
	movq	$0, 208(%r13)
.LBB2_497:                              # %if.end.32.i.958
                                        #   in Loop: Header=BB2_487 Depth=3
	movl	(%r9), %r10d
	cmpl	$0, 48(%r9)
	je	.LBB2_498
# BB#502:                               # %if.else.87.i
                                        #   in Loop: Header=BB2_487 Depth=3
	movl	%r10d, 32(%r9)
	movl	%r10d, 36(%r9)
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rax, %rdi
	movq	224(%rsp), %rbp         # 8-byte Reload
	je	.LBB2_509
# BB#503:                               # %land.rhs.i.lr.ph.i.983
                                        #   in Loop: Header=BB2_487 Depth=3
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB2_504:                              # %land.rhs.i.i.984
                                        #   Parent Loop BB2_485 Depth=1
                                        #     Parent Loop BB2_486 Depth=2
                                        #       Parent Loop BB2_487 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbp, %r8
	movq	%rsi, %rbp
	cmpl	%r10d, 32(%rbp)
	jl	.LBB2_508
# BB#505:                               # %if.else.i.i.985
                                        #   in Loop: Header=BB2_504 Depth=4
	jg	.LBB2_511
# BB#506:                               # %if.end.6.i.i.990
                                        #   in Loop: Header=BB2_504 Depth=4
	movl	(%rbp), %r11d
	movl	8(%rbp), %eax
	movl	%eax, %ebx
	subl	%r11d, %ebx
	setg	%cl
	movl	8(%r9), %esi
	subl	%r10d, %esi
	setg	%dl
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	cmpl	%edx, %ecx
	je	.LBB2_510
# BB#507:                               # %if.then.17.i.i.991
                                        #   in Loop: Header=BB2_504 Depth=4
	cmpl	%r11d, %eax
	jle	.LBB2_508
	jmp	.LBB2_511
	.align	16, 0x90
.LBB2_510:                              # %do.end.21.i.i.1009
                                        #   in Loop: Header=BB2_504 Depth=4
	movl	12(%rbp), %eax
	subl	4(%rbp), %eax
	movl	12(%r9), %ecx
	subl	%r12d, %ecx
	cvtsi2sdl	%ebx, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_511
.LBB2_508:                              # %while.cond.i.backedge.i.994
                                        #   in Loop: Header=BB2_504 Depth=4
	leaq	216(%rbp), %rdi
	movq	216(%rbp), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_504
	jmp	.LBB2_509
	.align	16, 0x90
.LBB2_511:                              # %if.then.i.i.1012
                                        #   in Loop: Header=BB2_487 Depth=3
	movq	%rbp, 216(%r9)
	movq	%r8, 208(%r9)
	movq	%r9, 208(%rbp)
	movq	%r9, (%rdi)
	jmp	.LBB2_487
.LBB2_498:                              # %if.then.35.i.962
                                        #   in Loop: Header=BB2_486 Depth=2
	movl	8(%r9), %eax
	cmpl	%eax, %r10d
	jle	.LBB2_499
# BB#500:                               # %if.else.i.972
                                        #   in Loop: Header=BB2_486 Depth=2
	movq	112(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movslq	%eax, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movq	104(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r10d
	movslq	%r10d, %rcx
	jmp	.LBB2_501
.LBB2_499:                              # %if.then.44.i.970
                                        #   in Loop: Header=BB2_486 Depth=2
	movq	112(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %r10d
	movslq	%r10d, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movq	104(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rcx
.LBB2_501:                              # %do.end.80.i
                                        #   in Loop: Header=BB2_486 Depth=2
	addq	$127, %rcx
	shrq	$8, %rcx
	subl	%esi, %ecx
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %r9
	movl	$1, %r8d
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	168(%rsp), %rdx         # 8-byte Reload
	callq	*56(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	xorps	%xmm3, %xmm3
	jns	.LBB2_486
	jmp	.LBB2_960
.LBB2_489:                              #   in Loop: Header=BB2_485 Depth=1
	movq	%r9, %r13
.LBB2_490:                              # %while.end.i.1021
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_491
# BB#513:                               # %for.body.lr.ph.i.1024
                                        #   in Loop: Header=BB2_485 Depth=1
	leaq	4(%r13), %rdx
	testb	%cl, %cl
	cmoveq	64(%rsp), %rdx          # 8-byte Folded Reload
	movl	(%rdx), %ecx
	movq	184(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	cmovlel	%ecx, %r14d
	movl	%r14d, 276(%rsp)
	.align	16, 0x90
.LBB2_514:                              # %for.body.i.1025
                                        #   Parent Loop BB2_485 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%r14d, %ecx
	jge	.LBB2_516
# BB#515:                               # %if.then.122.i
                                        #   in Loop: Header=BB2_514 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %r14d
.LBB2_516:                              # %for.inc.i.1027
                                        #   in Loop: Header=BB2_514 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_514
# BB#517:                               # %for.end.i.1028
                                        #   in Loop: Header=BB2_485 Depth=1
	cmpl	%r14d, %r12d
	jne	.LBB2_518
# BB#519:                               # %if.then.129.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	process_h_segments
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_576
# BB#520:                               # %if.end.134.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	js	.LBB2_960
# BB#521:                               # %cleanup.cont.142.i
                                        #   in Loop: Header=BB2_485 Depth=1
	testl	%ebp, %ebp
	jle	.LBB2_522
# BB#965:                               # %if.then.145.i.1031
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	40(%r15), %r13
	xorps	%xmm3, %xmm3
	jmp	.LBB2_485
.LBB2_491:                              # %if.then.96.i
                                        #   in Loop: Header=BB2_485 Depth=1
	testq	%r13, %r13
	je	.LBB2_959
# BB#492:                               # %if.end.100.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movl	4(%r13), %r12d
	movq	288(%r15), %rax
	movq	%rax, 296(%r15)
	movq	$0, 288(%r15)
	movl	208(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_485
.LBB2_518:                              #   in Loop: Header=BB2_485 Depth=1
	movl	208(%rsp), %edx         # 4-byte Reload
	jmp	.LBB2_523
.LBB2_522:                              #   in Loop: Header=BB2_485 Depth=1
	movl	%edi, %edx
.LBB2_523:                              # %if.end.148.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	144(%rsp), %r9          # 8-byte Reload
	cmpl	88(%rsp), %r12d         # 4-byte Folded Reload
	jge	.LBB2_959
# BB#524:                               # %if.end.152.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	%rax, %rbx
	leal	(%r14,%rbx), %eax
	cltq
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r9
	setl	%cl
	cmpl	%r14d, %r12d
	jne	.LBB2_526
# BB#525:                               #   in Loop: Header=BB2_485 Depth=1
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movzbl	%cl, %eax
	movl	%r12d, %ecx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_527
.LBB2_526:                              # %if.then.166.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movl	%edx, 76(%rsp)          # 4-byte Spill
	cmpq	%rax, %r9
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%r15, %rdi
	movl	%r12d, %esi
	leaq	276(%rsp), %rdx
	movq	152(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %r8d
	movq	%r9, %r14
	callq	intersect_al
	movl	276(%rsp), %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leal	(%rax,%rbx), %eax
	cltq
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r14
	setl	%al
	movzbl	%al, %eax
.LBB2_527:                              # %if.end.180.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	orl	%ebp, %eax
	je	.LBB2_574
# BB#528:                               # %for.cond.189.preheader.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB2_574
# BB#529:                               # %for.body.192.preheader.i
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	208(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_530:                              # %for.body.192.i
                                        #   Parent Loop BB2_485 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	movl	48(%rbp), %ebx
	addl	%ecx, %ebx
	movl	%ebx, %eax
	movq	216(%rsp), %rdx         # 8-byte Reload
	andl	%edx, %eax
	testl	%edx, %ecx
	je	.LBB2_531
# BB#532:                               # %if.end.211.i
                                        #   in Loop: Header=BB2_530 Depth=2
	testl	%eax, %eax
	jne	.LBB2_573
# BB#533:                               # %if.end.218.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movq	216(%rbp), %rax
	testq	%rax, %rax
	je	.LBB2_537
# BB#534:                               # %land.lhs.true.i.1039
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	32(%rbp), %ecx
	cmpl	32(%rax), %ecx
	jne	.LBB2_537
# BB#535:                               # %land.lhs.true.227.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	36(%rbp), %ecx
	cmpl	36(%rax), %ecx
	jne	.LBB2_537
# BB#536:                               # %if.then.232.i
                                        #   in Loop: Header=BB2_530 Depth=2
	addl	48(%rax), %ebx
	movq	%rax, %rbp
	jmp	.LBB2_573
	.align	16, 0x90
.LBB2_531:                              # %if.then.203.i
                                        #   in Loop: Header=BB2_530 Depth=2
	testl	%eax, %eax
	cmovneq	%rbp, %r15
	jmp	.LBB2_573
.LBB2_537:                              # %do.end.239.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	(%r15), %ecx
	movl	8(%r15), %edi
	cmpl	%ecx, %edi
	jne	.LBB2_541
# BB#538:                               # %land.lhs.true.246.i
                                        #   in Loop: Header=BB2_530 Depth=2
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movl	(%rbp), %eax
	movl	8(%rbp), %r11d
	movq	160(%rsp), %rdx         # 8-byte Reload
	je	.LBB2_568
# BB#539:                               # %land.lhs.true.246.i
                                        #   in Loop: Header=BB2_530 Depth=2
	cmpl	%eax, %r11d
	je	.LBB2_568
# BB#540:                               #   in Loop: Header=BB2_530 Depth=2
	movl	%ebx, 184(%rsp)         # 4-byte Spill
	jmp	.LBB2_546
.LBB2_541:                              # %land.lhs.true.253.i
                                        #   in Loop: Header=BB2_530 Depth=2
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movq	160(%rsp), %rdx         # 8-byte Reload
	je	.LBB2_542
# BB#545:                               # %land.lhs.true.253.if.then.259_crit_edge.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	%ebx, 184(%rsp)         # 4-byte Spill
	movl	(%rbp), %eax
	movl	8(%rbp), %r11d
.LBB2_546:                              # %if.then.259.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movq	408(%rdx), %rdx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movl	48(%rdx), %r14d
	movl	52(%rdx), %r8d
	movslq	40(%rdx), %r9
	movl	%ecx, %ebx
	subl	%r9d, %ebx
	movl	%ebx, 256(%rsp)
	movl	%edi, %esi
	subl	%r9d, %esi
	movl	%esi, 264(%rsp)
	movslq	44(%rdx), %r10
	leal	(%rax,%r10), %eax
	movl	%eax, 240(%rsp)
	leal	(%r11,%r10), %edx
	movl	%edx, 248(%rsp)
	cmpl	%ecx, %edi
	jne	.LBB2_549
# BB#547:                               # %if.then.259.i
                                        #   in Loop: Header=BB2_530 Depth=2
	cmpl	%eax, %edx
	jne	.LBB2_549
# BB#548:                               # %if.then.i.233.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movslq	%ebx, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movl	%esi, 256(%rsp)
	movl	%r12d, %ecx
	subl	%r14d, %ecx
	movslq	%ecx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movl	%edx, 260(%rsp)
	movslq	%eax, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	movl	%ecx, 240(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r8d
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	movl	%r8d, 244(%rsp)
	movq	168(%rsp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rax
	movq	56(%rbx), %rdi
	subl	%esi, %ecx
	subl	%edx, %r8d
	movq	8(%rax), %r9
	callq	*80(%rbx)
	jmp	.LBB2_566
.LBB2_549:                              # %if.else.i.234.i
                                        #   in Loop: Header=BB2_530 Depth=2
	leal	127(%r8), %ecx
	leal	(%r14,%r8), %edi
	cmpl	%ebx, %esi
	jg	.LBB2_558
# BB#550:                               # %if.else.i.234.i
                                        #   in Loop: Header=BB2_530 Depth=2
	cmpl	%eax, %edx
	jl	.LBB2_558
# BB#551:                               # %if.then.92.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	4(%r15), %eax
	subl	%r14d, %eax
	movl	%eax, 260(%rsp)
	movl	12(%r15), %eax
	subl	%r14d, %eax
	movl	%eax, 268(%rsp)
	movl	4(%rbp), %eax
	subl	%r14d, %eax
	movl	%eax, 244(%rsp)
	movl	12(%rbp), %eax
	subl	%r14d, %eax
	movl	%eax, 252(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	addl	%eax, %ecx
	movzbl	%cl, %eax
	cmpl	%edi, %eax
	jge	.LBB2_552
# BB#553:                               # %if.then.120.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movslq	36(%r15), %rax
	negq	%r9
	leaq	127(%rax,%r9), %rsi
	shrq	$8, %rsi
	movslq	36(%rbp), %rax
	leaq	127(%rax,%r10), %rcx
	shrq	$8, %rcx
	movq	168(%rsp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rax
	movq	56(%rbx), %rdi
	movq	208(%rsp), %rdx         # 8-byte Reload
	subl	%r14d, %edx
	movslq	%edx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	subl	%esi, %ecx
	movq	8(%rax), %r9
	movl	$1, %r8d
	callq	*80(%rbx)
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_567
# BB#554:                               # %if.then.120.if.end.154_crit_edge.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	48(%rbx), %r14d
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	408(%rax), %rbx
	jmp	.LBB2_555
.LBB2_568:                              # %land.lhs.true.289.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movq	80(%rsp), %rcx          # 8-byte Reload
	movl	4(%rcx), %edx
	movl	12(%rcx), %r9d
	cmpl	%edx, %r12d
	movl	%edx, %ecx
	cmovgel	%r12d, %ecx
	movq	208(%rsp), %rsi         # 8-byte Reload
	cmpl	%r9d, %esi
	movl	%r9d, %r8d
	cmovlel	%esi, %r8d
	cmpl	%eax, %r11d
	jne	.LBB2_543
# BB#569:                               # %if.then.296.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	120(%rsp), %eax         # 4-byte Reload
	cmpl	%edx, %eax
	cmovgel	%eax, %edx
	movl	144(%rsp), %eax         # 4-byte Reload
	cmpl	%r9d, %eax
	cmovlel	%eax, %r9d
	cmpl	%edx, %r9d
	jle	.LBB2_573
# BB#570:                               # %if.then.331.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movslq	%edx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%r9d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	movq	112(%rsp), %rax         # 8-byte Reload
	subl	%eax, %edi
	movslq	%edi, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movq	104(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r11d
	movslq	%r11d, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	subl	%esi, %ecx
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %r9
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	*56(%rsp)               # 8-byte Folded Reload
	jmp	.LBB2_571
.LBB2_542:                              # %if.else.261.thread380.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r12d
	cmovgel	%r12d, %ecx
	movq	208(%rsp), %rax         # 8-byte Reload
	cmpl	%r8d, %eax
	cmovlel	%eax, %r8d
.LBB2_543:                              # %if.else.371.i
                                        #   in Loop: Header=BB2_530 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_573
# BB#544:                               # %if.then.374.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movq	(%r15), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r15), %rax
	movq	%rax, 264(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 248(%rsp)
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movq	128(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	*48(%rsp)               # 8-byte Folded Reload
.LBB2_571:                              # %cleanup.397.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	%eax, %edi
	jmp	.LBB2_572
.LBB2_558:                              # %if.else.160.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	cmpl	%ebx, %esi
	jl	.LBB2_565
# BB#559:                               # %if.else.160.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	cmpl	%eax, %edx
	jg	.LBB2_565
# BB#560:                               # %if.then.174.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	4(%r15), %eax
	addl	%r8d, %eax
	movl	%eax, 260(%rsp)
	movl	12(%r15), %eax
	addl	%r8d, %eax
	movl	%eax, 268(%rsp)
	movl	4(%rbp), %eax
	addl	%r8d, %eax
	movl	%eax, 244(%rsp)
	movl	12(%rbp), %eax
	addl	%r8d, %eax
	movl	%eax, 252(%rsp)
	addl	%r12d, %ecx
	movzbl	%cl, %eax
	cmpl	%edi, %eax
	jge	.LBB2_561
# BB#562:                               # %if.then.203.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movslq	32(%r15), %rax
	negq	%r9
	leaq	127(%rax,%r9), %rsi
	shrq	$8, %rsi
	movslq	32(%rbp), %rax
	leaq	127(%rax,%r10), %rcx
	shrq	$8, %rcx
	movq	168(%rsp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rax
	movq	56(%rbx), %rdi
	movl	%r12d, %edx
	subl	%r14d, %edx
	movslq	%edx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	subl	%esi, %ecx
	movq	8(%rax), %r9
	movl	$1, %r8d
	callq	*80(%rbx)
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_567
# BB#563:                               # %if.then.203.if.end.246_crit_edge.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	52(%rbx), %r8d
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	408(%rax), %rbx
	jmp	.LBB2_564
.LBB2_552:                              #   in Loop: Header=BB2_530 Depth=2
	movq	168(%rsp), %rbx         # 8-byte Reload
.LBB2_555:                              # %if.end.154.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	%r12d, %ecx
	subl	%r14d, %ecx
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	subl	%r14d, %r8d
	movq	64(%rbx), %rax
	movl	4(%rax), %edx
	movl	12(%rax), %eax
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	cmpl	%r8d, %eax
	cmovlel	%eax, %r8d
	jmp	.LBB2_556
.LBB2_565:                              # %if.end.254.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movl	%r12d, %ecx
	movq	208(%rsp), %r8          # 8-byte Reload
	callq	fill_slant_adjust
	jmp	.LBB2_566
.LBB2_561:                              #   in Loop: Header=BB2_530 Depth=2
	movq	168(%rsp), %rbx         # 8-byte Reload
.LBB2_564:                              # %if.end.246.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	leal	(%r8,%r12), %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %r8d
	movq	64(%rbx), %rdx
	movl	4(%rdx), %ecx
	movl	12(%rdx), %edx
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	cmpl	%r8d, %edx
	cmovlel	%edx, %r8d
.LBB2_556:                              # %if.end.154.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	xorl	%edi, %edi
	cmpl	%r8d, %ecx
	jge	.LBB2_567
# BB#557:                               # %do.end.i.i.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movq	56(%rbx), %rdi
	movq	16(%rbx), %rax
	movl	24(%rbx), %edx
	movl	%edx, 8(%rsp)
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	*88(%rbx)
.LBB2_566:                              # %slant_into_trapezoids__fd.exit.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	%eax, %edi
.LBB2_567:                              # %slant_into_trapezoids__fd.exit.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movl	184(%rsp), %ebx         # 4-byte Reload
.LBB2_572:                              # %cleanup.397.i
                                        #   in Loop: Header=BB2_530 Depth=2
	testl	%edi, %edi
	js	.LBB2_960
	.align	16, 0x90
.LBB2_573:                              # %for.inc.400.i
                                        #   in Loop: Header=BB2_530 Depth=2
	movq	216(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB2_530
.LBB2_574:                              # %if.end.408.i.1053
                                        #   in Loop: Header=BB2_485 Depth=1
	movq	160(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	208(%rsp), %rsi         # 8-byte Reload
	callq	move_al_by_y
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_575
.LBB2_576:                              # %cleanup.417.thread257.i
	movl	%ebp, %edi
	jmp	.LBB2_960
.LBB2_69:                               # %if.end.45.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movl	4(%r12), %r13d
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movq	%r12, %r9
.LBB2_63:                               # %while.body.i.48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_64 Depth 2
                                        #       Child Loop BB2_80 Depth 3
                                        #     Child Loop BB2_91 Depth 2
                                        #     Child Loop BB2_107 Depth 2
                                        #     Child Loop BB2_157 Depth 2
	xorl	%edx, %edx
	testq	%r9, %r9
	jmp	.LBB2_64
	.align	16, 0x90
.LBB2_89:                               # %while.cond.14.backedge.i
                                        #   in Loop: Header=BB2_64 Depth=2
	xorl	%edx, %edx
	testq	%r8, %r8
	movq	%r8, %r9
.LBB2_64:                               # %while.body.i.48
                                        #   Parent Loop BB2_63 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_80 Depth 3
	movl	$0, %r12d
	je	.LBB2_67
# BB#65:                                # %land.rhs.i.51
                                        #   in Loop: Header=BB2_64 Depth=2
	movb	$1, %dl
	cmpl	%r13d, 4(%r9)
	jne	.LBB2_66
# BB#70:                                # %while.body.21.i.54
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	216(%r9), %r8
	movq	%r8, 40(%rbx)
	cmpq	%r9, 48(%rbx)
	jne	.LBB2_72
# BB#71:                                # %if.then.26.i.55
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	%r8, 48(%rbx)
.LBB2_72:                               # %if.end.28.i.57
                                        #   in Loop: Header=BB2_64 Depth=2
	testq	%r8, %r8
	je	.LBB2_74
# BB#73:                                # %if.then.31.i.59
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	$0, 208(%r8)
.LBB2_74:                               # %if.end.32.i.62
                                        #   in Loop: Header=BB2_64 Depth=2
	cmpl	$0, 48(%r9)
	je	.LBB2_75
# BB#78:                                # %if.else.i.69
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	%rbx, %r12
	movl	(%r9), %r11d
	movl	%r11d, 32(%r9)
	movl	%r11d, 36(%r9)
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	movq	%rax, %rsi
	movq	216(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_85
# BB#79:                                # %land.rhs.i.lr.ph.i.72
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	224(%rsp), %rsi         # 8-byte Reload
	movq	216(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_80:                               # %land.rhs.i.i.73
                                        #   Parent Loop BB2_63 Depth=1
                                        #     Parent Loop BB2_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %r10
	movq	%rdi, %rbx
	cmpl	%r11d, 32(%rbx)
	jl	.LBB2_84
# BB#81:                                # %if.else.i.i.74
                                        #   in Loop: Header=BB2_80 Depth=3
	jg	.LBB2_87
# BB#82:                                # %if.end.6.i.i.79
                                        #   in Loop: Header=BB2_80 Depth=3
	movl	(%rbx), %r15d
	movl	8(%rbx), %ebp
	movl	%ebp, %eax
	subl	%r15d, %eax
	setg	%cl
	movl	8(%r9), %edi
	subl	%r11d, %edi
	setg	%dl
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	cmpl	%edx, %ecx
	je	.LBB2_86
# BB#83:                                # %if.then.17.i.i.80
                                        #   in Loop: Header=BB2_80 Depth=3
	cmpl	%r15d, %ebp
	jle	.LBB2_84
	jmp	.LBB2_87
	.align	16, 0x90
.LBB2_86:                               # %do.end.21.i.i.97
                                        #   in Loop: Header=BB2_80 Depth=3
	movl	12(%rbx), %ecx
	subl	4(%rbx), %ecx
	movl	12(%r9), %edx
	subl	%r13d, %edx
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_87
.LBB2_84:                               # %while.cond.i.backedge.i.82
                                        #   in Loop: Header=BB2_80 Depth=3
	leaq	216(%rbx), %rsi
	movq	216(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB2_80
.LBB2_85:                               # %if.end.critedge.i.i.103
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	$0, 216(%r9)
	movq	%rbx, 208(%r9)
	jmp	.LBB2_88
	.align	16, 0x90
.LBB2_75:                               # %if.then.35.i.64
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	288(%rbx), %rax
	movq	%rax, 216(%r9)
	movq	$0, 208(%r9)
	testq	%rax, %rax
	je	.LBB2_77
# BB#76:                                # %if.then.i.i.65
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	%r9, 208(%rax)
.LBB2_77:                               # %insert_h_new.exit.i
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	%r9, 288(%rbx)
	jmp	.LBB2_89
.LBB2_87:                               # %if.then.i.337.i
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	%rbx, 216(%r9)
	movq	%r10, 208(%r9)
	movq	%r9, 208(%rbx)
.LBB2_88:                               # %insert_x_new.exit.i.104
                                        #   in Loop: Header=BB2_64 Depth=2
	movq	%r9, (%rsi)
	movq	%r12, %rbx
	jmp	.LBB2_89
.LBB2_66:                               #   in Loop: Header=BB2_63 Depth=1
	movq	%r9, %r12
.LBB2_67:                               # %while.end.i.108
                                        #   in Loop: Header=BB2_63 Depth=1
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_68
# BB#90:                                # %for.body.lr.ph.i.112
                                        #   in Loop: Header=BB2_63 Depth=1
	movslq	%r13d, %r15
	movl	%r13d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	addq	$127, %r15
	leal	1(%rcx), %ebp
	andq	$-256, %r15
	leaq	4(%r12), %rsi
	testb	%dl, %dl
	cmoveq	120(%rsp), %rsi         # 8-byte Folded Reload
	movl	(%rsi), %edx
	cmpl	%ecx, %edx
	cmovlel	%edx, %ebp
	movl	%ebp, 276(%rsp)
	.align	16, 0x90
.LBB2_91:                               # %for.body.i.113
                                        #   Parent Loop BB2_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%ebp, %ecx
	jge	.LBB2_93
# BB#92:                                # %if.then.66.i
                                        #   in Loop: Header=BB2_91 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %ebp
.LBB2_93:                               # %for.inc.i.115
                                        #   in Loop: Header=BB2_91 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_91
# BB#94:                                # %for.end.i.116
                                        #   in Loop: Header=BB2_63 Depth=1
	cmpl	%ebp, %r13d
	jne	.LBB2_100
# BB#95:                                # %if.then.73.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	process_h_segments
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB2_179
# BB#96:                                # %if.end.77.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movl	%eax, %r14d
	movq	%rdi, %rbx
	movl	%r13d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	112(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	js	.LBB2_97
# BB#98:                                # %cleanup.cont.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movl	%ecx, 112(%rsp)         # 4-byte Spill
	testl	%r14d, %r14d
	xorps	%xmm3, %xmm3
	jle	.LBB2_100
# BB#99:                                # %if.then.85.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movq	40(%rbx), %r9
	jmp	.LBB2_63
.LBB2_100:                              # %if.end.88.i
                                        #   in Loop: Header=BB2_63 Depth=1
	cmpl	152(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB2_180
# BB#101:                               # %if.end.92.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movslq	%ebp, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r15
	setl	%cl
	cmpl	%ebp, %r13d
	jne	.LBB2_103
# BB#102:                               #   in Loop: Header=BB2_63 Depth=1
	movzbl	%cl, %ebp
	movl	%r13d, %edx
	jmp	.LBB2_104
.LBB2_68:                               # %if.then.41.i
                                        #   in Loop: Header=BB2_63 Depth=1
	testq	%r12, %r12
	jne	.LBB2_69
	jmp	.LBB2_180
.LBB2_103:                              # %if.then.105.i
                                        #   in Loop: Header=BB2_63 Depth=1
	cmpq	%rax, %r15
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	leaq	276(%rsp), %rdx
	movq	176(%rsp), %r8          # 8-byte Reload
	callq	intersect_al
	movslq	276(%rsp), %rdx
	movq	%rdx, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r15
	setl	%al
	movzbl	%al, %ebp
.LBB2_104:                              # %if.end.117.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	start_margin_set
	movq	%rbx, %rcx
	testl	%eax, %eax
	js	.LBB2_179
# BB#105:                               # %if.end.122.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movq	376(%rcx), %rdi
	movslq	416(%rcx), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%rcx, %rbx
	callq	memset
	movq	%rbx, %rdi
	movq	176(%rsp), %rax         # 8-byte Reload
	orl	%eax, %ebp
	movq	272(%rdi), %rbp
	je	.LBB2_156
# BB#106:                               # %for.cond.133.preheader.i
                                        #   in Loop: Header=BB2_63 Depth=1
	xorl	%eax, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	testq	%rbp, %rbp
	movl	$0, %ecx
	movl	$0, %r14d
	je	.LBB2_177
	.align	16, 0x90
.LBB2_107:                              # %for.body.136.i
                                        #   Parent Loop BB2_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	200(%rbp), %rdx
	movq	376(%rdi), %r8
	movl	(%r8,%rdx,4), %ebx
	movq	232(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %ecx
	je	.LBB2_108
# BB#115:                               # %if.end.192.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	%ebx, %esi
	andl	$1, %esi
	testl	%ebx, %ebx
	js	.LBB2_116
# BB#117:                               # %cond.false.204.i
                                        #   in Loop: Header=BB2_107 Depth=2
	testl	%ebx, %ebx
	movl	$0, %eax
	cmovlel	%eax, %esi
	jmp	.LBB2_118
	.align	16, 0x90
.LBB2_108:                              # %if.then.147.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	%ebx, %esi
	andl	$1, %esi
	testl	%ebx, %ebx
	js	.LBB2_109
# BB#110:                               # %cond.false.155.i
                                        #   in Loop: Header=BB2_107 Depth=2
	testl	%ebx, %ebx
	movl	$0, %eax
	cmovlel	%eax, %esi
	jmp	.LBB2_111
	.align	16, 0x90
.LBB2_116:                              # %cond.true.201.i
                                        #   in Loop: Header=BB2_107 Depth=2
	negl	%esi
.LBB2_118:                              # %cond.end.212.i
                                        #   in Loop: Header=BB2_107 Depth=2
	subl	%esi, %ecx
	addl	48(%rbp), %ebx
	movl	%ebx, (%r8,%rdx,4)
	movq	%rdi, %r15
	js	.LBB2_119
# BB#120:                               # %cond.false.225.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	%ebx, %edx
	andl	$1, %edx
	testl	%ebx, %ebx
	movl	$0, %eax
	cmovlel	%eax, %edx
	movl	%edx, %ebx
	jmp	.LBB2_121
	.align	16, 0x90
.LBB2_119:                              # %cond.true.222.i
                                        #   in Loop: Header=BB2_107 Depth=2
	andl	$1, %ebx
	negl	%ebx
.LBB2_121:                              # %cond.end.233.i
                                        #   in Loop: Header=BB2_107 Depth=2
	addl	%ecx, %ebx
	movq	232(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ebx
	jne	.LBB2_155
# BB#122:                               # %if.end.240.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	216(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB2_131
# BB#123:                               # %land.lhs.true.i.123
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	32(%rbp), %edx
	cmpl	32(%rcx), %edx
	jne	.LBB2_131
# BB#124:                               # %land.lhs.true.249.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	36(%rbp), %edx
	cmpl	36(%rcx), %edx
	jne	.LBB2_131
# BB#125:                               # %if.then.254.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movslq	200(%rcx), %rsi
	movl	(%r8,%rsi,4), %edx
	movl	%edx, %edi
	andl	$1, %edi
	testl	%edx, %edx
	js	.LBB2_126
# BB#127:                               # %cond.false.267.i
                                        #   in Loop: Header=BB2_107 Depth=2
	testl	%edx, %edx
	movl	$0, %eax
	cmovlel	%eax, %edi
	jmp	.LBB2_128
.LBB2_131:                              # %do.end.302.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r13d
	cmovgel	%r13d, %ecx
	movq	208(%rsp), %rax         # 8-byte Reload
	cmpl	%r8d, %eax
	cmovlel	%eax, %r8d
	movslq	8(%r14), %rax
	cmpl	(%r14), %eax
	movq	%r15, %rdi
	jne	.LBB2_138
# BB#132:                               # %land.lhs.true.329.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movslq	8(%rbp), %r10
	cmpl	(%rbp), %r10d
	jne	.LBB2_138
# BB#133:                               # %if.then.336.i
                                        #   in Loop: Header=BB2_107 Depth=2
	cmpl	%ecx, %r8d
	jle	.LBB2_151
# BB#134:                               # %if.then.339.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movslq	%ecx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	leaq	127(%rax), %r9
	movq	%r9, %rsi
	shrq	$8, %rsi
	leaq	127(%r10), %rcx
	shrq	$8, %rcx
	cmpl	%ecx, %esi
	jne	.LBB2_135
# BB#136:                               # %if.then.364.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	andl	$-256, %r9d
	subl	%r9d, %r10d
	subl	%eax, %r9d
	cmpl	%r10d, %r9d
	setl	%al
	setge	%cl
	movzbl	%cl, %edi
	movzbl	%al, %ecx
	addl	%esi, %ecx
	subl	%edi, %esi
	jmp	.LBB2_137
.LBB2_138:                              # %if.else.385.i
                                        #   in Loop: Header=BB2_107 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_151
# BB#139:                               # %if.then.388.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	(%r14), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 264(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 248(%rsp)
	movl	(%r14), %eax
	movl	$4, %r9d
	cmpl	(%rbp), %eax
	jne	.LBB2_143
# BB#140:                               # %land.lhs.true.406.i
                                        #   in Loop: Header=BB2_107 Depth=2
	cmpl	%r13d, 4(%r14)
	jne	.LBB2_143
# BB#141:                               # %land.lhs.true.411.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	$5, %r9d
	cmpl	%r13d, 4(%rbp)
	je	.LBB2_143
# BB#142:                               # %select.mid
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	$4, %r9d
.LBB2_143:                              # %if.end.418.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	8(%r14), %eax
	cmpl	8(%rbp), %eax
	jne	.LBB2_144
# BB#145:                               # %land.lhs.true.425.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	208(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, 12(%r14)
	jne	.LBB2_144
# BB#146:                               # %land.lhs.true.430.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	$5, %eax
	cmpl	%edx, 12(%rbp)
	je	.LBB2_148
# BB#147:                               # %select.mid3126
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	%r9d, %eax
.LBB2_148:                              # %select.end3125
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	%eax, %r9d
	jmp	.LBB2_149
.LBB2_109:                              # %cond.true.152.i
                                        #   in Loop: Header=BB2_107 Depth=2
	negl	%esi
.LBB2_111:                              # %cond.end.163.i
                                        #   in Loop: Header=BB2_107 Depth=2
	subl	%esi, %ecx
	addl	48(%rbp), %ebx
	movl	%ebx, (%r8,%rdx,4)
	movq	%rdi, %r15
	js	.LBB2_112
# BB#113:                               # %cond.false.176.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%ebx, %ebx
	movl	$0, %edx
	cmovlel	%edx, %eax
	movl	%eax, %ebx
	jmp	.LBB2_114
.LBB2_112:                              # %cond.true.173.i
                                        #   in Loop: Header=BB2_107 Depth=2
	andl	$1, %ebx
	negl	%ebx
.LBB2_114:                              # %cond.end.184.i
                                        #   in Loop: Header=BB2_107 Depth=2
	addl	%ecx, %ebx
	movq	232(%rsp), %rax         # 8-byte Reload
	testl	%eax, %ebx
	cmovneq	%rbp, %r14
	jmp	.LBB2_155
.LBB2_144:                              #   in Loop: Header=BB2_107 Depth=2
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
.LBB2_149:                              # %if.end.437.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	136(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	184(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	gx_fill_trapezoid_cf_fd
	jmp	.LBB2_150
.LBB2_126:                              # %cond.true.264.i
                                        #   in Loop: Header=BB2_107 Depth=2
	negl	%edi
.LBB2_128:                              # %cond.end.275.i
                                        #   in Loop: Header=BB2_107 Depth=2
	subl	%edi, %ebx
	addl	48(%rcx), %edx
	movl	%edx, (%r8,%rsi,4)
	js	.LBB2_129
# BB#130:                               # %cond.false.288.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movl	%edx, %eax
	andl	$1, %eax
	testl	%edx, %edx
	movl	$0, %edx
	cmovlel	%edx, %eax
	addl	%eax, %ebx
	movq	%rcx, %rbp
	jmp	.LBB2_155
.LBB2_129:                              # %cond.true.285.i
                                        #   in Loop: Header=BB2_107 Depth=2
	andl	$1, %edx
	negl	%edx
	addl	%edx, %ebx
	movq	%rcx, %rbp
	jmp	.LBB2_155
.LBB2_135:                              #   in Loop: Header=BB2_107 Depth=2
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
.LBB2_137:                              # %do.end.379.i
                                        #   in Loop: Header=BB2_107 Depth=2
	subl	%esi, %ecx
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %r9
	movq	184(%rsp), %rdi         # 8-byte Reload
	callq	*88(%rsp)               # 8-byte Folded Reload
.LBB2_150:                              # %if.end.443.i
                                        #   in Loop: Header=BB2_107 Depth=2
	testl	%eax, %eax
	movq	%r15, %rdi
	movq	96(%rsp), %r14          # 8-byte Reload
	js	.LBB2_179
.LBB2_151:                              # %if.end.447.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	104(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	movq	208(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %r15
	callq	continue_margin_common
	movq	%r15, %rdi
	testl	%eax, %eax
	js	.LBB2_179
# BB#152:                               # %if.end.452.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movl	%r13d, %ecx
	movq	208(%rsp), %r8          # 8-byte Reload
	movq	%rdi, %r15
	callq	margin_interior
	movq	%r15, %rdi
	testl	%eax, %eax
	js	.LBB2_179
# BB#153:                               # %if.end.457.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	128(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	movq	208(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %r15
	callq	continue_margin_common
	movq	%r15, %rdi
	testl	%eax, %eax
	js	.LBB2_179
# BB#154:                               # %cleanup.472.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	%rdi, %r15
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	movq	208(%rsp), %r9          # 8-byte Reload
	callq	process_h_lists
	movl	%eax, %edi
	testl	%edi, %edi
	movq	%rbp, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	js	.LBB2_960
	.align	16, 0x90
.LBB2_155:                              # %for.inc.475.i
                                        #   in Loop: Header=BB2_107 Depth=2
	movq	216(%rbp), %rbp
	testq	%rbp, %rbp
	movl	%ebx, %ecx
	movq	%r15, %rdi
	jne	.LBB2_107
	jmp	.LBB2_175
.LBB2_156:                              # %for.cond.492.preheader.i
                                        #   in Loop: Header=BB2_63 Depth=1
	xorl	%eax, %eax
	testq	%rbp, %rbp
	movl	$0, %r14d
	movl	$0, %ecx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	je	.LBB2_177
	.align	16, 0x90
.LBB2_157:                              # %for.body.495.i
                                        #   Parent Loop BB2_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	200(%rbp), %r8
	movq	376(%rdi), %rdx
	movl	(%rdx,%r8,4), %ebx
	movq	232(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %eax
	je	.LBB2_158
# BB#165:                               # %if.end.548.i
                                        #   in Loop: Header=BB2_157 Depth=2
	movl	%ebx, %esi
	andl	$1, %esi
	testl	%ebx, %ebx
	js	.LBB2_166
# BB#167:                               # %cond.false.560.i
                                        #   in Loop: Header=BB2_157 Depth=2
	testl	%ebx, %ebx
	movl	$0, %ecx
	cmovlel	%ecx, %esi
	jmp	.LBB2_168
	.align	16, 0x90
.LBB2_158:                              # %if.then.499.i
                                        #   in Loop: Header=BB2_157 Depth=2
	movl	%ebx, %esi
	andl	$1, %esi
	testl	%ebx, %ebx
	js	.LBB2_159
# BB#160:                               # %cond.false.511.i
                                        #   in Loop: Header=BB2_157 Depth=2
	testl	%ebx, %ebx
	movl	$0, %ecx
	cmovlel	%ecx, %esi
	jmp	.LBB2_161
.LBB2_166:                              # %cond.true.557.i
                                        #   in Loop: Header=BB2_157 Depth=2
	negl	%esi
.LBB2_168:                              # %cond.end.568.i
                                        #   in Loop: Header=BB2_157 Depth=2
	subl	%esi, %eax
	addl	48(%rbp), %ebx
	movl	%ebx, (%rdx,%r8,4)
	js	.LBB2_169
# BB#170:                               # %cond.false.581.i
                                        #   in Loop: Header=BB2_157 Depth=2
	movl	%ebx, %ecx
	andl	$1, %ecx
	testl	%ebx, %ebx
	movl	$0, %edx
	cmovlel	%edx, %ecx
	movl	%ecx, %ebx
	jmp	.LBB2_171
.LBB2_169:                              # %cond.true.578.i
                                        #   in Loop: Header=BB2_157 Depth=2
	andl	$1, %ebx
	negl	%ebx
.LBB2_171:                              # %cond.end.589.i
                                        #   in Loop: Header=BB2_157 Depth=2
	addl	%eax, %ebx
	movq	232(%rsp), %rax         # 8-byte Reload
	testl	%eax, %ebx
	jne	.LBB2_174
# BB#172:                               # %if.end.596.i
                                        #   in Loop: Header=BB2_157 Depth=2
	movq	128(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	movq	208(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %r15
	callq	continue_margin_common
	movq	%r15, %rdi
	testl	%eax, %eax
	js	.LBB2_179
# BB#173:                               # %if.end.601.i
                                        #   in Loop: Header=BB2_157 Depth=2
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r13d, %r8d
	movq	208(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %r15
	callq	process_h_lists
	movq	%r15, %rdi
	testl	%eax, %eax
	movq	%rbp, %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	jns	.LBB2_174
	jmp	.LBB2_179
.LBB2_159:                              # %cond.true.508.i
                                        #   in Loop: Header=BB2_157 Depth=2
	negl	%esi
.LBB2_161:                              # %cond.end.519.i
                                        #   in Loop: Header=BB2_157 Depth=2
	subl	%esi, %eax
	addl	48(%rbp), %ebx
	movl	%ebx, (%rdx,%r8,4)
	js	.LBB2_162
# BB#163:                               # %cond.false.532.i
                                        #   in Loop: Header=BB2_157 Depth=2
	movl	%ebx, %ecx
	andl	$1, %ecx
	testl	%ebx, %ebx
	movl	$0, %edx
	cmovlel	%edx, %ecx
	movl	%ecx, %ebx
	jmp	.LBB2_164
.LBB2_162:                              # %cond.true.529.i
                                        #   in Loop: Header=BB2_157 Depth=2
	andl	$1, %ebx
	negl	%ebx
.LBB2_164:                              # %cond.end.540.i
                                        #   in Loop: Header=BB2_157 Depth=2
	addl	%eax, %ebx
	movq	232(%rsp), %rax         # 8-byte Reload
	testl	%eax, %ebx
	cmovneq	%rbp, %r14
.LBB2_174:                              # %for.inc.607.i
                                        #   in Loop: Header=BB2_157 Depth=2
	movq	216(%rbp), %rbp
	testq	%rbp, %rbp
	movl	%ebx, %eax
	jne	.LBB2_157
.LBB2_175:                              # %if.end.614.i
                                        #   in Loop: Header=BB2_63 Depth=1
	cmpq	$0, 192(%rsp)           # 8-byte Folded Reload
	je	.LBB2_177
# BB#176:                               # %if.then.617.i
                                        #   in Loop: Header=BB2_63 Depth=1
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	192(%rsp), %rsi         # 8-byte Reload
	movl	%r13d, %r8d
	movq	208(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %rbx
	callq	process_h_lists
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB2_179
.LBB2_177:                              # %if.end.623.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movq	208(%rsp), %rsi         # 8-byte Reload
	movq	%rdi, %rbx
	callq	move_al_by_y
	testl	%eax, %eax
	js	.LBB2_179
# BB#178:                               # %if.end.628.i
                                        #   in Loop: Header=BB2_63 Depth=1
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movq	208(%rsp), %r13         # 8-byte Reload
	movq	%r12, %r9
	xorps	%xmm3, %xmm3
	jmp	.LBB2_63
.LBB2_307:                              # %if.else.9
	testl	%ecx, %ecx
	je	.LBB2_394
# BB#308:                               # %if.then.12
	movq	40(%rbx), %r9
	xorl	%edi, %edi
	testq	%r9, %r9
	je	.LBB2_960
# BB#309:                               # %if.end.i.491
	movq	80(%rdx), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	4(%r9), %r12d
	leaq	272(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r12), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	leaq	304(%rbx), %rsi
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	leaq	336(%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EAX
	movl	%eax, 120(%rsp)         # 4-byte Spill
	jmp	.LBB2_310
.LBB2_316:                              # %if.end.45.i.570
                                        #   in Loop: Header=BB2_310 Depth=1
	movl	4(%r13), %r12d
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movq	%r13, %r9
.LBB2_310:                              # %while.body.i.501
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_311 Depth 2
                                        #       Child Loop BB2_327 Depth 3
                                        #     Child Loop BB2_338 Depth 2
                                        #     Child Loop BB2_353 Depth 2
                                        #     Child Loop BB2_384 Depth 2
	xorl	%edx, %edx
	testq	%r9, %r9
	jmp	.LBB2_311
	.align	16, 0x90
.LBB2_336:                              # %while.cond.14.backedge.i.562
                                        #   in Loop: Header=BB2_311 Depth=2
	xorl	%edx, %edx
	testq	%r8, %r8
	movq	%r8, %r9
.LBB2_311:                              # %while.body.i.501
                                        #   Parent Loop BB2_310 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_327 Depth 3
	movl	$0, %r13d
	je	.LBB2_314
# BB#312:                               # %land.rhs.i.504
                                        #   in Loop: Header=BB2_311 Depth=2
	movb	$1, %dl
	cmpl	%r12d, 4(%r9)
	jne	.LBB2_313
# BB#317:                               # %while.body.21.i.507
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	216(%r9), %r8
	movq	%r8, 40(%rbx)
	cmpq	%r9, 48(%rbx)
	jne	.LBB2_319
# BB#318:                               # %if.then.26.i.508
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	%r8, 48(%rbx)
.LBB2_319:                              # %if.end.28.i.510
                                        #   in Loop: Header=BB2_311 Depth=2
	testq	%r8, %r8
	je	.LBB2_321
# BB#320:                               # %if.then.31.i.512
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	$0, 208(%r8)
.LBB2_321:                              # %if.end.32.i.515
                                        #   in Loop: Header=BB2_311 Depth=2
	cmpl	$0, 48(%r9)
	je	.LBB2_322
# BB#325:                               # %if.else.i.525
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	%rbx, %r15
	movl	(%r9), %r11d
	movl	%r11d, 32(%r9)
	movl	%r11d, 36(%r9)
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	movq	%rax, %rsi
	movq	216(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_332
# BB#326:                               # %land.rhs.i.lr.ph.i.528
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	224(%rsp), %rsi         # 8-byte Reload
	movq	216(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_327:                              # %land.rhs.i.i.529
                                        #   Parent Loop BB2_310 Depth=1
                                        #     Parent Loop BB2_311 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %r10
	movq	%rdi, %rbx
	cmpl	%r11d, 32(%rbx)
	jl	.LBB2_331
# BB#328:                               # %if.else.i.i.530
                                        #   in Loop: Header=BB2_327 Depth=3
	jg	.LBB2_334
# BB#329:                               # %if.end.6.i.i.535
                                        #   in Loop: Header=BB2_327 Depth=3
	movl	(%rbx), %r14d
	movl	8(%rbx), %ebp
	movl	%ebp, %eax
	subl	%r14d, %eax
	setg	%cl
	movl	8(%r9), %edi
	subl	%r11d, %edi
	setg	%dl
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	cmpl	%edx, %ecx
	je	.LBB2_333
# BB#330:                               # %if.then.17.i.i.536
                                        #   in Loop: Header=BB2_327 Depth=3
	cmpl	%r14d, %ebp
	jle	.LBB2_331
	jmp	.LBB2_334
	.align	16, 0x90
.LBB2_333:                              # %do.end.21.i.i.553
                                        #   in Loop: Header=BB2_327 Depth=3
	movl	12(%rbx), %ecx
	subl	4(%rbx), %ecx
	movl	12(%r9), %edx
	subl	%r12d, %edx
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_334
.LBB2_331:                              # %while.cond.i.backedge.i.538
                                        #   in Loop: Header=BB2_327 Depth=3
	leaq	216(%rbx), %rsi
	movq	216(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB2_327
.LBB2_332:                              # %if.end.critedge.i.i.559
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	$0, 216(%r9)
	movq	%rbx, 208(%r9)
	jmp	.LBB2_335
	.align	16, 0x90
.LBB2_322:                              # %if.then.35.i.518
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	288(%rbx), %rax
	movq	%rax, 216(%r9)
	movq	$0, 208(%r9)
	testq	%rax, %rax
	je	.LBB2_324
# BB#323:                               # %if.then.i.i.520
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	%r9, 208(%rax)
.LBB2_324:                              # %insert_h_new.exit.i.521
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	%r9, 288(%rbx)
	jmp	.LBB2_336
.LBB2_334:                              # %if.then.i.265.i
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	%rbx, 216(%r9)
	movq	%r10, 208(%r9)
	movq	%r9, 208(%rbx)
.LBB2_335:                              # %insert_x_new.exit.i.560
                                        #   in Loop: Header=BB2_311 Depth=2
	movq	%r9, (%rsi)
	movq	%r15, %rbx
	jmp	.LBB2_336
.LBB2_313:                              #   in Loop: Header=BB2_310 Depth=1
	movq	%r9, %r13
.LBB2_314:                              # %while.end.i.566
                                        #   in Loop: Header=BB2_310 Depth=1
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_315
# BB#337:                               # %for.body.lr.ph.i.576
                                        #   in Loop: Header=BB2_310 Depth=1
	movslq	%r12d, %r14
	movl	%r12d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	addq	$127, %r14
	leal	1(%rcx), %ebp
	andq	$-256, %r14
	leaq	4(%r13), %rsi
	testb	%dl, %dl
	cmoveq	128(%rsp), %rsi         # 8-byte Folded Reload
	movl	(%rsi), %edx
	cmpl	%ecx, %edx
	cmovlel	%edx, %ebp
	movl	%ebp, 276(%rsp)
	.align	16, 0x90
.LBB2_338:                              # %for.body.i.579
                                        #   Parent Loop BB2_310 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%ebp, %ecx
	jge	.LBB2_340
# BB#339:                               # %if.then.66.i.580
                                        #   in Loop: Header=BB2_338 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %ebp
.LBB2_340:                              # %for.inc.i.584
                                        #   in Loop: Header=BB2_338 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_338
# BB#341:                               # %for.end.i.586
                                        #   in Loop: Header=BB2_310 Depth=1
	cmpl	%ebp, %r12d
	jne	.LBB2_346
# BB#342:                               # %if.then.73.i.589
                                        #   in Loop: Header=BB2_310 Depth=1
	movq	%rbx, %rdi
	movq	%rbx, %r15
	movl	%r12d, %esi
	callq	process_h_segments
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#343:                               # %if.end.77.i.594
                                        #   in Loop: Header=BB2_310 Depth=1
	movl	%edi, %ebx
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	120(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	js	.LBB2_344
# BB#345:                               # %cleanup.cont.i.596
                                        #   in Loop: Header=BB2_310 Depth=1
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	xorps	%xmm3, %xmm3
	movq	%r15, %rbx
	jle	.LBB2_346
# BB#963:                               # %if.then.85.i.597
                                        #   in Loop: Header=BB2_310 Depth=1
	movq	40(%rbx), %r9
	jmp	.LBB2_310
.LBB2_346:                              # %if.end.88.i.599
                                        #   in Loop: Header=BB2_310 Depth=1
	cmpl	152(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB2_480
# BB#347:                               # %if.end.92.i.605
                                        #   in Loop: Header=BB2_310 Depth=1
	movslq	%ebp, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r14
	setl	%cl
	cmpl	%ebp, %r12d
	jne	.LBB2_349
# BB#348:                               #   in Loop: Header=BB2_310 Depth=1
	movzbl	%cl, %ebp
	movl	%r12d, %r15d
	jmp	.LBB2_350
.LBB2_315:                              # %if.then.41.i.568
                                        #   in Loop: Header=BB2_310 Depth=1
	testq	%r13, %r13
	jne	.LBB2_316
	jmp	.LBB2_480
.LBB2_349:                              # %if.then.105.i.612
                                        #   in Loop: Header=BB2_310 Depth=1
	cmpq	%rax, %r14
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	leaq	276(%rsp), %rdx
	movq	176(%rsp), %r8          # 8-byte Reload
	callq	intersect_al
	movslq	276(%rsp), %r15
	movq	%r15, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r14
	setl	%al
	movzbl	%al, %ebp
.LBB2_350:                              # %if.end.117.i.616
                                        #   in Loop: Header=BB2_310 Depth=1
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	start_margin_set
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#351:                               # %if.end.122.i.617
                                        #   in Loop: Header=BB2_310 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	orl	%eax, %ebp
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbp
	je	.LBB2_383
# BB#352:                               # %for.cond.131.preheader.i
                                        #   in Loop: Header=BB2_310 Depth=1
	xorl	%r14d, %r14d
	testq	%rbp, %rbp
	movl	$0, %ebx
	movl	$0, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	je	.LBB2_392
	.align	16, 0x90
.LBB2_353:                              # %for.body.134.i
                                        #   Parent Loop BB2_310 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	movl	48(%rbp), %ebx
	addl	%ecx, %ebx
	movl	%ebx, %eax
	movq	232(%rsp), %rdx         # 8-byte Reload
	andl	%edx, %eax
	testl	%edx, %ecx
	je	.LBB2_354
# BB#355:                               # %if.end.153.i
                                        #   in Loop: Header=BB2_353 Depth=2
	testl	%eax, %eax
	jne	.LBB2_382
# BB#356:                               # %if.end.160.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movq	216(%rbp), %rax
	testq	%rax, %rax
	je	.LBB2_360
# BB#357:                               # %land.lhs.true.i.619
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	32(%rbp), %ecx
	cmpl	32(%rax), %ecx
	jne	.LBB2_360
# BB#358:                               # %land.lhs.true.169.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	36(%rbp), %ecx
	cmpl	36(%rax), %ecx
	jne	.LBB2_360
# BB#359:                               # %if.then.174.i
                                        #   in Loop: Header=BB2_353 Depth=2
	addl	48(%rax), %ebx
	movq	%rax, %rbp
	jmp	.LBB2_382
	.align	16, 0x90
.LBB2_354:                              # %if.then.145.i
                                        #   in Loop: Header=BB2_353 Depth=2
	testl	%eax, %eax
	cmovneq	%rbp, %r14
	jmp	.LBB2_382
.LBB2_360:                              # %do.end.181.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r12d
	cmovgel	%r12d, %ecx
	cmpl	%r8d, %r15d
	cmovlel	%r15d, %r8d
	movslq	8(%r14), %rax
	cmpl	(%r14), %eax
	jne	.LBB2_366
# BB#361:                               # %land.lhs.true.208.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movslq	8(%rbp), %rdi
	cmpl	(%rbp), %edi
	jne	.LBB2_366
# BB#362:                               # %if.then.215.i
                                        #   in Loop: Header=BB2_353 Depth=2
	cmpl	%ecx, %r8d
	jle	.LBB2_378
# BB#363:                               # %if.then.218.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movslq	%ecx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	leaq	127(%rax), %r9
	movq	%r9, %rsi
	shrq	$8, %rsi
	leaq	127(%rdi), %rcx
	shrq	$8, %rcx
	cmpl	%ecx, %esi
	jne	.LBB2_365
# BB#364:                               # %if.then.243.i
                                        #   in Loop: Header=BB2_353 Depth=2
	andl	$-256, %r9d
	subl	%r9d, %edi
	subl	%eax, %r9d
	cmpl	%edi, %r9d
	setl	%al
	setge	%cl
	movzbl	%cl, %edi
	movzbl	%al, %ecx
	addl	%esi, %ecx
	subl	%edi, %esi
.LBB2_365:                              # %do.end.258.i
                                        #   in Loop: Header=BB2_353 Depth=2
	subl	%esi, %ecx
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %r9
	movq	184(%rsp), %rdi         # 8-byte Reload
	callq	*104(%rsp)              # 8-byte Folded Reload
	jmp	.LBB2_377
.LBB2_366:                              # %if.else.264.i
                                        #   in Loop: Header=BB2_353 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_378
# BB#367:                               # %if.then.267.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movq	(%r14), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 264(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 248(%rsp)
	movl	(%r14), %eax
	movl	$4, %r9d
	cmpl	(%rbp), %eax
	jne	.LBB2_371
# BB#368:                               # %land.lhs.true.285.i
                                        #   in Loop: Header=BB2_353 Depth=2
	cmpl	%r12d, 4(%r14)
	jne	.LBB2_371
# BB#369:                               # %land.lhs.true.290.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	$5, %r9d
	cmpl	%r12d, 4(%rbp)
	je	.LBB2_371
# BB#370:                               # %select.mid3337
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	$4, %r9d
.LBB2_371:                              # %if.end.297.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	8(%r14), %eax
	cmpl	8(%rbp), %eax
	jne	.LBB2_376
# BB#372:                               # %land.lhs.true.304.i
                                        #   in Loop: Header=BB2_353 Depth=2
	cmpl	%r15d, 12(%r14)
	jne	.LBB2_376
# BB#373:                               # %land.lhs.true.309.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	$5, %eax
	cmpl	%r15d, 12(%rbp)
	je	.LBB2_375
# BB#374:                               # %select.mid3346
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	%r9d, %eax
.LBB2_375:                              # %select.end3345
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	%eax, %r9d
.LBB2_376:                              # %if.end.316.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	136(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	184(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	gx_fill_trapezoid_cf_fd
.LBB2_377:                              # %if.end.322.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
.LBB2_378:                              # %if.end.326.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	continue_margin_common
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#379:                               # %if.end.331.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	callq	margin_interior
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#380:                               # %if.end.336.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	continue_margin_common
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#381:                               # %cleanup.351.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	process_h_lists
	movl	%eax, %edi
	testl	%edi, %edi
	movq	%rbp, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	js	.LBB2_960
	.align	16, 0x90
.LBB2_382:                              # %for.inc.354.i
                                        #   in Loop: Header=BB2_353 Depth=2
	movq	216(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB2_353
	jmp	.LBB2_390
.LBB2_383:                              # %for.cond.366.preheader.i
                                        #   in Loop: Header=BB2_310 Depth=1
	xorl	%ebx, %ebx
	testq	%rbp, %rbp
	movl	$0, %r14d
	movl	$0, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	je	.LBB2_392
	.align	16, 0x90
.LBB2_384:                              # %for.body.369.i
                                        #   Parent Loop BB2_310 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	movl	48(%rbp), %ebx
	addl	%ecx, %ebx
	movl	%ebx, %eax
	movq	232(%rsp), %rdx         # 8-byte Reload
	andl	%edx, %eax
	testl	%edx, %ecx
	je	.LBB2_385
# BB#386:                               # %if.end.381.i
                                        #   in Loop: Header=BB2_384 Depth=2
	testl	%eax, %eax
	jne	.LBB2_389
# BB#387:                               # %if.end.388.i
                                        #   in Loop: Header=BB2_384 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	continue_margin_common
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#388:                               # %if.end.393.i
                                        #   in Loop: Header=BB2_384 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	process_h_lists
	movl	%eax, %edi
	testl	%edi, %edi
	movq	%rbp, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	jns	.LBB2_389
	jmp	.LBB2_960
.LBB2_385:                              # %if.then.373.i
                                        #   in Loop: Header=BB2_384 Depth=2
	testl	%eax, %eax
	cmovneq	%rbp, %r14
.LBB2_389:                              # %for.inc.399.i
                                        #   in Loop: Header=BB2_384 Depth=2
	movq	216(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB2_384
.LBB2_390:                              # %if.end.406.i
                                        #   in Loop: Header=BB2_310 Depth=1
	cmpq	$0, 208(%rsp)           # 8-byte Folded Reload
	je	.LBB2_392
# BB#391:                               # %if.then.409.i
                                        #   in Loop: Header=BB2_310 Depth=1
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	process_h_lists
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
.LBB2_392:                              # %if.end.415.i
                                        #   in Loop: Header=BB2_310 Depth=1
	movq	160(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	callq	move_al_by_y
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#393:                               # %if.end.420.i
                                        #   in Loop: Header=BB2_310 Depth=1
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movl	%r15d, %r12d
	movq	%r13, %r9
	xorps	%xmm3, %xmm3
	jmp	.LBB2_310
.LBB2_184:                              # %if.else
	movq	40(%rbx), %r9
	xorl	%edi, %edi
	testq	%r9, %r9
	je	.LBB2_960
# BB#185:                               # %if.end.i.166
	movl	4(%r9), %r14d
	leaq	272(%rbx), %r13
	movq	%r13, 104(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r14), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	leaq	304(%rbx), %rsi
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	leaq	336(%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EAX
	movl	%eax, 120(%rsp)         # 4-byte Spill
	jmp	.LBB2_186
.LBB2_192:                              # %if.end.45.i.246
                                        #   in Loop: Header=BB2_186 Depth=1
	movl	4(%r12), %r14d
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movq	%r12, %r9
.LBB2_186:                              # %while.body.i.176
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_187 Depth 2
                                        #       Child Loop BB2_203 Depth 3
                                        #     Child Loop BB2_214 Depth 2
                                        #     Child Loop BB2_229 Depth 2
                                        #     Child Loop BB2_280 Depth 2
	xorl	%edx, %edx
	testq	%r9, %r9
	jmp	.LBB2_187
	.align	16, 0x90
.LBB2_212:                              # %while.cond.14.backedge.i.238
                                        #   in Loop: Header=BB2_187 Depth=2
	xorl	%edx, %edx
	testq	%r8, %r8
	movq	%r8, %r9
.LBB2_187:                              # %while.body.i.176
                                        #   Parent Loop BB2_186 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_203 Depth 3
	movl	$0, %r12d
	je	.LBB2_190
# BB#188:                               # %land.rhs.i.179
                                        #   in Loop: Header=BB2_187 Depth=2
	movb	$1, %dl
	cmpl	%r14d, 4(%r9)
	jne	.LBB2_189
# BB#193:                               # %while.body.21.i.182
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	216(%r9), %r8
	movq	%r8, 40(%rbx)
	cmpq	%r9, 48(%rbx)
	jne	.LBB2_195
# BB#194:                               # %if.then.26.i.183
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	%r8, 48(%rbx)
.LBB2_195:                              # %if.end.28.i.185
                                        #   in Loop: Header=BB2_187 Depth=2
	testq	%r8, %r8
	je	.LBB2_197
# BB#196:                               # %if.then.31.i.187
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	$0, 208(%r8)
.LBB2_197:                              # %if.end.32.i.190
                                        #   in Loop: Header=BB2_187 Depth=2
	cmpl	$0, 48(%r9)
	je	.LBB2_198
# BB#201:                               # %if.else.i.200
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	%rbx, %r12
	movl	(%r9), %r11d
	movl	%r11d, 32(%r9)
	movl	%r11d, 36(%r9)
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	movq	%r13, %rsi
	movq	224(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_208
# BB#202:                               # %land.rhs.i.lr.ph.i.203
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	%r13, %rsi
	movq	224(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_203:                              # %land.rhs.i.i.204
                                        #   Parent Loop BB2_186 Depth=1
                                        #     Parent Loop BB2_187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %r10
	movq	%rdi, %rbx
	cmpl	%r11d, 32(%rbx)
	jl	.LBB2_207
# BB#204:                               # %if.else.i.i.205
                                        #   in Loop: Header=BB2_203 Depth=3
	jg	.LBB2_210
# BB#205:                               # %if.end.6.i.i.210
                                        #   in Loop: Header=BB2_203 Depth=3
	movl	(%rbx), %r15d
	movl	8(%rbx), %ebp
	movl	%ebp, %eax
	subl	%r15d, %eax
	setg	%cl
	movl	8(%r9), %edi
	subl	%r11d, %edi
	setg	%dl
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	cmpl	%edx, %ecx
	je	.LBB2_209
# BB#206:                               # %if.then.17.i.i.211
                                        #   in Loop: Header=BB2_203 Depth=3
	cmpl	%r15d, %ebp
	jle	.LBB2_207
	jmp	.LBB2_210
	.align	16, 0x90
.LBB2_209:                              # %do.end.21.i.i.229
                                        #   in Loop: Header=BB2_203 Depth=3
	movl	12(%rbx), %ecx
	subl	4(%rbx), %ecx
	movl	12(%r9), %edx
	subl	%r14d, %edx
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_210
.LBB2_207:                              # %while.cond.i.backedge.i.214
                                        #   in Loop: Header=BB2_203 Depth=3
	leaq	216(%rbx), %rsi
	movq	216(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB2_203
.LBB2_208:                              # %if.end.critedge.i.i.235
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	$0, 216(%r9)
	movq	%rbx, 208(%r9)
	jmp	.LBB2_211
	.align	16, 0x90
.LBB2_198:                              # %if.then.35.i.193
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	288(%rbx), %rax
	movq	%rax, 216(%r9)
	movq	$0, 208(%r9)
	testq	%rax, %rax
	je	.LBB2_200
# BB#199:                               # %if.then.i.i.195
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	%r9, 208(%rax)
.LBB2_200:                              # %insert_h_new.exit.i.196
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	%r9, 288(%rbx)
	jmp	.LBB2_212
.LBB2_210:                              # %if.then.i.340.i
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	%rbx, 216(%r9)
	movq	%r10, 208(%r9)
	movq	%r9, 208(%rbx)
.LBB2_211:                              # %insert_x_new.exit.i.236
                                        #   in Loop: Header=BB2_187 Depth=2
	movq	%r9, (%rsi)
	movq	%r12, %rbx
	jmp	.LBB2_212
.LBB2_189:                              #   in Loop: Header=BB2_186 Depth=1
	movq	%r9, %r12
.LBB2_190:                              # %while.end.i.242
                                        #   in Loop: Header=BB2_186 Depth=1
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.LBB2_191
# BB#213:                               # %for.body.lr.ph.i.252
                                        #   in Loop: Header=BB2_186 Depth=1
	movslq	%r14d, %r15
	movl	%r14d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	addq	$127, %r15
	leal	1(%rcx), %ebp
	andq	$-256, %r15
	leaq	4(%r12), %rsi
	testb	%dl, %dl
	cmoveq	128(%rsp), %rsi         # 8-byte Folded Reload
	movl	(%rsi), %edx
	cmpl	%ecx, %edx
	cmovlel	%edx, %ebp
	movl	%ebp, 276(%rsp)
	.align	16, 0x90
.LBB2_214:                              # %for.body.i.255
                                        #   Parent Loop BB2_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%ebp, %ecx
	jge	.LBB2_216
# BB#215:                               # %if.then.66.i.256
                                        #   in Loop: Header=BB2_214 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %ebp
.LBB2_216:                              # %for.inc.i.260
                                        #   in Loop: Header=BB2_214 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_214
# BB#217:                               # %for.end.i.262
                                        #   in Loop: Header=BB2_186 Depth=1
	cmpl	%ebp, %r14d
	jne	.LBB2_222
# BB#218:                               # %if.then.73.i.265
                                        #   in Loop: Header=BB2_186 Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	process_h_segments
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB2_302
# BB#219:                               # %if.end.77.i.270
                                        #   in Loop: Header=BB2_186 Depth=1
	movl	%eax, %ebx
	movq	%rdi, %r13
	movl	%r14d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	120(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	js	.LBB2_220
# BB#221:                               # %cleanup.cont.i.272
                                        #   in Loop: Header=BB2_186 Depth=1
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	xorps	%xmm3, %xmm3
	movq	%r13, %rbx
	jle	.LBB2_222
# BB#962:                               # %if.then.85.i.273
                                        #   in Loop: Header=BB2_186 Depth=1
	movq	40(%rbx), %r9
	movq	104(%rsp), %r13         # 8-byte Reload
	jmp	.LBB2_186
.LBB2_222:                              # %if.end.88.i.275
                                        #   in Loop: Header=BB2_186 Depth=1
	cmpl	152(%rsp), %r14d        # 4-byte Folded Reload
	jge	.LBB2_303
# BB#223:                               # %if.end.92.i.281
                                        #   in Loop: Header=BB2_186 Depth=1
	movslq	%ebp, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r15
	setl	%cl
	cmpl	%ebp, %r14d
	jne	.LBB2_225
# BB#224:                               #   in Loop: Header=BB2_186 Depth=1
	movzbl	%cl, %ebp
	movl	%r14d, %edx
	jmp	.LBB2_226
.LBB2_191:                              # %if.then.41.i.244
                                        #   in Loop: Header=BB2_186 Depth=1
	testq	%r12, %r12
	jne	.LBB2_192
	jmp	.LBB2_303
.LBB2_225:                              # %if.then.105.i.288
                                        #   in Loop: Header=BB2_186 Depth=1
	cmpq	%rax, %r15
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	leaq	276(%rsp), %rdx
	movq	176(%rsp), %r8          # 8-byte Reload
	callq	intersect_al
	movslq	276(%rsp), %rcx
	movq	%rcx, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r15
	movq	%rcx, %rdx
	setl	%al
	movzbl	%al, %ebp
.LBB2_226:                              # %if.end.117.i.292
                                        #   in Loop: Header=BB2_186 Depth=1
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	start_margin_set
	movq	%rbx, %rcx
	testl	%eax, %eax
	js	.LBB2_302
# BB#227:                               # %if.end.122.i.293
                                        #   in Loop: Header=BB2_186 Depth=1
	movq	376(%rcx), %rdi
	movslq	416(%rcx), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	movq	%rcx, %rbx
	callq	memset
	movq	%rbx, %rdi
	movq	176(%rsp), %rax         # 8-byte Reload
	orl	%eax, %ebp
	movq	272(%rdi), %r13
	je	.LBB2_279
# BB#228:                               # %for.cond.133.preheader.i.294
                                        #   in Loop: Header=BB2_186 Depth=1
	xorl	%eax, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	testq	%r13, %r13
	movl	$0, %ecx
	movl	$0, %r10d
	je	.LBB2_300
	.align	16, 0x90
.LBB2_229:                              # %for.body.136.i.301
                                        #   Parent Loop BB2_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	200(%r13), %rdx
	movq	376(%rdi), %rax
	movl	(%rax,%rdx,4), %ebp
	movq	232(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %ecx
	je	.LBB2_230
# BB#237:                               # %if.end.192.i.329
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	%ebp, %esi
	andl	$1, %esi
	testl	%ebp, %ebp
	js	.LBB2_238
# BB#239:                               # %cond.false.204.i.336
                                        #   in Loop: Header=BB2_229 Depth=2
	testl	%ebp, %ebp
	movl	$0, %ebx
	cmovlel	%ebx, %esi
	jmp	.LBB2_240
	.align	16, 0x90
.LBB2_230:                              # %if.then.147.i.302
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	%ebp, %esi
	andl	$1, %esi
	testl	%ebp, %ebp
	js	.LBB2_231
# BB#232:                               # %cond.false.155.i.309
                                        #   in Loop: Header=BB2_229 Depth=2
	testl	%ebp, %ebp
	movl	$0, %ebx
	cmovlel	%ebx, %esi
	jmp	.LBB2_233
.LBB2_238:                              # %cond.true.201.i.332
                                        #   in Loop: Header=BB2_229 Depth=2
	negl	%esi
.LBB2_240:                              # %cond.end.212.i.342
                                        #   in Loop: Header=BB2_229 Depth=2
	subl	%esi, %ecx
	addl	48(%r13), %ebp
	movl	%ebp, (%rax,%rdx,4)
	movq	%rdi, %rbx
	js	.LBB2_241
# BB#242:                               # %cond.false.225.i.349
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	%ebp, %edx
	andl	$1, %edx
	testl	%ebp, %ebp
	movl	$0, %esi
	cmovlel	%esi, %edx
	movl	%edx, %ebp
	jmp	.LBB2_243
.LBB2_241:                              # %cond.true.222.i.345
                                        #   in Loop: Header=BB2_229 Depth=2
	andl	$1, %ebp
	negl	%ebp
.LBB2_243:                              # %cond.end.233.i.354
                                        #   in Loop: Header=BB2_229 Depth=2
	addl	%ecx, %ebp
	movq	232(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ebp
	jne	.LBB2_278
# BB#244:                               # %if.end.240.i.357
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	216(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB2_253
# BB#245:                               # %land.lhs.true.i.361
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	32(%r13), %edx
	cmpl	32(%rcx), %edx
	jne	.LBB2_253
# BB#246:                               # %land.lhs.true.249.i.365
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	36(%r13), %edx
	cmpl	36(%rcx), %edx
	jne	.LBB2_253
# BB#247:                               # %if.then.254.i.370
                                        #   in Loop: Header=BB2_229 Depth=2
	movslq	200(%rcx), %r8
	movl	(%rax,%r8,4), %edx
	movl	%edx, %edi
	andl	$1, %edi
	testl	%edx, %edx
	js	.LBB2_248
# BB#249:                               # %cond.false.267.i.377
                                        #   in Loop: Header=BB2_229 Depth=2
	testl	%edx, %edx
	movl	$0, %esi
	cmovlel	%esi, %edi
	jmp	.LBB2_250
.LBB2_253:                              # %do.end.302.i.402
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r14d
	cmovgel	%r14d, %ecx
	movq	216(%rsp), %rax         # 8-byte Reload
	cmpl	%r8d, %eax
	cmovlel	%eax, %r8d
	movslq	8(%r10), %rax
	cmpl	(%r10), %eax
	movq	%rbx, %rdi
	jne	.LBB2_260
# BB#254:                               # %land.lhs.true.329.i.406
                                        #   in Loop: Header=BB2_229 Depth=2
	movslq	8(%r13), %rbx
	cmpl	(%r13), %ebx
	jne	.LBB2_260
# BB#255:                               # %if.then.336.i.408
                                        #   in Loop: Header=BB2_229 Depth=2
	cmpl	%ecx, %r8d
	jle	.LBB2_274
# BB#256:                               # %if.then.339.i.423
                                        #   in Loop: Header=BB2_229 Depth=2
	movslq	%ecx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	leaq	127(%rax), %r9
	movq	%r9, %rsi
	shrq	$8, %rsi
	leaq	127(%rbx), %rcx
	shrq	$8, %rcx
	cmpl	%ecx, %esi
	jne	.LBB2_257
# BB#258:                               # %if.then.364.i.434
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	%r10, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	andl	$-256, %r9d
	subl	%r9d, %ebx
	subl	%eax, %r9d
	cmpl	%ebx, %r9d
	setl	%al
	setge	%cl
	movzbl	%cl, %edi
	movzbl	%al, %ecx
	addl	%esi, %ecx
	subl	%edi, %esi
	jmp	.LBB2_259
.LBB2_260:                              # %if.else.386.i
                                        #   in Loop: Header=BB2_229 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_274
# BB#261:                               # %if.then.389.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	(%r10), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r10), %rax
	movq	%rax, 264(%rsp)
	movq	(%r13), %rax
	movq	%rax, 240(%rsp)
	movq	8(%r13), %rax
	movq	%rax, 248(%rsp)
	movl	(%r10), %eax
	movl	$4, %r9d
	cmpl	(%r13), %eax
	jne	.LBB2_262
# BB#263:                               # %land.lhs.true.407.i
                                        #   in Loop: Header=BB2_229 Depth=2
	cmpl	%r14d, 4(%r10)
	movq	216(%rsp), %rdx         # 8-byte Reload
	jne	.LBB2_266
# BB#264:                               # %land.lhs.true.412.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	$5, %r9d
	cmpl	%r14d, 4(%r13)
	je	.LBB2_266
# BB#265:                               # %select.mid3238
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	$4, %r9d
	jmp	.LBB2_266
.LBB2_231:                              # %cond.true.152.i.305
                                        #   in Loop: Header=BB2_229 Depth=2
	negl	%esi
.LBB2_233:                              # %cond.end.163.i.315
                                        #   in Loop: Header=BB2_229 Depth=2
	subl	%esi, %ecx
	addl	48(%r13), %ebp
	movl	%ebp, (%rax,%rdx,4)
	movq	%rdi, %rbx
	js	.LBB2_234
# BB#235:                               # %cond.false.176.i.322
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	%ebp, %eax
	andl	$1, %eax
	testl	%ebp, %ebp
	movl	$0, %edx
	cmovlel	%edx, %eax
	movl	%eax, %ebp
	jmp	.LBB2_236
.LBB2_234:                              # %cond.true.173.i.318
                                        #   in Loop: Header=BB2_229 Depth=2
	andl	$1, %ebp
	negl	%ebp
.LBB2_236:                              # %cond.end.184.i.328
                                        #   in Loop: Header=BB2_229 Depth=2
	addl	%ecx, %ebp
	movq	232(%rsp), %rax         # 8-byte Reload
	testl	%eax, %ebp
	cmovneq	%r13, %r10
	jmp	.LBB2_278
.LBB2_262:                              #   in Loop: Header=BB2_229 Depth=2
	movq	216(%rsp), %rdx         # 8-byte Reload
.LBB2_266:                              # %if.end.419.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	8(%r10), %eax
	cmpl	8(%r13), %eax
	jne	.LBB2_267
# BB#268:                               # %land.lhs.true.426.i
                                        #   in Loop: Header=BB2_229 Depth=2
	cmpl	%edx, 12(%r10)
	jne	.LBB2_267
# BB#269:                               # %land.lhs.true.431.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	$5, %eax
	cmpl	%edx, 12(%r13)
	je	.LBB2_271
# BB#270:                               # %select.mid3247
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	%r9d, %eax
.LBB2_271:                              # %select.end3246
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	%r10, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	%eax, %r9d
	jmp	.LBB2_272
.LBB2_267:                              #   in Loop: Header=BB2_229 Depth=2
	movq	%r10, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
.LBB2_272:                              # %if.end.438.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	136(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	184(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	gx_fill_trapezoid_cf_nd
	jmp	.LBB2_273
.LBB2_248:                              # %cond.true.264.i.373
                                        #   in Loop: Header=BB2_229 Depth=2
	negl	%edi
.LBB2_250:                              # %cond.end.275.i.383
                                        #   in Loop: Header=BB2_229 Depth=2
	subl	%edi, %ebp
	addl	48(%rcx), %edx
	movl	%edx, (%rax,%r8,4)
	js	.LBB2_251
# BB#252:                               # %cond.false.288.i.390
                                        #   in Loop: Header=BB2_229 Depth=2
	movl	%edx, %eax
	andl	$1, %eax
	testl	%edx, %edx
	movl	$0, %edx
	cmovlel	%edx, %eax
	addl	%eax, %ebp
	movq	%rcx, %r13
	jmp	.LBB2_278
.LBB2_251:                              # %cond.true.285.i.386
                                        #   in Loop: Header=BB2_229 Depth=2
	andl	$1, %edx
	negl	%edx
	addl	%edx, %ebp
	movq	%rcx, %r13
	jmp	.LBB2_278
.LBB2_257:                              #   in Loop: Header=BB2_229 Depth=2
	movq	%r10, 96(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
.LBB2_259:                              # %do.end.379.i.438
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	subl	%esi, %ecx
	movl	136(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, (%rsp)
	movq	$0, 8(%rsp)
	movq	184(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
.LBB2_273:                              # %if.end.445.i
                                        #   in Loop: Header=BB2_229 Depth=2
	testl	%eax, %eax
	movq	%r15, %rdi
	movq	96(%rsp), %r10          # 8-byte Reload
	js	.LBB2_302
.LBB2_274:                              # %if.end.449.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	%r10, %rdx
	movq	%r13, %rcx
	movl	%r14d, %r8d
	movq	216(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %r15
	movq	%r10, %rbx
	callq	continue_margin_common
	movq	%rbx, %rsi
	movq	%r15, %rdi
	testl	%eax, %eax
	js	.LBB2_302
# BB#275:                               # %if.end.454.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	%r13, %rdx
	movl	%r14d, %ecx
	movq	216(%rsp), %r8          # 8-byte Reload
	movq	%rdi, %r15
	movq	%rsi, %rbx
	callq	margin_interior
	movq	%rbx, %rdx
	movq	%r15, %rdi
	testl	%eax, %eax
	js	.LBB2_302
# BB#276:                               # %if.end.459.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	%r13, %rcx
	movl	%r14d, %r8d
	movq	216(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %r15
	movq	%rdx, %rbx
	callq	continue_margin_common
	movq	%rbx, %rdx
	movq	%r15, %rdi
	testl	%eax, %eax
	js	.LBB2_302
# BB#277:                               # %cleanup.474.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	%rdi, %rbx
	movq	208(%rsp), %rsi         # 8-byte Reload
	movq	%r13, %rcx
	movl	%r14d, %r8d
	movq	216(%rsp), %r9          # 8-byte Reload
	movq	%rdx, %r15
	callq	process_h_lists
	movq	%r15, %r10
	movl	%eax, %edi
	testl	%edi, %edi
	movq	%r13, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	js	.LBB2_960
	.align	16, 0x90
.LBB2_278:                              # %for.inc.477.i
                                        #   in Loop: Header=BB2_229 Depth=2
	movq	216(%r13), %r13
	testq	%r13, %r13
	movl	%ebp, %ecx
	movq	%rbx, %rdi
	jne	.LBB2_229
	jmp	.LBB2_298
.LBB2_279:                              # %for.cond.494.preheader.i
                                        #   in Loop: Header=BB2_186 Depth=1
	xorl	%eax, %eax
	testq	%r13, %r13
	movl	$0, %r15d
	movl	$0, %ecx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	je	.LBB2_300
	.align	16, 0x90
.LBB2_280:                              # %for.body.497.i
                                        #   Parent Loop BB2_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	200(%r13), %rcx
	movq	376(%rdi), %rdx
	movl	(%rdx,%rcx,4), %ebp
	movq	232(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %eax
	je	.LBB2_281
# BB#288:                               # %if.end.550.i
                                        #   in Loop: Header=BB2_280 Depth=2
	movl	%ebp, %esi
	andl	$1, %esi
	testl	%ebp, %ebp
	js	.LBB2_289
# BB#290:                               # %cond.false.562.i
                                        #   in Loop: Header=BB2_280 Depth=2
	testl	%ebp, %ebp
	movl	$0, %ebx
	cmovlel	%ebx, %esi
	jmp	.LBB2_291
.LBB2_281:                              # %if.then.501.i
                                        #   in Loop: Header=BB2_280 Depth=2
	movl	%ebp, %esi
	andl	$1, %esi
	testl	%ebp, %ebp
	js	.LBB2_282
# BB#283:                               # %cond.false.513.i
                                        #   in Loop: Header=BB2_280 Depth=2
	testl	%ebp, %ebp
	movl	$0, %ebx
	cmovlel	%ebx, %esi
	jmp	.LBB2_284
.LBB2_289:                              # %cond.true.559.i
                                        #   in Loop: Header=BB2_280 Depth=2
	negl	%esi
.LBB2_291:                              # %cond.end.570.i
                                        #   in Loop: Header=BB2_280 Depth=2
	subl	%esi, %eax
	addl	48(%r13), %ebp
	movl	%ebp, (%rdx,%rcx,4)
	js	.LBB2_292
# BB#293:                               # %cond.false.583.i
                                        #   in Loop: Header=BB2_280 Depth=2
	movl	%ebp, %ecx
	andl	$1, %ecx
	testl	%ebp, %ebp
	movl	$0, %edx
	cmovlel	%edx, %ecx
	movl	%ecx, %ebp
	jmp	.LBB2_294
.LBB2_292:                              # %cond.true.580.i
                                        #   in Loop: Header=BB2_280 Depth=2
	andl	$1, %ebp
	negl	%ebp
.LBB2_294:                              # %cond.end.591.i
                                        #   in Loop: Header=BB2_280 Depth=2
	addl	%eax, %ebp
	movq	232(%rsp), %rax         # 8-byte Reload
	testl	%eax, %ebp
	jne	.LBB2_297
# BB#295:                               # %if.end.598.i
                                        #   in Loop: Header=BB2_280 Depth=2
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	movq	%r13, %rcx
	movl	%r14d, %r8d
	movq	216(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %rbx
	callq	continue_margin_common
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB2_302
# BB#296:                               # %if.end.603.i
                                        #   in Loop: Header=BB2_280 Depth=2
	movq	208(%rsp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	movq	%r13, %rcx
	movl	%r14d, %r8d
	movq	216(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %rbx
	callq	process_h_lists
	movq	%rbx, %rdi
	testl	%eax, %eax
	movq	%r13, %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	jns	.LBB2_297
	jmp	.LBB2_302
.LBB2_282:                              # %cond.true.510.i
                                        #   in Loop: Header=BB2_280 Depth=2
	negl	%esi
.LBB2_284:                              # %cond.end.521.i
                                        #   in Loop: Header=BB2_280 Depth=2
	subl	%esi, %eax
	addl	48(%r13), %ebp
	movl	%ebp, (%rdx,%rcx,4)
	js	.LBB2_285
# BB#286:                               # %cond.false.534.i
                                        #   in Loop: Header=BB2_280 Depth=2
	movl	%ebp, %ecx
	andl	$1, %ecx
	testl	%ebp, %ebp
	movl	$0, %edx
	cmovlel	%edx, %ecx
	movl	%ecx, %ebp
	jmp	.LBB2_287
.LBB2_285:                              # %cond.true.531.i
                                        #   in Loop: Header=BB2_280 Depth=2
	andl	$1, %ebp
	negl	%ebp
.LBB2_287:                              # %cond.end.542.i
                                        #   in Loop: Header=BB2_280 Depth=2
	addl	%eax, %ebp
	movq	232(%rsp), %rax         # 8-byte Reload
	testl	%eax, %ebp
	cmovneq	%r13, %r15
.LBB2_297:                              # %for.inc.609.i
                                        #   in Loop: Header=BB2_280 Depth=2
	movq	216(%r13), %r13
	testq	%r13, %r13
	movl	%ebp, %eax
	jne	.LBB2_280
.LBB2_298:                              # %if.end.616.i
                                        #   in Loop: Header=BB2_186 Depth=1
	cmpq	$0, 208(%rsp)           # 8-byte Folded Reload
	je	.LBB2_300
# BB#299:                               # %if.then.619.i
                                        #   in Loop: Header=BB2_186 Depth=1
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	208(%rsp), %rsi         # 8-byte Reload
	movl	%r14d, %r8d
	movq	216(%rsp), %r9          # 8-byte Reload
	movq	%rdi, %rbx
	callq	process_h_lists
	movq	%rbx, %rdi
	testl	%eax, %eax
	js	.LBB2_302
.LBB2_300:                              # %if.end.625.i
                                        #   in Loop: Header=BB2_186 Depth=1
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	%rdi, %rbx
	callq	move_al_by_y
	testl	%eax, %eax
	js	.LBB2_302
# BB#301:                               # %if.end.630.i
                                        #   in Loop: Header=BB2_186 Depth=1
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movq	216(%rsp), %r14         # 8-byte Reload
	movq	%r12, %r9
	movq	104(%rsp), %r13         # 8-byte Reload
	xorps	%xmm3, %xmm3
	jmp	.LBB2_186
.LBB2_668:                              # %if.else.27
	movq	72(%rdx), %rsi
	movq	%rsi, %rcx
	shrq	$32, %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	cmpq	$0, 376(%rbx)
	movl	28(%rdx), %ecx
	movl	8(%rdx), %edi
	movl	%edi, 120(%rsp)         # 4-byte Spill
	movq	16(%rdx), %rdi
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	movl	24(%rdx), %edi
	movl	%edi, 152(%rsp)         # 4-byte Spill
	movq	56(%rdx), %rdi
	movq	%rdi, 184(%rsp)         # 8-byte Spill
	movq	64(%rdx), %rdi
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	je	.LBB2_830
# BB#669:                               # %if.then.30
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	je	.LBB2_750
# BB#670:                               # %if.then.33
	movq	40(%rbx), %r13
	xorl	%edi, %edi
	testq	%r13, %r13
	je	.LBB2_960
# BB#671:                               # %if.end.i.1316
	movq	80(%rdx), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	88(%rdx), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movl	4(%r13), %r15d
	leaq	272(%rbx), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r15), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EDI
	jmp	.LBB2_672
.LBB2_748:                              # %if.end.472.i
                                        #   in Loop: Header=BB2_672 Depth=1
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movl	%r14d, %r15d
	xorps	%xmm3, %xmm3
	movl	144(%rsp), %edi         # 4-byte Reload
.LBB2_672:                              # %while.body.i.1327
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_673 Depth 2
                                        #       Child Loop BB2_674 Depth 3
                                        #         Child Loop BB2_687 Depth 4
                                        #     Child Loop BB2_700 Depth 2
                                        #     Child Loop BB2_715 Depth 2
	movslq	%r15d, %rax
	addq	$127, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	%r15d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leal	1(%rcx), %r14d
	andq	$-256, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
.LBB2_673:                              # %while.cond.14.outer.i.1330
                                        #   Parent Loop BB2_672 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_674 Depth 3
                                        #         Child Loop BB2_687 Depth 4
	movl	%edi, 208(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	testq	%r13, %r13
	movq	%r13, %r9
	movl	$0, %r13d
	je	.LBB2_696
	.align	16, 0x90
.LBB2_674:                              # %land.rhs.i.1333
                                        #   Parent Loop BB2_672 Depth=1
                                        #     Parent Loop BB2_673 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_687 Depth 4
	movb	$1, %cl
	cmpl	%r15d, 4(%r9)
	jne	.LBB2_675
# BB#676:                               # %while.body.21.i.1336
                                        #   in Loop: Header=BB2_674 Depth=3
	movq	216(%r9), %r13
	movq	%r13, 40(%rbx)
	cmpq	%r9, 48(%rbx)
	jne	.LBB2_678
# BB#677:                               # %if.then.26.i.1337
                                        #   in Loop: Header=BB2_674 Depth=3
	movq	%r13, 48(%rbx)
.LBB2_678:                              # %if.end.28.i.1339
                                        #   in Loop: Header=BB2_674 Depth=3
	movq	%rbx, %r12
	testq	%r13, %r13
	je	.LBB2_680
# BB#679:                               # %if.then.31.i.1341
                                        #   in Loop: Header=BB2_674 Depth=3
	movq	$0, 208(%r13)
.LBB2_680:                              # %if.end.32.i.1344
                                        #   in Loop: Header=BB2_674 Depth=3
	movl	(%r9), %r10d
	cmpl	$0, 48(%r9)
	je	.LBB2_681
# BB#685:                               # %if.else.85.i.1375
                                        #   in Loop: Header=BB2_674 Depth=3
	movl	%r10d, 32(%r9)
	movl	%r10d, 36(%r9)
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rax, %rdi
	movq	224(%rsp), %rbp         # 8-byte Reload
	je	.LBB2_692
# BB#686:                               # %land.rhs.i.lr.ph.i.1378
                                        #   in Loop: Header=BB2_674 Depth=3
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB2_687:                              # %land.rhs.i.i.1379
                                        #   Parent Loop BB2_672 Depth=1
                                        #     Parent Loop BB2_673 Depth=2
                                        #       Parent Loop BB2_674 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbp, %r8
	movq	%rsi, %rbp
	cmpl	%r10d, 32(%rbp)
	jl	.LBB2_691
# BB#688:                               # %if.else.i.i.1380
                                        #   in Loop: Header=BB2_687 Depth=4
	jg	.LBB2_694
# BB#689:                               # %if.end.6.i.i.1385
                                        #   in Loop: Header=BB2_687 Depth=4
	movl	(%rbp), %r11d
	movl	8(%rbp), %eax
	movl	%eax, %ebx
	subl	%r11d, %ebx
	setg	%dl
	movl	8(%r9), %esi
	subl	%r10d, %esi
	setg	%cl
	movzbl	%cl, %ecx
	movzbl	%dl, %edx
	cmpl	%ecx, %edx
	je	.LBB2_693
# BB#690:                               # %if.then.17.i.i.1386
                                        #   in Loop: Header=BB2_687 Depth=4
	cmpl	%r11d, %eax
	jle	.LBB2_691
	jmp	.LBB2_694
	.align	16, 0x90
.LBB2_693:                              # %do.end.21.i.i.1404
                                        #   in Loop: Header=BB2_687 Depth=4
	movl	12(%rbp), %eax
	subl	4(%rbp), %eax
	movl	12(%r9), %ecx
	subl	%r15d, %ecx
	cvtsi2sdl	%ebx, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_694
.LBB2_691:                              # %while.cond.i.backedge.i.1389
                                        #   in Loop: Header=BB2_687 Depth=4
	leaq	216(%rbp), %rdi
	movq	216(%rbp), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_687
.LBB2_692:                              # %if.end.critedge.i.i.1411
                                        #   in Loop: Header=BB2_674 Depth=3
	movq	$0, 216(%r9)
	movq	%rbp, 208(%r9)
	jmp	.LBB2_695
	.align	16, 0x90
.LBB2_694:                              # %if.then.i.i.1407
                                        #   in Loop: Header=BB2_674 Depth=3
	movq	%rbp, 216(%r9)
	movq	%r8, 208(%r9)
	movq	%r9, 208(%rbp)
.LBB2_695:                              # %insert_x_new.exit.i.1413
                                        #   in Loop: Header=BB2_674 Depth=3
	movq	%r9, (%rdi)
	xorl	%ecx, %ecx
	testq	%r13, %r13
	movq	%r13, %r9
	movl	$0, %r13d
	movq	%r12, %rbx
	jne	.LBB2_674
	jmp	.LBB2_696
.LBB2_681:                              # %if.then.35.i.1348
                                        #   in Loop: Header=BB2_673 Depth=2
	movslq	%r10d, %rsi
	movslq	8(%r9), %rcx
	cmpl	%ecx, %r10d
	jle	.LBB2_682
# BB#683:                               # %if.else.i.1364
                                        #   in Loop: Header=BB2_673 Depth=2
	addq	$127, %rcx
	shrq	$8, %rcx
	movl	%ecx, %eax
	addq	$127, %rsi
	shrq	$8, %rsi
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	%eax, %esi
	jmp	.LBB2_684
.LBB2_682:                              # %if.then.44.i.1356
                                        #   in Loop: Header=BB2_673 Depth=2
	addq	$127, %rsi
	shrq	$8, %rsi
	addq	$127, %rcx
	shrq	$8, %rcx
	subl	%esi, %ecx
.LBB2_684:                              # %do.end.78.i.1371
                                        #   in Loop: Header=BB2_673 Depth=2
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %r9
	movl	$1, %r8d
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	136(%rsp), %rdx         # 8-byte Reload
	callq	*104(%rsp)              # 8-byte Folded Reload
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	movq	%r12, %rbx
	xorps	%xmm3, %xmm3
	jns	.LBB2_673
	jmp	.LBB2_960
.LBB2_675:                              #   in Loop: Header=BB2_672 Depth=1
	movq	%r9, %r13
.LBB2_696:                              # %while.end.i.1417
                                        #   in Loop: Header=BB2_672 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_697
# BB#699:                               # %for.body.lr.ph.i.1427
                                        #   in Loop: Header=BB2_672 Depth=1
	leaq	4(%r13), %rdx
	testb	%cl, %cl
	cmoveq	112(%rsp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %ecx
	movq	144(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	cmovlel	%ecx, %r14d
	movl	%r14d, 276(%rsp)
	.align	16, 0x90
.LBB2_700:                              # %for.body.i.1430
                                        #   Parent Loop BB2_672 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%r14d, %ecx
	jge	.LBB2_702
# BB#701:                               # %if.then.120.i.1431
                                        #   in Loop: Header=BB2_700 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %r14d
.LBB2_702:                              # %for.inc.i.1435
                                        #   in Loop: Header=BB2_700 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_700
# BB#703:                               # %for.end.i.1437
                                        #   in Loop: Header=BB2_672 Depth=1
	cmpl	%r14d, %r15d
	jne	.LBB2_704
# BB#705:                               # %if.then.127.i.1440
                                        #   in Loop: Header=BB2_672 Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	process_h_segments
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_749
# BB#706:                               # %if.end.132.i.1445
                                        #   in Loop: Header=BB2_672 Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	js	.LBB2_960
# BB#707:                               # %cleanup.cont.140.i.1447
                                        #   in Loop: Header=BB2_672 Depth=1
	testl	%r12d, %r12d
	jle	.LBB2_708
# BB#967:                               # %if.then.143.i.1448
                                        #   in Loop: Header=BB2_672 Depth=1
	movq	40(%rbx), %r13
	xorps	%xmm3, %xmm3
	jmp	.LBB2_672
.LBB2_697:                              # %if.then.94.i.1419
                                        #   in Loop: Header=BB2_672 Depth=1
	testq	%r13, %r13
	je	.LBB2_959
# BB#698:                               # %if.end.98.i.1421
                                        #   in Loop: Header=BB2_672 Depth=1
	movl	4(%r13), %r15d
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movl	208(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_672
.LBB2_704:                              #   in Loop: Header=BB2_672 Depth=1
	movl	208(%rsp), %edx         # 4-byte Reload
	jmp	.LBB2_709
.LBB2_708:                              #   in Loop: Header=BB2_672 Depth=1
	movl	%edi, %edx
.LBB2_709:                              # %if.end.146.i.1450
                                        #   in Loop: Header=BB2_672 Depth=1
	movq	128(%rsp), %r12         # 8-byte Reload
	cmpl	120(%rsp), %r15d        # 4-byte Folded Reload
	jge	.LBB2_959
# BB#710:                               # %if.end.150.i.1456
                                        #   in Loop: Header=BB2_672 Depth=1
	movslq	%r14d, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r12
	setl	%cl
	cmpl	%r14d, %r15d
	jne	.LBB2_712
# BB#711:                               #   in Loop: Header=BB2_672 Depth=1
	movl	%edx, 144(%rsp)         # 4-byte Spill
	movzbl	%cl, %eax
	movl	%r15d, %r14d
	movq	168(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_713
.LBB2_712:                              # %if.then.163.i.1463
                                        #   in Loop: Header=BB2_672 Depth=1
	movl	%edx, 144(%rsp)         # 4-byte Spill
	cmpq	%rax, %r12
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	leaq	276(%rsp), %rdx
	movq	168(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %r8d
	callq	intersect_al
	movslq	276(%rsp), %r14
	movq	%r14, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r12
	setl	%al
	movzbl	%al, %eax
.LBB2_713:                              # %if.end.175.i.1465
                                        #   in Loop: Header=BB2_672 Depth=1
	movq	%r14, 208(%rsp)         # 8-byte Spill
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	orl	%ebp, %eax
	movq	%rbx, %r9
	je	.LBB2_747
# BB#714:                               # %if.then.178.i
                                        #   in Loop: Header=BB2_672 Depth=1
	movq	376(%r9), %rdi
	movslq	416(%r9), %rdx
	shlq	$2, %rdx
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%r9, %rbx
	callq	memset
	movq	%rbx, %r9
	movq	272(%r9), %rbp
	testq	%rbp, %rbp
	movl	$0, %ecx
	jne	.LBB2_715
	jmp	.LBB2_747
.LBB2_734:                              # %cond.true.317.i
                                        #   in Loop: Header=BB2_715 Depth=2
	negl	%edi
.LBB2_736:                              # %cond.end.328.i
                                        #   in Loop: Header=BB2_715 Depth=2
	subl	%edi, %ebx
	addl	48(%rcx), %edx
	movl	%edx, (%rax,%rsi,4)
	js	.LBB2_737
# BB#738:                               # %cond.false.341.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movl	%edx, %eax
	andl	$1, %eax
	testl	%edx, %edx
	movl	$0, %edx
	cmovlel	%edx, %eax
	addl	%eax, %ebx
	movq	%rcx, %rbp
	jmp	.LBB2_746
.LBB2_737:                              # %cond.true.338.i
                                        #   in Loop: Header=BB2_715 Depth=2
	andl	$1, %edx
	negl	%edx
	addl	%edx, %ebx
	movq	%rcx, %rbp
	jmp	.LBB2_746
	.align	16, 0x90
.LBB2_715:                              # %for.body.189.i
                                        #   Parent Loop BB2_672 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	200(%rbp), %rdx
	movq	376(%r9), %rax
	movl	(%rax,%rdx,4), %ebx
	movq	216(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %ecx
	je	.LBB2_716
# BB#723:                               # %if.end.245.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movl	%ebx, %esi
	andl	$1, %esi
	testl	%ebx, %ebx
	js	.LBB2_724
# BB#725:                               # %cond.false.257.i
                                        #   in Loop: Header=BB2_715 Depth=2
	testl	%ebx, %ebx
	movl	$0, %edi
	cmovlel	%edi, %esi
	jmp	.LBB2_726
	.align	16, 0x90
.LBB2_716:                              # %if.then.200.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movl	%ebx, %esi
	andl	$1, %esi
	testl	%ebx, %ebx
	js	.LBB2_717
# BB#718:                               # %cond.false.208.i
                                        #   in Loop: Header=BB2_715 Depth=2
	testl	%ebx, %ebx
	movl	$0, %edi
	cmovlel	%edi, %esi
	jmp	.LBB2_719
.LBB2_724:                              # %cond.true.254.i
                                        #   in Loop: Header=BB2_715 Depth=2
	negl	%esi
.LBB2_726:                              # %cond.end.265.i
                                        #   in Loop: Header=BB2_715 Depth=2
	subl	%esi, %ecx
	addl	48(%rbp), %ebx
	movl	%ebx, (%rax,%rdx,4)
	js	.LBB2_727
# BB#728:                               # %cond.false.278.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movl	%ebx, %edx
	andl	$1, %edx
	testl	%ebx, %ebx
	movl	$0, %esi
	cmovlel	%esi, %edx
	movl	%edx, %ebx
	jmp	.LBB2_729
.LBB2_727:                              # %cond.true.275.i
                                        #   in Loop: Header=BB2_715 Depth=2
	andl	$1, %ebx
	negl	%ebx
.LBB2_729:                              # %cond.end.286.i
                                        #   in Loop: Header=BB2_715 Depth=2
	addl	%ecx, %ebx
	movq	216(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ebx
	jne	.LBB2_746
# BB#730:                               # %if.end.293.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movq	216(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB2_739
# BB#731:                               # %land.lhs.true.i.1476
                                        #   in Loop: Header=BB2_715 Depth=2
	movl	32(%rbp), %edx
	cmpl	32(%rcx), %edx
	jne	.LBB2_739
# BB#732:                               # %land.lhs.true.302.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movl	36(%rbp), %edx
	cmpl	36(%rcx), %edx
	jne	.LBB2_739
# BB#733:                               # %if.then.307.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movslq	200(%rcx), %rsi
	movl	(%rax,%rsi,4), %edx
	movl	%edx, %edi
	andl	$1, %edi
	testl	%edx, %edx
	js	.LBB2_734
# BB#735:                               # %cond.false.320.i
                                        #   in Loop: Header=BB2_715 Depth=2
	testl	%edx, %edx
	movl	$0, %ebp
	cmovlel	%ebp, %edi
	jmp	.LBB2_736
.LBB2_739:                              # %do.end.355.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r15d
	cmovgel	%r15d, %ecx
	cmpl	%r8d, %r14d
	cmovlel	%r14d, %r8d
	movslq	8(%r12), %rsi
	cmpl	(%r12), %esi
	jne	.LBB2_743
# BB#740:                               # %land.lhs.true.383.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movslq	8(%rbp), %rax
	cmpl	(%rbp), %eax
	jne	.LBB2_743
# BB#741:                               # %if.then.390.i
                                        #   in Loop: Header=BB2_715 Depth=2
	cmpl	%ecx, %r8d
	jle	.LBB2_746
# BB#742:                               # %if.then.393.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movq	%r9, %r14
	movslq	%ecx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	addq	$127, %rsi
	shrq	$8, %rsi
	addq	$127, %rax
	shrq	$8, %rax
	subl	%esi, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	8(%rcx), %r9
	movq	184(%rsp), %rdi         # 8-byte Reload
	movl	%eax, %ecx
	callq	*104(%rsp)              # 8-byte Folded Reload
	jmp	.LBB2_745
.LBB2_743:                              # %if.else.431.i
                                        #   in Loop: Header=BB2_715 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_746
# BB#744:                               # %if.then.434.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movq	%r9, %r14
	movq	(%r12), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r12), %rax
	movq	%rax, 264(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 248(%rsp)
	movl	152(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movq	184(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	*96(%rsp)               # 8-byte Folded Reload
.LBB2_745:                              # %cleanup.456.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movl	%eax, %edi
	testl	%edi, %edi
	movq	%r14, %r9
	movq	208(%rsp), %r14         # 8-byte Reload
	jns	.LBB2_746
	jmp	.LBB2_960
.LBB2_717:                              # %cond.true.205.i
                                        #   in Loop: Header=BB2_715 Depth=2
	negl	%esi
.LBB2_719:                              # %cond.end.216.i
                                        #   in Loop: Header=BB2_715 Depth=2
	subl	%esi, %ecx
	addl	48(%rbp), %ebx
	movl	%ebx, (%rax,%rdx,4)
	js	.LBB2_720
# BB#721:                               # %cond.false.229.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%ebx, %ebx
	movl	$0, %edx
	cmovlel	%edx, %eax
	movl	%eax, %ebx
	jmp	.LBB2_722
.LBB2_720:                              # %cond.true.226.i
                                        #   in Loop: Header=BB2_715 Depth=2
	andl	$1, %ebx
	negl	%ebx
.LBB2_722:                              # %cond.end.237.i
                                        #   in Loop: Header=BB2_715 Depth=2
	addl	%ecx, %ebx
	movq	216(%rsp), %rax         # 8-byte Reload
	testl	%eax, %ebx
	cmovneq	%rbp, %r12
.LBB2_746:                              # %for.inc.459.i
                                        #   in Loop: Header=BB2_715 Depth=2
	movq	216(%rbp), %rbp
	testq	%rbp, %rbp
	movl	%ebx, %ecx
	jne	.LBB2_715
.LBB2_747:                              # %if.end.467.i
                                        #   in Loop: Header=BB2_672 Depth=1
	movq	%r9, %rdi
	movl	%r14d, %esi
	movq	%r9, %rbx
	callq	move_al_by_y
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB2_748
.LBB2_749:                              # %cleanup.476.thread255.i
	movl	%r12d, %edi
	jmp	.LBB2_960
.LBB2_179:                              # %cleanup.632.thread.i
	movl	%eax, %edi
	jmp	.LBB2_960
.LBB2_577:                              # %if.else.25
	movq	40(%rbx), %r13
	xorl	%edi, %edi
	testq	%r13, %r13
	je	.LBB2_960
# BB#578:                               # %if.end.i.1096
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	88(%rdx), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	4(%r13), %ebp
	leaq	272(%rbx), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%rbp), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rbx, %r12
	movq	%r12, 160(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movq	192(%rsp), %rax         # 8-byte Reload
	orl	%eax, %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EDI
	jmp	.LBB2_579
.LBB2_666:                              # %if.end.416.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	288(%r12), %rax
	movq	%rax, 296(%r12)
	movq	$0, 288(%r12)
	movq	208(%rsp), %rbp         # 8-byte Reload
	xorps	%xmm3, %xmm3
	movl	76(%rsp), %edi          # 4-byte Reload
.LBB2_579:                              # %while.body.i.1108
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_580 Depth 2
                                        #       Child Loop BB2_581 Depth 3
                                        #         Child Loop BB2_594 Depth 4
                                        #     Child Loop BB2_607 Depth 2
                                        #     Child Loop BB2_623 Depth 2
	movl	%ebp, %ecx
	movq	192(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ecx
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	movslq	%ecx, %rax
	addq	$127, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movl	%ebp, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leal	1(%rcx), %r14d
	andq	$-256, %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
.LBB2_580:                              # %while.cond.14.outer.i.1111
                                        #   Parent Loop BB2_579 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_581 Depth 3
                                        #         Child Loop BB2_594 Depth 4
	movl	%edi, 208(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	testq	%r13, %r13
	movq	%r13, %r9
	movl	$0, %r13d
	je	.LBB2_603
	.align	16, 0x90
.LBB2_581:                              # %land.rhs.i.1114
                                        #   Parent Loop BB2_579 Depth=1
                                        #     Parent Loop BB2_580 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_594 Depth 4
	movb	$1, %cl
	cmpl	%ebp, 4(%r9)
	jne	.LBB2_582
# BB#583:                               # %while.body.21.i.1117
                                        #   in Loop: Header=BB2_581 Depth=3
	movq	216(%r9), %r13
	movq	%r13, 40(%r12)
	cmpq	%r9, 48(%r12)
	jne	.LBB2_585
# BB#584:                               # %if.then.26.i.1118
                                        #   in Loop: Header=BB2_581 Depth=3
	movq	%r13, 48(%r12)
.LBB2_585:                              # %if.end.28.i.1120
                                        #   in Loop: Header=BB2_581 Depth=3
	testq	%r13, %r13
	je	.LBB2_587
# BB#586:                               # %if.then.31.i.1122
                                        #   in Loop: Header=BB2_581 Depth=3
	movq	$0, 208(%r13)
.LBB2_587:                              # %if.end.32.i.1125
                                        #   in Loop: Header=BB2_581 Depth=3
	movl	(%r9), %r10d
	cmpl	$0, 48(%r9)
	je	.LBB2_588
# BB#592:                               # %if.else.88.i
                                        #   in Loop: Header=BB2_581 Depth=3
	movq	%rbp, %r15
	movl	%r10d, 32(%r9)
	movl	%r10d, 36(%r9)
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rax, %rdi
	movq	224(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_599
# BB#593:                               # %land.rhs.i.lr.ph.i.1162
                                        #   in Loop: Header=BB2_581 Depth=3
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_594:                              # %land.rhs.i.i.1163
                                        #   Parent Loop BB2_579 Depth=1
                                        #     Parent Loop BB2_580 Depth=2
                                        #       Parent Loop BB2_581 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbx, %r8
	movq	%rsi, %rbx
	cmpl	%r10d, 32(%rbx)
	jl	.LBB2_598
# BB#595:                               # %if.else.i.i.1164
                                        #   in Loop: Header=BB2_594 Depth=4
	jg	.LBB2_601
# BB#596:                               # %if.end.6.i.i.1169
                                        #   in Loop: Header=BB2_594 Depth=4
	movl	(%rbx), %r11d
	movl	8(%rbx), %eax
	movl	%eax, %ebp
	subl	%r11d, %ebp
	setg	%cl
	movl	8(%r9), %esi
	subl	%r10d, %esi
	setg	%dl
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	cmpl	%edx, %ecx
	je	.LBB2_600
# BB#597:                               # %if.then.17.i.i.1170
                                        #   in Loop: Header=BB2_594 Depth=4
	cmpl	%r11d, %eax
	jle	.LBB2_598
	jmp	.LBB2_601
	.align	16, 0x90
.LBB2_600:                              # %do.end.21.i.i.1188
                                        #   in Loop: Header=BB2_594 Depth=4
	movl	12(%rbx), %eax
	subl	4(%rbx), %eax
	movl	12(%r9), %ecx
	subl	%r15d, %ecx
	cvtsi2sdl	%ebp, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_601
.LBB2_598:                              # %while.cond.i.backedge.i.1173
                                        #   in Loop: Header=BB2_594 Depth=4
	leaq	216(%rbx), %rdi
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_594
.LBB2_599:                              # %if.end.critedge.i.i.1195
                                        #   in Loop: Header=BB2_581 Depth=3
	movq	$0, 216(%r9)
	movq	%rbx, 208(%r9)
	jmp	.LBB2_602
	.align	16, 0x90
.LBB2_601:                              # %if.then.i.i.1191
                                        #   in Loop: Header=BB2_581 Depth=3
	movq	%rbx, 216(%r9)
	movq	%r8, 208(%r9)
	movq	%r9, 208(%rbx)
.LBB2_602:                              # %insert_x_new.exit.i.1197
                                        #   in Loop: Header=BB2_581 Depth=3
	movq	%r9, (%rdi)
	xorl	%ecx, %ecx
	testq	%r13, %r13
	movq	%r13, %r9
	movl	$0, %r13d
	movq	%r15, %rbp
	jne	.LBB2_581
	jmp	.LBB2_603
.LBB2_588:                              # %if.then.35.i.1129
                                        #   in Loop: Header=BB2_580 Depth=2
	movl	8(%r9), %eax
	cmpl	%eax, %r10d
	jle	.LBB2_589
# BB#590:                               # %if.else.i.1149
                                        #   in Loop: Header=BB2_580 Depth=2
	movq	112(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movslq	%eax, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movq	104(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r10d
	movslq	%r10d, %rcx
	jmp	.LBB2_591
.LBB2_589:                              # %if.then.44.i.1139
                                        #   in Loop: Header=BB2_580 Depth=2
	movq	112(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %r10d
	movslq	%r10d, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movq	104(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rcx
.LBB2_591:                              # %do.end.80.i.1156
                                        #   in Loop: Header=BB2_580 Depth=2
	addq	$127, %rcx
	shrq	$8, %rcx
	subl	%esi, %ecx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movl	72(%rsp), %edx          # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	movq	168(%rsp), %rdx         # 8-byte Reload
	movq	128(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	xorps	%xmm3, %xmm3
	jns	.LBB2_580
	jmp	.LBB2_960
.LBB2_582:                              #   in Loop: Header=BB2_579 Depth=1
	movq	%r9, %r13
.LBB2_603:                              # %while.end.i.1201
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_604
# BB#606:                               # %for.body.lr.ph.i.1204
                                        #   in Loop: Header=BB2_579 Depth=1
	leaq	4(%r13), %rdx
	testb	%cl, %cl
	cmoveq	64(%rsp), %rdx          # 8-byte Folded Reload
	movl	(%rdx), %ecx
	movq	184(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	cmovlel	%ecx, %r14d
	movl	%r14d, 276(%rsp)
	.align	16, 0x90
.LBB2_607:                              # %for.body.i.1205
                                        #   Parent Loop BB2_579 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%r14d, %ecx
	jge	.LBB2_609
# BB#608:                               # %if.then.123.i
                                        #   in Loop: Header=BB2_607 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %r14d
.LBB2_609:                              # %for.inc.i.1207
                                        #   in Loop: Header=BB2_607 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_607
# BB#610:                               # %for.end.i.1208
                                        #   in Loop: Header=BB2_579 Depth=1
	cmpl	%r14d, %ebp
	jne	.LBB2_611
# BB#612:                               # %if.then.130.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	process_h_segments
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_667
# BB#613:                               # %if.end.135.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	js	.LBB2_960
# BB#614:                               # %cleanup.cont.143.i
                                        #   in Loop: Header=BB2_579 Depth=1
	testl	%r15d, %r15d
	jle	.LBB2_615
# BB#966:                               # %if.then.146.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	40(%r12), %r13
	xorps	%xmm3, %xmm3
	jmp	.LBB2_579
.LBB2_604:                              # %if.then.97.i
                                        #   in Loop: Header=BB2_579 Depth=1
	testq	%r13, %r13
	je	.LBB2_959
# BB#605:                               # %if.end.101.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movl	4(%r13), %ebp
	movq	288(%r12), %rax
	movq	%rax, 296(%r12)
	movq	$0, 288(%r12)
	movl	208(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_579
.LBB2_611:                              #   in Loop: Header=BB2_579 Depth=1
	movl	208(%rsp), %edx         # 4-byte Reload
	jmp	.LBB2_616
.LBB2_615:                              #   in Loop: Header=BB2_579 Depth=1
	movl	%edi, %edx
.LBB2_616:                              # %if.end.149.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	144(%rsp), %r9          # 8-byte Reload
	cmpl	88(%rsp), %ebp          # 4-byte Folded Reload
	jge	.LBB2_959
# BB#617:                               # %if.end.153.i.1213
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	%rax, %rbx
	leal	(%r14,%rbx), %eax
	cltq
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r9
	setl	%cl
	cmpl	%r14d, %ebp
	jne	.LBB2_619
# BB#618:                               #   in Loop: Header=BB2_579 Depth=1
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movzbl	%cl, %eax
	movl	%ebp, %ecx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movq	%rbp, %r12
	movq	152(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_620
.LBB2_619:                              # %if.then.167.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movl	%edx, 76(%rsp)          # 4-byte Spill
	cmpq	%rax, %r9
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%rbp, %r12
	leaq	276(%rsp), %rdx
	movq	152(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %r8d
	movq	%r9, %r15
	callq	intersect_al
	movl	276(%rsp), %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leal	(%rax,%rbx), %eax
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	cltq
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r15
	setl	%al
	movzbl	%al, %eax
.LBB2_620:                              # %if.end.181.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	orl	%ebp, %eax
	je	.LBB2_665
# BB#621:                               # %for.cond.190.preheader.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_665
# BB#622:                               # %for.body.193.preheader.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	208(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_623:                              # %for.body.193.i
                                        #   Parent Loop BB2_579 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %ecx
	movl	48(%rbx), %ebp
	addl	%ecx, %ebp
	movl	%ebp, %eax
	movq	216(%rsp), %rdx         # 8-byte Reload
	andl	%edx, %eax
	testl	%edx, %ecx
	je	.LBB2_624
# BB#625:                               # %if.end.212.i
                                        #   in Loop: Header=BB2_623 Depth=2
	testl	%eax, %eax
	jne	.LBB2_664
# BB#626:                               # %if.end.219.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	216(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_630
# BB#627:                               # %land.lhs.true.i.1219
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	32(%rbx), %ecx
	cmpl	32(%rax), %ecx
	jne	.LBB2_630
# BB#628:                               # %land.lhs.true.228.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	36(%rbx), %ecx
	cmpl	36(%rax), %ecx
	jne	.LBB2_630
# BB#629:                               # %if.then.233.i
                                        #   in Loop: Header=BB2_623 Depth=2
	addl	48(%rax), %ebp
	movq	%rax, %rbx
	jmp	.LBB2_664
	.align	16, 0x90
.LBB2_624:                              # %if.then.204.i
                                        #   in Loop: Header=BB2_623 Depth=2
	testl	%eax, %eax
	cmovneq	%rbx, %r14
	jmp	.LBB2_664
.LBB2_630:                              # %do.end.240.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	(%r14), %edi
	movl	8(%r14), %r9d
	cmpl	%edi, %r9d
	jne	.LBB2_634
# BB#631:                               # %land.lhs.true.247.i
                                        #   in Loop: Header=BB2_623 Depth=2
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movl	(%rbx), %edx
	movl	8(%rbx), %r15d
	movq	160(%rsp), %rax         # 8-byte Reload
	je	.LBB2_659
# BB#632:                               # %land.lhs.true.247.i
                                        #   in Loop: Header=BB2_623 Depth=2
	cmpl	%edx, %r15d
	je	.LBB2_659
# BB#633:                               #   in Loop: Header=BB2_623 Depth=2
	movl	%ebp, 184(%rsp)         # 4-byte Spill
	movq	%r14, 168(%rsp)         # 8-byte Spill
	jmp	.LBB2_639
.LBB2_634:                              # %land.lhs.true.254.i
                                        #   in Loop: Header=BB2_623 Depth=2
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	movq	160(%rsp), %rax         # 8-byte Reload
	je	.LBB2_635
# BB#638:                               # %land.lhs.true.254.if.then.260_crit_edge.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	%ebp, 184(%rsp)         # 4-byte Spill
	movq	%r14, 168(%rsp)         # 8-byte Spill
	movl	(%rbx), %edx
	movl	8(%rbx), %r15d
.LBB2_639:                              # %if.then.260.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	408(%rax), %r14
	movl	48(%r14), %ebp
	movl	52(%r14), %r8d
	movslq	40(%r14), %r11
	movl	%edi, %eax
	subl	%r11d, %eax
	movl	%eax, 256(%rsp)
	movl	%r9d, %esi
	subl	%r11d, %esi
	movl	%esi, 264(%rsp)
	movslq	44(%r14), %r10
	leal	(%rdx,%r10), %ecx
	movl	%ecx, 240(%rsp)
	leal	(%r15,%r10), %edx
	movl	%edx, 248(%rsp)
	cmpl	%edi, %r9d
	jne	.LBB2_642
# BB#640:                               # %if.then.260.i
                                        #   in Loop: Header=BB2_623 Depth=2
	cmpl	%ecx, %edx
	jne	.LBB2_642
# BB#641:                               # %if.then.i.237.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movslq	%eax, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movl	%esi, 256(%rsp)
	movl	%r12d, %eax
	subl	%ebp, %eax
	movslq	%eax, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movl	%edx, 260(%rsp)
	movslq	%ecx, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	movl	%ecx, 240(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r8d
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	movl	%r8d, 244(%rsp)
	movq	16(%r14), %rdi
	movq	(%rdi), %rax
	subl	%esi, %ecx
	subl	%edx, %r8d
	movq	56(%r14), %r9
	movl	24(%r14), %ebp
	movl	%ebp, (%rsp)
	movq	$0, 8(%rsp)
	callq	*40(%rax)
	jmp	.LBB2_657
.LBB2_642:                              # %if.else.i.238.i
                                        #   in Loop: Header=BB2_623 Depth=2
	leal	127(%r8), %edi
	leal	(%rbp,%r8), %r9d
	cmpl	%eax, %esi
	jg	.LBB2_650
# BB#643:                               # %if.else.i.238.i
                                        #   in Loop: Header=BB2_623 Depth=2
	cmpl	%ecx, %edx
	jl	.LBB2_650
# BB#644:                               # %if.then.93.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	4(%rcx), %eax
	subl	%ebp, %eax
	movl	%eax, 260(%rsp)
	movl	12(%rcx), %eax
	subl	%ebp, %eax
	movl	%eax, 268(%rsp)
	movl	4(%rbx), %eax
	subl	%ebp, %eax
	movl	%eax, 244(%rsp)
	movl	12(%rbx), %eax
	subl	%ebp, %eax
	movl	%eax, 252(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edi
	movzbl	%dil, %eax
	cmpl	%r9d, %eax
	jge	.LBB2_647
# BB#645:                               # %if.then.121.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movslq	36(%rcx), %rax
	negq	%r11
	leaq	127(%rax,%r11), %rsi
	shrq	$8, %rsi
	movslq	36(%rbx), %rax
	leaq	127(%rax,%r10), %rcx
	shrq	$8, %rcx
	movq	16(%r14), %rdi
	movq	(%rdi), %rax
	movq	208(%rsp), %rdx         # 8-byte Reload
	subl	%ebp, %edx
	movslq	%edx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	subl	%esi, %ecx
	movq	56(%r14), %r9
	movl	24(%r14), %ebp
	movl	%ebp, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	callq	*40(%rax)
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_658
# BB#646:                               # %if.then.121.if.end.156_crit_edge.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	48(%r14), %ebp
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	408(%rax), %r14
.LBB2_647:                              # %if.end.156.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	%r12d, %ecx
	subl	%ebp, %ecx
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	subl	%ebp, %r8d
	movq	64(%r14), %rax
	movl	4(%rax), %edx
	movl	12(%rax), %eax
	cmpl	%ecx, %edx
	cmovgel	%edx, %ecx
	cmpl	%r8d, %eax
	cmovlel	%eax, %r8d
	jmp	.LBB2_648
.LBB2_659:                              # %land.lhs.true.290.i.1273
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %esi
	movl	12(%rax), %eax
	cmpl	%esi, %r12d
	movl	%esi, %ecx
	cmovgel	%r12d, %ecx
	movq	208(%rsp), %rdi         # 8-byte Reload
	cmpl	%eax, %edi
	movl	%eax, %r8d
	cmovlel	%edi, %r8d
	cmpl	%edx, %r15d
	jne	.LBB2_636
# BB#660:                               # %if.then.297.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	120(%rsp), %ecx         # 4-byte Reload
	cmpl	%esi, %ecx
	cmovgel	%ecx, %esi
	movl	144(%rsp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	cmpl	%esi, %eax
	jle	.LBB2_664
# BB#661:                               # %if.then.332.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	%ebp, 184(%rsp)         # 4-byte Spill
	movslq	%esi, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%eax, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	movq	112(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r9d
	movslq	%r9d, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movq	104(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r15d
	movslq	%r15d, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %r10
	subl	%esi, %ecx
	movl	72(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, (%rsp)
	movq	$0, 8(%rsp)
	movq	128(%rsp), %r9          # 8-byte Reload
	callq	*40(%r10)
	jmp	.LBB2_662
.LBB2_635:                              # %if.else.262.thread384.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r12d
	cmovgel	%r12d, %ecx
	movq	208(%rsp), %rax         # 8-byte Reload
	cmpl	%r8d, %eax
	cmovlel	%eax, %r8d
.LBB2_636:                              # %if.else.373.i
                                        #   in Loop: Header=BB2_623 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_664
# BB#637:                               # %if.then.376.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	%ebp, 184(%rsp)         # 4-byte Spill
	movq	(%r14), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 264(%rsp)
	movq	(%rbx), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 248(%rsp)
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movq	128(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	*56(%rsp)               # 8-byte Folded Reload
.LBB2_662:                              # %cleanup.400.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	%eax, %edi
	jmp	.LBB2_663
.LBB2_650:                              # %if.else.162.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	cmpl	%eax, %esi
	jl	.LBB2_656
# BB#651:                               # %if.else.162.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	cmpl	%ecx, %edx
	jg	.LBB2_656
# BB#652:                               # %if.then.176.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	4(%rcx), %eax
	addl	%r8d, %eax
	movl	%eax, 260(%rsp)
	movl	12(%rcx), %eax
	addl	%r8d, %eax
	movl	%eax, 268(%rsp)
	movl	4(%rbx), %eax
	addl	%r8d, %eax
	movl	%eax, 244(%rsp)
	movl	12(%rbx), %eax
	addl	%r8d, %eax
	movl	%eax, 252(%rsp)
	addl	%r12d, %edi
	movzbl	%dil, %eax
	cmpl	%r9d, %eax
	jge	.LBB2_655
# BB#653:                               # %if.then.205.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movslq	32(%rcx), %rax
	negq	%r11
	leaq	127(%rax,%r11), %rsi
	shrq	$8, %rsi
	movslq	32(%rbx), %rax
	leaq	127(%rax,%r10), %rcx
	shrq	$8, %rcx
	movq	16(%r14), %rdi
	movq	(%rdi), %rax
	movl	%r12d, %edx
	subl	%ebp, %edx
	movslq	%edx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	subl	%esi, %ecx
	movq	56(%r14), %r9
	movl	24(%r14), %ebp
	movl	%ebp, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	callq	*40(%rax)
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_658
# BB#654:                               # %if.then.205.if.end.249_crit_edge.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	52(%r14), %r8d
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	408(%rax), %r14
.LBB2_655:                              # %if.end.249.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	leal	(%r8,%r12), %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %r8d
	movq	64(%r14), %rdx
	movl	4(%rdx), %ecx
	movl	12(%rdx), %edx
	cmpl	%eax, %ecx
	cmovll	%eax, %ecx
	cmpl	%r8d, %edx
	cmovlel	%edx, %r8d
.LBB2_648:                              # %if.end.156.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	xorl	%edi, %edi
	cmpl	%r8d, %ecx
	jge	.LBB2_658
# BB#649:                               # %do.end.i.i.i.1270
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	56(%r14), %rdi
	movq	16(%r14), %rax
	movl	24(%r14), %edx
	movl	%edx, 8(%rsp)
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	*88(%r14)
	jmp	.LBB2_657
.LBB2_656:                              # %if.end.257.i.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	168(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	movq	208(%rsp), %r8          # 8-byte Reload
	callq	fill_slant_adjust
.LBB2_657:                              # %slant_into_trapezoids__nd.exit.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movl	%eax, %edi
.LBB2_658:                              # %slant_into_trapezoids__nd.exit.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	168(%rsp), %r14         # 8-byte Reload
.LBB2_663:                              # %cleanup.400.i
                                        #   in Loop: Header=BB2_623 Depth=2
	testl	%edi, %edi
	movl	184(%rsp), %ebp         # 4-byte Reload
	js	.LBB2_960
	.align	16, 0x90
.LBB2_664:                              # %for.inc.403.i
                                        #   in Loop: Header=BB2_623 Depth=2
	movq	216(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB2_623
.LBB2_665:                              # %if.end.411.i
                                        #   in Loop: Header=BB2_579 Depth=1
	movq	160(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	208(%rsp), %rsi         # 8-byte Reload
	callq	move_al_by_y
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB2_666
.LBB2_667:                              # %cleanup.420.thread261.i
	movl	%r15d, %edi
	jmp	.LBB2_960
.LBB2_394:                              # %if.else.14
	movq	40(%rbx), %r9
	xorl	%edi, %edi
	testq	%r9, %r9
	je	.LBB2_960
# BB#395:                               # %if.end.i.685
	movl	4(%r9), %r12d
	leaq	272(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r12), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	leaq	304(%rbx), %rsi
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	leaq	336(%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EAX
	movl	%eax, 120(%rsp)         # 4-byte Spill
	jmp	.LBB2_396
.LBB2_402:                              # %if.end.45.i.765
                                        #   in Loop: Header=BB2_396 Depth=1
	movl	4(%r13), %r12d
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movq	%r13, %r9
.LBB2_396:                              # %while.body.i.695
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_397 Depth 2
                                        #       Child Loop BB2_413 Depth 3
                                        #     Child Loop BB2_424 Depth 2
                                        #     Child Loop BB2_439 Depth 2
                                        #     Child Loop BB2_470 Depth 2
	xorl	%edx, %edx
	testq	%r9, %r9
	jmp	.LBB2_397
	.align	16, 0x90
.LBB2_422:                              # %while.cond.14.backedge.i.757
                                        #   in Loop: Header=BB2_397 Depth=2
	xorl	%edx, %edx
	testq	%r8, %r8
	movq	%r8, %r9
.LBB2_397:                              # %while.body.i.695
                                        #   Parent Loop BB2_396 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_413 Depth 3
	movl	$0, %r13d
	je	.LBB2_400
# BB#398:                               # %land.rhs.i.698
                                        #   in Loop: Header=BB2_397 Depth=2
	movb	$1, %dl
	cmpl	%r12d, 4(%r9)
	jne	.LBB2_399
# BB#403:                               # %while.body.21.i.701
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	216(%r9), %r8
	movq	%r8, 40(%rbx)
	cmpq	%r9, 48(%rbx)
	jne	.LBB2_405
# BB#404:                               # %if.then.26.i.702
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	%r8, 48(%rbx)
.LBB2_405:                              # %if.end.28.i.704
                                        #   in Loop: Header=BB2_397 Depth=2
	testq	%r8, %r8
	je	.LBB2_407
# BB#406:                               # %if.then.31.i.706
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	$0, 208(%r8)
.LBB2_407:                              # %if.end.32.i.709
                                        #   in Loop: Header=BB2_397 Depth=2
	cmpl	$0, 48(%r9)
	je	.LBB2_408
# BB#411:                               # %if.else.i.719
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	%rbx, %r15
	movl	(%r9), %r11d
	movl	%r11d, 32(%r9)
	movl	%r11d, 36(%r9)
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	movq	%rax, %rsi
	movq	216(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_418
# BB#412:                               # %land.rhs.i.lr.ph.i.722
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	224(%rsp), %rsi         # 8-byte Reload
	movq	216(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_413:                              # %land.rhs.i.i.723
                                        #   Parent Loop BB2_396 Depth=1
                                        #     Parent Loop BB2_397 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %r10
	movq	%rdi, %rbx
	cmpl	%r11d, 32(%rbx)
	jl	.LBB2_417
# BB#414:                               # %if.else.i.i.724
                                        #   in Loop: Header=BB2_413 Depth=3
	jg	.LBB2_420
# BB#415:                               # %if.end.6.i.i.729
                                        #   in Loop: Header=BB2_413 Depth=3
	movl	(%rbx), %r14d
	movl	8(%rbx), %ebp
	movl	%ebp, %eax
	subl	%r14d, %eax
	setg	%cl
	movl	8(%r9), %edi
	subl	%r11d, %edi
	setg	%dl
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	cmpl	%edx, %ecx
	je	.LBB2_419
# BB#416:                               # %if.then.17.i.i.730
                                        #   in Loop: Header=BB2_413 Depth=3
	cmpl	%r14d, %ebp
	jle	.LBB2_417
	jmp	.LBB2_420
	.align	16, 0x90
.LBB2_419:                              # %do.end.21.i.i.748
                                        #   in Loop: Header=BB2_413 Depth=3
	movl	12(%rbx), %ecx
	subl	4(%rbx), %ecx
	movl	12(%r9), %edx
	subl	%r12d, %edx
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_420
.LBB2_417:                              # %while.cond.i.backedge.i.733
                                        #   in Loop: Header=BB2_413 Depth=3
	leaq	216(%rbx), %rsi
	movq	216(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB2_413
.LBB2_418:                              # %if.end.critedge.i.i.754
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	$0, 216(%r9)
	movq	%rbx, 208(%r9)
	jmp	.LBB2_421
	.align	16, 0x90
.LBB2_408:                              # %if.then.35.i.712
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	288(%rbx), %rax
	movq	%rax, 216(%r9)
	movq	$0, 208(%r9)
	testq	%rax, %rax
	je	.LBB2_410
# BB#409:                               # %if.then.i.i.714
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	%r9, 208(%rax)
.LBB2_410:                              # %insert_h_new.exit.i.715
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	%r9, 288(%rbx)
	jmp	.LBB2_422
.LBB2_420:                              # %if.then.i.268.i
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	%rbx, 216(%r9)
	movq	%r10, 208(%r9)
	movq	%r9, 208(%rbx)
.LBB2_421:                              # %insert_x_new.exit.i.755
                                        #   in Loop: Header=BB2_397 Depth=2
	movq	%r9, (%rsi)
	movq	%r15, %rbx
	jmp	.LBB2_422
.LBB2_399:                              #   in Loop: Header=BB2_396 Depth=1
	movq	%r9, %r13
.LBB2_400:                              # %while.end.i.761
                                        #   in Loop: Header=BB2_396 Depth=1
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_401
# BB#423:                               # %for.body.lr.ph.i.771
                                        #   in Loop: Header=BB2_396 Depth=1
	movslq	%r12d, %r14
	movl	%r12d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	addq	$127, %r14
	leal	1(%rcx), %ebp
	andq	$-256, %r14
	leaq	4(%r13), %rsi
	testb	%dl, %dl
	cmoveq	128(%rsp), %rsi         # 8-byte Folded Reload
	movl	(%rsi), %edx
	cmpl	%ecx, %edx
	cmovlel	%edx, %ebp
	movl	%ebp, 276(%rsp)
	.align	16, 0x90
.LBB2_424:                              # %for.body.i.774
                                        #   Parent Loop BB2_396 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%ebp, %ecx
	jge	.LBB2_426
# BB#425:                               # %if.then.66.i.775
                                        #   in Loop: Header=BB2_424 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %ebp
.LBB2_426:                              # %for.inc.i.779
                                        #   in Loop: Header=BB2_424 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_424
# BB#427:                               # %for.end.i.781
                                        #   in Loop: Header=BB2_396 Depth=1
	cmpl	%ebp, %r12d
	jne	.LBB2_432
# BB#428:                               # %if.then.73.i.784
                                        #   in Loop: Header=BB2_396 Depth=1
	movq	%rbx, %rdi
	movq	%rbx, %r15
	movl	%r12d, %esi
	callq	process_h_segments
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#429:                               # %if.end.77.i.789
                                        #   in Loop: Header=BB2_396 Depth=1
	movl	%edi, %ebx
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	120(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	js	.LBB2_430
# BB#431:                               # %cleanup.cont.i.791
                                        #   in Loop: Header=BB2_396 Depth=1
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	xorps	%xmm3, %xmm3
	movq	%r15, %rbx
	jle	.LBB2_432
# BB#964:                               # %if.then.85.i.792
                                        #   in Loop: Header=BB2_396 Depth=1
	movq	40(%rbx), %r9
	jmp	.LBB2_396
.LBB2_432:                              # %if.end.88.i.794
                                        #   in Loop: Header=BB2_396 Depth=1
	cmpl	152(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB2_480
# BB#433:                               # %if.end.92.i.800
                                        #   in Loop: Header=BB2_396 Depth=1
	movslq	%ebp, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r14
	setl	%cl
	cmpl	%ebp, %r12d
	jne	.LBB2_435
# BB#434:                               #   in Loop: Header=BB2_396 Depth=1
	movzbl	%cl, %ebp
	movl	%r12d, %r15d
	jmp	.LBB2_436
.LBB2_401:                              # %if.then.41.i.763
                                        #   in Loop: Header=BB2_396 Depth=1
	testq	%r13, %r13
	jne	.LBB2_402
	jmp	.LBB2_480
.LBB2_435:                              # %if.then.105.i.807
                                        #   in Loop: Header=BB2_396 Depth=1
	cmpq	%rax, %r14
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	leaq	276(%rsp), %rdx
	movq	176(%rsp), %r8          # 8-byte Reload
	callq	intersect_al
	movslq	276(%rsp), %r15
	movq	%r15, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r14
	setl	%al
	movzbl	%al, %ebp
.LBB2_436:                              # %if.end.117.i.811
                                        #   in Loop: Header=BB2_396 Depth=1
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movl	%r15d, %edx
	callq	start_margin_set
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#437:                               # %if.end.122.i.812
                                        #   in Loop: Header=BB2_396 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	orl	%eax, %ebp
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbp
	je	.LBB2_469
# BB#438:                               # %for.cond.131.preheader.i.813
                                        #   in Loop: Header=BB2_396 Depth=1
	xorl	%r14d, %r14d
	testq	%rbp, %rbp
	movl	$0, %ebx
	movl	$0, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	je	.LBB2_478
	.align	16, 0x90
.LBB2_439:                              # %for.body.134.i.820
                                        #   Parent Loop BB2_396 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	movl	48(%rbp), %ebx
	addl	%ecx, %ebx
	movl	%ebx, %eax
	movq	232(%rsp), %rdx         # 8-byte Reload
	andl	%edx, %eax
	testl	%edx, %ecx
	je	.LBB2_440
# BB#441:                               # %if.end.153.i.823
                                        #   in Loop: Header=BB2_439 Depth=2
	testl	%eax, %eax
	jne	.LBB2_468
# BB#442:                               # %if.end.160.i.826
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	216(%rbp), %rax
	testq	%rax, %rax
	je	.LBB2_446
# BB#443:                               # %land.lhs.true.i.830
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	32(%rbp), %ecx
	cmpl	32(%rax), %ecx
	jne	.LBB2_446
# BB#444:                               # %land.lhs.true.169.i.834
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	36(%rbp), %ecx
	cmpl	36(%rax), %ecx
	jne	.LBB2_446
# BB#445:                               # %if.then.174.i.837
                                        #   in Loop: Header=BB2_439 Depth=2
	addl	48(%rax), %ebx
	movq	%rax, %rbp
	jmp	.LBB2_468
.LBB2_440:                              # %if.then.145.i.822
                                        #   in Loop: Header=BB2_439 Depth=2
	testl	%eax, %eax
	cmovneq	%rbp, %r14
	jmp	.LBB2_468
.LBB2_446:                              # %do.end.181.i.846
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r12d
	cmovgel	%r12d, %ecx
	cmpl	%r8d, %r15d
	cmovlel	%r15d, %r8d
	movslq	8(%r14), %rax
	cmpl	(%r14), %eax
	jne	.LBB2_452
# BB#447:                               # %land.lhs.true.208.i.850
                                        #   in Loop: Header=BB2_439 Depth=2
	movslq	8(%rbp), %rdi
	cmpl	(%rbp), %edi
	jne	.LBB2_452
# BB#448:                               # %if.then.215.i.852
                                        #   in Loop: Header=BB2_439 Depth=2
	cmpl	%ecx, %r8d
	jle	.LBB2_464
# BB#449:                               # %if.then.218.i.867
                                        #   in Loop: Header=BB2_439 Depth=2
	movslq	%ecx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	leaq	127(%rax), %r9
	movq	%r9, %rsi
	shrq	$8, %rsi
	leaq	127(%rdi), %rcx
	shrq	$8, %rcx
	cmpl	%ecx, %esi
	jne	.LBB2_451
# BB#450:                               # %if.then.243.i.878
                                        #   in Loop: Header=BB2_439 Depth=2
	andl	$-256, %r9d
	subl	%r9d, %edi
	subl	%eax, %r9d
	cmpl	%edi, %r9d
	setl	%al
	setge	%cl
	movzbl	%cl, %edi
	movzbl	%al, %ecx
	addl	%esi, %ecx
	subl	%edi, %esi
.LBB2_451:                              # %do.end.258.i.883
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %r10
	subl	%esi, %ecx
	movl	136(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movq	184(%rsp), %r9          # 8-byte Reload
	callq	*40(%r10)
	jmp	.LBB2_463
.LBB2_452:                              # %if.else.265.i
                                        #   in Loop: Header=BB2_439 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_464
# BB#453:                               # %if.then.268.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	(%r14), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 264(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 248(%rsp)
	movl	(%r14), %eax
	movl	$4, %r9d
	cmpl	(%rbp), %eax
	jne	.LBB2_457
# BB#454:                               # %land.lhs.true.286.i
                                        #   in Loop: Header=BB2_439 Depth=2
	cmpl	%r12d, 4(%r14)
	jne	.LBB2_457
# BB#455:                               # %land.lhs.true.291.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	$5, %r9d
	cmpl	%r12d, 4(%rbp)
	je	.LBB2_457
# BB#456:                               # %select.mid3423
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	$4, %r9d
.LBB2_457:                              # %if.end.298.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	8(%r14), %eax
	cmpl	8(%rbp), %eax
	jne	.LBB2_462
# BB#458:                               # %land.lhs.true.305.i
                                        #   in Loop: Header=BB2_439 Depth=2
	cmpl	%r15d, 12(%r14)
	jne	.LBB2_462
# BB#459:                               # %land.lhs.true.310.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	$5, %eax
	cmpl	%r15d, 12(%rbp)
	je	.LBB2_461
# BB#460:                               # %select.mid3432
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	%r9d, %eax
.LBB2_461:                              # %select.end3431
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	%eax, %r9d
.LBB2_462:                              # %if.end.317.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	136(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	184(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	gx_fill_trapezoid_cf_nd
.LBB2_463:                              # %if.end.324.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
.LBB2_464:                              # %if.end.328.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	continue_margin_common
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#465:                               # %if.end.333.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	callq	margin_interior
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#466:                               # %if.end.338.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	continue_margin_common
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#467:                               # %cleanup.353.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	process_h_lists
	movl	%eax, %edi
	testl	%edi, %edi
	movq	%rbp, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	js	.LBB2_960
	.align	16, 0x90
.LBB2_468:                              # %for.inc.356.i
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	216(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB2_439
	jmp	.LBB2_476
.LBB2_469:                              # %for.cond.368.preheader.i
                                        #   in Loop: Header=BB2_396 Depth=1
	xorl	%ebx, %ebx
	testq	%rbp, %rbp
	movl	$0, %r14d
	movl	$0, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	je	.LBB2_478
	.align	16, 0x90
.LBB2_470:                              # %for.body.371.i
                                        #   Parent Loop BB2_396 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	movl	48(%rbp), %ebx
	addl	%ecx, %ebx
	movl	%ebx, %eax
	movq	232(%rsp), %rdx         # 8-byte Reload
	andl	%edx, %eax
	testl	%edx, %ecx
	je	.LBB2_471
# BB#472:                               # %if.end.383.i
                                        #   in Loop: Header=BB2_470 Depth=2
	testl	%eax, %eax
	jne	.LBB2_475
# BB#473:                               # %if.end.390.i
                                        #   in Loop: Header=BB2_470 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	192(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	continue_margin_common
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#474:                               # %if.end.395.i
                                        #   in Loop: Header=BB2_470 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	process_h_lists
	movl	%eax, %edi
	testl	%edi, %edi
	movq	%rbp, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	jns	.LBB2_475
	jmp	.LBB2_960
.LBB2_471:                              # %if.then.375.i
                                        #   in Loop: Header=BB2_470 Depth=2
	testl	%eax, %eax
	cmovneq	%rbp, %r14
.LBB2_475:                              # %for.inc.401.i
                                        #   in Loop: Header=BB2_470 Depth=2
	movq	216(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB2_470
.LBB2_476:                              # %if.end.408.i
                                        #   in Loop: Header=BB2_396 Depth=1
	cmpq	$0, 208(%rsp)           # 8-byte Folded Reload
	je	.LBB2_478
# BB#477:                               # %if.then.411.i
                                        #   in Loop: Header=BB2_396 Depth=1
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	process_h_lists
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
.LBB2_478:                              # %if.end.417.i
                                        #   in Loop: Header=BB2_396 Depth=1
	movq	160(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	callq	move_al_by_y
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#479:                               # %if.end.422.i
                                        #   in Loop: Header=BB2_396 Depth=1
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movl	%r15d, %r12d
	movq	%r13, %r9
	xorps	%xmm3, %xmm3
	jmp	.LBB2_396
.LBB2_302:                              # %cleanup.634.thread.i
	movl	%eax, %edi
	jmp	.LBB2_960
.LBB2_830:                              # %if.else.37
	testl	%ecx, %ecx
	je	.LBB2_895
# BB#831:                               # %if.then.40
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	movq	40(%rbx), %r12
	xorl	%edi, %edi
	testq	%r12, %r12
	je	.LBB2_960
# BB#832:                               # %if.end.i.1699
	movq	80(%rdx), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	88(%rdx), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movl	4(%r12), %r13d
	leaq	272(%rbx), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r13), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rbx, %r15
	movq	%r15, 160(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EDI
	jmp	.LBB2_833
.LBB2_893:                              # %if.end.351.i
                                        #   in Loop: Header=BB2_833 Depth=1
	movq	288(%r15), %rax
	movq	%rax, 296(%r15)
	movq	$0, 288(%r15)
	movl	%ecx, %r13d
	xorps	%xmm3, %xmm3
	movl	208(%rsp), %edi         # 4-byte Reload
.LBB2_833:                              # %while.body.i.1710
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_834 Depth 2
                                        #       Child Loop BB2_835 Depth 3
                                        #         Child Loop BB2_852 Depth 4
                                        #     Child Loop BB2_862 Depth 2
                                        #     Child Loop BB2_877 Depth 2
	movslq	%r13d, %rax
	addq	$127, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	%r13d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leal	1(%rcx), %r14d
	andq	$-256, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
.LBB2_834:                              # %while.cond.14.outer.i.1713
                                        #   Parent Loop BB2_833 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_835 Depth 3
                                        #         Child Loop BB2_852 Depth 4
	movl	%edi, 208(%rsp)         # 4-byte Spill
	jmp	.LBB2_835
	.align	16, 0x90
.LBB2_857:                              # %if.end.critedge.i.i.1794
                                        #   in Loop: Header=BB2_835 Depth=3
	movq	$0, 216(%r9)
	movq	%rbx, 208(%r9)
	movq	%r9, (%rdi)
.LBB2_835:                              # %while.cond.14.outer.i.1713
                                        #   Parent Loop BB2_833 Depth=1
                                        #     Parent Loop BB2_834 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_852 Depth 4
	xorl	%ecx, %ecx
	testq	%r12, %r12
	movq	%r12, %r9
	movl	$0, %r12d
	je	.LBB2_838
# BB#836:                               # %land.rhs.i.1716
                                        #   in Loop: Header=BB2_835 Depth=3
	movb	$1, %cl
	cmpl	%r13d, 4(%r9)
	jne	.LBB2_837
# BB#841:                               # %while.body.21.i.1719
                                        #   in Loop: Header=BB2_835 Depth=3
	movq	216(%r9), %r12
	movq	%r12, 40(%r15)
	cmpq	%r9, 48(%r15)
	jne	.LBB2_843
# BB#842:                               # %if.then.26.i.1720
                                        #   in Loop: Header=BB2_835 Depth=3
	movq	%r12, 48(%r15)
.LBB2_843:                              # %if.end.28.i.1722
                                        #   in Loop: Header=BB2_835 Depth=3
	testq	%r12, %r12
	je	.LBB2_845
# BB#844:                               # %if.then.31.i.1724
                                        #   in Loop: Header=BB2_835 Depth=3
	movq	$0, 208(%r12)
.LBB2_845:                              # %if.end.32.i.1727
                                        #   in Loop: Header=BB2_835 Depth=3
	movl	(%r9), %r10d
	cmpl	$0, 48(%r9)
	je	.LBB2_846
# BB#850:                               # %if.else.85.i.1758
                                        #   in Loop: Header=BB2_835 Depth=3
	movl	%r10d, 32(%r9)
	movl	%r10d, 36(%r9)
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rax, %rdi
	movq	224(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_857
# BB#851:                               # %land.rhs.i.lr.ph.i.1761
                                        #   in Loop: Header=BB2_835 Depth=3
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_852:                              # %land.rhs.i.i.1762
                                        #   Parent Loop BB2_833 Depth=1
                                        #     Parent Loop BB2_834 Depth=2
                                        #       Parent Loop BB2_835 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbx, %r8
	movq	%rsi, %rbx
	cmpl	%r10d, 32(%rbx)
	jl	.LBB2_856
# BB#853:                               # %if.else.i.i.1763
                                        #   in Loop: Header=BB2_852 Depth=4
	jg	.LBB2_859
# BB#854:                               # %if.end.6.i.i.1768
                                        #   in Loop: Header=BB2_852 Depth=4
	movl	(%rbx), %r11d
	movl	8(%rbx), %eax
	movl	%eax, %ebp
	subl	%r11d, %ebp
	setg	%dl
	movl	8(%r9), %esi
	subl	%r10d, %esi
	setg	%cl
	movzbl	%cl, %ecx
	movzbl	%dl, %edx
	cmpl	%ecx, %edx
	je	.LBB2_858
# BB#855:                               # %if.then.17.i.i.1769
                                        #   in Loop: Header=BB2_852 Depth=4
	cmpl	%r11d, %eax
	jle	.LBB2_856
	jmp	.LBB2_859
	.align	16, 0x90
.LBB2_858:                              # %do.end.21.i.i.1787
                                        #   in Loop: Header=BB2_852 Depth=4
	movl	12(%rbx), %eax
	subl	4(%rbx), %eax
	movl	12(%r9), %ecx
	subl	%r13d, %ecx
	cvtsi2sdl	%ebp, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_859
.LBB2_856:                              # %while.cond.i.backedge.i.1772
                                        #   in Loop: Header=BB2_852 Depth=4
	leaq	216(%rbx), %rdi
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_852
	jmp	.LBB2_857
	.align	16, 0x90
.LBB2_859:                              # %if.then.i.i.1790
                                        #   in Loop: Header=BB2_835 Depth=3
	movq	%rbx, 216(%r9)
	movq	%r8, 208(%r9)
	movq	%r9, 208(%rbx)
	movq	%r9, (%rdi)
	jmp	.LBB2_835
.LBB2_846:                              # %if.then.35.i.1731
                                        #   in Loop: Header=BB2_834 Depth=2
	movslq	%r10d, %rsi
	movslq	8(%r9), %rcx
	cmpl	%ecx, %r10d
	jle	.LBB2_847
# BB#848:                               # %if.else.i.1747
                                        #   in Loop: Header=BB2_834 Depth=2
	addq	$127, %rcx
	shrq	$8, %rcx
	movl	%ecx, %eax
	addq	$127, %rsi
	shrq	$8, %rsi
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	%eax, %esi
	jmp	.LBB2_849
.LBB2_847:                              # %if.then.44.i.1739
                                        #   in Loop: Header=BB2_834 Depth=2
	addq	$127, %rsi
	shrq	$8, %rsi
	addq	$127, %rcx
	shrq	$8, %rcx
	subl	%esi, %ecx
.LBB2_849:                              # %do.end.78.i.1754
                                        #   in Loop: Header=BB2_834 Depth=2
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %r9
	movl	$1, %r8d
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	136(%rsp), %rdx         # 8-byte Reload
	callq	*104(%rsp)              # 8-byte Folded Reload
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	xorps	%xmm3, %xmm3
	jns	.LBB2_834
	jmp	.LBB2_960
.LBB2_837:                              #   in Loop: Header=BB2_833 Depth=1
	movq	%r9, %r12
.LBB2_838:                              # %while.end.i.1800
                                        #   in Loop: Header=BB2_833 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_839
# BB#861:                               # %for.body.lr.ph.i.1810
                                        #   in Loop: Header=BB2_833 Depth=1
	leaq	4(%r12), %rdx
	testb	%cl, %cl
	cmoveq	112(%rsp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %ecx
	movq	144(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	cmovlel	%ecx, %r14d
	movl	%r14d, 276(%rsp)
	.align	16, 0x90
.LBB2_862:                              # %for.body.i.1813
                                        #   Parent Loop BB2_833 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%r14d, %ecx
	jge	.LBB2_864
# BB#863:                               # %if.then.120.i.1814
                                        #   in Loop: Header=BB2_862 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %r14d
.LBB2_864:                              # %for.inc.i.1818
                                        #   in Loop: Header=BB2_862 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_862
# BB#865:                               # %for.end.i.1820
                                        #   in Loop: Header=BB2_833 Depth=1
	cmpl	%r14d, %r13d
	jne	.LBB2_866
# BB#867:                               # %if.then.127.i.1823
                                        #   in Loop: Header=BB2_833 Depth=1
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	process_h_segments
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_894
# BB#868:                               # %if.end.132.i.1828
                                        #   in Loop: Header=BB2_833 Depth=1
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	js	.LBB2_960
# BB#869:                               # %cleanup.cont.140.i.1830
                                        #   in Loop: Header=BB2_833 Depth=1
	testl	%ebp, %ebp
	jle	.LBB2_870
# BB#969:                               # %if.then.143.i.1831
                                        #   in Loop: Header=BB2_833 Depth=1
	movq	40(%r15), %r12
	xorps	%xmm3, %xmm3
	jmp	.LBB2_833
.LBB2_839:                              # %if.then.94.i.1802
                                        #   in Loop: Header=BB2_833 Depth=1
	testq	%r12, %r12
	je	.LBB2_959
# BB#840:                               # %if.end.98.i.1804
                                        #   in Loop: Header=BB2_833 Depth=1
	movl	4(%r12), %r13d
	movq	288(%r15), %rax
	movq	%rax, 296(%r15)
	movq	$0, 288(%r15)
	movl	208(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_833
.LBB2_866:                              #   in Loop: Header=BB2_833 Depth=1
	movl	208(%rsp), %eax         # 4-byte Reload
	jmp	.LBB2_871
.LBB2_870:                              #   in Loop: Header=BB2_833 Depth=1
	movl	%edi, %eax
.LBB2_871:                              # %if.end.146.i.1833
                                        #   in Loop: Header=BB2_833 Depth=1
	movq	128(%rsp), %rbp         # 8-byte Reload
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB2_959
# BB#872:                               # %if.end.150.i.1839
                                        #   in Loop: Header=BB2_833 Depth=1
	movl	%eax, 208(%rsp)         # 4-byte Spill
	movslq	%r14d, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %rbp
	setl	%cl
	cmpl	%r14d, %r13d
	jne	.LBB2_874
# BB#873:                               #   in Loop: Header=BB2_833 Depth=1
	movzbl	%cl, %eax
	movl	%r13d, %ebp
	movq	168(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB2_875
.LBB2_874:                              # %if.then.163.i.1846
                                        #   in Loop: Header=BB2_833 Depth=1
	cmpq	%rax, %rbp
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%r15, %rdi
	movl	%r13d, %esi
	leaq	276(%rsp), %rdx
	movq	168(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r8d
	callq	intersect_al
	movslq	276(%rsp), %rcx
	movq	%rcx, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %rbp
	movq	%rcx, %rbp
	setl	%al
	movzbl	%al, %eax
.LBB2_875:                              # %if.end.175.i.1848
                                        #   in Loop: Header=BB2_833 Depth=1
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	orl	%ebx, %eax
	je	.LBB2_892
# BB#876:                               # %for.cond.184.preheader.i.1849
                                        #   in Loop: Header=BB2_833 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	movl	$0, %r15d
	je	.LBB2_892
	.align	16, 0x90
.LBB2_877:                              # %for.body.187.i.1856
                                        #   Parent Loop BB2_833 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %ecx
	movl	48(%rbx), %r15d
	addl	%ecx, %r15d
	movl	%r15d, %eax
	movq	216(%rsp), %rdx         # 8-byte Reload
	andl	%edx, %eax
	testl	%edx, %ecx
	je	.LBB2_878
# BB#879:                               # %if.end.206.i.1859
                                        #   in Loop: Header=BB2_877 Depth=2
	testl	%eax, %eax
	jne	.LBB2_891
# BB#880:                               # %if.end.213.i.1862
                                        #   in Loop: Header=BB2_877 Depth=2
	movq	216(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_884
# BB#881:                               # %land.lhs.true.i.1865
                                        #   in Loop: Header=BB2_877 Depth=2
	movl	32(%rbx), %ecx
	cmpl	32(%rax), %ecx
	jne	.LBB2_884
# BB#882:                               # %land.lhs.true.222.i.1869
                                        #   in Loop: Header=BB2_877 Depth=2
	movl	36(%rbx), %ecx
	cmpl	36(%rax), %ecx
	jne	.LBB2_884
# BB#883:                               # %if.then.227.i.1872
                                        #   in Loop: Header=BB2_877 Depth=2
	addl	48(%rax), %r15d
	movq	%rax, %rbx
	jmp	.LBB2_891
.LBB2_878:                              # %if.then.198.i.1858
                                        #   in Loop: Header=BB2_877 Depth=2
	testl	%eax, %eax
	cmovneq	%rbx, %r14
	jmp	.LBB2_891
.LBB2_884:                              # %do.end.234.i
                                        #   in Loop: Header=BB2_877 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r13d
	cmovgel	%r13d, %ecx
	cmpl	%r8d, %ebp
	cmovlel	%ebp, %r8d
	movslq	8(%r14), %rsi
	cmpl	(%r14), %esi
	jne	.LBB2_888
# BB#885:                               # %land.lhs.true.262.i
                                        #   in Loop: Header=BB2_877 Depth=2
	movslq	8(%rbx), %rax
	cmpl	(%rbx), %eax
	jne	.LBB2_888
# BB#886:                               # %if.then.269.i
                                        #   in Loop: Header=BB2_877 Depth=2
	cmpl	%ecx, %r8d
	jle	.LBB2_891
# BB#887:                               # %if.then.272.i
                                        #   in Loop: Header=BB2_877 Depth=2
	movslq	%ecx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	addq	$127, %rsi
	shrq	$8, %rsi
	addq	$127, %rax
	shrq	$8, %rax
	subl	%esi, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	8(%rcx), %r9
	movq	184(%rsp), %rdi         # 8-byte Reload
	movl	%eax, %ecx
	callq	*104(%rsp)              # 8-byte Folded Reload
	jmp	.LBB2_890
.LBB2_888:                              # %if.else.310.i
                                        #   in Loop: Header=BB2_877 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_891
# BB#889:                               # %if.then.313.i
                                        #   in Loop: Header=BB2_877 Depth=2
	movq	(%r14), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 264(%rsp)
	movq	(%rbx), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 248(%rsp)
	movl	152(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movq	184(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	*96(%rsp)               # 8-byte Folded Reload
.LBB2_890:                              # %cleanup.335.i
                                        #   in Loop: Header=BB2_877 Depth=2
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
	.align	16, 0x90
.LBB2_891:                              # %for.inc.338.i
                                        #   in Loop: Header=BB2_877 Depth=2
	movq	216(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB2_877
.LBB2_892:                              # %if.end.346.i
                                        #   in Loop: Header=BB2_833 Depth=1
	movq	160(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	move_al_by_y
	movq	%rbp, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_893
.LBB2_894:                              # %cleanup.355.thread213.i
	movl	%ebp, %edi
	jmp	.LBB2_960
.LBB2_750:                              # %if.else.35
	movq	40(%rbx), %r13
	xorl	%edi, %edi
	testq	%r13, %r13
	je	.LBB2_960
# BB#751:                               # %if.end.i.1526
	movq	88(%rdx), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	4(%r13), %r15d
	leaq	272(%rbx), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r15), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EDI
	jmp	.LBB2_752
.LBB2_828:                              # %if.end.475.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movq	288(%rbp), %rax
	movq	%rax, 296(%rbp)
	movq	$0, 288(%rbp)
	movl	%r14d, %r15d
	movq	%rbp, %rbx
	xorps	%xmm3, %xmm3
	movl	144(%rsp), %edi         # 4-byte Reload
.LBB2_752:                              # %while.body.i.1534
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_753 Depth 2
                                        #       Child Loop BB2_754 Depth 3
                                        #         Child Loop BB2_767 Depth 4
                                        #     Child Loop BB2_780 Depth 2
                                        #     Child Loop BB2_795 Depth 2
	movslq	%r15d, %rax
	addq	$127, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	%r15d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leal	1(%rcx), %r14d
	andq	$-256, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
.LBB2_753:                              # %while.cond.14.outer.i.1537
                                        #   Parent Loop BB2_752 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_754 Depth 3
                                        #         Child Loop BB2_767 Depth 4
	movl	%edi, 208(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	testq	%r13, %r13
	movq	%r13, %r9
	movl	$0, %r13d
	je	.LBB2_776
	.align	16, 0x90
.LBB2_754:                              # %land.rhs.i.1540
                                        #   Parent Loop BB2_752 Depth=1
                                        #     Parent Loop BB2_753 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_767 Depth 4
	movb	$1, %cl
	cmpl	%r15d, 4(%r9)
	jne	.LBB2_755
# BB#756:                               # %while.body.21.i.1543
                                        #   in Loop: Header=BB2_754 Depth=3
	movq	216(%r9), %r13
	movq	%r13, 40(%rbx)
	cmpq	%r9, 48(%rbx)
	jne	.LBB2_758
# BB#757:                               # %if.then.26.i.1544
                                        #   in Loop: Header=BB2_754 Depth=3
	movq	%r13, 48(%rbx)
.LBB2_758:                              # %if.end.28.i.1546
                                        #   in Loop: Header=BB2_754 Depth=3
	movq	%rbx, %r12
	testq	%r13, %r13
	je	.LBB2_760
# BB#759:                               # %if.then.31.i.1548
                                        #   in Loop: Header=BB2_754 Depth=3
	movq	$0, 208(%r13)
.LBB2_760:                              # %if.end.32.i.1551
                                        #   in Loop: Header=BB2_754 Depth=3
	movl	(%r9), %r10d
	cmpl	$0, 48(%r9)
	je	.LBB2_761
# BB#765:                               # %if.else.86.i
                                        #   in Loop: Header=BB2_754 Depth=3
	movl	%r10d, 32(%r9)
	movl	%r10d, 36(%r9)
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rax, %rdi
	movq	224(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_772
# BB#766:                               # %land.rhs.i.lr.ph.i.1584
                                        #   in Loop: Header=BB2_754 Depth=3
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_767:                              # %land.rhs.i.i.1585
                                        #   Parent Loop BB2_752 Depth=1
                                        #     Parent Loop BB2_753 Depth=2
                                        #       Parent Loop BB2_754 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbx, %r8
	movq	%rsi, %rbx
	cmpl	%r10d, 32(%rbx)
	jl	.LBB2_771
# BB#768:                               # %if.else.i.i.1586
                                        #   in Loop: Header=BB2_767 Depth=4
	jg	.LBB2_774
# BB#769:                               # %if.end.6.i.i.1591
                                        #   in Loop: Header=BB2_767 Depth=4
	movl	(%rbx), %r11d
	movl	8(%rbx), %eax
	movl	%eax, %ebp
	subl	%r11d, %ebp
	setg	%dl
	movl	8(%r9), %esi
	subl	%r10d, %esi
	setg	%cl
	movzbl	%cl, %ecx
	movzbl	%dl, %edx
	cmpl	%ecx, %edx
	je	.LBB2_773
# BB#770:                               # %if.then.17.i.i.1592
                                        #   in Loop: Header=BB2_767 Depth=4
	cmpl	%r11d, %eax
	jle	.LBB2_771
	jmp	.LBB2_774
	.align	16, 0x90
.LBB2_773:                              # %do.end.21.i.i.1610
                                        #   in Loop: Header=BB2_767 Depth=4
	movl	12(%rbx), %eax
	subl	4(%rbx), %eax
	movl	12(%r9), %ecx
	subl	%r15d, %ecx
	cvtsi2sdl	%ebp, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_774
.LBB2_771:                              # %while.cond.i.backedge.i.1595
                                        #   in Loop: Header=BB2_767 Depth=4
	leaq	216(%rbx), %rdi
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_767
.LBB2_772:                              # %if.end.critedge.i.i.1617
                                        #   in Loop: Header=BB2_754 Depth=3
	movq	$0, 216(%r9)
	movq	%rbx, 208(%r9)
	jmp	.LBB2_775
	.align	16, 0x90
.LBB2_774:                              # %if.then.i.i.1613
                                        #   in Loop: Header=BB2_754 Depth=3
	movq	%rbx, 216(%r9)
	movq	%r8, 208(%r9)
	movq	%r9, 208(%rbx)
.LBB2_775:                              # %insert_x_new.exit.i.1619
                                        #   in Loop: Header=BB2_754 Depth=3
	movq	%r9, (%rdi)
	xorl	%ecx, %ecx
	testq	%r13, %r13
	movq	%r13, %r9
	movl	$0, %r13d
	movq	%r12, %rbx
	jne	.LBB2_754
	jmp	.LBB2_776
.LBB2_761:                              # %if.then.35.i.1555
                                        #   in Loop: Header=BB2_753 Depth=2
	movslq	%r10d, %rsi
	movslq	8(%r9), %rcx
	cmpl	%ecx, %r10d
	jle	.LBB2_762
# BB#763:                               # %if.else.i.1571
                                        #   in Loop: Header=BB2_753 Depth=2
	addq	$127, %rcx
	shrq	$8, %rcx
	movl	%ecx, %eax
	addq	$127, %rsi
	shrq	$8, %rsi
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	%eax, %esi
	jmp	.LBB2_764
.LBB2_762:                              # %if.then.44.i.1563
                                        #   in Loop: Header=BB2_753 Depth=2
	addq	$127, %rsi
	shrq	$8, %rsi
	addq	$127, %rcx
	shrq	$8, %rcx
	subl	%esi, %ecx
.LBB2_764:                              # %do.end.78.i.1578
                                        #   in Loop: Header=BB2_753 Depth=2
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movl	152(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	movq	136(%rsp), %rdx         # 8-byte Reload
	movq	184(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	movq	%r12, %rbx
	xorps	%xmm3, %xmm3
	jns	.LBB2_753
	jmp	.LBB2_960
.LBB2_755:                              #   in Loop: Header=BB2_752 Depth=1
	movq	%r9, %r13
.LBB2_776:                              # %while.end.i.1622
                                        #   in Loop: Header=BB2_752 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_777
# BB#779:                               # %for.body.lr.ph.i.1625
                                        #   in Loop: Header=BB2_752 Depth=1
	leaq	4(%r13), %rdx
	testb	%cl, %cl
	cmoveq	112(%rsp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %ecx
	movq	144(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	cmovlel	%ecx, %r14d
	movl	%r14d, 276(%rsp)
	.align	16, 0x90
.LBB2_780:                              # %for.body.i.1627
                                        #   Parent Loop BB2_752 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%r14d, %ecx
	jge	.LBB2_782
# BB#781:                               # %if.then.121.i
                                        #   in Loop: Header=BB2_780 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %r14d
.LBB2_782:                              # %for.inc.i.1630
                                        #   in Loop: Header=BB2_780 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_780
# BB#783:                               # %for.end.i.1631
                                        #   in Loop: Header=BB2_752 Depth=1
	cmpl	%r14d, %r15d
	movl	$0, %r12d
	jne	.LBB2_784
# BB#785:                               # %if.then.128.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rbp
	callq	process_h_segments
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB2_829
# BB#786:                               # %if.end.133.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	js	.LBB2_960
# BB#787:                               # %cleanup.cont.141.i
                                        #   in Loop: Header=BB2_752 Depth=1
	testl	%ebx, %ebx
	jle	.LBB2_788
# BB#968:                               # %if.then.144.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movq	%rbp, %rbx
	movq	40(%rbx), %r13
	xorps	%xmm3, %xmm3
	jmp	.LBB2_752
.LBB2_777:                              # %if.then.95.i
                                        #   in Loop: Header=BB2_752 Depth=1
	testq	%r13, %r13
	je	.LBB2_959
# BB#778:                               # %if.end.99.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movl	4(%r13), %r15d
	movq	288(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$0, 288(%rbx)
	movl	208(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_752
.LBB2_784:                              #   in Loop: Header=BB2_752 Depth=1
	movl	208(%rsp), %eax         # 4-byte Reload
	jmp	.LBB2_789
.LBB2_788:                              #   in Loop: Header=BB2_752 Depth=1
	movl	%edi, %eax
	movq	%rbp, %rbx
.LBB2_789:                              # %if.end.147.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movq	128(%rsp), %rdx         # 8-byte Reload
	cmpl	120(%rsp), %r15d        # 4-byte Folded Reload
	jge	.LBB2_959
# BB#790:                               # %if.end.151.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movslq	%r14d, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %rdx
	setl	%cl
	cmpl	%r14d, %r15d
	jne	.LBB2_792
# BB#791:                               #   in Loop: Header=BB2_752 Depth=1
	movzbl	%cl, %eax
	movl	%r15d, %r10d
	movq	168(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_793
.LBB2_792:                              # %if.then.164.i
                                        #   in Loop: Header=BB2_752 Depth=1
	cmpq	%rax, %rdx
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%rdx, %r14
	movq	%rbx, %rdi
	movl	%r15d, %esi
	leaq	276(%rsp), %rdx
	movq	168(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %r8d
	callq	intersect_al
	movslq	276(%rsp), %r10
	movq	%r10, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %r14
	setl	%al
	movzbl	%al, %eax
.LBB2_793:                              # %if.end.176.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movq	%r10, 208(%rsp)         # 8-byte Spill
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	orl	%ebp, %eax
	movq	%rbx, %r9
	je	.LBB2_827
# BB#794:                               # %if.then.179.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movq	376(%r9), %rdi
	movslq	416(%r9), %rdx
	shlq	$2, %rdx
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%r9, %rbx
	movq	%r10, %rbp
	callq	memset
	movq	%rbp, %r10
	movq	%rbx, %r9
	movq	272(%r9), %rbp
	testq	%rbp, %rbp
	movl	$0, %ecx
	jne	.LBB2_795
	jmp	.LBB2_827
.LBB2_814:                              # %cond.true.318.i
                                        #   in Loop: Header=BB2_795 Depth=2
	negl	%edi
.LBB2_816:                              # %cond.end.329.i
                                        #   in Loop: Header=BB2_795 Depth=2
	subl	%edi, %ebx
	addl	48(%rcx), %edx
	movl	%edx, (%rax,%rsi,4)
	js	.LBB2_817
# BB#818:                               # %cond.false.342.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movl	%edx, %eax
	andl	$1, %eax
	testl	%edx, %edx
	cmovlel	%r12d, %eax
	addl	%eax, %ebx
	movq	%rcx, %rbp
	jmp	.LBB2_826
.LBB2_817:                              # %cond.true.339.i
                                        #   in Loop: Header=BB2_795 Depth=2
	andl	$1, %edx
	negl	%edx
	addl	%edx, %ebx
	movq	%rcx, %rbp
	jmp	.LBB2_826
	.align	16, 0x90
.LBB2_795:                              # %for.body.190.i
                                        #   Parent Loop BB2_752 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	200(%rbp), %rdx
	movq	376(%r9), %rax
	movl	(%rax,%rdx,4), %ebx
	movq	216(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %ecx
	je	.LBB2_796
# BB#803:                               # %if.end.246.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movl	%ebx, %esi
	andl	$1, %esi
	testl	%ebx, %ebx
	js	.LBB2_804
# BB#805:                               # %cond.false.258.i
                                        #   in Loop: Header=BB2_795 Depth=2
	testl	%ebx, %ebx
	cmovlel	%r12d, %esi
	jmp	.LBB2_806
.LBB2_796:                              # %if.then.201.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movl	%ebx, %esi
	andl	$1, %esi
	testl	%ebx, %ebx
	js	.LBB2_797
# BB#798:                               # %cond.false.209.i
                                        #   in Loop: Header=BB2_795 Depth=2
	testl	%ebx, %ebx
	cmovlel	%r12d, %esi
	jmp	.LBB2_799
.LBB2_804:                              # %cond.true.255.i
                                        #   in Loop: Header=BB2_795 Depth=2
	negl	%esi
.LBB2_806:                              # %cond.end.266.i
                                        #   in Loop: Header=BB2_795 Depth=2
	subl	%esi, %ecx
	addl	48(%rbp), %ebx
	movl	%ebx, (%rax,%rdx,4)
	js	.LBB2_807
# BB#808:                               # %cond.false.279.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movl	%ebx, %edx
	andl	$1, %edx
	testl	%ebx, %ebx
	cmovlel	%r12d, %edx
	movl	%edx, %ebx
	jmp	.LBB2_809
.LBB2_807:                              # %cond.true.276.i
                                        #   in Loop: Header=BB2_795 Depth=2
	andl	$1, %ebx
	negl	%ebx
.LBB2_809:                              # %cond.end.287.i
                                        #   in Loop: Header=BB2_795 Depth=2
	addl	%ecx, %ebx
	movq	216(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ebx
	jne	.LBB2_826
# BB#810:                               # %if.end.294.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movq	216(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB2_819
# BB#811:                               # %land.lhs.true.i.1647
                                        #   in Loop: Header=BB2_795 Depth=2
	movl	32(%rbp), %edx
	cmpl	32(%rcx), %edx
	jne	.LBB2_819
# BB#812:                               # %land.lhs.true.303.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movl	36(%rbp), %edx
	cmpl	36(%rcx), %edx
	jne	.LBB2_819
# BB#813:                               # %if.then.308.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movslq	200(%rcx), %rsi
	movl	(%rax,%rsi,4), %edx
	movl	%edx, %edi
	andl	$1, %edi
	testl	%edx, %edx
	js	.LBB2_814
# BB#815:                               # %cond.false.321.i
                                        #   in Loop: Header=BB2_795 Depth=2
	testl	%edx, %edx
	cmovlel	%r12d, %edi
	jmp	.LBB2_816
.LBB2_819:                              # %do.end.356.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r15d
	cmovgel	%r15d, %ecx
	cmpl	%r8d, %r10d
	cmovlel	%r10d, %r8d
	movslq	8(%r14), %rsi
	cmpl	(%r14), %esi
	jne	.LBB2_823
# BB#820:                               # %land.lhs.true.384.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movslq	8(%rbp), %rax
	cmpl	(%rbp), %eax
	jne	.LBB2_823
# BB#821:                               # %if.then.391.i
                                        #   in Loop: Header=BB2_795 Depth=2
	cmpl	%ecx, %r8d
	jle	.LBB2_826
# BB#822:                               # %if.then.394.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movq	%r9, %r12
	movslq	%ecx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	addq	$127, %rsi
	shrq	$8, %rsi
	addq	$127, %rax
	shrq	$8, %rax
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %r10
	subl	%esi, %eax
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%eax, %ecx
	movq	184(%rsp), %r9          # 8-byte Reload
	callq	*40(%r10)
	jmp	.LBB2_825
.LBB2_823:                              # %if.else.433.i
                                        #   in Loop: Header=BB2_795 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_826
# BB#824:                               # %if.then.436.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movq	%r9, %r12
	movq	(%r14), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 264(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 248(%rsp)
	movl	152(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movq	184(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	*104(%rsp)              # 8-byte Folded Reload
.LBB2_825:                              # %cleanup.459.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movl	%eax, %edi
	testl	%edi, %edi
	movq	%r12, %r9
	movl	$0, %r12d
	movq	208(%rsp), %r10         # 8-byte Reload
	jns	.LBB2_826
	jmp	.LBB2_960
.LBB2_797:                              # %cond.true.206.i
                                        #   in Loop: Header=BB2_795 Depth=2
	negl	%esi
.LBB2_799:                              # %cond.end.217.i
                                        #   in Loop: Header=BB2_795 Depth=2
	subl	%esi, %ecx
	addl	48(%rbp), %ebx
	movl	%ebx, (%rax,%rdx,4)
	js	.LBB2_800
# BB#801:                               # %cond.false.230.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%ebx, %ebx
	cmovlel	%r12d, %eax
	movl	%eax, %ebx
	jmp	.LBB2_802
.LBB2_800:                              # %cond.true.227.i
                                        #   in Loop: Header=BB2_795 Depth=2
	andl	$1, %ebx
	negl	%ebx
.LBB2_802:                              # %cond.end.238.i
                                        #   in Loop: Header=BB2_795 Depth=2
	addl	%ecx, %ebx
	movq	216(%rsp), %rax         # 8-byte Reload
	testl	%eax, %ebx
	cmovneq	%rbp, %r14
.LBB2_826:                              # %for.inc.462.i
                                        #   in Loop: Header=BB2_795 Depth=2
	movq	216(%rbp), %rbp
	testq	%rbp, %rbp
	movl	%ebx, %ecx
	jne	.LBB2_795
.LBB2_827:                              # %if.end.470.i
                                        #   in Loop: Header=BB2_752 Depth=1
	movq	%r9, %rdi
	movl	%r10d, %esi
	movq	%r9, %rbp
	movq	%r10, %r14
	callq	move_al_by_y
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB2_828
.LBB2_829:                              # %cleanup.479.thread259.i
	movl	%ebx, %edi
	jmp	.LBB2_960
.LBB2_180:                              # %cleanup.632.thread373.i
	leal	1(%r13), %r9d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%r13d, %r8d
	callq	process_h_lists
	movq	%rbx, %rsi
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#181:                               # %if.end.644.i
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	%rsi, %rbx
	callq	close_margins
	movq	%rbx, %rsi
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#182:                               # %if.end.651.i
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	128(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB2_183
.LBB2_480:                              # %cleanup.424.thread301.i
	leal	1(%r12), %r9d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%r12d, %r8d
	jmp	.LBB2_304
.LBB2_895:                              # %if.else.42
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	movq	40(%rbx), %r12
	xorl	%edi, %edi
	testq	%r12, %r12
	je	.LBB2_960
# BB#896:                               # %if.end.i.1915
	movq	88(%rdx), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	4(%r12), %r13d
	leaq	272(%rbx), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	56(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	$0, 272(%rbx)
	movl	$-2147483648, 88(%rbx)  # imm = 0xFFFFFFFF80000000
	leal	127(%r13), %ecx
	andl	$-256, %ecx
	leal	256(%rax,%rcx), %edx
	movl	%edx, 304(%rbx)
	addl	%eax, %ecx
	movl	%ecx, 336(%rbx)
	leaq	400(%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rbx, %r15
	movq	%r15, 160(%rsp)         # 8-byte Spill
	notl	204(%rsp)               # 4-byte Folded Spill
	xorps	%xmm3, %xmm3
                                        # implicit-def: EDI
	jmp	.LBB2_897
.LBB2_957:                              # %if.end.354.i
                                        #   in Loop: Header=BB2_897 Depth=1
	movq	288(%r15), %rax
	movq	%rax, 296(%r15)
	movq	$0, 288(%r15)
	movl	%r14d, %r13d
	xorps	%xmm3, %xmm3
	movl	208(%rsp), %edi         # 4-byte Reload
.LBB2_897:                              # %while.body.i.1926
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_898 Depth 2
                                        #       Child Loop BB2_899 Depth 3
                                        #         Child Loop BB2_916 Depth 4
                                        #     Child Loop BB2_926 Depth 2
                                        #     Child Loop BB2_941 Depth 2
	movslq	%r13d, %rax
	addq	$127, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	%r13d, %ecx
	orl	204(%rsp), %ecx         # 4-byte Folded Reload
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leal	1(%rcx), %r14d
	andq	$-256, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
.LBB2_898:                              # %while.cond.14.outer.i.1929
                                        #   Parent Loop BB2_897 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_899 Depth 3
                                        #         Child Loop BB2_916 Depth 4
	movl	%edi, 208(%rsp)         # 4-byte Spill
	jmp	.LBB2_899
	.align	16, 0x90
.LBB2_921:                              # %if.end.critedge.i.i.2011
                                        #   in Loop: Header=BB2_899 Depth=3
	movq	$0, 216(%r9)
	movq	%rbx, 208(%r9)
	movq	%r9, (%rdi)
.LBB2_899:                              # %while.cond.14.outer.i.1929
                                        #   Parent Loop BB2_897 Depth=1
                                        #     Parent Loop BB2_898 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_916 Depth 4
	xorl	%ecx, %ecx
	testq	%r12, %r12
	movq	%r12, %r9
	movl	$0, %r12d
	je	.LBB2_902
# BB#900:                               # %land.rhs.i.1932
                                        #   in Loop: Header=BB2_899 Depth=3
	movb	$1, %cl
	cmpl	%r13d, 4(%r9)
	jne	.LBB2_901
# BB#905:                               # %while.body.21.i.1935
                                        #   in Loop: Header=BB2_899 Depth=3
	movq	216(%r9), %r12
	movq	%r12, 40(%r15)
	cmpq	%r9, 48(%r15)
	jne	.LBB2_907
# BB#906:                               # %if.then.26.i.1936
                                        #   in Loop: Header=BB2_899 Depth=3
	movq	%r12, 48(%r15)
.LBB2_907:                              # %if.end.28.i.1938
                                        #   in Loop: Header=BB2_899 Depth=3
	testq	%r12, %r12
	je	.LBB2_909
# BB#908:                               # %if.then.31.i.1940
                                        #   in Loop: Header=BB2_899 Depth=3
	movq	$0, 208(%r12)
.LBB2_909:                              # %if.end.32.i.1943
                                        #   in Loop: Header=BB2_899 Depth=3
	movl	(%r9), %r10d
	cmpl	$0, 48(%r9)
	je	.LBB2_910
# BB#914:                               # %if.else.86.i.1975
                                        #   in Loop: Header=BB2_899 Depth=3
	movl	%r10d, 32(%r9)
	movl	%r10d, 36(%r9)
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rax, %rdi
	movq	224(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_921
# BB#915:                               # %land.rhs.i.lr.ph.i.1978
                                        #   in Loop: Header=BB2_899 Depth=3
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB2_916:                              # %land.rhs.i.i.1979
                                        #   Parent Loop BB2_897 Depth=1
                                        #     Parent Loop BB2_898 Depth=2
                                        #       Parent Loop BB2_899 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbx, %r8
	movq	%rsi, %rbx
	cmpl	%r10d, 32(%rbx)
	jl	.LBB2_920
# BB#917:                               # %if.else.i.i.1980
                                        #   in Loop: Header=BB2_916 Depth=4
	jg	.LBB2_923
# BB#918:                               # %if.end.6.i.i.1985
                                        #   in Loop: Header=BB2_916 Depth=4
	movl	(%rbx), %r11d
	movl	8(%rbx), %eax
	movl	%eax, %ebp
	subl	%r11d, %ebp
	setg	%dl
	movl	8(%r9), %esi
	subl	%r10d, %esi
	setg	%cl
	movzbl	%cl, %ecx
	movzbl	%dl, %edx
	cmpl	%ecx, %edx
	je	.LBB2_922
# BB#919:                               # %if.then.17.i.i.1986
                                        #   in Loop: Header=BB2_916 Depth=4
	cmpl	%r11d, %eax
	jle	.LBB2_920
	jmp	.LBB2_923
	.align	16, 0x90
.LBB2_922:                              # %do.end.21.i.i.2004
                                        #   in Loop: Header=BB2_916 Depth=4
	movl	12(%rbx), %eax
	subl	4(%rbx), %eax
	movl	12(%r9), %ecx
	subl	%r13d, %ecx
	cvtsi2sdl	%ebp, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB2_923
.LBB2_920:                              # %while.cond.i.backedge.i.1989
                                        #   in Loop: Header=BB2_916 Depth=4
	leaq	216(%rbx), %rdi
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_916
	jmp	.LBB2_921
	.align	16, 0x90
.LBB2_923:                              # %if.then.i.i.2007
                                        #   in Loop: Header=BB2_899 Depth=3
	movq	%rbx, 216(%r9)
	movq	%r8, 208(%r9)
	movq	%r9, 208(%rbx)
	movq	%r9, (%rdi)
	jmp	.LBB2_899
.LBB2_910:                              # %if.then.35.i.1947
                                        #   in Loop: Header=BB2_898 Depth=2
	movslq	%r10d, %rsi
	movslq	8(%r9), %rcx
	cmpl	%ecx, %r10d
	jle	.LBB2_911
# BB#912:                               # %if.else.i.1963
                                        #   in Loop: Header=BB2_898 Depth=2
	addq	$127, %rcx
	shrq	$8, %rcx
	movl	%ecx, %eax
	addq	$127, %rsi
	shrq	$8, %rsi
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	%eax, %esi
	jmp	.LBB2_913
.LBB2_911:                              # %if.then.44.i.1955
                                        #   in Loop: Header=BB2_898 Depth=2
	addq	$127, %rsi
	shrq	$8, %rsi
	addq	$127, %rcx
	shrq	$8, %rcx
	subl	%esi, %ecx
.LBB2_913:                              # %do.end.78.i.1971
                                        #   in Loop: Header=BB2_898 Depth=2
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movl	152(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	movq	136(%rsp), %rdx         # 8-byte Reload
	movq	184(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	xorps	%xmm3, %xmm3
	jns	.LBB2_898
	jmp	.LBB2_960
.LBB2_901:                              #   in Loop: Header=BB2_897 Depth=1
	movq	%r9, %r12
.LBB2_902:                              # %while.end.i.2017
                                        #   in Loop: Header=BB2_897 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_903
# BB#925:                               # %for.body.lr.ph.i.2027
                                        #   in Loop: Header=BB2_897 Depth=1
	leaq	4(%r12), %rdx
	testb	%cl, %cl
	cmoveq	112(%rsp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %ecx
	movq	144(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	cmovlel	%ecx, %r14d
	movl	%r14d, 276(%rsp)
	.align	16, 0x90
.LBB2_926:                              # %for.body.i.2030
                                        #   Parent Loop BB2_897 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rax), %ecx
	cmpl	%r14d, %ecx
	jge	.LBB2_928
# BB#927:                               # %if.then.121.i.2031
                                        #   in Loop: Header=BB2_926 Depth=2
	movl	%ecx, 276(%rsp)
	movl	%ecx, %r14d
.LBB2_928:                              # %for.inc.i.2035
                                        #   in Loop: Header=BB2_926 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB2_926
# BB#929:                               # %for.end.i.2037
                                        #   in Loop: Header=BB2_897 Depth=1
	cmpl	%r14d, %r13d
	jne	.LBB2_930
# BB#931:                               # %if.then.128.i.2040
                                        #   in Loop: Header=BB2_897 Depth=1
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	process_h_segments
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_958
# BB#932:                               # %if.end.133.i.2045
                                        #   in Loop: Header=BB2_897 Depth=1
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	move_al_by_y
	testl	%eax, %eax
	movl	208(%rsp), %edi         # 4-byte Reload
	cmovsl	%eax, %edi
	js	.LBB2_960
# BB#933:                               # %cleanup.cont.141.i.2047
                                        #   in Loop: Header=BB2_897 Depth=1
	testl	%ebp, %ebp
	jle	.LBB2_934
# BB#970:                               # %if.then.144.i.2048
                                        #   in Loop: Header=BB2_897 Depth=1
	movq	40(%r15), %r12
	xorps	%xmm3, %xmm3
	jmp	.LBB2_897
.LBB2_903:                              # %if.then.95.i.2019
                                        #   in Loop: Header=BB2_897 Depth=1
	testq	%r12, %r12
	je	.LBB2_959
# BB#904:                               # %if.end.99.i.2021
                                        #   in Loop: Header=BB2_897 Depth=1
	movl	4(%r12), %r13d
	movq	288(%r15), %rax
	movq	%rax, 296(%r15)
	movq	$0, 288(%r15)
	movl	208(%rsp), %edi         # 4-byte Reload
	jmp	.LBB2_897
.LBB2_930:                              #   in Loop: Header=BB2_897 Depth=1
	movl	208(%rsp), %eax         # 4-byte Reload
	jmp	.LBB2_935
.LBB2_934:                              #   in Loop: Header=BB2_897 Depth=1
	movl	%edi, %eax
.LBB2_935:                              # %if.end.147.i.2050
                                        #   in Loop: Header=BB2_897 Depth=1
	movq	128(%rsp), %rbp         # 8-byte Reload
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB2_959
# BB#936:                               # %if.end.151.i.2056
                                        #   in Loop: Header=BB2_897 Depth=1
	movl	%eax, 208(%rsp)         # 4-byte Spill
	movslq	%r14d, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %rbp
	setl	%cl
	cmpl	%r14d, %r13d
	jne	.LBB2_938
# BB#937:                               #   in Loop: Header=BB2_897 Depth=1
	movzbl	%cl, %eax
	movl	%r13d, %r9d
	movq	168(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB2_939
.LBB2_938:                              # %if.then.164.i.2063
                                        #   in Loop: Header=BB2_897 Depth=1
	cmpq	%rax, %rbp
	movl	$-1, %ecx
	movl	$1, %eax
	cmovll	%eax, %ecx
	movq	%r15, %rdi
	movl	%r13d, %esi
	leaq	276(%rsp), %rdx
	movq	168(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r8d
	callq	intersect_al
	movslq	276(%rsp), %r9
	movq	%r9, %rax
	addq	$127, %rax
	andq	$-256, %rax
	cmpq	%rax, %rbp
	setl	%al
	movzbl	%al, %eax
.LBB2_939:                              # %if.end.176.i.2065
                                        #   in Loop: Header=BB2_897 Depth=1
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	orl	%ebx, %eax
	je	.LBB2_956
# BB#940:                               # %for.cond.185.preheader.i
                                        #   in Loop: Header=BB2_897 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	movl	$0, %r15d
	je	.LBB2_956
	.align	16, 0x90
.LBB2_941:                              # %for.body.188.i
                                        #   Parent Loop BB2_897 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %ecx
	movl	48(%rbx), %r15d
	addl	%ecx, %r15d
	movl	%r15d, %eax
	movq	216(%rsp), %rdx         # 8-byte Reload
	andl	%edx, %eax
	testl	%edx, %ecx
	je	.LBB2_942
# BB#943:                               # %if.end.207.i
                                        #   in Loop: Header=BB2_941 Depth=2
	testl	%eax, %eax
	jne	.LBB2_955
# BB#944:                               # %if.end.214.i
                                        #   in Loop: Header=BB2_941 Depth=2
	movq	216(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_948
# BB#945:                               # %land.lhs.true.i.2069
                                        #   in Loop: Header=BB2_941 Depth=2
	movl	32(%rbx), %ecx
	cmpl	32(%rax), %ecx
	jne	.LBB2_948
# BB#946:                               # %land.lhs.true.223.i
                                        #   in Loop: Header=BB2_941 Depth=2
	movl	36(%rbx), %ecx
	cmpl	36(%rax), %ecx
	jne	.LBB2_948
# BB#947:                               # %if.then.228.i
                                        #   in Loop: Header=BB2_941 Depth=2
	addl	48(%rax), %r15d
	movq	%rax, %rbx
	jmp	.LBB2_955
.LBB2_942:                              # %if.then.199.i
                                        #   in Loop: Header=BB2_941 Depth=2
	testl	%eax, %eax
	cmovneq	%rbx, %r14
	jmp	.LBB2_955
.LBB2_948:                              # %do.end.235.i
                                        #   in Loop: Header=BB2_941 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	12(%rax), %r8d
	cmpl	%ecx, %r13d
	cmovgel	%r13d, %ecx
	cmpl	%r8d, %r9d
	cmovlel	%r9d, %r8d
	movslq	8(%r14), %rsi
	cmpl	(%r14), %esi
	jne	.LBB2_952
# BB#949:                               # %land.lhs.true.263.i
                                        #   in Loop: Header=BB2_941 Depth=2
	movslq	8(%rbx), %rax
	cmpl	(%rbx), %eax
	jne	.LBB2_952
# BB#950:                               # %if.then.270.i
                                        #   in Loop: Header=BB2_941 Depth=2
	cmpl	%ecx, %r8d
	jle	.LBB2_955
# BB#951:                               # %if.then.273.i
                                        #   in Loop: Header=BB2_941 Depth=2
	movq	%r9, %rbp
	movslq	%ecx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
	movslq	%r8d, %r8
	addq	$127, %r8
	shrq	$8, %r8
	subl	%edx, %r8d
	addq	$127, %rsi
	shrq	$8, %rsi
	addq	$127, %rax
	shrq	$8, %rax
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %r10
	subl	%esi, %eax
	movl	152(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%eax, %ecx
	movq	184(%rsp), %r9          # 8-byte Reload
	callq	*40(%r10)
	jmp	.LBB2_954
.LBB2_952:                              # %if.else.312.i
                                        #   in Loop: Header=BB2_941 Depth=2
	cmpl	%r8d, %ecx
	jge	.LBB2_955
# BB#953:                               # %if.then.315.i
                                        #   in Loop: Header=BB2_941 Depth=2
	movq	%r9, %rbp
	movq	(%r14), %rax
	movq	%rax, 256(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 264(%rsp)
	movq	(%rbx), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 248(%rsp)
	movl	152(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movq	184(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	leaq	240(%rsp), %rdx
	callq	*104(%rsp)              # 8-byte Folded Reload
.LBB2_954:                              # %cleanup.338.i
                                        #   in Loop: Header=BB2_941 Depth=2
	movl	%eax, %edi
	testl	%edi, %edi
	movq	%rbp, %r9
	js	.LBB2_960
	.align	16, 0x90
.LBB2_955:                              # %for.inc.341.i
                                        #   in Loop: Header=BB2_941 Depth=2
	movq	216(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB2_941
.LBB2_956:                              # %if.end.349.i
                                        #   in Loop: Header=BB2_897 Depth=1
	movq	160(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%r9d, %esi
	movq	%r9, %r14
	callq	move_al_by_y
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_957
.LBB2_958:                              # %cleanup.358.thread217.i
	movl	%ebp, %edi
	jmp	.LBB2_960
.LBB2_959:                              # %cleanup.358.thread220.i
	xorl	%edi, %edi
.LBB2_960:                              # %cleanup
	movl	%edi, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_303:                              # %cleanup.634.thread376.i
	leal	1(%r14), %r9d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%r14d, %r8d
.LBB2_304:                              # %cleanup.634.thread376.i
	callq	process_h_lists
	movq	%rbx, %rsi
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#305:                               # %if.end.646.i
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	%rsi, %rbx
	callq	close_margins
	movq	%rbx, %rsi
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB2_960
# BB#306:                               # %if.end.653.i
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	192(%rsp), %rdx         # 8-byte Reload
.LBB2_183:                              # %cleanup
	callq	close_margins
	movl	%eax, %edi
	jmp	.LBB2_960
.LBB2_97:
	movl	%ecx, %edi
	jmp	.LBB2_960
.LBB2_344:
	movl	%ecx, %edi
	jmp	.LBB2_960
.LBB2_220:
	movl	%ecx, %edi
	jmp	.LBB2_960
.LBB2_430:
	movl	%ecx, %edi
	jmp	.LBB2_960
.Lfunc_end2:
	.size	spot_into_trapezoids, .Lfunc_end2-spot_into_trapezoids
	.cfi_endproc

	.align	16, 0x90
	.type	spot_into_scan_lines,@function
spot_into_scan_lines:                   # @spot_into_scan_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$920, %rsp              # imm = 0x398
.Ltmp32:
	.cfi_def_cfa_offset 976
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
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	408(%r13), %rax
	cmpl	$0, 28(%rax)
	movl	8(%rax), %ecx
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movq	16(%rax), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	je	.LBB3_90
# BB#1:                                 # %if.then
	movq	48(%rax), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	shrq	$32, %rcx
	movq	40(%r13), %r15
	movl	$129, %edx
	subl	%ecx, %edx
	testl	%ecx, %ecx
	movl	$128, %ecx
	cmovel	%ecx, %edx
	movl	$128, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	%edx, 48(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	testq	%r15, %r15
	je	.LBB3_180
# BB#2:                                 # %if.end.i
	movq	40(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	56(%rax), %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movl	76(%rax), %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movq	80(%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	subl	$-128, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movq	(%r13), %rax
	movq	%rax, 800(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 816(%rsp)
	movq	%rax, 808(%rsp)
	leaq	800(%rsp), %rax
	movq	%rax, 824(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 832(%rsp)
	leaq	856(%rsp), %rax
	movl	$-2147483648, 860(%rsp) # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, 856(%rsp) # imm = 0xFFFFFFFF80000000
	movq	$0, 864(%rsp)
	leaq	888(%rsp), %rsi
	movl	$2147483647, 892(%rsp)  # imm = 0x7FFFFFFF
	movl	$2147483647, 888(%rsp)  # imm = 0x7FFFFFFF
	movq	$0, 904(%rsp)
	movq	%rsi, 872(%rsp)
	movq	%rax, 896(%rsp)
	movq	%rsi, 848(%rsp)
	leaq	272(%r13), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leaq	56(%r13), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	$0, 272(%r13)
	movl	$-2147483648, 88(%r13)  # imm = 0xFFFFFFFF80000000
	leaq	400(%r13), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	subl	%ecx, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	subl	$-128, %edx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movl	$-8388608, 132(%rsp)    # 4-byte Folded Spill
                                        # imm = 0xFFFFFFFFFF800000
	movl	$-2147483648, %r12d     # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, 96(%rsp)  # 4-byte Folded Spill
                                        # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movq	%rax, 56(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 52(%rsp)          # 4-byte Spill
.LBB3_3:                                # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #     Child Loop BB3_12 Depth 2
                                        #       Child Loop BB3_20 Depth 3
                                        #     Child Loop BB3_33 Depth 2
                                        #       Child Loop BB3_34 Depth 3
                                        #         Child Loop BB3_35 Depth 4
                                        #         Child Loop BB3_51 Depth 4
                                        #     Child Loop BB3_62 Depth 2
                                        #     Child Loop BB3_74 Depth 2
                                        #       Child Loop BB3_78 Depth 3
                                        #     Child Loop BB3_84 Depth 2
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	move_al_by_y
	movl	%eax, 84(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB3_4
# BB#5:                                 # %if.end.15.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	testq	%r14, %r14
	xorps	%xmm3, %xmm3
	je	.LBB3_6
# BB#7:                                 # %if.else.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	256(%rax), %eax
	testq	%r15, %r15
	je	.LBB3_9
# BB#8:                                 # %if.then.33.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	4(%r15), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
.LBB3_9:                                # %for.body.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	%r14, %rcx
	.align	16, 0x90
.LBB3_10:                               # %for.body.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	72(%rcx), %edx
	movl	12(%rcx), %esi
	movl	64(%rcx), %r12d
	cmpl	%r12d, %edx
	cmovgel	%edx, %r12d
	cmpl	%esi, %r12d
	cmovll	%esi, %r12d
	cmpl	%r12d, %eax
	cmovlel	%eax, %r12d
	movq	216(%rcx), %rcx
	testq	%rcx, %rcx
	movl	%r12d, %eax
	jne	.LBB3_10
	jmp	.LBB3_11
	.align	16, 0x90
.LBB3_6:                                # %if.then.20.i
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	4(%r15), %rax
	testq	%r15, %r15
	cmoveq	40(%rsp), %rax          # 8-byte Folded Reload
	movl	(%rax), %r12d
.LBB3_11:                               # %while.cond.preheader.i
                                        #   in Loop: Header=BB3_3 Depth=1
	testq	%r15, %r15
	movl	$0, %ecx
	je	.LBB3_31
	.align	16, 0x90
.LBB3_12:                               # %land.rhs.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_20 Depth 3
	cmpl	%r12d, 4(%r15)
	jne	.LBB3_13
# BB#14:                                # %while.body.i
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	216(%r15), %r8
	cmpl	$0, 48(%r15)
	je	.LBB3_15
# BB#18:                                # %if.else.88.i
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	(%r15), %r10d
	movl	%r10d, 32(%r15)
	movl	%r10d, 36(%r15)
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rax, %rbp
	movq	144(%rsp), %rbx         # 8-byte Reload
	je	.LBB3_25
# BB#19:                                # %land.rhs.i.lr.ph.i
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	144(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB3_20:                               # %land.rhs.i.i
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %r9
	movq	%rsi, %rbx
	cmpl	%r10d, 32(%rbx)
	jl	.LBB3_24
# BB#21:                                # %if.else.i.i
                                        #   in Loop: Header=BB3_20 Depth=3
	jg	.LBB3_27
# BB#22:                                # %if.end.6.i.i
                                        #   in Loop: Header=BB3_20 Depth=3
	movl	(%rbx), %r14d
	movl	8(%rbx), %edx
	movl	%edx, %eax
	subl	%r14d, %eax
	setg	%r11b
	movl	8(%r15), %esi
	subl	%r10d, %esi
	setg	%cl
	movzbl	%cl, %ecx
	movzbl	%r11b, %edi
	cmpl	%ecx, %edi
	je	.LBB3_26
# BB#23:                                # %if.then.17.i.i
                                        #   in Loop: Header=BB3_20 Depth=3
	cmpl	%r14d, %edx
	jle	.LBB3_24
	jmp	.LBB3_27
	.align	16, 0x90
.LBB3_26:                               # %do.end.21.i.i
                                        #   in Loop: Header=BB3_20 Depth=3
	movl	12(%rbx), %ecx
	subl	4(%rbx), %ecx
	movl	12(%r15), %edx
	subl	%r12d, %edx
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB3_27
.LBB3_24:                               # %while.cond.i.backedge.i
                                        #   in Loop: Header=BB3_20 Depth=3
	leaq	216(%rbx), %rbp
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_20
.LBB3_25:                               # %if.end.critedge.i.i
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	$0, 216(%r15)
	movq	%rbx, 208(%r15)
	jmp	.LBB3_28
	.align	16, 0x90
.LBB3_15:                               # %if.then.87.i
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	288(%r13), %rax
	movq	%rax, 216(%r15)
	movq	$0, 208(%r15)
	testq	%rax, %rax
	je	.LBB3_17
# BB#16:                                # %if.then.i.i
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	%r15, 208(%rax)
.LBB3_17:                               # %insert_h_new.exit.i
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	%r15, 288(%r13)
	jmp	.LBB3_29
.LBB3_27:                               # %if.then.i.14.i
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	%rbx, 216(%r15)
	movq	%r9, 208(%r15)
	movq	%r15, 208(%rbx)
.LBB3_28:                               # %insert_x_new.exit.i
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	%r15, (%rbp)
.LBB3_29:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB3_12 Depth=2
	testq	%r8, %r8
	movq	%r8, %r15
	movl	$0, %ecx
	jne	.LBB3_12
	jmp	.LBB3_30
	.align	16, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_3 Depth=1
	movq	%r15, %rcx
.LBB3_30:                               # %while.end.i.loopexit
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
.LBB3_31:                               # %while.end.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	testq	%r14, %r14
	movl	84(%rsp), %ebp          # 4-byte Reload
	je	.LBB3_58
.LBB3_33:                               # %for.body.95.lr.ph.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_34 Depth 3
                                        #         Child Loop BB3_35 Depth 4
                                        #         Child Loop BB3_51 Depth 4
	movl	%eax, %r15d
	.align	16, 0x90
.LBB3_34:                               # %for.body.95.i
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_35 Depth 4
                                        #         Child Loop BB3_51 Depth 4
	movq	%r14, %rbx
	movq	216(%rbx), %r14
	.align	16, 0x90
.LBB3_35:                               # %e.i
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        #       Parent Loop BB3_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	12(%rbx), %eax
	cmpl	%r12d, %eax
	jle	.LBB3_37
# BB#36:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB3_35 Depth=4
	movl	4(%rbx), %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_42
.LBB3_37:                               # %if.then.107.i
                                        #   in Loop: Header=BB3_35 Depth=4
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	end_x_line
	testl	%eax, %eax
	jne	.LBB3_57
# BB#38:                                # %if.end.110.i
                                        #   in Loop: Header=BB3_35 Depth=4
	cmpl	$0, 196(%rbx)
	je	.LBB3_35
# BB#39:                                # %if.then.112.i
                                        #   in Loop: Header=BB3_35 Depth=4
	movl	12(%rbx), %eax
	cmpl	%r12d, %eax
	jle	.LBB3_41
# BB#40:                                # %lor.lhs.false.117.i
                                        #   in Loop: Header=BB3_35 Depth=4
	cmpl	%eax, 4(%rbx)
	jne	.LBB3_35
.LBB3_41:                               # %if.then.124.i
                                        #   in Loop: Header=BB3_35 Depth=4
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	step_al
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB3_35
	jmp	.LBB3_180
	.align	16, 0x90
.LBB3_42:                               # %if.end.132.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movl	%r12d, %esi
	subl	%ecx, %esi
	jle	.LBB3_43
# BB#44:                                # %cond.false.140.i
                                        #   in Loop: Header=BB3_34 Depth=3
	cmpl	%eax, %r12d
	jne	.LBB3_46
# BB#45:                                # %cond.true.145.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movl	8(%rbx), %eax
	jmp	.LBB3_50
.LBB3_43:                               # %cond.true.137.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movl	(%rbx), %eax
	jmp	.LBB3_50
.LBB3_46:                               # %cond.false.148.i
                                        #   in Loop: Header=BB3_34 Depth=3
	cmpl	24(%rbx), %r12d
	movl	16(%rbx), %edi
	movl	20(%rbx), %ecx
	jle	.LBB3_47
# BB#48:                                # %cond.false.159.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB3_49
.LBB3_47:                               # %cond.true.151.i
                                        #   in Loop: Header=BB3_34 Depth=3
	imull	%esi, %edi
	addl	28(%rbx), %edi
	movl	%edi, %eax
	cltd
	idivl	%ecx
.LBB3_49:                               # %cond.end.168.i
                                        #   in Loop: Header=BB3_34 Depth=3
	addl	(%rbx), %eax
.LBB3_50:                               # %cond.end.175.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movl	%eax, 32(%rbx)
	cmpl	%r15d, %eax
	movq	%rbx, %rcx
	jge	.LBB3_32
	.align	16, 0x90
.LBB3_51:                               # %while.cond.181.i
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_33 Depth=2
                                        #       Parent Loop BB3_34 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	208(%rcx), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB3_51
# BB#52:                                # %while.end.189.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movq	208(%rbx), %rax
	movq	216(%rbx), %rdx
	movq	%rdx, 216(%rax)
	movq	216(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_54
# BB#53:                                # %if.then.195.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movq	%rax, 208(%rdx)
.LBB3_54:                               # %if.end.199.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movq	216(%rcx), %rax
	testq	%rax, %rax
	je	.LBB3_56
# BB#55:                                # %if.then.202.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movq	%rbx, 208(%rax)
.LBB3_56:                               # %if.end.205.i
                                        #   in Loop: Header=BB3_34 Depth=3
	movq	%rax, 216(%rbx)
	movq	%rbx, 216(%rcx)
	movq	%rcx, 208(%rbx)
.LBB3_57:                               # %for.cond.92.backedge.i
                                        #   in Loop: Header=BB3_34 Depth=3
	testq	%r14, %r14
	jne	.LBB3_34
	jmp	.LBB3_58
.LBB3_32:                               # %for.cond.92.outer.loopexit.i
                                        #   in Loop: Header=BB3_33 Depth=2
	testq	%r14, %r14
	jne	.LBB3_33
	.align	16, 0x90
.LBB3_58:                               # %for.end.212.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%ebp, %esi
	movl	96(%rsp), %edi          # 4-byte Reload
	cmpl	%edi, %r12d
	jg	.LBB3_61
# BB#59:                                # %for.end.212.i
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%eax, %eax
	cmpl	100(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB3_61
# BB#60:                                #   in Loop: Header=BB3_3 Depth=1
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB3_70
	.align	16, 0x90
.LBB3_61:                               # %if.then.218.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	872(%rsp), %rbx
	leaq	888(%rsp), %r14
	cmpq	%r14, %rbx
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
	je	.LBB3_67
	.align	16, 0x90
.LBB3_62:                               # %for.body.223.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %esi
	movl	4(%rbx), %ecx
	subl	%esi, %ecx
	movq	8(%r15), %r9
	movl	$1, %r8d
	movq	120(%rsp), %rdi         # 8-byte Reload
	movl	132(%rsp), %edx         # 4-byte Reload
	callq	*%rbp
	movl	%eax, %ecx
	movl	%eax, %esi
	sarl	$31, %ecx
	testb	$28, %cl
	jne	.LBB3_63
# BB#64:                                # %for.inc.243.i
                                        #   in Loop: Header=BB3_62 Depth=2
	movq	16(%rbx), %rbx
	cmpq	%r14, %rbx
	jne	.LBB3_62
# BB#65:                                # %for.end.245.i
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	%r14, 872(%rsp)
	je	.LBB3_67
# BB#66:                                # %if.then.i.25.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	840(%rsp), %rax
	movq	896(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movq	872(%rsp), %rax
	movq	%rax, 840(%rsp)
	movq	%r14, 872(%rsp)
	leaq	856(%rsp), %rax
	movq	%rax, 896(%rsp)
	movq	%r14, 848(%rsp)
.LBB3_67:                               # %range_list_reset.exit.i
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	100(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB3_68
# BB#69:                                # %cleanup.257.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%r12d, %edx
	sarl	$8, %edx
	movzbl	%r12b, %eax
	movl	48(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %eax
	setl	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, 132(%rsp)         # 4-byte Spill
	shll	$8, %edx
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rdx), %edi
	addl	%ecx, %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	$1, %eax
.LBB3_70:                               # %if.end.261.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	cmpl	%edi, %r12d
	jle	.LBB3_72
# BB#71:                                #   in Loop: Header=BB3_3 Depth=1
	movl	%edi, 96(%rsp)          # 4-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	52(%rsp), %ebp          # 4-byte Reload
	movl	%esi, %eax
	jmp	.LBB3_87
	.align	16, 0x90
.LBB3_72:                               # %if.then.264.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%edi, 96(%rsp)          # 4-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movl	%r12d, %ebp
	je	.LBB3_75
# BB#73:                                # %for.cond.272.preheader.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	xorl	%r15d, %r15d
	movl	$-2147483648, %ebp      # imm = 0xFFFFFFFF80000000
	jmp	.LBB3_74
.LBB3_76:                               # %for.cond.272.i
                                        #   in Loop: Header=BB3_74 Depth=2
	movq	216(%rbx), %rbx
.LBB3_74:                               # %for.cond.272.preheader.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_78 Depth 3
	testq	%rbx, %rbx
	je	.LBB3_75
# BB#77:                                # %for.body.275.i
                                        #   in Loop: Header=BB3_74 Depth=2
	movslq	32(%rbx), %rsi
	movq	32(%rsp), %rax          # 8-byte Reload
	cltq
	subq	%rax, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movl	28(%rsp), %eax          # 4-byte Reload
	.align	16, 0x90
.LBB3_78:                               # %do.end.289.i
                                        #   Parent Loop BB3_3 Depth=1
                                        #     Parent Loop BB3_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addl	48(%rbx), %r15d
	testl	%eax, %r15d
	je	.LBB3_80
# BB#79:                                # %if.end.296.i
                                        #   in Loop: Header=BB3_78 Depth=3
	movq	216(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB3_78
	jmp	.LBB3_75
.LBB3_80:                               # %cleanup.312.i
                                        #   in Loop: Header=BB3_74 Depth=2
	movl	32(%rbx), %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	sarl	$8, %edx
	leaq	800(%rsp), %rdi
	callq	range_list_add
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB3_76
# BB#81:                                # %cleanup.318.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%r14d, %eax
	sarl	$31, %eax
	andl	$28, %eax
	movl	52(%rsp), %ebp          # 4-byte Reload
	jne	.LBB3_82
	.align	16, 0x90
.LBB3_75:                               # %if.end.322.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	288(%r13), %rbx
	jmp	.LBB3_84
	.align	16, 0x90
.LBB3_83:                               # %for.cond.323.i
                                        #   in Loop: Header=BB3_84 Depth=2
	movq	216(%rbx), %rbx
.LBB3_84:                               # %for.cond.323.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB3_86
# BB#85:                                # %for.body.326.i
                                        #   in Loop: Header=BB3_84 Depth=2
	movl	(%rbx), %eax
	movl	8(%rbx), %edx
	cmpl	%edx, %eax
	movl	%edx, %ecx
	cmovlel	%eax, %ecx
	cmovgel	%eax, %edx
	movq	136(%rsp), %rax         # 8-byte Reload
	leal	(%rcx,%rax), %esi
	sarl	$8, %esi
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	sarl	$8, %edx
	leaq	800(%rsp), %rdi
	callq	range_list_add
	movl	%eax, %r14d
	sarl	$31, %eax
	testb	$28, %al
	je	.LBB3_83
	jmp	.LBB3_88
.LBB3_86:                               # %cleanup.378.thread.i
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	800(%rsp), %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	movl	96(%rsp), %ecx          # 4-byte Reload
	callq	merge_ranges
.LBB3_87:                               # %do.cond.389.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	$0, 288(%r13)
	testl	%eax, %eax
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movq	64(%rsp), %r15          # 8-byte Reload
	movl	%eax, %r14d
	jns	.LBB3_3
	jmp	.LBB3_88
.LBB3_90:                               # %if.else
	movq	48(%rax), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	shrq	$32, %rcx
	movq	40(%r13), %r15
	movl	$129, %edx
	subl	%ecx, %edx
	testl	%ecx, %ecx
	movl	$128, %ecx
	cmovel	%ecx, %edx
	movl	$128, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	%edx, 48(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	testq	%r15, %r15
	je	.LBB3_180
# BB#91:                                # %if.end.i.40
	movl	24(%rax), %ecx
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	movq	40(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	56(%rax), %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	76(%rax), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	subl	$-128, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movq	(%r13), %rax
	movq	%rax, 800(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 816(%rsp)
	movq	%rax, 808(%rsp)
	leaq	800(%rsp), %rax
	movq	%rax, 824(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 832(%rsp)
	leaq	856(%rsp), %rax
	movl	$-2147483648, 860(%rsp) # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, 856(%rsp) # imm = 0xFFFFFFFF80000000
	movq	$0, 864(%rsp)
	leaq	888(%rsp), %rsi
	movl	$2147483647, 892(%rsp)  # imm = 0x7FFFFFFF
	movl	$2147483647, 888(%rsp)  # imm = 0x7FFFFFFF
	movq	$0, 904(%rsp)
	movq	%rsi, 872(%rsp)
	movq	%rax, 896(%rsp)
	movq	%rsi, 848(%rsp)
	leaq	272(%r13), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leaq	56(%r13), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	$0, 272(%r13)
	movl	$-2147483648, 88(%r13)  # imm = 0xFFFFFFFF80000000
	leaq	400(%r13), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	subl	%ecx, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	subl	$-128, %edx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movl	$-8388608, 132(%rsp)    # 4-byte Folded Spill
                                        # imm = 0xFFFFFFFFFF800000
	movl	$-2147483648, %r12d     # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, 96(%rsp)  # 4-byte Folded Spill
                                        # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movq	%rax, 56(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 52(%rsp)          # 4-byte Spill
.LBB3_92:                               # %do.body.i.49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_99 Depth 2
                                        #     Child Loop BB3_101 Depth 2
                                        #       Child Loop BB3_109 Depth 3
                                        #     Child Loop BB3_122 Depth 2
                                        #       Child Loop BB3_123 Depth 3
                                        #         Child Loop BB3_124 Depth 4
                                        #         Child Loop BB3_140 Depth 4
                                        #     Child Loop BB3_151 Depth 2
                                        #     Child Loop BB3_163 Depth 2
                                        #       Child Loop BB3_167 Depth 3
                                        #     Child Loop BB3_173 Depth 2
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	move_al_by_y
	movl	%eax, 84(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB3_93
# BB#94:                                # %if.end.15.i.51
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	testq	%r14, %r14
	xorps	%xmm3, %xmm3
	je	.LBB3_95
# BB#96:                                # %if.else.i.59
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	256(%rax), %eax
	testq	%r15, %r15
	je	.LBB3_98
# BB#97:                                # %if.then.33.i.63
                                        #   in Loop: Header=BB3_92 Depth=1
	movl	4(%r15), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
.LBB3_98:                               # %for.body.i.81
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	%r14, %rcx
	.align	16, 0x90
.LBB3_99:                               # %for.body.i.81
                                        #   Parent Loop BB3_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	72(%rcx), %edx
	movl	12(%rcx), %esi
	movl	64(%rcx), %r12d
	cmpl	%r12d, %edx
	cmovgel	%edx, %r12d
	cmpl	%esi, %r12d
	cmovll	%esi, %r12d
	cmpl	%r12d, %eax
	cmovlel	%eax, %r12d
	movq	216(%rcx), %rcx
	testq	%rcx, %rcx
	movl	%r12d, %eax
	jne	.LBB3_99
	jmp	.LBB3_100
.LBB3_95:                               # %if.then.20.i.56
                                        #   in Loop: Header=BB3_92 Depth=1
	leaq	4(%r15), %rax
	testq	%r15, %r15
	cmoveq	40(%rsp), %rax          # 8-byte Folded Reload
	movl	(%rax), %r12d
.LBB3_100:                              # %while.cond.preheader.i.66
                                        #   in Loop: Header=BB3_92 Depth=1
	testq	%r15, %r15
	movl	$0, %ecx
	je	.LBB3_120
	.align	16, 0x90
.LBB3_101:                              # %land.rhs.i.85
                                        #   Parent Loop BB3_92 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_109 Depth 3
	cmpl	%r12d, 4(%r15)
	jne	.LBB3_102
# BB#103:                               # %while.body.i.89
                                        #   in Loop: Header=BB3_101 Depth=2
	movq	216(%r15), %r8
	cmpl	$0, 48(%r15)
	je	.LBB3_104
# BB#107:                               # %if.else.88.i.100
                                        #   in Loop: Header=BB3_101 Depth=2
	movl	(%r15), %r10d
	movl	%r10d, 32(%r15)
	movl	%r10d, 36(%r15)
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rax, %rbp
	movq	144(%rsp), %rbx         # 8-byte Reload
	je	.LBB3_114
# BB#108:                               # %land.rhs.i.lr.ph.i.103
                                        #   in Loop: Header=BB3_101 Depth=2
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	144(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB3_109:                              # %land.rhs.i.i.108
                                        #   Parent Loop BB3_92 Depth=1
                                        #     Parent Loop BB3_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %r9
	movq	%rsi, %rbx
	cmpl	%r10d, 32(%rbx)
	jl	.LBB3_113
# BB#110:                               # %if.else.i.i.110
                                        #   in Loop: Header=BB3_109 Depth=3
	jg	.LBB3_116
# BB#111:                               # %if.end.6.i.i.116
                                        #   in Loop: Header=BB3_109 Depth=3
	movl	(%rbx), %r14d
	movl	8(%rbx), %edx
	movl	%edx, %eax
	subl	%r14d, %eax
	setg	%r11b
	movl	8(%r15), %esi
	subl	%r10d, %esi
	setg	%cl
	movzbl	%cl, %ecx
	movzbl	%r11b, %edi
	cmpl	%ecx, %edi
	je	.LBB3_115
# BB#112:                               # %if.then.17.i.i.117
                                        #   in Loop: Header=BB3_109 Depth=3
	cmpl	%r14d, %edx
	jle	.LBB3_113
	jmp	.LBB3_116
	.align	16, 0x90
.LBB3_115:                              # %do.end.21.i.i.135
                                        #   in Loop: Header=BB3_109 Depth=3
	movl	12(%rbx), %ecx
	subl	4(%rbx), %ecx
	movl	12(%r15), %edx
	subl	%r12d, %edx
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB3_116
.LBB3_113:                              # %while.cond.i.backedge.i.120
                                        #   in Loop: Header=BB3_109 Depth=3
	leaq	216(%rbx), %rbp
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_109
.LBB3_114:                              # %if.end.critedge.i.i.142
                                        #   in Loop: Header=BB3_101 Depth=2
	movq	$0, 216(%r15)
	movq	%rbx, 208(%r15)
	jmp	.LBB3_117
	.align	16, 0x90
.LBB3_104:                              # %if.then.87.i.92
                                        #   in Loop: Header=BB3_101 Depth=2
	movq	288(%r13), %rax
	movq	%rax, 216(%r15)
	movq	$0, 208(%r15)
	testq	%rax, %rax
	je	.LBB3_106
# BB#105:                               # %if.then.i.i.94
                                        #   in Loop: Header=BB3_101 Depth=2
	movq	%r15, 208(%rax)
.LBB3_106:                              # %insert_h_new.exit.i.95
                                        #   in Loop: Header=BB3_101 Depth=2
	movq	%r15, 288(%r13)
	jmp	.LBB3_118
.LBB3_116:                              # %if.then.i.14.i.138
                                        #   in Loop: Header=BB3_101 Depth=2
	movq	%rbx, 216(%r15)
	movq	%r9, 208(%r15)
	movq	%r15, 208(%rbx)
.LBB3_117:                              # %insert_x_new.exit.i.144
                                        #   in Loop: Header=BB3_101 Depth=2
	movq	%r15, (%rbp)
.LBB3_118:                              # %while.cond.backedge.i.146
                                        #   in Loop: Header=BB3_101 Depth=2
	testq	%r8, %r8
	movq	%r8, %r15
	movl	$0, %ecx
	jne	.LBB3_101
	jmp	.LBB3_119
.LBB3_102:                              #   in Loop: Header=BB3_92 Depth=1
	movq	%r15, %rcx
.LBB3_119:                              # %while.end.i.149.loopexit
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
.LBB3_120:                              # %while.end.i.149
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	testq	%r14, %r14
	movl	84(%rsp), %ebp          # 4-byte Reload
	je	.LBB3_147
.LBB3_122:                              # %for.body.95.lr.ph.i.155
                                        #   Parent Loop BB3_92 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_123 Depth 3
                                        #         Child Loop BB3_124 Depth 4
                                        #         Child Loop BB3_140 Depth 4
	movl	%eax, %r15d
	.align	16, 0x90
.LBB3_123:                              # %for.body.95.i.162
                                        #   Parent Loop BB3_92 Depth=1
                                        #     Parent Loop BB3_122 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_124 Depth 4
                                        #         Child Loop BB3_140 Depth 4
	movq	%r14, %rbx
	movq	216(%rbx), %r14
	.align	16, 0x90
.LBB3_124:                              # %e.i.166
                                        #   Parent Loop BB3_92 Depth=1
                                        #     Parent Loop BB3_122 Depth=2
                                        #       Parent Loop BB3_123 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	12(%rbx), %eax
	cmpl	%r12d, %eax
	jle	.LBB3_126
# BB#125:                               # %lor.lhs.false.i.168
                                        #   in Loop: Header=BB3_124 Depth=4
	movl	4(%rbx), %ecx
	cmpl	%eax, %ecx
	jne	.LBB3_131
.LBB3_126:                              # %if.then.107.i.171
                                        #   in Loop: Header=BB3_124 Depth=4
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	end_x_line
	testl	%eax, %eax
	jne	.LBB3_146
# BB#127:                               # %if.end.110.i.173
                                        #   in Loop: Header=BB3_124 Depth=4
	cmpl	$0, 196(%rbx)
	je	.LBB3_124
# BB#128:                               # %if.then.112.i.175
                                        #   in Loop: Header=BB3_124 Depth=4
	movl	12(%rbx), %eax
	cmpl	%r12d, %eax
	jle	.LBB3_130
# BB#129:                               # %lor.lhs.false.117.i.177
                                        #   in Loop: Header=BB3_124 Depth=4
	cmpl	%eax, 4(%rbx)
	jne	.LBB3_124
.LBB3_130:                              # %if.then.124.i.180
                                        #   in Loop: Header=BB3_124 Depth=4
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	step_al
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB3_124
	jmp	.LBB3_180
	.align	16, 0x90
.LBB3_131:                              # %if.end.132.i.182
                                        #   in Loop: Header=BB3_123 Depth=3
	movl	%r12d, %esi
	subl	%ecx, %esi
	jle	.LBB3_132
# BB#133:                               # %cond.false.140.i.186
                                        #   in Loop: Header=BB3_123 Depth=3
	cmpl	%eax, %r12d
	jne	.LBB3_135
# BB#134:                               # %cond.true.145.i.188
                                        #   in Loop: Header=BB3_123 Depth=3
	movl	8(%rbx), %eax
	jmp	.LBB3_139
.LBB3_132:                              # %cond.true.137.i.184
                                        #   in Loop: Header=BB3_123 Depth=3
	movl	(%rbx), %eax
	jmp	.LBB3_139
.LBB3_135:                              # %cond.false.148.i.192
                                        #   in Loop: Header=BB3_123 Depth=3
	cmpl	24(%rbx), %r12d
	movl	16(%rbx), %edi
	movl	20(%rbx), %ecx
	jle	.LBB3_136
# BB#137:                               # %cond.false.159.i.199
                                        #   in Loop: Header=BB3_123 Depth=3
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB3_138
.LBB3_136:                              # %cond.true.151.i.197
                                        #   in Loop: Header=BB3_123 Depth=3
	imull	%esi, %edi
	addl	28(%rbx), %edi
	movl	%edi, %eax
	cltd
	idivl	%ecx
.LBB3_138:                              # %cond.end.168.i.203
                                        #   in Loop: Header=BB3_123 Depth=3
	addl	(%rbx), %eax
.LBB3_139:                              # %cond.end.175.i.207
                                        #   in Loop: Header=BB3_123 Depth=3
	movl	%eax, 32(%rbx)
	cmpl	%r15d, %eax
	movq	%rbx, %rcx
	jge	.LBB3_121
	.align	16, 0x90
.LBB3_140:                              # %while.cond.181.i.212
                                        #   Parent Loop BB3_92 Depth=1
                                        #     Parent Loop BB3_122 Depth=2
                                        #       Parent Loop BB3_123 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	208(%rcx), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB3_140
# BB#141:                               # %while.end.189.i.216
                                        #   in Loop: Header=BB3_123 Depth=3
	movq	208(%rbx), %rax
	movq	216(%rbx), %rdx
	movq	%rdx, 216(%rax)
	movq	216(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_143
# BB#142:                               # %if.then.195.i.218
                                        #   in Loop: Header=BB3_123 Depth=3
	movq	%rax, 208(%rdx)
.LBB3_143:                              # %if.end.199.i.221
                                        #   in Loop: Header=BB3_123 Depth=3
	movq	216(%rcx), %rax
	testq	%rax, %rax
	je	.LBB3_145
# BB#144:                               # %if.then.202.i.223
                                        #   in Loop: Header=BB3_123 Depth=3
	movq	%rbx, 208(%rax)
.LBB3_145:                              # %if.end.205.i.224
                                        #   in Loop: Header=BB3_123 Depth=3
	movq	%rax, 216(%rbx)
	movq	%rbx, 216(%rcx)
	movq	%rcx, 208(%rbx)
.LBB3_146:                              # %for.cond.92.backedge.i.226
                                        #   in Loop: Header=BB3_123 Depth=3
	testq	%r14, %r14
	jne	.LBB3_123
	jmp	.LBB3_147
.LBB3_121:                              # %for.cond.92.outer.loopexit.i.151
                                        #   in Loop: Header=BB3_122 Depth=2
	testq	%r14, %r14
	jne	.LBB3_122
	.align	16, 0x90
.LBB3_147:                              # %for.end.212.i.231
                                        #   in Loop: Header=BB3_92 Depth=1
	movl	%ebp, %esi
	movl	96(%rsp), %edi          # 4-byte Reload
	cmpl	%edi, %r12d
	jg	.LBB3_150
# BB#148:                               # %for.end.212.i.231
                                        #   in Loop: Header=BB3_92 Depth=1
	xorl	%eax, %eax
	cmpl	100(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB3_150
# BB#149:                               #   in Loop: Header=BB3_92 Depth=1
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	72(%rsp), %r15          # 8-byte Reload
	jmp	.LBB3_159
.LBB3_150:                              # %if.then.218.i.233
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	872(%rsp), %rbx
	leaq	888(%rsp), %r14
	cmpq	%r14, %rbx
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	72(%rsp), %r15          # 8-byte Reload
	je	.LBB3_156
	.align	16, 0x90
.LBB3_151:                              # %for.body.223.i.238
                                        #   Parent Loop BB3_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %esi
	movl	4(%rbx), %ecx
	movq	(%rbp), %rax
	subl	%esi, %ecx
	movl	120(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	movq	%rbp, %rdi
	movl	132(%rsp), %edx         # 4-byte Reload
	movq	%r15, %r9
	callq	*40(%rax)
	movl	%eax, %ecx
	movl	%eax, %esi
	sarl	$31, %ecx
	testb	$28, %cl
	jne	.LBB3_152
# BB#153:                               # %for.inc.244.i
                                        #   in Loop: Header=BB3_151 Depth=2
	movq	16(%rbx), %rbx
	cmpq	%r14, %rbx
	jne	.LBB3_151
# BB#154:                               # %for.end.246.i
                                        #   in Loop: Header=BB3_92 Depth=1
	cmpq	%r14, 872(%rsp)
	je	.LBB3_156
# BB#155:                               # %if.then.i.25.i.243
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	840(%rsp), %rax
	movq	896(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movq	872(%rsp), %rax
	movq	%rax, 840(%rsp)
	movq	%r14, 872(%rsp)
	leaq	856(%rsp), %rax
	movq	%rax, 896(%rsp)
	movq	%r14, 848(%rsp)
.LBB3_156:                              # %range_list_reset.exit.i.245
                                        #   in Loop: Header=BB3_92 Depth=1
	cmpl	100(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB3_157
# BB#158:                               # %cleanup.258.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movl	%r12d, %edx
	sarl	$8, %edx
	movzbl	%r12b, %eax
	movl	48(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %eax
	setl	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, 132(%rsp)         # 4-byte Spill
	shll	$8, %edx
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rdx), %edi
	addl	%ecx, %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	$1, %eax
.LBB3_159:                              # %if.end.262.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	%r15, 72(%rsp)          # 8-byte Spill
	cmpl	%edi, %r12d
	jle	.LBB3_161
# BB#160:                               #   in Loop: Header=BB3_92 Depth=1
	movl	%edi, 96(%rsp)          # 4-byte Spill
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	52(%rsp), %ebp          # 4-byte Reload
	movl	%esi, %eax
	jmp	.LBB3_176
.LBB3_161:                              # %if.then.265.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movl	%edi, 96(%rsp)          # 4-byte Spill
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movl	%r12d, %ebp
	je	.LBB3_164
# BB#162:                               # %for.cond.273.preheader.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	xorl	%r15d, %r15d
	movl	$-2147483648, %ebp      # imm = 0xFFFFFFFF80000000
	jmp	.LBB3_163
.LBB3_165:                              # %for.cond.273.i
                                        #   in Loop: Header=BB3_163 Depth=2
	movq	216(%rbx), %rbx
.LBB3_163:                              # %for.cond.273.preheader.i
                                        #   Parent Loop BB3_92 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_167 Depth 3
	testq	%rbx, %rbx
	je	.LBB3_164
# BB#166:                               # %for.body.276.i
                                        #   in Loop: Header=BB3_163 Depth=2
	movslq	32(%rbx), %rsi
	movq	32(%rsp), %rax          # 8-byte Reload
	cltq
	subq	%rax, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movl	28(%rsp), %eax          # 4-byte Reload
	.align	16, 0x90
.LBB3_167:                              # %do.end.290.i
                                        #   Parent Loop BB3_92 Depth=1
                                        #     Parent Loop BB3_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addl	48(%rbx), %r15d
	testl	%eax, %r15d
	je	.LBB3_169
# BB#168:                               # %if.end.297.i
                                        #   in Loop: Header=BB3_167 Depth=3
	movq	216(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB3_167
	jmp	.LBB3_164
.LBB3_169:                              # %cleanup.313.i
                                        #   in Loop: Header=BB3_163 Depth=2
	movl	32(%rbx), %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	sarl	$8, %edx
	leaq	800(%rsp), %rdi
	callq	range_list_add
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB3_165
# BB#170:                               # %cleanup.319.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movl	%r14d, %eax
	sarl	$31, %eax
	andl	$28, %eax
	movl	52(%rsp), %ebp          # 4-byte Reload
	jne	.LBB3_171
.LBB3_164:                              # %if.end.323.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	288(%r13), %rbx
	jmp	.LBB3_173
	.align	16, 0x90
.LBB3_172:                              # %for.cond.324.i
                                        #   in Loop: Header=BB3_173 Depth=2
	movq	216(%rbx), %rbx
.LBB3_173:                              # %for.cond.324.i
                                        #   Parent Loop BB3_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB3_175
# BB#174:                               # %for.body.327.i
                                        #   in Loop: Header=BB3_173 Depth=2
	movl	(%rbx), %eax
	movl	8(%rbx), %edx
	cmpl	%edx, %eax
	movl	%edx, %ecx
	cmovlel	%eax, %ecx
	cmovgel	%eax, %edx
	movq	136(%rsp), %rax         # 8-byte Reload
	leal	(%rcx,%rax), %esi
	sarl	$8, %esi
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	sarl	$8, %edx
	leaq	800(%rsp), %rdi
	callq	range_list_add
	movl	%eax, %r14d
	sarl	$31, %eax
	testb	$28, %al
	je	.LBB3_172
	jmp	.LBB3_177
.LBB3_175:                              # %cleanup.379.thread.i
                                        #   in Loop: Header=BB3_92 Depth=1
	leaq	800(%rsp), %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	movl	96(%rsp), %ecx          # 4-byte Reload
	callq	merge_ranges
.LBB3_176:                              # %do.cond.390.i
                                        #   in Loop: Header=BB3_92 Depth=1
	movq	$0, 288(%r13)
	testl	%eax, %eax
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movq	64(%rsp), %r15          # 8-byte Reload
	movl	%eax, %r14d
	jns	.LBB3_92
	jmp	.LBB3_177
.LBB3_63:
	movl	%esi, %r14d
.LBB3_88:                               # %done.i
	movq	832(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_179
	.align	16, 0x90
.LBB3_89:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rbx
	movq	800(%rsp), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	%rbx, 832(%rsp)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB3_89
	jmp	.LBB3_179
.LBB3_152:
	movl	%esi, %r14d
.LBB3_177:                              # %done.i.274
	movq	832(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_179
	.align	16, 0x90
.LBB3_178:                              # %while.body.i.i.280
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rbx
	movq	800(%rsp), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	%rbx, 832(%rsp)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB3_178
.LBB3_179:
	movl	%r14d, %ebp
.LBB3_180:                              # %return
	movl	%ebp, %eax
	addq	$920, %rsp              # imm = 0x398
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_4:
	movl	84(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB3_180
.LBB3_93:
	movl	84(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB3_180
.LBB3_68:
	movl	%esi, %r14d
	jmp	.LBB3_88
.LBB3_157:
	movl	%esi, %r14d
	jmp	.LBB3_177
.LBB3_82:                               # %cleanup.318.i
	cmpl	$28, %eax
	movl	84(%rsp), %ebp          # 4-byte Reload
	je	.LBB3_88
	jmp	.LBB3_180
.LBB3_171:                              # %cleanup.319.i
	cmpl	$28, %eax
	movl	84(%rsp), %ebp          # 4-byte Reload
	je	.LBB3_177
	jmp	.LBB3_180
.Lfunc_end3:
	.size	spot_into_scan_lines, .Lfunc_end3-spot_into_scan_lines
	.cfi_endproc

	.align	16, 0x90
	.type	init_contour_cursor,@function
init_contour_cursor:                    # @init_contour_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	408(%rdi), %r9
	movq	8(%rbx), %r14
	movzwl	16(%r14), %eax
	cmpl	$3, %eax
	jne	.LBB4_16
# BB#1:                                 # %if.then
	movq	(%rbx), %r8
	movl	24(%r8), %r11d
	movl	24(%r14), %r10d
	movl	32(%r14), %eax
	movl	40(%r14), %edi
	cmpl	%r10d, %edi
	movl	%r10d, %ecx
	cmovlel	%edi, %ecx
	movl	%r10d, %edx
	cmovgel	%edi, %edx
	cmpl	%eax, %r11d
	movl	%eax, %esi
	cmovlel	%r11d, %esi
	movl	%eax, %ebp
	cmovgel	%r11d, %ebp
	cmpl	%ecx, %esi
	cmovgl	%ecx, %esi
	cmpl	%edx, %ebp
	cmovll	%edx, %ebp
	cmpl	8(%r9), %esi
	setg	%r15b
	movl	4(%r9), %ecx
	cmpl	%ecx, %esi
	setl	%sil
	cmpl	%ecx, %ebp
	setl	%cl
	setge	%dl
	andb	%sil, %dl
	orb	%r15b, %cl
	movzbl	%dl, %esi
	movl	%esi, 60(%rbx)
	jne	.LBB4_6
# BB#2:                                 # %if.then
	testb	%dl, %dl
	jne	.LBB4_6
# BB#3:                                 # %land.rhs.144
	cmpl	%r10d, %edi
	setle	%sil
	cmpl	%eax, %r11d
	setle	%dl
	cmpl	%edi, %eax
	setle	%cl
	andb	%dl, %cl
	andb	%sil, %cl
	cmpl	%eax, %r11d
	jl	.LBB4_6
# BB#4:                                 # %land.rhs.144
	testb	%cl, %cl
	jne	.LBB4_6
# BB#5:                                 # %land.lhs.true.173
	cmpl	%r10d, %edi
	setge	%dl
	cmpl	%edi, %eax
	setge	%cl
	andb	%dl, %cl
.LBB4_6:                                # %lor.end.191
	movzbl	%cl, %eax
	andl	$1, %eax
	movl	%eax, 52(%rbx)
	movl	20(%r8), %esi
	movl	28(%r14), %eax
	cmpl	%eax, %esi
	jg	.LBB4_9
# BB#7:                                 # %land.lhs.true.198
	movl	36(%r14), %edi
	cmpl	%edi, %eax
	jg	.LBB4_9
# BB#8:                                 # %land.lhs.true.205
	movb	$1, %dl
	cmpl	20(%r14), %edi
	jle	.LBB4_14
.LBB4_9:                                # %lor.rhs.212
	cmpl	%eax, %esi
	jge	.LBB4_11
# BB#10:
	xorl	%edx, %edx
	jmp	.LBB4_14
.LBB4_16:                               # %if.end.thread
	movl	$1, 52(%rbx)
	jmp	.LBB4_17
.LBB4_11:                               # %land.lhs.true.220
	movl	36(%r14), %edx
	cmpl	%edx, %eax
	jge	.LBB4_13
# BB#12:
	xorl	%edx, %edx
	jmp	.LBB4_14
.LBB4_13:                               # %land.rhs.227
	cmpl	20(%r14), %edx
	setge	%dl
.LBB4_14:                               # %if.end
	movzbl	%dl, %eax
	movl	%eax, 56(%rbx)
	testb	$1, %cl
	je	.LBB4_15
.LBB4_17:                               # %if.else.261
	movq	(%rbx), %rax
	movl	24(%rax), %edx
	movl	24(%r14), %r8d
	cmpl	%r8d, %edx
	movl	%r8d, %esi
	cmovgel	%edx, %esi
	movl	$2, %ecx
	cmpl	4(%r9), %esi
	jl	.LBB4_20
# BB#18:                                # %if.end.i
	cmpl	%r8d, %edx
	movl	%r8d, %esi
	cmovlel	%edx, %esi
	cmpl	8(%r9), %esi
	jg	.LBB4_20
# BB#19:                                # %if.end.9.i
	xorl	%ecx, %ecx
	cmpl	%r8d, %edx
	movl	$-1, %esi
	cmovlel	%ecx, %esi
	movl	$1, %ecx
	cmovgel	%esi, %ecx
.LBB4_20:                               # %compute_dir.exit
	movl	%ecx, 48(%rbx)
	movq	32(%rbx), %rdi
	movl	20(%rax), %esi
	movl	20(%r14), %ecx
	callq	gx_flattened_iterator__init_line
	jmp	.LBB4_21
.LBB4_15:                               # %if.then.241
	movq	(%rbx), %rax
	movl	20(%rax), %edi
	movl	24(%rax), %esi
	movl	32(%r9), %ecx
	movq	%r14, %rdx
	callq	gx_curve_log2_samples
	movq	(%rbx), %rcx
	movq	32(%rbx), %rdi
	movl	20(%rcx), %esi
	movl	24(%rcx), %edx
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	gx_flattened_iterator__init
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	je	.LBB4_22
.LBB4_21:                               # %if.end.283
	movl	$1, 44(%rbx)
	xorl	%eax, %eax
.LBB4_22:                               # %cleanup.284
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	init_contour_cursor, .Lfunc_end4-init_contour_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	add_y_curve_part,@function
add_y_curve_part:                       # @add_y_curve_part
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 64
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%ecx, %ebp
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	16(%r14), %rbx
	cmpq	24(%r14), %rbx
	je	.LBB5_1
# BB#3:                                 # %if.else.i
	leaq	232(%rbx), %rax
	movq	%rax, 16(%r14)
	jmp	.LBB5_4
.LBB5_1:                                # %if.then.i
	movq	(%r14), %rdi
	movl	$st_active_line, %esi
	movl	$.L.str.2, %edx
	movq	%r8, %rbx
	callq	*72(%rdi)
	movq	%rbx, %r8
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB5_27
# BB#2:                                 # %if.end.i
	movq	8(%r14), %rax
	movq	%rax, 224(%rbx)
	movq	%rbx, 8(%r14)
.LBB5_4:                                # %make_al.exit
	movl	416(%r14), %eax
	movl	%eax, 200(%rbx)
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB5_27
# BB#5:                                 # %if.end
	cmpl	$1, %ebp
	cmoveq	%r15, %r13
	movq	%r13, 40(%rbx)
	movl	%ebp, 48(%rbx)
	leaq	60(%rbx), %r15
	movl	$136, %edx
	movq	%r15, %rdi
	movq	%r8, %rsi
	callq	memcpy
	cmpl	$1, %ebp
	movl	%r12d, 196(%rbx)
	je	.LBB5_8
# BB#6:                                 # %if.end
	testl	%r12d, %r12d
	je	.LBB5_8
# BB#7:                                 # %if.then.4
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	gx_flattened_iterator__switch_to_backscan
.LBB5_8:                                # %if.end.6
	cmpl	$0, 64(%rsp)
	je	.LBB5_13
	.align	16, 0x90
.LBB5_9:                                # %do.body.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	gx_flattened_iterator__prev
	testl	%eax, %eax
	js	.LBB5_27
# BB#10:                                # %if.end.13
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	%eax, 196(%rbx)
	movq	408(%r14), %rcx
	movl	184(%rbx), %edx
	movl	192(%rbx), %esi
	cmpl	%esi, %edx
	movl	%esi, %edi
	cmovgel	%edx, %edi
	cmpl	4(%rcx), %edi
	jl	.LBB5_12
# BB#11:                                # %if.end.i.28
                                        #   in Loop: Header=BB5_9 Depth=1
	cmpl	%esi, %edx
	cmovlel	%edx, %esi
	cmpl	8(%rcx), %esi
	jle	.LBB5_13
.LBB5_12:                               # %do.cond
                                        #   in Loop: Header=BB5_9 Depth=1
	testl	%eax, %eax
	jne	.LBB5_9
.LBB5_13:                               # %if.end.23
	movl	72(%rsp), %r8d
	movb	$1, %al
	cmpl	$1, 48(%rbx)
	je	.LBB5_15
# BB#14:                                # %lor.rhs.i
	cmpl	$0, 176(%rbx)
	sete	%al
.LBB5_15:                               # %if.end.27
	leaq	180(%rbx), %rdx
	leaq	188(%rbx), %rdi
	leaq	184(%rbx), %rbp
	leaq	192(%rbx), %rsi
	testb	%al, %al
	movq	%rdi, %rax
	cmovneq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rbx)
	movq	%rsi, %rcx
	cmovneq	%rbp, %rcx
	movl	(%rcx), %ecx
	movl	%ecx, 4(%rbx)
	cmovneq	%rdi, %rdx
	movl	(%rdx), %edx
	movl	%edx, 8(%rbx)
	cmovneq	%rsi, %rbp
	movl	(%rbp), %esi
	movl	%esi, 12(%rbx)
	subl	%eax, %edx
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	movl	%edx, 16(%rbx)
	subl	%ecx, %esi
	movl	%esi, 20(%rbx)
	movl	$1, %ebp
	subl	%esi, %ebp
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovsl	%ebp, %eax
	movl	%eax, 28(%rbx)
	addl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	$1, %edi
	cltd
	idivl	%edi
	addl	%ecx, %eax
	movl	%eax, 24(%rbx)
	movl	$0, 56(%rbx)
	movl	%r8d, 52(%rbx)
	movq	48(%r14), %rax
	testq	%rax, %rax
	je	.LBB5_16
# BB#17:                                # %if.else.i.32
	cmpl	4(%rax), %ecx
	jge	.LBB5_18
	.align	16, 0x90
.LBB5_21:                               # %while.cond.16.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	movq	208(%rdx), %rax
	testq	%rax, %rax
	je	.LBB5_24
# BB#22:                                # %land.rhs.19.i
                                        #   in Loop: Header=BB5_21 Depth=1
	cmpl	4(%rax), %ecx
	jl	.LBB5_21
# BB#23:                                # %if.then.30.i
	movq	%rax, 208(%rbx)
	movq	%rdx, 216(%rbx)
	movq	%rbx, 208(%rdx)
	movq	%rbx, 216(%rax)
	jmp	.LBB5_26
	.align	16, 0x90
.LBB5_18:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	movq	216(%rdx), %rax
	testq	%rax, %rax
	je	.LBB5_25
# BB#19:                                # %land.rhs.i
                                        #   in Loop: Header=BB5_18 Depth=1
	cmpl	4(%rax), %ecx
	jg	.LBB5_18
# BB#20:                                # %if.then.13.i
	movq	%rax, 216(%rbx)
	movq	%rdx, 208(%rbx)
	movq	%rbx, 216(%rdx)
	movq	%rbx, 208(%rax)
	jmp	.LBB5_26
.LBB5_16:                               # %if.then.i.31
	xorps	%xmm0, %xmm0
	movups	%xmm0, 208(%rbx)
	movq	%rbx, 40(%r14)
	jmp	.LBB5_26
.LBB5_24:                               # %if.else.32.i
	movq	$0, 208(%rbx)
	movq	%rdx, 216(%rbx)
	movq	%rbx, 208(%rdx)
	movq	%rbx, 40(%r14)
	jmp	.LBB5_26
.LBB5_25:                               # %if.end.36.critedge.i
	movq	$0, 216(%rbx)
	movq	%rdx, 208(%rbx)
	movq	%rbx, 216(%rdx)
.LBB5_26:                               # %insert_y_line.exit
	movq	%rbx, 48(%r14)
	xorl	%eax, %eax
.LBB5_27:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	add_y_curve_part, .Lfunc_end5-add_y_curve_part
	.cfi_endproc

	.align	16, 0x90
	.type	init_al,@function
init_al:                                # @init_al
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 48
.Ltmp66:
	.cfi_offset %rbx, -48
.Ltmp67:
	.cfi_offset %r12, -40
.Ltmp68:
	.cfi_offset %r13, -32
.Ltmp69:
	.cfi_offset %r14, -24
.Ltmp70:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	48(%r13), %eax
	cmpl	$1, %eax
	movq	%r15, %rcx
	cmoveq	%r14, %rcx
	testq	%rcx, %rcx
	je	.LBB6_34
# BB#1:                                 # %land.rhs
	movzwl	16(%rcx), %ecx
	cmpl	$3, %ecx
	jne	.LBB6_34
# BB#2:                                 # %if.then
	cmpl	$1, %eax
	jne	.LBB6_19
# BB#3:                                 # %if.then.7
	movl	20(%r15), %edi
	movl	24(%r15), %esi
	movq	408(%r12), %rax
	movl	32(%rax), %ecx
	movq	%r14, %rdx
	callq	gx_curve_log2_samples
	leaq	60(%r13), %rdi
	movl	20(%r15), %esi
	movl	24(%r15), %edx
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	gx_flattened_iterator__init
	movl	$1, %esi
	movq	%r13, %rdi
	callq	step_al
	testl	%eax, %eax
	js	.LBB6_37
# BB#4:                                 # %if.end
	movq	408(%r12), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB6_36
# BB#5:                                 # %if.then.20
	movl	32(%r14), %eax
	cmpl	%eax, 24(%r15)
	jle	.LBB6_7
# BB#6:
	xorl	%eax, %eax
	jmp	.LBB6_10
.LBB6_34:                               # %if.else.194
	leaq	60(%r13), %rdi
	movl	20(%r15), %esi
	movl	24(%r15), %edx
	movl	20(%r14), %ecx
	movl	24(%r14), %r8d
	callq	gx_flattened_iterator__init_line
	movl	$1, %esi
	movq	%r13, %rdi
	callq	step_al
	testl	%eax, %eax
	js	.LBB6_37
# BB#35:                                # %if.end.209
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 52(%r13)
.LBB6_36:                               # %if.end.212
	movq	%r14, 40(%r13)
	xorl	%eax, %eax
.LBB6_37:                               # %cleanup.213
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB6_19:                               # %if.else
	movl	20(%r14), %edi
	movl	24(%r14), %esi
	movq	408(%r12), %rax
	movl	32(%rax), %ecx
	movq	%r15, %rdx
	callq	gx_curve_log2_samples
	leaq	60(%r13), %rbx
	movl	20(%r14), %esi
	movl	24(%r14), %edx
	movq	%rbx, %rdi
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	gx_flattened_iterator__init
	movl	$0, 196(%r13)
	.align	16, 0x90
.LBB6_20:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	gx_flattened_iterator__next
	testl	%eax, %eax
	js	.LBB6_37
# BB#21:                                # %if.end.104
                                        #   in Loop: Header=BB6_20 Depth=1
	movl	196(%r13), %esi
	orl	%eax, %esi
	movl	%esi, 196(%r13)
	testl	%eax, %eax
	jne	.LBB6_20
# BB#22:                                # %do.end
	movq	%rbx, %rdi
	callq	gx_flattened_iterator__switch_to_backscan
	movb	$1, %al
	cmpl	$1, 48(%r13)
	je	.LBB6_24
# BB#23:                                # %lor.rhs.i
	cmpl	$0, 176(%r13)
	sete	%al
.LBB6_24:                               # %if.end.113
	leaq	180(%r13), %rdx
	leaq	188(%r13), %rsi
	leaq	184(%r13), %rdi
	leaq	192(%r13), %rbx
	testb	%al, %al
	movq	%rsi, %rax
	cmovneq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, (%r13)
	movq	%rbx, %rcx
	cmovneq	%rdi, %rcx
	movl	(%rcx), %ecx
	movl	%ecx, 4(%r13)
	cmovneq	%rsi, %rdx
	movl	(%rdx), %edx
	movl	%edx, 8(%r13)
	cmovneq	%rbx, %rdi
	movl	(%rdi), %esi
	movl	%esi, 12(%r13)
	subl	%eax, %edx
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	movl	%edx, 16(%r13)
	subl	%ecx, %esi
	movl	%esi, 20(%r13)
	movl	$1, %ebx
	subl	%esi, %ebx
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovsl	%ebx, %eax
	movl	%eax, 28(%r13)
	addl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	$1, %edi
	cltd
	idivl	%edi
	addl	%ecx, %eax
	movl	%eax, 24(%r13)
	movq	408(%r12), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB6_36
# BB#25:                                # %if.then.117
	movl	24(%r15), %ecx
	movl	32(%r15), %eax
	cmpl	%eax, %ecx
	jge	.LBB6_27
# BB#26:
	xorl	%eax, %eax
	jmp	.LBB6_28
.LBB6_7:                                # %land.lhs.true
	movl	40(%r14), %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_9
# BB#8:
	xorl	%eax, %eax
	jmp	.LBB6_10
.LBB6_27:                               # %land.lhs.true.124
	movl	40(%r15), %edx
	cmpl	%ecx, %edx
	setge	%cl
	cmpl	%edx, %eax
	setge	%al
	andb	%cl, %al
.LBB6_28:                               # %land.end.138
	movzbl	%al, %eax
	movl	%eax, 56(%r13)
	movl	20(%r15), %ecx
	movl	28(%r15), %eax
	cmpl	%eax, %ecx
	jg	.LBB6_31
# BB#29:                                # %land.lhs.true.147
	movl	36(%r15), %esi
	cmpl	%esi, %eax
	jg	.LBB6_31
# BB#30:                                # %land.lhs.true.147
	movb	$1, %dl
	cmpl	%ecx, %esi
	jle	.LBB6_18
.LBB6_31:                               # %lor.rhs.161
	cmpl	%eax, %ecx
	jge	.LBB6_33
# BB#32:
	xorl	%edx, %edx
	jmp	.LBB6_18
.LBB6_33:                               # %land.lhs.true.168
	movl	36(%r15), %edx
	cmpl	%ecx, %edx
	setge	%cl
	cmpl	%edx, %eax
	setge	%dl
	andb	%cl, %dl
	jmp	.LBB6_18
.LBB6_9:                                # %land.rhs.31
	cmpl	24(%r14), %ecx
	setle	%al
.LBB6_10:                               # %land.end.38
	movzbl	%al, %eax
	movl	%eax, 56(%r13)
	movl	20(%r15), %ecx
	movl	28(%r14), %eax
	cmpl	%eax, %ecx
	jg	.LBB6_13
# BB#11:                                # %land.lhs.true.46
	movl	36(%r14), %esi
	cmpl	%esi, %eax
	jg	.LBB6_13
# BB#12:                                # %land.lhs.true.53
	movb	$1, %dl
	cmpl	20(%r14), %esi
	jle	.LBB6_18
.LBB6_13:                               # %lor.rhs
	cmpl	%eax, %ecx
	jge	.LBB6_15
# BB#14:
	xorl	%edx, %edx
	jmp	.LBB6_18
.LBB6_15:                               # %land.lhs.true.66
	movl	36(%r14), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_17
# BB#16:
	xorl	%edx, %edx
	jmp	.LBB6_18
.LBB6_17:                               # %land.rhs.73
	cmpl	20(%r14), %ecx
	setge	%dl
.LBB6_18:                               # %lor.end
	movzbl	%dl, %eax
	movl	%eax, 52(%r13)
	jmp	.LBB6_36
.Lfunc_end6:
	.size	init_al, .Lfunc_end6-init_al
	.cfi_endproc

	.align	16, 0x90
	.type	step_al,@function
step_al:                                # @step_al
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp73:
	.cfi_def_cfa_offset 32
.Ltmp74:
	.cfi_offset %rbx, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movb	$1, %bpl
	cmpl	$1, 48(%rbx)
	je	.LBB7_2
# BB#1:                                 # %lor.rhs
	cmpl	$0, 176(%rbx)
	sete	%bpl
.LBB7_2:                                # %lor.end
	testl	%esi, %esi
	je	.LBB7_8
# BB#3:                                 # %if.then
	leaq	60(%rbx), %rdi
	testb	%bpl, %bpl
	je	.LBB7_5
# BB#4:                                 # %if.then.3
	callq	gx_flattened_iterator__next
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	callq	gx_flattened_iterator__prev
.LBB7_6:                                # %if.end
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB7_9
# BB#7:                                 # %if.end.9
	movl	%ecx, 196(%rbx)
.LBB7_8:                                # %if.end.11
	leaq	180(%rbx), %rax
	leaq	188(%rbx), %rcx
	leaq	184(%rbx), %rdx
	leaq	192(%rbx), %rdi
	testb	%bpl, %bpl
	movq	%rcx, %rsi
	cmovneq	%rax, %rsi
	movl	(%rsi), %ebp
	movl	%ebp, (%rbx)
	movq	%rdi, %rsi
	cmovneq	%rdx, %rsi
	movl	(%rsi), %r8d
	movl	%r8d, 4(%rbx)
	cmovneq	%rcx, %rax
	movl	(%rax), %esi
	movl	%esi, 8(%rbx)
	cmovneq	%rdi, %rdx
	movl	(%rdx), %ecx
	movl	%ecx, 12(%rbx)
	subl	%ebp, %esi
	movl	%esi, %edi
	negl	%edi
	cmovll	%esi, %edi
	movl	%esi, 16(%rbx)
	subl	%r8d, %ecx
	movl	%ecx, 20(%rbx)
	movl	$1, %eax
	subl	%ecx, %eax
	xorl	%ecx, %ecx
	testl	%esi, %esi
	cmovnsl	%ecx, %eax
	movl	%eax, 28(%rbx)
	addl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	$1, %edi
	cltd
	idivl	%edi
	addl	%r8d, %eax
	movl	%eax, 24(%rbx)
.LBB7_9:                                # %cleanup.85
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	step_al, .Lfunc_end7-step_al
	.cfi_endproc

	.align	16, 0x90
	.type	process_h_segments,@function
process_h_segments:                     # @process_h_segments
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp80:
	.cfi_def_cfa_offset 48
.Ltmp81:
	.cfi_offset %rbx, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	272(%r14), %rbp
	xorl	%ecx, %ecx
	testq	%rbp, %rbp
	je	.LBB8_25
# BB#1:                                 # %for.body.lr.ph.lr.ph
	xorl	%ecx, %ecx
.LBB8_2:                                # %for.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
                                        #     Child Loop BB8_15 Depth 2
                                        #     Child Loop BB8_18 Depth 2
	movq	%rbp, %rbx
	.align	16, 0x90
.LBB8_3:                                # %for.body
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	216(%rbx), %rbp
	cmpl	%r15d, 4(%rbx)
	jne	.LBB8_4
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_3 Depth=2
	cmpl	%r15d, 12(%rbx)
	je	.LBB8_6
.LBB8_4:                                # %for.cond.backedge
                                        #   in Loop: Header=BB8_3 Depth=2
	testq	%rbp, %rbp
	movq	%rbp, %rbx
	jne	.LBB8_3
	jmp	.LBB8_25
	.align	16, 0x90
.LBB8_6:                                # %if.then
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	408(%r14), %rax
	cmpl	$0, (%rax)
	je	.LBB8_24
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	16(%r14), %rax
	cmpq	24(%r14), %rax
	je	.LBB8_8
# BB#10:                                # %if.else.i.i
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	232(%rax), %rcx
	movq	%rcx, 16(%r14)
	xorps	%xmm0, %xmm0
	jmp	.LBB8_11
.LBB8_8:                                # %if.then.i.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	(%r14), %rdi
	movl	$st_active_line, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	xorps	%xmm0, %xmm0
	je	.LBB8_25
# BB#9:                                 # %if.end.i.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	8(%r14), %rcx
	movq	%rcx, 224(%rax)
	movq	%rax, 8(%r14)
.LBB8_11:                               # %make_al.exit.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	416(%r14), %ecx
	movl	%ecx, 200(%rax)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB8_25
# BB#12:                                # %if.end.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$0, 196(%rax)
	movl	$0, 48(%rax)
	movq	8(%rbx), %rdx
	movq	%rdx, (%rax)
	movq	(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	$0, 40(%rax)
	movq	48(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB8_13
# BB#14:                                # %if.else.i
                                        #   in Loop: Header=BB8_2 Depth=1
	shrq	$32, %rdx
	cmpl	4(%rcx), %edx
	jge	.LBB8_15
	.align	16, 0x90
.LBB8_18:                               # %while.cond.16.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rsi
	movq	208(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB8_21
# BB#19:                                # %land.rhs.19.i
                                        #   in Loop: Header=BB8_18 Depth=2
	cmpl	4(%rcx), %edx
	jl	.LBB8_18
# BB#20:                                # %if.then.30.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	%rcx, 208(%rax)
	movq	%rsi, 216(%rax)
	movq	%rax, 208(%rsi)
	movq	%rax, 216(%rcx)
	jmp	.LBB8_23
	.align	16, 0x90
.LBB8_15:                               # %while.cond.i
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rsi
	movq	216(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB8_22
# BB#16:                                # %land.rhs.i
                                        #   in Loop: Header=BB8_15 Depth=2
	cmpl	4(%rcx), %edx
	jg	.LBB8_15
# BB#17:                                # %if.then.13.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	%rcx, 216(%rax)
	movq	%rsi, 208(%rax)
	movq	%rax, 216(%rsi)
	movq	%rax, 208(%rcx)
	jmp	.LBB8_23
.LBB8_13:                               # %if.then.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movups	%xmm0, 208(%rax)
	movq	%rax, 40(%r14)
	jmp	.LBB8_23
.LBB8_21:                               # %if.else.32.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	$0, 208(%rax)
	movq	%rsi, 216(%rax)
	movq	%rax, 208(%rsi)
	movq	%rax, 40(%r14)
	jmp	.LBB8_23
.LBB8_22:                               # %if.end.36.critedge.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	$0, 216(%rax)
	movq	%rsi, 208(%rax)
	movq	%rax, 216(%rsi)
.LBB8_23:                               # %add_y_line_aux.exit
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	%rax, 48(%r14)
.LBB8_24:                               # %for.cond.outer.backedge
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %ecx
	testq	%rbp, %rbp
	jne	.LBB8_2
.LBB8_25:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	process_h_segments, .Lfunc_end8-process_h_segments
	.cfi_endproc

	.align	16, 0x90
	.type	move_al_by_y,@function
move_al_by_y:                           # @move_al_by_y
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp88:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp89:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp91:
	.cfi_def_cfa_offset 64
.Ltmp92:
	.cfi_offset %rbx, -56
.Ltmp93:
	.cfi_offset %r12, -48
.Ltmp94:
	.cfi_offset %r13, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	272(%rdi), %r13
	xorl	%eax, %eax
	testq	%r13, %r13
	je	.LBB9_56
# BB#1:
	movl	$-2147483648, %r12d     # imm = 0xFFFFFFFF80000000
	xorps	%xmm3, %xmm3
	.align	16, 0x90
.LBB9_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_41 Depth 2
                                        #     Child Loop BB9_13 Depth 2
	movq	%r13, %r14
	movl	36(%r14), %r9d
	movl	%r9d, 32(%r14)
	movq	216(%r14), %r13
	movl	12(%r14), %r8d
	xorl	%edx, %edx
	cmpl	%r15d, %r8d
	jne	.LBB9_7
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpl	$0, 196(%r14)
	movl	%r15d, %r8d
	je	.LBB9_7
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$1, %esi
	movq	%r14, %rdi
	callq	step_al
	testl	%eax, %eax
	js	.LBB9_56
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	(%r14), %r9d
	movl	%r9d, 36(%r14)
	movl	%r9d, 32(%r14)
	movl	12(%r14), %r8d
	cmpl	4(%r14), %r8d
	setge	%cl
	movzbl	%cl, %edx
	xorps	%xmm3, %xmm3
.LBB9_7:                                # %if.end.13
                                        #   in Loop: Header=BB9_3 Depth=1
	testl	%edx, %edx
	jne	.LBB9_9
# BB#8:                                 # %if.end.13
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpl	%r15d, %r8d
	jg	.LBB9_9
# BB#23:                                # %if.else.26
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%r14, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	end_x_line
	testl	%eax, %eax
	js	.LBB9_56
# BB#24:                                # %if.end.31
                                        #   in Loop: Header=BB9_3 Depth=1
	xorps	%xmm3, %xmm3
	jne	.LBB9_25
# BB#37:                                # %if.then.33
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	36(%r14), %r9d
	cmpl	%r12d, %r9d
	jg	.LBB9_2
# BB#38:                                # %if.then.37
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	208(%r14), %rdx
	movq	216(%r14), %rcx
	movq	%rcx, 216(%rdx)
	testq	%rcx, %rcx
	movl	$0, %esi
	je	.LBB9_40
# BB#39:                                # %if.then.i.64
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%rdx, 208(%rcx)
	movq	%rcx, %rsi
.LBB9_40:                               # %while.cond.preheader.i.69
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	32(%rdx), %edi
	movl	32(%r14), %r8d
	cmpl	%r8d, %edi
	jl	.LBB9_48
	.align	16, 0x90
.LBB9_41:                               # %if.else.i.i.78
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	cmpl	%r8d, %edi
	jg	.LBB9_44
# BB#42:                                # %if.end.6.i.i.84
                                        #   in Loop: Header=BB9_41 Depth=2
	movl	(%rcx), %r10d
	movl	8(%rcx), %ebx
	movl	%ebx, %edi
	subl	%r10d, %edi
	setg	%r9b
	movl	8(%r14), %edx
	subl	(%r14), %edx
	setg	%al
	movzbl	%al, %eax
	movzbl	%r9b, %ebp
	cmpl	%eax, %ebp
	je	.LBB9_46
# BB#43:                                # %if.then.17.i.i.85
                                        #   in Loop: Header=BB9_41 Depth=2
	cmpl	%r10d, %ebx
	jg	.LBB9_44
	jmp	.LBB9_47
	.align	16, 0x90
.LBB9_46:                               # %do.end.21.i.i.102
                                        #   in Loop: Header=BB9_41 Depth=2
	movl	12(%rcx), %eax
	subl	4(%rcx), %eax
	movl	12(%r14), %ebp
	subl	4(%r14), %ebp
	cvtsi2sdl	%edi, %xmm0
	cvtsi2sdl	%ebp, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm3, %xmm1
	jbe	.LBB9_47
.LBB9_44:                               # %do.end.i.106
                                        #   in Loop: Header=BB9_41 Depth=2
	movq	208(%rcx), %rdx
	movl	32(%rdx), %edi
	cmpl	%r8d, %edi
	movq	%rcx, %rsi
	jge	.LBB9_41
# BB#45:                                # %while.end.thread.i.107
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%rcx, 216(%r14)
	movq	%rdx, 208(%r14)
	jmp	.LBB9_49
	.align	16, 0x90
.LBB9_9:                                # %if.then.19
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpl	%r12d, %r9d
	jg	.LBB9_2
# BB#10:                                # %if.then.23
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	208(%r14), %rdi
	movq	216(%r14), %rcx
	movq	%rcx, 216(%rdi)
	testq	%rcx, %rcx
	movl	$0, %edx
	je	.LBB9_12
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%rdi, 208(%rcx)
	movq	%rcx, %rdx
.LBB9_12:                               # %while.cond.preheader.i
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	32(%rdi), %ebp
	cmpl	%r9d, %ebp
	jl	.LBB9_20
	.align	16, 0x90
.LBB9_13:                               # %if.else.i.i
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rsi
	cmpl	%r9d, %ebp
	jg	.LBB9_16
# BB#14:                                # %if.end.6.i.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	(%rsi), %r10d
	movl	8(%rsi), %ebx
	movl	%ebx, %ebp
	subl	%r10d, %ebp
	setg	%al
	movl	8(%r14), %edi
	subl	(%r14), %edi
	setg	%cl
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	cmpl	%ecx, %eax
	je	.LBB9_18
# BB#15:                                # %if.then.17.i.i
                                        #   in Loop: Header=BB9_13 Depth=2
	cmpl	%r10d, %ebx
	jg	.LBB9_16
	jmp	.LBB9_19
	.align	16, 0x90
.LBB9_18:                               # %do.end.21.i.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	12(%rsi), %eax
	subl	4(%rsi), %eax
	movl	%r8d, %ecx
	subl	4(%r14), %ecx
	cvtsi2sdl	%ebp, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm3, %xmm1
	jbe	.LBB9_19
.LBB9_16:                               # %do.end.i
                                        #   in Loop: Header=BB9_13 Depth=2
	movq	208(%rsi), %rdi
	movl	32(%rdi), %ebp
	cmpl	%r9d, %ebp
	movq	%rsi, %rdx
	jge	.LBB9_13
# BB#17:                                # %while.end.thread.i
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%rsi, 216(%r14)
	movq	%rdi, 208(%r14)
	jmp	.LBB9_21
.LBB9_19:                               #   in Loop: Header=BB9_3 Depth=1
	movq	%rsi, %rdi
.LBB9_20:                               # %while.end.i
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%rdx, 216(%r14)
	movq	%rdi, 208(%r14)
	testq	%rdx, %rdx
	movq	%rdx, %rsi
	je	.LBB9_22
.LBB9_21:                               # %if.then.9.i
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%r14, 208(%rsi)
.LBB9_22:                               # %resort_x_line.exit
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%r14, 216(%rdi)
	jmp	.LBB9_25
.LBB9_47:                               #   in Loop: Header=BB9_3 Depth=1
	movq	%rcx, %rdx
.LBB9_48:                               # %while.end.i.111
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%rsi, 216(%r14)
	movq	%rdx, 208(%r14)
	testq	%rsi, %rsi
	movq	%rsi, %rcx
	je	.LBB9_50
.LBB9_49:                               # %if.then.9.i.115
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%r14, 208(%rcx)
.LBB9_50:                               # %resort_x_line.exit118
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%r14, 216(%rdx)
	.align	16, 0x90
.LBB9_25:                               # %for.cond.backedge
                                        #   in Loop: Header=BB9_3 Depth=1
	testq	%r13, %r13
	jne	.LBB9_3
	jmp	.LBB9_26
.LBB9_2:                                # %for.cond.outer.loopexit
                                        #   in Loop: Header=BB9_3 Depth=1
	testq	%r13, %r13
	movl	%r9d, %r12d
	jne	.LBB9_3
.LBB9_26:                               # %for.end
	movq	(%rsp), %r9             # 8-byte Reload
	movq	272(%r9), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB9_56
# BB#27:                                # %land.lhs.true.47
	movq	408(%r9), %rdx
	cmpl	$0, (%rdx)
	je	.LBB9_56
# BB#28:                                # %for.cond.52.preheader
	movq	216(%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB9_56
# BB#29:
	leaq	216(%rcx), %rdx
.LBB9_30:                               # %for.body.56.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_31 Depth 2
	movq	%rcx, %rsi
	movl	(%rsi), %edi
	movl	8(%rsi), %r8d
	movq	%rbx, %rcx
	.align	16, 0x90
.LBB9_31:                               # %for.body.56
                                        #   Parent Loop BB9_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r8d, %edi
	jne	.LBB9_55
# BB#32:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB9_31 Depth=2
	cmpl	(%rcx), %edi
	jne	.LBB9_55
# BB#33:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB9_31 Depth=2
	cmpl	8(%rcx), %edi
	jne	.LBB9_55
# BB#34:                                # %land.lhs.true.80
                                        #   in Loop: Header=BB9_31 Depth=2
	movl	48(%rsi), %ebp
	cmpl	48(%rcx), %ebp
	jle	.LBB9_55
# BB#35:                                # %if.then.85
                                        #   in Loop: Header=BB9_31 Depth=2
	movq	208(%rsi), %rbp
	movq	216(%rcx), %rbx
	testq	%rbp, %rbp
	je	.LBB9_51
# BB#36:                                # %if.then.91
                                        #   in Loop: Header=BB9_31 Depth=2
	movq	%rcx, 216(%rbp)
	jmp	.LBB9_52
	.align	16, 0x90
.LBB9_51:                               # %if.else.93
                                        #   in Loop: Header=BB9_31 Depth=2
	movq	%rcx, 272(%r9)
.LBB9_52:                               # %if.end.96
                                        #   in Loop: Header=BB9_31 Depth=2
	movq	%rbp, 208(%rcx)
	movq	%rcx, 208(%rsi)
	movq	%rbx, (%rdx)
	movq	%rsi, 216(%rcx)
	testq	%rbx, %rbx
	je	.LBB9_53
# BB#54:                                # %if.then.102
                                        #   in Loop: Header=BB9_31 Depth=2
	movq	%rsi, 208(%rbx)
.LBB9_53:                               # %for.cond.52.backedge
                                        #   in Loop: Header=BB9_31 Depth=2
	movq	(%rdx), %rcx
	testq	%rcx, %rcx
	jne	.LBB9_31
	jmp	.LBB9_56
	.align	16, 0x90
.LBB9_55:                               # %if.else.105
                                        #   in Loop: Header=BB9_30 Depth=1
	leaq	216(%rcx), %rdx
	movq	216(%rcx), %rbx
	testq	%rbx, %rbx
	jne	.LBB9_30
.LBB9_56:                               # %cleanup.110
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	move_al_by_y, .Lfunc_end9-move_al_by_y
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4748858606644887552     # double 3131961357
	.text
	.align	16, 0x90
	.type	intersect_al,@function
intersect_al:                           # @intersect_al
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp104:
	.cfi_def_cfa_offset 112
.Ltmp105:
	.cfi_offset %rbx, -56
.Ltmp106:
	.cfi_offset %r12, -48
.Ltmp107:
	.cfi_offset %r13, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	(%rbx), %r15d
	cmpl	%esi, %r15d
	je	.LBB10_125
# BB#1:                                 # %if.else
	movq	272(%rdi), %rbp
	testl	%ecx, %ecx
	jns	.LBB10_6
# BB#2:                                 # %if.else
	movq	408(%rdi), %rax
	orl	(%rax), %r8d
	je	.LBB10_3
.LBB10_6:                               # %for.cond.preheader
	testq	%rbp, %rbp
	je	.LBB10_124
# BB#7:                                 # %for.body.lr.ph
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	leal	1(%rsi), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	$-2147483648, %r14d     # imm = 0xFFFFFFFF80000000
	xorl	%r13d, %r13d
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB10_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %r12
	movq	%rbp, %r13
	cmpl	12(%r13), %r15d
	jne	.LBB10_13
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	8(%r13), %ebx
	jmp	.LBB10_17
	.align	16, 0x90
.LBB10_13:                              # %cond.false
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%r15d, %esi
	subl	4(%r13), %esi
	cmpl	24(%r13), %r15d
	movl	16(%r13), %edi
	movl	20(%r13), %ecx
	jle	.LBB10_14
# BB#15:                                # %cond.false.16
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB10_16
	.align	16, 0x90
.LBB10_14:                              # %cond.true.11
                                        #   in Loop: Header=BB10_8 Depth=1
	imull	%edi, %esi
	addl	28(%r13), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB10_16:                              # %cond.end
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%eax, %ebx
	addl	(%r13), %ebx
.LBB10_17:                              # %cond.end.27
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%ebx, 36(%r13)
	cmpl	%r14d, %ebx
	jge	.LBB10_79
# BB#18:                                # %if.else.31
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	32(%r13), %esi
	subl	32(%r12), %esi
	jge	.LBB10_20
# BB#19:                                #   in Loop: Header=BB10_8 Depth=1
	movl	%r14d, %ebx
	jmp	.LBB10_79
	.align	16, 0x90
.LBB10_20:                              # %land.lhs.true
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%esi, %ecx
	subl	%ebx, %ecx
	addl	36(%r12), %ecx
	cmpl	%esi, %ecx
	jle	.LBB10_21
# BB#22:                                # %if.end.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%r15d, %edi
	movq	48(%rsp), %rax          # 8-byte Reload
	subl	%eax, %edi
	movl	%esi, %eax
	orl	%edi, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB10_24
# BB#23:                                # %cond.true.i
                                        #   in Loop: Header=BB10_8 Depth=1
	imull	%edi, %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
	jmp	.LBB10_25
.LBB10_21:                              #   in Loop: Header=BB10_8 Depth=1
	movl	%r14d, %ebx
	jmp	.LBB10_79
.LBB10_24:                              # %cond.false.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%ecx, %edx
	callq	fixed_mult_quo
.LBB10_25:                              # %cond.end.i
                                        #   in Loop: Header=BB10_8 Depth=1
	testl	%eax, %eax
	jle	.LBB10_27
# BB#26:                                #   in Loop: Header=BB10_8 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	jmp	.LBB10_58
.LBB10_27:                              # %if.then.13.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	4(%r12), %ebp
	movl	4(%r13), %edx
	movl	%ebp, %esi
	subl	%edx, %esi
	jge	.LBB10_34
# BB#28:                                # %if.then.23.i
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	12(%r12), %edx
	jne	.LBB10_30
# BB#29:                                # %cond.true.29.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	8(%r12), %r9d
	movl	(%r13), %esi
	jmp	.LBB10_41
.LBB10_34:                              # %if.else.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	(%r12), %r9d
	cmpl	12(%r13), %ebp
	jne	.LBB10_36
# BB#35:                                # %cond.true.70.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	8(%r13), %esi
	jmp	.LBB10_40
.LBB10_30:                              # %cond.false.31.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%edx, %esi
	subl	%ebp, %esi
	cmpl	24(%r12), %edx
	movl	16(%r12), %edi
	movl	20(%r12), %ecx
	movl	%edx, %ebp
	jle	.LBB10_31
# BB#32:                                # %cond.false.44.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB10_33
.LBB10_36:                              # %cond.false.73.i
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	24(%r13), %ebp
	movl	16(%r13), %edi
	movl	20(%r13), %r8d
	jle	.LBB10_37
# BB#38:                                # %cond.false.89.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%r8d, %edx
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	callq	fixed_mult_quo
	movl	20(%rsp), %r9d          # 4-byte Reload
	jmp	.LBB10_39
.LBB10_31:                              # %cond.true.34.i
                                        #   in Loop: Header=BB10_8 Depth=1
	imull	%esi, %edi
	addl	28(%r12), %edi
	movl	%edi, %eax
	cltd
	idivl	%ecx
.LBB10_33:                              # %cond.end.53.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%eax, %r9d
	addl	(%r12), %r9d
	movl	(%r13), %esi
	jmp	.LBB10_40
.LBB10_37:                              # %cond.true.77.i
                                        #   in Loop: Header=BB10_8 Depth=1
	imull	%esi, %edi
	addl	28(%r13), %edi
	movl	%edi, %eax
	cltd
	idivl	%r8d
.LBB10_39:                              # %cond.end.98.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%eax, %esi
	addl	(%r13), %esi
.LBB10_40:                              # %if.end.105.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%ebp, %edx
.LBB10_41:                              # %if.end.105.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	12(%r12), %ebp
	movl	12(%r13), %edi
	cmpl	%edi, %ebp
	jle	.LBB10_48
# BB#42:                                # %if.then.112.i
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	%ebp, %edi
	jne	.LBB10_44
# BB#43:                                # %cond.true.119.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	8(%r12), %ecx
	movl	8(%r13), %eax
	jmp	.LBB10_55
.LBB10_48:                              # %if.else.156.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	8(%r12), %ecx
	jne	.LBB10_50
# BB#49:                                # %cond.true.165.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	8(%r13), %eax
	jmp	.LBB10_54
.LBB10_44:                              # %cond.false.122.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%esi, 8(%rsp)           # 4-byte Spill
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movl	%edi, %esi
	subl	4(%r12), %esi
	cmpl	24(%r12), %edi
	movl	%edi, %ebp
	movl	16(%r12), %edi
	movl	20(%r12), %ecx
	jle	.LBB10_45
# BB#46:                                # %cond.false.138.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB10_47
.LBB10_50:                              # %cond.false.168.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%esi, 8(%rsp)           # 4-byte Spill
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movl	%ebp, %esi
	subl	4(%r13), %esi
	cmpl	24(%r13), %ebp
	movl	16(%r13), %edi
	movl	20(%r13), %r8d
	jle	.LBB10_51
# BB#52:                                # %cond.false.184.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%r8d, %edx
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	callq	fixed_mult_quo
	movl	4(%rsp), %ecx           # 4-byte Reload
	jmp	.LBB10_53
.LBB10_45:                              # %cond.true.126.i
                                        #   in Loop: Header=BB10_8 Depth=1
	imull	%edi, %esi
	addl	28(%r12), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB10_47:                              # %cond.end.147.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%eax, %ecx
	movl	20(%rsp), %r9d          # 4-byte Reload
	movl	12(%rsp), %edx          # 4-byte Reload
	movl	8(%rsp), %esi           # 4-byte Reload
	movl	%ebp, %edi
	addl	(%r12), %ecx
	movl	8(%r13), %eax
	jmp	.LBB10_55
.LBB10_51:                              # %cond.true.172.i
                                        #   in Loop: Header=BB10_8 Depth=1
	imull	%edi, %esi
	addl	28(%r13), %esi
	movl	%esi, %eax
	cltd
	idivl	%r8d
.LBB10_53:                              # %cond.end.193.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	20(%rsp), %r9d          # 4-byte Reload
	movl	12(%rsp), %edx          # 4-byte Reload
	movl	8(%rsp), %esi           # 4-byte Reload
	addl	(%r13), %eax
.LBB10_54:                              # %if.end.200.i
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%ebp, %edi
.LBB10_55:                              # %if.end.200.i
                                        #   in Loop: Header=BB10_8 Depth=1
	subl	%r9d, %ecx
	subl	%esi, %eax
	subl	%ecx, %eax
	jne	.LBB10_57
# BB#56:                                #   in Loop: Header=BB10_8 Depth=1
	movl	%r15d, %eax
	jmp	.LBB10_59
.LBB10_57:                              # %if.else.207.i
                                        #   in Loop: Header=BB10_8 Depth=1
	subl	%edx, %edi
	subl	%esi, %r9d
	cvtsi2sdl	%r9d, %xmm0
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	cvtsi2sdl	%edi, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %eax
	cmovlel	16(%rsp), %eax          # 4-byte Folded Reload
.LBB10_58:                              # %if.then.36
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	%r15d, %eax
	jg	.LBB10_78
.LBB10_59:                              # %if.then.38
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%eax, %r15d
	movl	16(%r12), %edi
	testl	%edi, %edi
	je	.LBB10_60
# BB#61:                                # %if.else.45
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	$0, 16(%r13)
	je	.LBB10_62
# BB#63:                                # %if.else.52
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	12(%r12), %r15d
	jne	.LBB10_65
# BB#64:                                # %cond.true.56
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	8(%r12), %ebx
	jmp	.LBB10_69
.LBB10_60:                              # %if.then.42
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	(%r12), %ebx
	jmp	.LBB10_77
.LBB10_62:                              # %if.then.49
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	(%r13), %ebx
	jmp	.LBB10_77
.LBB10_65:                              # %cond.false.59
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%r15d, %esi
	subl	4(%r12), %esi
	cmpl	24(%r12), %r15d
	movl	20(%r12), %ecx
	jle	.LBB10_66
# BB#67:                                # %cond.false.74
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB10_68
.LBB10_66:                              # %cond.true.62
                                        #   in Loop: Header=BB10_8 Depth=1
	imull	%edi, %esi
	addl	28(%r12), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB10_68:                              # %cond.end.83
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%eax, %ebx
	addl	(%r12), %ebx
.LBB10_69:                              # %cond.end.88
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	12(%r13), %r15d
	jne	.LBB10_71
# BB#70:                                # %cond.true.93
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	8(%r13), %ecx
	jmp	.LBB10_75
.LBB10_71:                              # %cond.false.96
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	24(%r13), %r15d
	jle	.LBB10_72
# BB#73:                                # %cond.false.111
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%r15d, %esi
	subl	4(%r13), %esi
	movl	16(%r13), %edi
	movl	20(%r13), %edx
	callq	fixed_mult_quo
	jmp	.LBB10_74
.LBB10_72:                              # %cond.true.99
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%r15d, %eax
	subl	4(%r13), %eax
	imull	16(%r13), %eax
	addl	28(%r13), %eax
	cltd
	idivl	20(%r13)
.LBB10_74:                              # %cond.end.120
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%eax, %ecx
	addl	(%r13), %ecx
.LBB10_75:                              # %cond.end.125
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	%ecx, %ebx
	je	.LBB10_77
# BB#76:                                # %if.then.128
                                        #   in Loop: Header=BB10_8 Depth=1
	movslq	20(%r12), %rax
	shlq	$3, %rax
	movslq	16(%r12), %rsi
	cqto
	idivq	%rsi
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	leal	1(%rdx), %eax
	cmpl	$256, %edx              # imm = 0x100
	movslq	%eax, %rsi
	movl	$257, %ebp              # imm = 0x101
	cmovgeq	%rbp, %rsi
	movslq	20(%r13), %rax
	shlq	$3, %rax
	movslq	16(%r13), %rdi
	cqto
	idivq	%rdi
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	leal	1(%rdx), %eax
	cmpl	$256, %edx              # imm = 0x100
	movslq	%eax, %rdi
	cmovgeq	%rbp, %rdi
	movslq	%ebx, %rdx
	imulq	%rsi, %rdx
	movslq	%ecx, %rax
	imulq	%rdi, %rax
	addq	%rdx, %rax
	addq	%rsi, %rdi
	cqto
	idivq	%rdi
	movq	%rax, %rbx
.LBB10_77:                              # %if.end.142
                                        #   in Loop: Header=BB10_8 Depth=1
	movl	%ebx, 36(%r13)
	movl	%ebx, 36(%r12)
	movq	%r12, 40(%rsp)          # 8-byte Spill
.LBB10_78:                              # %if.end.145
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpl	%r14d, %ebx
	cmovll	%r14d, %ebx
	.align	16, 0x90
.LBB10_79:                              # %if.end.151
                                        #   in Loop: Header=BB10_8 Depth=1
	movq	216(%r13), %rbp
	testq	%rbp, %rbp
	movl	%ebx, %r14d
	jne	.LBB10_8
# BB#10:                                # %for.cond.155.preheader
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	272(%r14), %rbx
	movq	40(%rsp), %rbp          # 8-byte Reload
	cmpq	%rbp, %rbx
	je	.LBB10_86
	.align	16, 0x90
.LBB10_11:                              # %for.body.158
                                        # =>This Inner Loop Header: Depth=1
	cmpl	12(%rbx), %r15d
	jne	.LBB10_80
# BB#12:                                # %cond.true.163
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	8(%rbx), %eax
	jmp	.LBB10_84
	.align	16, 0x90
.LBB10_80:                              # %cond.false.166
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	%r15d, %esi
	subl	4(%rbx), %esi
	cmpl	24(%rbx), %r15d
	movl	16(%rbx), %edi
	movl	20(%rbx), %ecx
	jle	.LBB10_81
# BB#82:                                # %cond.false.182
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB10_83
	.align	16, 0x90
.LBB10_81:                              # %cond.true.170
                                        #   in Loop: Header=BB10_11 Depth=1
	imull	%edi, %esi
	addl	28(%rbx), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB10_83:                              # %cond.end.191
                                        #   in Loop: Header=BB10_11 Depth=1
	addl	(%rbx), %eax
.LBB10_84:                              # %cond.end.196
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	%eax, 36(%rbx)
	movq	216(%rbx), %rbx
	cmpq	%rbp, %rbx
	jne	.LBB10_11
# BB#85:                                # %for.cond.155.for.end.201_crit_edge
	movq	272(%r14), %rbx
.LBB10_86:                              # %for.end.201
	testq	%rbx, %rbx
	je	.LBB10_87
# BB#88:                                # %for.cond.207.preheader
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_87
# BB#89:
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$257, %r8d              # imm = 0x101
.LBB10_90:                              # %for.body.215.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_92 Depth 2
                                        #     Child Loop BB10_95 Depth 2
                                        #       Child Loop BB10_110 Depth 3
                                        #     Child Loop BB10_118 Depth 2
	movl	36(%rbx), %r9d
	movq	%rsi, %rax
	movl	%r9d, %ecx
	.align	16, 0x90
.LBB10_92:                              # %for.body.215
                                        #   Parent Loop BB10_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	movl	36(%rax), %ecx
	cmpl	%edx, %ecx
	jl	.LBB10_93
# BB#91:                                # %for.cond.212
                                        #   in Loop: Header=BB10_92 Depth=2
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.LBB10_92
	jmp	.LBB10_87
.LBB10_93:                              # %if.end.228
                                        #   in Loop: Header=BB10_90 Depth=1
	testq	%rsi, %rsi
	je	.LBB10_115
# BB#94:                                #   in Loop: Header=BB10_90 Depth=1
	movl	$-1163005939, %r10d     # imm = 0xFFFFFFFFBAADF00D
	xorl	%r11d, %r11d
	movapd	%xmm0, %xmm1
	movq	%rbx, %rdi
	.align	16, 0x90
.LBB10_95:                              # %for.body.234
                                        #   Parent Loop BB10_90 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_110 Depth 3
	movl	36(%rsi), %ebp
	cmpl	%r9d, %ebp
	jge	.LBB10_106
# BB#96:                                # %if.then.238
                                        #   in Loop: Header=BB10_95 Depth=2
	testl	%r11d, %r11d
	jne	.LBB10_100
# BB#97:                                # %if.then.241
                                        #   in Loop: Header=BB10_95 Depth=2
	movslq	16(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_98
# BB#99:                                # %if.else.248
                                        #   in Loop: Header=BB10_95 Depth=2
	movslq	20(%rdi), %rax
	shlq	$3, %rax
	cqto
	idivq	%rcx
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	leal	1(%rcx), %r10d
	cmpl	$256, %ecx              # imm = 0x100
	cmovgel	%r8d, %r10d
	cvtsi2sdl	%r9d, %xmm2
	cvtsi2sdl	%r10d, %xmm1
	mulsd	%xmm2, %xmm1
	movl	$1, %r11d
	jmp	.LBB10_100
	.align	16, 0x90
.LBB10_106:                             # %if.else.280
                                        #   in Loop: Header=BB10_95 Depth=2
	cmpl	$2, %r11d
	jl	.LBB10_107
# BB#108:                               # %if.then.283
                                        #   in Loop: Header=BB10_95 Depth=2
	movl	%r10d, %eax
	negl	%eax
	cmovgel	%eax, %r10d
	cmpq	%rsi, %rdi
	je	.LBB10_107
# BB#109:                               #   in Loop: Header=BB10_95 Depth=2
	movl	%r10d, %eax
	shrl	$31, %eax
	leal	(%rax,%r10), %eax
	sarl	%eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm1, %xmm2
	cvtsi2sdl	%r10d, %xmm3
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	.align	16, 0x90
.LBB10_110:                             # %while.body.i
                                        #   Parent Loop BB10_90 Depth=1
                                        #     Parent Loop BB10_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%eax, 36(%rdi)
	movq	216(%rdi), %rdi
	cmpq	%rsi, %rdi
	jne	.LBB10_110
# BB#111:                               # %if.end.297.loopexit
                                        #   in Loop: Header=BB10_95 Depth=2
	movl	36(%rsi), %r9d
	movq	%rsi, %rdi
	jmp	.LBB10_112
	.align	16, 0x90
.LBB10_107:                             #   in Loop: Header=BB10_95 Depth=2
	movq	%rsi, %rdi
	movl	%ebp, %r9d
.LBB10_112:                             # %for.inc.300
                                        #   in Loop: Header=BB10_95 Depth=2
	xorl	%r11d, %r11d
	jmp	.LBB10_113
.LBB10_98:                              # %if.then.246
                                        #   in Loop: Header=BB10_95 Depth=2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r9d, %xmm1
	movl	$1, %r11d
	movl	$-1, %r10d
	.align	16, 0x90
.LBB10_100:                             # %if.end.254
                                        #   in Loop: Header=BB10_95 Depth=2
	incl	%r11d
	movslq	16(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_101
# BB#104:                               # %if.else.268
                                        #   in Loop: Header=BB10_95 Depth=2
	testl	%r10d, %r10d
	jle	.LBB10_113
# BB#105:                               # %if.then.271
                                        #   in Loop: Header=BB10_95 Depth=2
	movslq	20(%rsi), %rax
	shlq	$3, %rax
	cqto
	idivq	%rcx
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	leal	1(%rcx), %eax
	cmpl	$256, %ecx              # imm = 0x100
	cmovgel	%r8d, %eax
	cvtsi2sdl	%ebp, %xmm2
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm1
	addl	%eax, %r10d
	jmp	.LBB10_113
.LBB10_101:                             # %if.then.259
                                        #   in Loop: Header=BB10_95 Depth=2
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%ebp, %xmm2
	testl	%r10d, %r10d
	js	.LBB10_103
# BB#102:                               #   in Loop: Header=BB10_95 Depth=2
	movapd	%xmm2, %xmm1
	movl	$-1, %r10d
	jmp	.LBB10_113
.LBB10_103:                             # %if.then.262
                                        #   in Loop: Header=BB10_95 Depth=2
	addsd	%xmm2, %xmm1
	decl	%r10d
	.align	16, 0x90
.LBB10_113:                             # %for.inc.300
                                        #   in Loop: Header=BB10_95 Depth=2
	movq	216(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB10_95
# BB#114:                               # %for.end.302
                                        #   in Loop: Header=BB10_90 Depth=1
	cmpl	$1, %r11d
	jle	.LBB10_115
# BB#116:                               # %if.then.305
                                        #   in Loop: Header=BB10_90 Depth=1
	movl	%r10d, %eax
	negl	%eax
	cmovll	%r10d, %eax
	testq	%rdi, %rdi
	je	.LBB10_115
# BB#117:                               #   in Loop: Header=BB10_90 Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	sarl	%ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	.align	16, 0x90
.LBB10_118:                             # %while.body.i.234
                                        #   Parent Loop BB10_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, 36(%rdi)
	movq	216(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB10_118
.LBB10_115:                             # %for.cond.207.backedge
                                        #   in Loop: Header=BB10_90 Depth=1
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB10_90
.LBB10_87:
	movl	%r15d, %esi
	movq	24(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_125
	.align	16, 0x90
.LBB10_123:                             # %cond.end.369
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	%eax, 36(%rbp)
	movq	216(%rbp), %rbp
.LBB10_3:                               # %for.cond.328.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB10_124
# BB#4:                                 # %for.body.331
                                        #   in Loop: Header=BB10_3 Depth=1
	cmpl	12(%rbp), %r15d
	jne	.LBB10_119
# BB#5:                                 # %cond.true.336
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	8(%rbp), %eax
	jmp	.LBB10_123
	.align	16, 0x90
.LBB10_119:                             # %cond.false.339
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	%r15d, %esi
	subl	4(%rbp), %esi
	cmpl	24(%rbp), %r15d
	movl	16(%rbp), %edi
	movl	20(%rbp), %ecx
	jle	.LBB10_120
# BB#121:                               # %cond.false.355
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	%ecx, %edx
	callq	fixed_mult_quo
	jmp	.LBB10_122
	.align	16, 0x90
.LBB10_120:                             # %cond.true.343
                                        #   in Loop: Header=BB10_3 Depth=1
	imull	%edi, %esi
	addl	28(%rbp), %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
.LBB10_122:                             # %cond.end.364
                                        #   in Loop: Header=BB10_3 Depth=1
	addl	(%rbp), %eax
	jmp	.LBB10_123
.LBB10_124:
	movl	%r15d, %esi
.LBB10_125:                             # %if.end.376
	movl	%esi, (%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	intersect_al, .Lfunc_end10-intersect_al
	.cfi_endproc

	.align	16, 0x90
	.type	end_x_line,@function
end_x_line:                             # @end_x_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbx, -16
	movq	%rsi, %rcx
	movq	%rdi, %rbx
	movq	40(%rbx), %rsi
	movzwl	16(%rsi), %eax
	cmpl	$1, 48(%rbx)
	jne	.LBB11_4
# BB#1:                                 # %cond.true
	movzwl	%ax, %eax
	cmpl	$2, %eax
	jne	.LBB11_3
# BB#2:                                 # %cond.true.4
	movq	32(%rsi), %rdx
	addq	$8, %rdx
	jmp	.LBB11_7
.LBB11_4:                               # %cond.false.7
	testw	%ax, %ax
	je	.LBB11_5
# BB#6:                                 # %cond.false.13
	movq	%rsi, %rdx
	jmp	.LBB11_7
.LBB11_3:                               # %cond.false
	leaq	8(%rsi), %rdx
	jmp	.LBB11_7
.LBB11_5:                               # %cond.true.12
	movq	32(%rsi), %rdx
.LBB11_7:                               # %cond.end.17
	movl	12(%rbx), %eax
	cmpl	4(%rbx), %eax
	jge	.LBB11_10
# BB#8:                                 # %if.then
	movq	208(%rbx), %rcx
	movq	216(%rbx), %rdx
	movq	%rdx, 216(%rcx)
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB11_16
# BB#9:                                 # %if.then.i
	movq	%rcx, 208(%rdx)
	popq	%rbx
	retq
.LBB11_10:                              # %if.else
	xorl	%eax, %eax
	cmpl	$0, 196(%rbx)
	jne	.LBB11_16
# BB#11:                                # %if.end.23
	movq	(%rdx), %rdx
	movq	%rbx, %rdi
	callq	init_al
	testl	%eax, %eax
	js	.LBB11_16
# BB#12:                                # %if.end.27
	movl	4(%rbx), %eax
	cmpl	12(%rbx), %eax
	jle	.LBB11_15
# BB#13:                                # %if.then.34
	movq	208(%rbx), %rcx
	movq	216(%rbx), %rdx
	movq	%rdx, 216(%rcx)
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB11_16
# BB#14:                                # %if.then.i.6
	movq	%rcx, 208(%rdx)
	popq	%rbx
	retq
.LBB11_15:                              # %if.end.35
	movl	(%rbx), %eax
	movl	%eax, 36(%rbx)
	movl	%eax, 32(%rbx)
	xorl	%eax, %eax
.LBB11_16:                              # %cleanup
	popq	%rbx
	retq
.Lfunc_end11:
	.size	end_x_line, .Lfunc_end11-end_x_line
	.cfi_endproc

	.align	16, 0x90
	.type	fill_slant_adjust,@function
fill_slant_adjust:                      # @fill_slant_adjust
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp119:
	.cfi_def_cfa_offset 160
.Ltmp120:
	.cfi_offset %rbx, -56
.Ltmp121:
	.cfi_offset %r12, -48
.Ltmp122:
	.cfi_offset %r13, -40
.Ltmp123:
	.cfi_offset %r14, -32
.Ltmp124:
	.cfi_offset %r15, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	408(%rdi), %r15
	movl	48(%r15), %r9d
	movl	52(%r15), %r10d
	leal	(%r10,%rcx), %r13d
	subl	%r9d, %ecx
	leal	(%r10,%r12), %r14d
	subl	%r9d, %r12d
	movl	(%rsi), %r8d
	movl	40(%r15), %ebx
	movl	%r8d, %edi
	subl	%ebx, %edi
	movl	%edi, 72(%rsp)
	movl	8(%rsi), %eax
	movl	%eax, %edi
	subl	%ebx, %edi
	movl	%edi, 80(%rsp)
	movl	44(%r15), %ebp
	movl	(%rdx), %edi
	addl	%ebp, %edi
	movl	%edi, 40(%rsp)
	movl	8(%rdx), %edi
	addl	%ebp, %edi
	movl	%edi, 48(%rsp)
	cmpl	%eax, %r8d
	jge	.LBB12_2
# BB#1:                                 # %if.then
	movl	32(%rsi), %eax
	subl	%ebx, %eax
	movl	%eax, 96(%rsp)
	movl	%eax, 88(%rsp)
	movl	%ecx, 92(%rsp)
	movl	%r13d, 100(%rsp)
	addl	36(%rdx), %ebp
	movl	%ebp, 64(%rsp)
	movl	%ebp, 56(%rsp)
	movl	%r12d, 60(%rsp)
	movl	4(%rsi), %r8d
	addl	%r10d, %r8d
	addl	12(%rsi), %r10d
	movl	4(%rdx), %ebx
	movl	12(%rdx), %ebp
	subl	%r9d, %ebx
	subl	%r9d, %ebp
	leaq	88(%rsp), %rsi
	leaq	40(%rsp), %rdx
	leaq	72(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	56(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%r14d, %edi
	jmp	.LBB12_3
.LBB12_2:                               # %if.else
	movl	36(%rsi), %eax
	subl	%ebx, %eax
	movl	%eax, 96(%rsp)
	movl	%eax, 88(%rsp)
	movl	%r12d, 92(%rsp)
	movl	%r14d, 100(%rsp)
	addl	32(%rdx), %ebp
	movl	%ebp, 64(%rsp)
	movl	%ebp, 56(%rsp)
	movl	%ecx, 60(%rsp)
	movl	4(%rsi), %r8d
	movl	4(%rdx), %ebx
	addl	%r10d, %ebx
	movl	%r10d, %ebp
	movl	12(%rsi), %eax
	subl	%r9d, %r8d
	subl	%r9d, %eax
	addl	12(%rdx), %ebp
	leaq	72(%rsp), %rsi
	leaq	56(%rsp), %rdx
	leaq	88(%rsp), %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	leaq	40(%rsp), %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	%r13d, %edi
	movl	%eax, %r10d
.LBB12_3:                               # %if.end
	movl	%edi, 68(%rsp)
	movl	%r8d, 76(%rsp)
	movl	%r10d, 84(%rsp)
	movl	%ebx, 44(%rsp)
	movl	%ebp, 52(%rsp)
	cmpl	%r12d, %r13d
	jge	.LBB12_4
# BB#11:                                # %if.else.193
	movq	64(%r15), %rdi
	movl	4(%rdi), %eax
	cmpl	%r13d, %eax
	jge	.LBB12_14
# BB#12:                                # %if.then.197
	movq	56(%r15), %rdi
	movq	16(%r15), %rax
	movl	24(%r15), %ebp
	movl	%ebp, 8(%rsp)
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movl	%r13d, %r8d
	callq	*88(%r15)
	testl	%eax, %eax
	js	.LBB12_18
# BB#13:                                # %if.then.197.if.end.211_crit_edge
	movq	64(%r15), %rdi
	movl	%r13d, %eax
.LBB12_14:                              # %if.end.211
	movl	12(%rdi), %r8d
	movq	88(%r15), %rbp
	movq	56(%r15), %rdi
	movq	16(%r15), %rcx
	movl	24(%r15), %edx
	cmpl	%r12d, %r8d
	jle	.LBB12_17
# BB#15:                                # %if.then.216
	movl	%edx, 8(%rsp)
	movq	%rcx, (%rsp)
	leaq	72(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	movl	%r12d, %r8d
	callq	*%rbp
	testl	%eax, %eax
	js	.LBB12_18
# BB#16:                                # %if.end.225
	movq	56(%r15), %rdi
	movq	16(%r15), %rax
	movl	24(%r15), %ecx
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	%r12d, %ecx
	jmp	.LBB12_10
.LBB12_4:                               # %if.then.123
	movslq	%ecx, %rax
	addq	$127, %rax
	shrq	$8, %rax
	movslq	%r12d, %rbp
	addq	$127, %rbp
	shrq	$8, %rbp
	cmpl	%eax, %ebp
	jle	.LBB12_6
# BB#5:                                 # %if.then.143
	movq	56(%r15), %rdi
	movq	16(%r15), %rax
	movl	24(%r15), %ebx
	movl	%ebx, 8(%rsp)
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movl	%r12d, %r8d
	callq	*88(%r15)
	testl	%eax, %eax
	js	.LBB12_18
.LBB12_6:                               # %if.end.148
	movslq	%r13d, %rbx
	addq	$127, %rbx
	shrq	$8, %rbx
	movl	%ebx, %r8d
	subl	%ebp, %r8d
	jle	.LBB12_8
# BB#7:                                 # %if.then.151
	movslq	88(%rsp), %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movslq	56(%rsp), %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	subl	%esi, %ecx
	movq	16(%r15), %rdi
	movq	(%rdi), %rax
	movq	56(%r15), %r9
	movl	24(%r15), %edx
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%ebp, %edx
	callq	*40(%rax)
	testl	%eax, %eax
	js	.LBB12_18
.LBB12_8:                               # %if.end.176
	movslq	%r14d, %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	xorl	%eax, %eax
	cmpl	%ebx, %ecx
	jle	.LBB12_18
# BB#9:                                 # %if.then.179
	movq	56(%r15), %rdi
	movq	16(%r15), %rax
	movl	24(%r15), %ecx
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	%r13d, %ecx
.LBB12_10:                              # %cleanup.245
	movl	%r14d, %r8d
	callq	*88(%r15)
	jmp	.LBB12_18
.LBB12_17:                              # %if.else.231
	movl	%edx, 8(%rsp)
	movq	%rcx, (%rsp)
	leaq	72(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	callq	*%rbp
.LBB12_18:                              # %cleanup.245
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	fill_slant_adjust, .Lfunc_end12-fill_slant_adjust
	.cfi_endproc

	.align	16, 0x90
	.type	range_list_add,@function
range_list_add:                         # @range_list_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp130:
	.cfi_def_cfa_offset 48
.Ltmp131:
	.cfi_offset %rbx, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r15d
	movq	%rdi, %r14
	xorl	%ecx, %ecx
	cmpl	%ebp, %r15d
	jge	.LBB13_25
# BB#1:                                 # %top.preheader
	movq	48(%r14), %rax
	.align	16, 0x90
.LBB13_2:                               # %top
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movl	(%rbx), %ecx
	cmpl	%ebp, %ecx
	jle	.LBB13_4
# BB#3:                                 # %if.then.3
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	8(%rbx), %rax
	cmpl	%r15d, 4(%rax)
	jge	.LBB13_2
	jmp	.LBB13_16
	.align	16, 0x90
.LBB13_4:                               # %if.end.9
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	4(%rbx), %eax
	cmpl	%r15d, %eax
	jge	.LBB13_5
# BB#15:                                # %if.then.12
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	16(%rbx), %rax
	cmpl	%ebp, (%rax)
	movq	%rax, %rbx
	jle	.LBB13_2
.LBB13_16:                              # %ins
	movq	40(%r14), %rax
	testq	%rax, %rax
	je	.LBB13_18
# BB#17:                                # %range_alloc.exit.thread56
	movq	16(%rax), %rcx
	movq	%rcx, 40(%r14)
	jmp	.LBB13_23
	.align	16, 0x90
.LBB13_26:                              # %if.end.24
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	(%rdx), %ecx
	movl	%ecx, (%rbx)
	movq	16(%rdx), %rdi
	movq	%rdi, 16(%rsi)
	movq	16(%rdx), %rdi
	movq	%rsi, 8(%rdi)
	movq	40(%r14), %rsi
	movq	%rsi, 16(%rdx)
	movq	%rdx, 40(%r14)
.LBB13_5:                               # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdx
	cmpl	%r15d, 4(%rdx)
	jl	.LBB13_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB13_5 Depth=1
	movq	8(%rdx), %rsi
	testq	%rsi, %rsi
	jne	.LBB13_26
	jmp	.LBB13_7
	.align	16, 0x90
.LBB13_9:                               # %if.end.38
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	4(%rdx), %eax
	movl	%eax, 4(%rbx)
	movq	8(%rdx), %rdi
	movq	%rsi, 16(%rdi)
	movq	16(%rdx), %rsi
	movq	%rdi, 8(%rsi)
	movq	40(%r14), %rsi
	movq	%rsi, 16(%rdx)
	movq	%rdx, 40(%r14)
.LBB13_7:                               # %while.cond.29.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rdx
	cmpl	%ebp, (%rdx)
	jg	.LBB13_10
# BB#8:                                 # %while.body.33
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	16(%rdx), %rsi
	testq	%rsi, %rsi
	jne	.LBB13_9
.LBB13_10:                              # %while.end.43
	cmpl	%r15d, %ecx
	jle	.LBB13_12
# BB#11:                                # %do.end
	movl	%r15d, (%rbx)
.LBB13_12:                              # %if.end.48
	cmpl	%ebp, %eax
	jge	.LBB13_14
# BB#13:                                # %do.end.54
	movl	%ebp, 4(%rbx)
.LBB13_14:                              # %if.end.56
	movq	%rdx, 48(%r14)
	jmp	.LBB13_24
.LBB13_18:                              # %if.else.i
	movq	16(%r14), %rax
	cmpq	24(%r14), %rax
	jae	.LBB13_20
# BB#19:                                # %if.then.5.i
	leaq	32(%rax), %rcx
	movq	%rcx, 16(%r14)
	jmp	.LBB13_22
.LBB13_20:                              # %if.else.8.i
	movq	(%r14), %rdi
	movl	$st_coord_range, %esi
	movl	$.L.str.4, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB13_25
# BB#21:                                # %if.end.i
	movq	32(%r14), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%r14)
.LBB13_22:                              # %range_alloc.exit
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB13_25
.LBB13_23:                              # %do.end.65
	movl	%r15d, (%rax)
	movl	%ebp, 4(%rax)
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, 16(%rcx)
	movq	%rbx, 16(%rax)
	movq	%rax, 8(%rbx)
	movq	%rbx, 48(%r14)
.LBB13_24:                              # %cleanup.74
	xorl	%ecx, %ecx
.LBB13_25:                              # %cleanup.74
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	range_list_add, .Lfunc_end13-range_list_add
	.cfi_endproc

	.align	16, 0x90
	.type	merge_ranges,@function
merge_ranges:                           # @merge_ranges
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp141:
	.cfi_def_cfa_offset 80
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	72(%rdi), %rax
	movq	%rax, 48(%rdi)
	movq	272(%rsi), %rbp
	xorl	%eax, %eax
	jmp	.LBB14_1
.LBB14_25:                              # %for.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	408(%rax), %rax
	movslq	40(%rax), %rcx
	movslq	%r14d, %rsi
	subq	%rcx, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movl	44(%rax), %eax
	leal	128(%r15,%rax), %edx
	sarl	$8, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	range_list_add
	.align	16, 0x90
.LBB14_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
	movq	%rbp, %rbx
	testl	%eax, %eax
	js	.LBB14_26
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB14_1 Depth=1
	testq	%rbx, %rbx
	je	.LBB14_26
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movb	$1, %dl
	cmpl	$1, 48(%rbx)
	je	.LBB14_5
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, 176(%rbx)
	sete	%dl
.LBB14_5:                               # %lor.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	216(%rbx), %rbp
	movl	4(%rbx), %ecx
	cmpl	%r13d, %ecx
	jl	.LBB14_1
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	32(%rbx), %r14d
	leaq	68(%rbx), %rsi
	leaq	60(%rbx), %rax
	testb	%dl, %dl
	cmovneq	%rsi, %rax
	cmpl	$0, 52(%rbx)
	je	.LBB14_7
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_1 Depth=1
	leaq	72(%rbx), %rsi
	leaq	64(%rbx), %rdi
	testb	%dl, %dl
	cmovneq	%rsi, %rdi
	cmpl	%r12d, (%rdi)
	jg	.LBB14_7
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	56(%rbx), %edx
	testl	%edx, %edx
	je	.LBB14_7
# BB#12:                                # %do.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	(%rax), %eax
	cmpl	%eax, %r14d
	movl	%r14d, %ecx
	cmovgl	%eax, %ecx
	cmovgel	%r14d, %eax
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	408(%rdx), %rdx
	movslq	40(%rdx), %rdi
	movslq	%ecx, %rsi
	subq	%rdi, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
	movl	44(%rdx), %ecx
	leal	128(%rax,%rcx), %edx
	sarl	$8, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	range_list_add
	movl	$0, 196(%rbx)
	jmp	.LBB14_1
.LBB14_7:                               # %for.cond.29.preheader
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	12(%rbx), %eax
	movl	%r14d, %r15d
	.align	16, 0x90
.LBB14_8:                               # %for.cond.29
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r12d, %eax
	jle	.LBB14_9
# BB#13:                                # %if.else.35
                                        #   in Loop: Header=BB14_8 Depth=2
	jne	.LBB14_15
# BB#14:                                # %cond.true.40
                                        #   in Loop: Header=BB14_8 Depth=2
	movl	8(%rbx), %eax
	jmp	.LBB14_19
	.align	16, 0x90
.LBB14_9:                               # %if.then.33
                                        #   in Loop: Header=BB14_8 Depth=2
	movl	8(%rbx), %eax
	jmp	.LBB14_19
	.align	16, 0x90
.LBB14_15:                              # %cond.false.43
                                        #   in Loop: Header=BB14_8 Depth=2
	cmpl	%r12d, 24(%rbx)
	jge	.LBB14_16
# BB#17:                                # %cond.false.54
                                        #   in Loop: Header=BB14_8 Depth=2
	movl	%r12d, %esi
	subl	%ecx, %esi
	movl	16(%rbx), %edi
	movl	20(%rbx), %edx
	callq	fixed_mult_quo
	jmp	.LBB14_18
.LBB14_16:                              # %cond.true.46
                                        #   in Loop: Header=BB14_8 Depth=2
	movl	%r12d, %eax
	subl	%ecx, %eax
	imull	16(%rbx), %eax
	addl	28(%rbx), %eax
	cltd
	idivl	20(%rbx)
.LBB14_18:                              # %cond.end.63
                                        #   in Loop: Header=BB14_8 Depth=2
	addl	(%rbx), %eax
.LBB14_19:                              # %if.end.70
                                        #   in Loop: Header=BB14_8 Depth=2
	cmpl	%eax, %r14d
	cmovgl	%eax, %r14d
	cmpl	%eax, %r15d
	cmovll	%eax, %r15d
	cmpl	$0, 196(%rbx)
	je	.LBB14_25
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB14_8 Depth=2
	cmpl	%r12d, 12(%rbx)
	jg	.LBB14_25
# BB#21:                                # %if.end.90
                                        #   in Loop: Header=BB14_8 Depth=2
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	step_al
	testl	%eax, %eax
	js	.LBB14_26
# BB#22:                                # %if.end.95
                                        #   in Loop: Header=BB14_8 Depth=2
	movl	4(%rbx), %ecx
	movl	12(%rbx), %eax
	cmpl	%ecx, %eax
	jge	.LBB14_8
# BB#23:                                # %if.then.102
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	208(%rbx), %rax
	movq	216(%rbx), %rcx
	movq	%rcx, 216(%rax)
	testq	%rcx, %rcx
	je	.LBB14_25
# BB#24:                                # %if.then.i
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	%rax, 208(%rcx)
	jmp	.LBB14_25
.LBB14_26:                              # %cleanup.124
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	merge_ranges, .Lfunc_end14-merge_ranges
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"shading_fill_cpath_intersection"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gx_general_fill_path"
	.size	.L.str.1, 21

	.type	st_active_line,@object  # @st_active_line
	.section	.rodata,"a",@progbits
	.align	8
st_active_line:
	.long	232                     # 0xe8
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_active_line, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"active line"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"active_line"
	.size	.L.str.3, 12

	.type	st_coord_range,@object  # @st_coord_range
	.section	.rodata,"a",@progbits
	.align	8
st_coord_range:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_coord_range, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"range_alloc"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"coord_range_t"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"range_list_free"
	.size	.L.str.6, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
