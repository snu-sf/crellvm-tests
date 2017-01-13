	.text
	.file	"gdevpsdp.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4609434218613702656     # double 1.5
	.text
	.globl	gdev_psdf_get_params
	.align	16, 0x90
	.type	gdev_psdf_get_params,@function
gdev_psdf_get_params:                   # @gdev_psdf_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 48
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_vector_get_params
	testl	%eax, %eax
	js	.LBB0_24
# BB#1:                                 # %if.end
	leaq	8880(%rbx), %rsi
	xorl	%edx, %edx
	movl	$psdf_param_items, %ecx
	movq	%r14, %rdi
	callq	gs_param_write_items
	testl	%eax, %eax
	js	.LBB0_24
# BB#2:                                 # %if.end.4
	movslq	8884(%rbx), %rax
	movq	AutoRotatePages_names(,%rax,8), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%r14, %rdi
	callq	param_write_name
	testl	%eax, %eax
	js	.LBB0_24
# BB#3:                                 # %if.end.9
	movslq	8888(%rbx), %rax
	movq	Binding_names(,%rax,8), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	callq	param_write_name
	testl	%eax, %eax
	js	.LBB0_24
# BB#4:                                 # %if.end.16
	movslq	8896(%rbx), %rax
	movq	DefaultRenderingIntent_names(,%rax,8), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_write_name
	testl	%eax, %eax
	js	.LBB0_24
# BB#5:                                 # %if.end.23
	movslq	9020(%rbx), %rax
	movq	TransferFunctionInfo_names(,%rax,8), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	param_write_name
	testl	%eax, %eax
	js	.LBB0_24
# BB#6:                                 # %if.end.30
	movslq	9024(%rbx), %rax
	movq	UCRandBGInfo_names(,%rax,8), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_name
	testl	%eax, %eax
	js	.LBB0_24
# BB#7:                                 # %if.end.37
	movsd	8872(%rbx), %xmm0       # xmm0 = mem[0],zero
	movl	$Color_names15, %esi
	ucomisd	.LCPI0_0(%rip), %xmm0
	jae	.LBB0_9
# BB#8:                                 # %select.mid
	movl	$Color_names, %esi
.LBB0_9:                                # %select.end
	leaq	9032(%rbx), %rdx
	movq	%r14, %rdi
	callq	psdf_get_image_params
	testl	%eax, %eax
	js	.LBB0_24
# BB#10:                                # %if.end.43
	movslq	9008(%rbx), %rax
	movq	ColorConversionStrategy_names(,%rax,8), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_name
	testl	%eax, %eax
	js	.LBB0_24
# BB#11:                                # %if.end.50
	movq	8944(%rbx), %rax
	movq	%rax, (%rsp)
	movl	8952(%rbx), %eax
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB0_24
# BB#12:                                # %if.end.55
	movq	8960(%rbx), %rax
	movq	%rax, (%rsp)
	movl	8968(%rbx), %eax
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB0_24
# BB#13:                                # %if.end.60
	movq	8976(%rbx), %rax
	movq	%rax, (%rsp)
	movl	8984(%rbx), %eax
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB0_24
# BB#14:                                # %if.end.65
	movq	8992(%rbx), %rax
	movq	%rax, (%rsp)
	movl	9000(%rbx), %eax
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB0_24
# BB#15:                                # %if.end.70
	movsd	8872(%rbx), %xmm0       # xmm0 = mem[0],zero
	movl	$Gray_names15, %esi
	ucomisd	.LCPI0_0(%rip), %xmm0
	jae	.LBB0_17
# BB#16:                                # %select.mid151
	movl	$Gray_names, %esi
.LBB0_17:                               # %select.end150
	leaq	9120(%rbx), %rdx
	movq	%r14, %rdi
	callq	psdf_get_image_params
	testl	%eax, %eax
	js	.LBB0_24
# BB#18:                                # %if.end.78
	leaq	9200(%rbx), %rdx
	movl	$Mono_names, %esi
	movq	%r14, %rdi
	callq	psdf_get_image_params
	testl	%eax, %eax
	js	.LBB0_24
# BB#19:                                # %if.end.83
	leaq	9280(%rbx), %r15
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	param_write_name_array
	testl	%eax, %eax
	js	.LBB0_24
# BB#20:                                # %psdf_get_embed_param.exit
	movl	$.L.str.10+1, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	param_write_name_array
	testl	%eax, %eax
	js	.LBB0_24
# BB#21:                                # %if.end.88
	leaq	9296(%rbx), %r15
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	param_write_name_array
	testl	%eax, %eax
	js	.LBB0_24
# BB#22:                                # %psdf_get_embed_param.exit132
	movl	$.L.str.11+1, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	param_write_name_array
	testl	%eax, %eax
	js	.LBB0_24
# BB#23:                                # %if.end.93
	movslq	9312(%rbx), %rax
	movq	CannotEmbedFontPolicy_names(,%rax,8), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_write_name
.LBB0_24:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gdev_psdf_get_params, .Lfunc_end0-gdev_psdf_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	psdf_get_image_params,@function
psdf_get_image_params:                  # @psdf_get_image_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 80
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpq	$0, 56(%r12)
	je	.LBB1_1
# BB#2:                                 # %select.mid
	leaq	56(%r12), %rcx
	jmp	.LBB1_3
.LBB1_1:
	leaq	72(%r12), %rcx
.LBB1_3:                                # %select.end
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gs_param_write_items
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_18
# BB#4:                                 # %if.end
	movq	(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB1_9
# BB#5:                                 # %if.end.i
	movq	(%r15), %r13
	movl	$12, 16(%rsp)
	movq	(%r14), %rax
	leaq	8(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*8(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_18
# BB#6:                                 # %if.end.3.i
	testq	%r13, %r13
	je	.LBB1_8
# BB#7:                                 # %if.then.5.i
	movq	%r13, %rdi
	callq	gs_c_param_list_read
	movq	8(%rsp), %rdi
	movq	%r13, %rsi
	callq	param_list_copy
	movl	%eax, %ebp
.LBB1_8:                                # %psdf_get_image_dict_param.exit
	movq	(%r14), %rax
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*16(%rax)
	testl	%ebp, %ebp
	js	.LBB1_18
.LBB1_9:                                # %if.end.10
	movq	8(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB1_14
# BB#10:                                # %if.end.i.33
	movq	24(%r15), %r13
	movl	$12, 16(%rsp)
	movq	(%r14), %rax
	leaq	8(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*8(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_18
# BB#11:                                # %if.end.3.i.35
	testq	%r13, %r13
	je	.LBB1_13
# BB#12:                                # %if.then.5.i.38
	movq	%r13, %rdi
	callq	gs_c_param_list_read
	movq	8(%rsp), %rdi
	movq	%r13, %rsi
	callq	param_list_copy
	movl	%eax, %ebp
.LBB1_13:                               # %psdf_get_image_dict_param.exit44
	movq	(%r14), %rax
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*16(%rax)
	testl	%ebp, %ebp
	js	.LBB1_18
.LBB1_14:                               # %if.end.15
	movq	16(%r12), %rbx
	movl	40(%r15), %eax
	movq	DownsampleType_names(,%rax,8), %rdi
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$1, 20(%rsp)
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	param_write_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_18
# BB#15:                                # %if.end.21
	movq	40(%r12), %rbx
	movq	48(%r15), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_17
# BB#16:                                # %cond.true.24
	movq	32(%r12), %rax
	movq	(%rax), %rdi
.LBB1_17:                               # %cond.end.28
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$1, 20(%rsp)
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	param_write_name
	movl	%eax, %ebp
.LBB1_18:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	psdf_get_image_params, .Lfunc_end1-psdf_get_image_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4609434218613702656     # double 1.5
	.text
	.globl	gdev_psdf_put_params
	.align	16, 0x90
	.type	gdev_psdf_put_params,@function
gdev_psdf_put_params:                   # @gdev_psdf_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$520, %rsp              # imm = 0x208
.Ltmp26:
	.cfi_def_cfa_offset 576
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	1728(%r15), %r12
	testq	%r12, %r12
	jne	.LBB2_2
# BB#1:                                 # %cond.false
	movq	24(%r15), %r12
.LBB2_2:                                # %cond.end
	leaq	8880(%r15), %r14
	leaq	24(%rsp), %rdi
	movl	$480, %edx              # imm = 0x1E0
	movq	%r14, %rsi
	callq	memcpy
	leaq	64(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	cmpl	$0, 8920(%r15)
	je	.LBB2_4
# BB#3:                                 # %cond.end
	movl	64(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB2_38
.LBB2_4:                                # %if.then
	leaq	24(%rsp), %rsi
	movl	$psdf_param_items, %edx
	movq	%r13, %rdi
	callq	gs_param_read_items
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movl	28(%rsp), %eax
	movl	%eax, 504(%rsp)
	leaq	504(%rsp), %rdx
	movl	$.L.str, %esi
	movl	$AutoRotatePages_names, %ecx
	movq	%r13, %rdi
	movl	%ebp, %r8d
	callq	param_put_enum
	movl	504(%rsp), %ecx
	movl	%ecx, 28(%rsp)
	movl	32(%rsp), %ecx
	movl	%ecx, 504(%rsp)
	leaq	504(%rsp), %rdx
	movl	$.L.str.1, %esi
	movl	$Binding_names, %ecx
	movq	%r13, %rdi
	movl	%eax, %r8d
	callq	param_put_enum
	movl	504(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movl	40(%rsp), %ecx
	movl	%ecx, 504(%rsp)
	leaq	504(%rsp), %rdx
	movl	$.L.str.2, %esi
	movl	$DefaultRenderingIntent_names, %ecx
	movq	%r13, %rdi
	movl	%eax, %r8d
	callq	param_put_enum
	movl	504(%rsp), %ecx
	movl	%ecx, 40(%rsp)
	movl	164(%rsp), %ecx
	movl	%ecx, 504(%rsp)
	leaq	504(%rsp), %rdx
	movl	$.L.str.3, %esi
	movl	$TransferFunctionInfo_names, %ecx
	movq	%r13, %rdi
	movl	%eax, %r8d
	callq	param_put_enum
	movl	504(%rsp), %ecx
	movl	%ecx, 164(%rsp)
	movl	168(%rsp), %ecx
	movl	%ecx, 504(%rsp)
	leaq	504(%rsp), %rdx
	movl	$.L.str.4, %esi
	movl	$UCRandBGInfo_names, %ecx
	movq	%r13, %rdi
	movl	%eax, %r8d
	callq	param_put_enum
	movl	504(%rsp), %ecx
	movl	%ecx, 168(%rsp)
	leaq	80(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r13, %rdi
	movl	%eax, %ecx
	callq	param_put_bool
	movsd	8872(%r15), %xmm0       # xmm0 = mem[0],zero
	movl	$Color_names15, %edx
	ucomisd	.LCPI2_0(%rip), %xmm0
	jae	.LBB2_6
# BB#5:                                 # %select.mid
	movl	$Color_names, %edx
.LBB2_6:                                # %select.end
	leaq	176(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%eax, %r8d
	callq	psdf_put_image_params
	movl	152(%rsp), %ecx
	movl	%ecx, 504(%rsp)
	leaq	504(%rsp), %rdx
	movl	$.L.str.5, %esi
	movl	$ColorConversionStrategy_names, %ecx
	movq	%r13, %rdi
	movl	%eax, %r8d
	callq	param_put_enum
	movl	%eax, %ebx
	movl	504(%rsp), %eax
	movl	%eax, 152(%rsp)
	leaq	504(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	jne	.LBB2_8
# BB#7:
	movq	%r14, 16(%rsp)          # 8-byte Spill
	jmp	.LBB2_11
.LBB2_8:                                # %select.end
	movq	%r14, 16(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	jne	.LBB2_12
# BB#9:                                 # %sw.bb.i
	movl	512(%rsp), %esi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.100, %edx
	movq	%r12, %rdi
	callq	*136(%r12)
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB2_12
# BB#10:                                # %if.end.i
	movq	504(%rsp), %rsi
	movq	%r14, %rdi
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rdx
	callq	memcpy
	movq	%r14, 88(%rsp)
	movl	%ebp, 96(%rsp)
.LBB2_11:                               # %psdf_read_string_param.exit
	movl	%ebx, %ebp
.LBB2_12:                               # %psdf_read_string_param.exit
	leaq	504(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB2_16
# BB#13:                                # %psdf_read_string_param.exit
	testl	%ebx, %ebx
	jne	.LBB2_17
# BB#14:                                # %sw.bb.i.62
	movl	512(%rsp), %esi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.100, %edx
	movq	%r12, %rdi
	callq	*136(%r12)
	movq	%rax, %r14
	movl	$-25, %ebx
	testq	%r14, %r14
	je	.LBB2_17
# BB#15:                                # %if.end.i.68
	movq	504(%rsp), %rsi
	movq	%r14, %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r14, 104(%rsp)
	movl	%ebx, 112(%rsp)
.LBB2_16:                               # %psdf_read_string_param.exit71
	movl	%ebp, %ebx
.LBB2_17:                               # %psdf_read_string_param.exit71
	leaq	504(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB2_21
# BB#18:                                # %psdf_read_string_param.exit71
	testl	%ebp, %ebp
	jne	.LBB2_22
# BB#19:                                # %sw.bb.i.78
	movl	512(%rsp), %esi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.100, %edx
	movq	%r12, %rdi
	callq	*136(%r12)
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB2_22
# BB#20:                                # %if.end.i.84
	movq	504(%rsp), %rsi
	movq	%r14, %rdi
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rdx
	callq	memcpy
	movq	%r14, 120(%rsp)
	movl	%ebp, 128(%rsp)
.LBB2_21:                               # %psdf_read_string_param.exit87
	movl	%ebx, %ebp
.LBB2_22:                               # %psdf_read_string_param.exit87
	leaq	504(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r13, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB2_26
# BB#23:                                # %psdf_read_string_param.exit87
	testl	%eax, %eax
	jne	.LBB2_27
# BB#24:                                # %sw.bb.i.94
	movl	512(%rsp), %r14d
	movl	$.L.str.100, %edx
	movq	%r12, %rdi
	movl	%r14d, %esi
	callq	*136(%r12)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB2_27
# BB#25:                                # %if.end.i.100
	movq	504(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memcpy
	movq	%rbx, 136(%rsp)
	movl	%r14d, 144(%rsp)
.LBB2_26:                               # %psdf_read_string_param.exit103
	movl	%ebp, %eax
.LBB2_27:                               # %psdf_read_string_param.exit103
	movsd	8872(%r15), %xmm0       # xmm0 = mem[0],zero
	movl	$Gray_names15, %edx
	ucomisd	.LCPI2_0(%rip), %xmm0
	jae	.LBB2_29
# BB#28:                                # %select.mid148
	movl	$Gray_names, %edx
.LBB2_29:                               # %select.end147
	leaq	264(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%eax, %r8d
	callq	psdf_put_image_params
	leaq	344(%rsp), %rcx
	movl	$Mono_names, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%eax, %r8d
	callq	psdf_put_image_params
	leaq	424(%rsp), %rcx
	movl	$.L.str.15, %esi
	movl	$.L.str.10, %edx
	movq	%r13, %rdi
	movq	%r12, %r8
	callq	psdf_put_embed_param
	leaq	440(%rsp), %rcx
	movl	$.L.str.16, %esi
	movl	$.L.str.11, %edx
	movq	%r13, %rdi
	movq	%r12, %r8
	callq	psdf_put_embed_param
	movl	456(%rsp), %ecx
	movl	%ecx, 504(%rsp)
	leaq	504(%rsp), %rdx
	movl	$.L.str.12, %esi
	movl	$CannotEmbedFontPolicy_names, %ecx
	movq	%r13, %rdi
	movl	%eax, %r8d
	callq	param_put_enum
	movl	%eax, %ebp
	movl	504(%rsp), %eax
	movl	%eax, 456(%rsp)
	testl	%ebp, %ebp
	movq	16(%rsp), %r14          # 8-byte Reload
	js	.LBB2_41
# BB#30:                                # %if.end.41
	leaq	504(%rsp), %rdx
	movl	$.L.str.17, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB2_36
# BB#31:                                # %if.end.41
	testl	%ebp, %ebp
	jne	.LBB2_35
# BB#32:                                # %sw.bb.i.112
	movl	512(%rsp), %ebx
	movl	$.L.str.100, %edx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	*136(%r12)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB2_33
# BB#34:                                # %if.end.i.118
	movq	504(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%rbp, 472(%rsp)
	movl	%ebx, 480(%rsp)
	jmp	.LBB2_36
.LBB2_35:                               # %psdf_read_string_param.exit121
	js	.LBB2_41
.LBB2_36:                               # %if.end.45
	leaq	488(%rsp), %rdx
	movq	$0, 488(%rsp)
	movl	$0, 496(%rsp)
	movl	$.L.str.18, %esi
	movq	%r13, %rdi
	callq	param_read_name_array
	movl	%eax, %ebp
	cmpl	$2, %ebp
	jb	.LBB2_39
# BB#37:                                # %sw.default.i.123
	movq	(%r13), %rax
	movl	$.L.str.18, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB2_38:                               # %if.end.47
	testl	%ebp, %ebp
	js	.LBB2_41
.LBB2_39:                               # %if.end.50
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	gdev_vector_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_41
# BB#40:                                # %if.end.54
	leaq	24(%rsp), %rsi
	movl	$480, %edx              # imm = 0x1E0
	movq	%r14, %rdi
	callq	memcpy
	xorl	%ebp, %ebp
.LBB2_41:                               # %cleanup
	movl	%ebp, %eax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_33:                               # %psdf_read_string_param.exit121.thread138
	movl	$-25, %ebp
	jmp	.LBB2_41
.Lfunc_end2:
	.size	gdev_psdf_put_params, .Lfunc_end2-gdev_psdf_put_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1065353216              # float 1
.LCPI3_1:
	.long	1092616192              # float 10
	.text
	.align	16, 0x90
	.type	psdf_put_image_params,@function
psdf_put_image_params:                  # @psdf_put_image_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 96
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	24(%rdi), %r13
	cmpq	$0, 56(%r12)
	je	.LBB3_1
# BB#2:                                 # %select.mid
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leaq	56(%r12), %rdx
	jmp	.LBB3_3
.LBB3_1:
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leaq	72(%r12), %rdx
.LBB3_3:                                # %select.end
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gs_param_read_items
	movq	(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB3_5
# BB#4:                                 # %if.then
	movl	$s_DCTE_template, %ecx
	movl	$psdf_DCT_put_params, %r8d
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%r13, %r9
	callq	psdf_put_image_dict_param
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB3_5:                                # %if.end.10
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB3_7
# BB#6:                                 # %if.then.12
	movzbl	(%rsi), %eax
	cmpl	$77, %eax
	movl	$s_CFE_template, %eax
	movl	$s_DCTE_template, %ecx
	cmoveq	%rax, %rcx
	movl	$psdf_CF_put_params, %eax
	movl	$psdf_DCT_put_params, %r8d
	cmoveq	%rax, %r8
	leaq	24(%r14), %rdx
	movq	%r15, %rdi
	movq	%r13, %r9
	callq	psdf_put_image_dict_param
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB3_7:                                # %if.end.25
	movq	16(%r12), %rsi
	movl	40(%r14), %eax
	movl	%eax, 36(%rsp)
	leaq	36(%rsp), %rdx
	movl	$DownsampleType_names, %ecx
	movq	%r15, %rdi
	movl	%ebp, %r8d
	callq	param_put_enum
	movl	%eax, %ebx
	movl	36(%rsp), %eax
	movl	%eax, 40(%r14)
	movq	40(%r12), %rsi
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB3_17
# BB#8:                                 # %if.end.25
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	testl	%ebp, %ebp
	jne	.LBB3_13
# BB#9:                                 # %sw.bb
	movq	32(%r12), %r13
	movq	(%r13), %rsi
	movl	$-15, %ebp
	testq	%rsi, %rsi
	je	.LBB3_13
# BB#10:
	leaq	16(%rsp), %rbx
	.align	16, 0x90
.LBB3_11:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	gs_param_string_eq
	testl	%eax, %eax
	jne	.LBB3_14
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	24(%r13), %rsi
	addq	$24, %r13
	testq	%rsi, %rsi
	jne	.LBB3_11
	jmp	.LBB3_13
.LBB3_14:                               # %while.end
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.LBB3_13
# BB#15:                                # %lor.lhs.false
	movl	16(%r13), %ecx
	movq	8(%rsp), %rdx           # 8-byte Reload
	cmpl	8848(%rdx), %ecx
	jbe	.LBB3_16
.LBB3_13:                               # %ipe
	movq	(%r15), %rax
	movq	40(%r12), %rsi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %ebx
.LBB3_17:                               # %sw.epilog
	testl	%ebx, %ebx
	js	.LBB3_26
# BB#18:                                # %if.then.49
	cmpl	$0, 56(%r14)
	jg	.LBB3_20
# BB#19:                                # %if.then.52
	movl	$1, 56(%r14)
.LBB3_20:                               # %if.end.54
	movss	36(%r14), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB3_22
# BB#21:                                # %if.end.54
	ucomiss	.LCPI3_1(%rip), %xmm0
	jbe	.LBB3_23
.LBB3_22:                               # %if.then.61
	movl	24(%r12), %eax
	movl	%eax, 36(%r14)
.LBB3_23:                               # %if.end.63
	movl	16(%r14), %eax
	incl	%eax
	cmpl	$9, %eax
	ja	.LBB3_25
# BB#24:                                # %if.end.63
	movl	$557, %ecx              # imm = 0x22D
	btl	%eax, %ecx
	jb	.LBB3_26
.LBB3_25:                               # %sw.default.64
	movl	$-1, 16(%r14)
.LBB3_26:                               # %cleanup.69
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_16:                               # %cleanup
	movq	%rax, 48(%r14)
	movq	8(%r13), %rax
	movq	%rax, 72(%r14)
	movl	4(%rsp), %ebx           # 4-byte Reload
	jmp	.LBB3_17
.Lfunc_end3:
	.size	psdf_put_image_params, .Lfunc_end3-psdf_put_image_params
	.cfi_endproc

	.align	16, 0x90
	.type	psdf_put_embed_param,@function
psdf_put_embed_param:                   # @psdf_put_embed_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 160
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	$4294967295, %r13d      # imm = 0xFFFFFFFF
	movq	%r8, %rdi
	callq	*32(%r8)
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	$0, 88(%rsp)
	movl	$0, 96(%rsp)
	leaq	88(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	param_read_name_array
	movl	%eax, %ebp
	cmpl	$2, %ebp
	jae	.LBB4_1
# BB#2:                                 # %if.end
	testl	%ebp, %ebp
	jne	.LBB4_20
# BB#3:                                 # %if.then.3
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	96(%rsp), %eax
	movl	$-1, %ebx
	cmpl	8(%r14), %eax
	jne	.LBB4_9
# BB#4:                                 # %for.cond.preheader
	testl	%eax, %eax
	movq	8(%rsp), %rbx           # 8-byte Reload
	je	.LBB4_20
# BB#5:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	movl	$8, %ebp
	.align	16, 0x90
.LBB4_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rax
	movq	(%r14), %rcx
	movq	-8(%rax,%rbp), %rdi
	movl	(%rax,%rbp), %esi
	movq	-8(%rcx,%rbp), %rdx
	movl	(%rcx,%rbp), %ecx
	callq	bytes_compare
	testl	%eax, %eax
	jne	.LBB4_8
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	incq	%rbx
	movl	96(%rsp), %eax
	addq	$16, %rbp
	cmpl	%eax, %ebx
	jb	.LBB4_6
	jmp	.LBB4_9
.LBB4_1:                                # %param_read_embed_array.exit
	movq	(%r12), %rax
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	jns	.LBB4_20
	jmp	.LBB4_39
.LBB4_8:                                # %for.body.if.end.15.loopexit_crit_edge
	movl	96(%rsp), %eax
.LBB4_9:                                # %if.end.15
	cmpl	%eax, %ebx
	movq	8(%rsp), %rbx           # 8-byte Reload
	je	.LBB4_20
# BB#10:                                # %if.else.19
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	8(%r14), %r12d
	movq	%r14, %r15
	xorl	%ecx, %ecx
	testl	%r12d, %r12d
	je	.LBB4_19
# BB#11:
	movq	(%r15), %rbx
	movl	%r12d, %ecx
	.align	16, 0x90
.LBB4_12:                               # %for.cond.2.preheader.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #       Child Loop BB4_14 Depth 3
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	%ecx, %r14d
	movq	%r14, 48(%rsp)          # 8-byte Spill
.LBB4_13:                               # %for.cond.2.preheader.i
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
	decl	%r12d
	.align	16, 0x90
.LBB4_14:                               # %for.cond.2.i
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%r14, %r14
	je	.LBB4_15
# BB#17:                                # %for.body.5.i
                                        #   in Loop: Header=BB4_14 Depth=3
	leal	(%r14,%r13), %ebp
	movq	(%r15), %rax
	andq	%r13, %rbp
	shlq	$4, %rbp
	movq	%r12, %rcx
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rdi
	movl	8(%rax,%rcx), %esi
	movq	(%rbx,%rbp), %rdx
	movl	8(%rbx,%rbp), %ecx
	callq	bytes_compare
	decq	%r14
	testl	%eax, %eax
	jne	.LBB4_14
	jmp	.LBB4_18
	.align	16, 0x90
.LBB4_15:                               # %for.cond.loopexit.i
                                        #   in Loop: Header=BB4_13 Depth=2
	testl	%r12d, %r12d
	movq	48(%rsp), %r14          # 8-byte Reload
	jne	.LBB4_13
	jmp	.LBB4_16
	.align	16, 0x90
.LBB4_18:                               # %if.then.10.i
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	(%rbx,%rbp), %r14
	leaq	8(%rbx,%rbp), %rax
	movq	(%r14), %rsi
	movl	(%rax), %edx
	movl	$.L.str.102, %ecx
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	gs_free_const_string
	movq	32(%rsp), %rcx          # 8-byte Reload
	decl	%ecx
	movq	%rcx, %rax
	shlq	$4, %rax
	movups	(%rbx,%rax), %xmm0
	movups	%xmm0, (%r14)
	testl	%r12d, %r12d
	jne	.LBB4_12
	jmp	.LBB4_19
.LBB4_16:
	movq	32(%rsp), %rcx          # 8-byte Reload
.LBB4_19:                               # %delete_embed.exit
	movq	%r15, %r14
	movl	%ecx, 8(%r14)
	leaq	88(%rsp), %rsi
	movq	%r14, %rdi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	merge_embed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	js	.LBB4_39
.LBB4_20:                               # %if.end.25
	movq	$0, 72(%rsp)
	movl	$0, 80(%rsp)
	leaq	72(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	param_read_name_array
	movl	%eax, %ebp
	cmpl	$2, %ebp
	jb	.LBB4_22
# BB#21:                                # %param_read_embed_array.exit15
	movq	(%r12), %rax
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	js	.LBB4_39
.LBB4_22:                               # %if.end.29
	incq	%r15
	cmpq	$0, 72(%rsp)
	je	.LBB4_33
# BB#23:                                # %if.then.32
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	8(%r14), %r15d
	movl	80(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB4_24
# BB#25:
	movq	(%r14), %rbp
	movq	%r14, 32(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB4_26:                               # %for.cond.2.preheader.lr.ph.i.24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_28 Depth 2
                                        #       Child Loop BB4_29 Depth 3
	movl	%r15d, %r14d
	movq	%r14, 48(%rsp)          # 8-byte Spill
.LBB4_28:                               # %for.cond.2.preheader.i.30
                                        #   Parent Loop BB4_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_29 Depth 3
	decl	%ebx
	.align	16, 0x90
.LBB4_29:                               # %for.cond.2.i.33
                                        #   Parent Loop BB4_26 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%r14, %r14
	je	.LBB4_27
# BB#30:                                # %for.body.5.i.41
                                        #   in Loop: Header=BB4_29 Depth=3
	leal	(%r14,%r13), %r12d
	movq	72(%rsp), %rax
	andq	%r13, %r12
	shlq	$4, %r12
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rdi
	movl	8(%rax,%rcx), %esi
	movq	(%rbp,%r12), %rdx
	movl	8(%rbp,%r12), %ecx
	callq	bytes_compare
	decq	%r14
	testl	%eax, %eax
	jne	.LBB4_29
	jmp	.LBB4_31
	.align	16, 0x90
.LBB4_27:                               # %for.cond.loopexit.i.26
                                        #   in Loop: Header=BB4_28 Depth=2
	testl	%ebx, %ebx
	movq	48(%rsp), %r14          # 8-byte Reload
	jne	.LBB4_28
	jmp	.LBB4_32
	.align	16, 0x90
.LBB4_31:                               # %if.then.10.i.48
                                        #   in Loop: Header=BB4_26 Depth=1
	leaq	(%rbp,%r12), %r14
	leaq	8(%rbp,%r12), %rax
	movq	(%r14), %rsi
	movl	(%rax), %edx
	movl	$.L.str.102, %ecx
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	gs_free_const_string
	decl	%r15d
	movq	%r15, %rax
	shlq	$4, %rax
	movups	(%rbp,%rax), %xmm0
	movups	%xmm0, (%r14)
	testl	%ebx, %ebx
	jne	.LBB4_26
	jmp	.LBB4_32
.LBB4_24:
	movq	%r14, 32(%rsp)          # 8-byte Spill
.LBB4_32:                               # %delete_embed.exit50
	movq	32(%rsp), %r14          # 8-byte Reload
	movl	%r15d, 8(%r14)
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
.LBB4_33:                               # %if.end.33
	movq	$0, 56(%rsp)
	movl	$0, 64(%rsp)
	leaq	56(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	param_read_name_array
	movl	%eax, %ebp
	cmpl	$2, %ebp
	jb	.LBB4_35
# BB#34:                                # %param_read_embed_array.exit59
	movq	(%r12), %rax
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	js	.LBB4_39
.LBB4_35:                               # %if.end.37
	cmpq	$0, 56(%rsp)
	je	.LBB4_37
# BB#36:                                # %if.then.40
	leaq	56(%rsp), %rsi
	movq	%r14, %rdi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	merge_embed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_39
.LBB4_37:                               # %if.end.45
	movq	(%r14), %rsi
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	je	.LBB4_39
# BB#38:                                # %if.then.48
	movl	8(%r14), %edx
	movl	$.L.str.101, %ecx
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	*16(%rdi)
	movq	%rax, (%r14)
.LBB4_39:                               # %cleanup.55
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	psdf_put_embed_param, .Lfunc_end4-psdf_put_embed_param
	.cfi_endproc

	.align	16, 0x90
	.type	psdf_put_image_dict_param,@function
psdf_put_image_dict_param:              # @psdf_put_image_dict_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 96
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	(%rbx), %r14
	movq	%r9, %rdi
	callq	*32(%r9)
	movq	%rax, %r15
	movq	(%rbp), %rax
	leaq	24(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*8(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_1
# BB#3:                                 # %sw.bb.5
	movq	%r14, (%rsp)            # 8-byte Spill
	movq	(%r12), %rsi
	movq	%r15, %rdi
	movq	%r15, %rbp
	movq	%r13, %rdx
	callq	s_alloc_state
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB5_4
# BB#5:                                 # %if.end
	movq	%r12, (%r14)
	movq	40(%r12), %rax
	testq	%rax, %rax
	je	.LBB5_7
# BB#6:                                 # %if.then.8
	movq	%r14, %rdi
	callq	*%rax
.LBB5_7:                                # %if.end.10
	movq	24(%rsp), %rdi
	movq	%r14, %rsi
	callq	*8(%rsp)                # 8-byte Folded Reload
	movl	%eax, %r15d
	movq	32(%r12), %rax
	testq	%rax, %rax
	je	.LBB5_9
# BB#8:                                 # %if.then.13
	movq	%r14, %rdi
	callq	*%rax
.LBB5_9:                                # %if.end.15
	movq	%rbp, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	*24(%r12)
	movl	%r15d, %ebp
	testl	%ebp, %ebp
	js	.LBB5_10
# BB#11:                                # %if.else
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	gs_c_param_list_alloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	movl	$-25, %r14d
	je	.LBB5_19
# BB#12:                                # %if.end.25
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_c_param_list_write
	movq	24(%rsp), %rsi
	movq	%rbp, %rdi
	callq	param_list_copy
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB5_14
# BB#13:                                # %if.then.29
	movq	%rbp, %rdi
	callq	gs_c_param_list_release
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	*24(%r12)
	movq	(%rbx), %rbp
.LBB5_14:                               # %cleanup.cont
	movq	16(%rsp), %r15          # 8-byte Reload
	jmp	.LBB5_15
.LBB5_1:                                # %entry
	cmpl	$1, %ebp
	movl	$0, %r14d
	je	.LBB5_19
# BB#2:                                 # %sw.default
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movq	%r13, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r14d
	jmp	.LBB5_19
.LBB5_4:
	movl	$-25, %r14d
	jmp	.LBB5_19
.LBB5_10:                               # %if.then.18
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r14d
	movq	(%rsp), %rbp            # 8-byte Reload
.LBB5_15:                               # %cleanup.cont
	movq	(%r15), %rax
	leaq	24(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*16(%rax)
	movq	(%rbx), %rdi
	cmpq	%rdi, %rbp
	je	.LBB5_19
# BB#16:                                # %if.then.37
	testq	%rdi, %rdi
	je	.LBB5_18
# BB#17:                                # %if.then.39
	callq	gs_c_param_list_release
.LBB5_18:                               # %if.end.40
	movq	%rbp, (%rbx)
.LBB5_19:                               # %cleanup.42
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	psdf_put_image_dict_param, .Lfunc_end5-psdf_put_image_dict_param
	.cfi_endproc

	.align	16, 0x90
	.type	psdf_DCT_put_params,@function
psdf_DCT_put_params:                    # @psdf_DCT_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$8, %edx
	movl	$8, %ecx
	movl	$3, %r8d
	xorl	%r9d, %r9d
	jmp	psdf_DCT_filter         # TAILCALL
.Lfunc_end6:
	.size	psdf_DCT_put_params, .Lfunc_end6-psdf_DCT_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	psdf_CF_put_params,@function
psdf_CF_put_params:                     # @psdf_CF_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp74:
	.cfi_def_cfa_offset 32
.Ltmp75:
	.cfi_offset %rbx, -24
.Ltmp76:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	*s_CFE_template+40(%rip)
	movl	$-1, 124(%rbx)
	movl	$1, 148(%rbx)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	s_CF_put_params         # TAILCALL
.Lfunc_end7:
	.size	psdf_CF_put_params, .Lfunc_end7-psdf_CF_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	merge_embed,@function
merge_embed:                            # @merge_embed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 96
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rdx, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	8(%r13), %esi
	addl	8(%rbx), %esi
	movl	$st_param_string_element, %edx
	movl	$.L.str.103, %ecx
	movq	%rax, %rdi
	callq	*104(%rax)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB8_13
# BB#1:                                 # %if.end
	movq	(%rbx), %rsi
	movl	8(%rbx), %edx
	shlq	$4, %rdx
	movq	%rbp, %rdi
	callq	memcpy
	movl	8(%rbx), %r14d
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	cmpl	$0, 8(%r13)
	je	.LBB8_2
# BB#3:                                 # %for.cond.2.preheader.lr.ph.i
	movq	%rbp, %rax
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	addq	$8, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB8_4:                                # %for.cond.2.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	movl	%r15d, %r15d
	testl	%r14d, %r14d
	movl	$0, %ebx
	je	.LBB8_8
# BB#5:                                 # %for.body.4.lr.ph.i
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	%r14d, %r12d
	movq	24(%rsp), %rbp          # 8-byte Reload
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_6:                                # %for.body.4.i
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13), %rax
	movq	%r15, %rcx
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rdi
	movl	8(%rax,%rcx), %esi
	movq	-8(%rbp), %rdx
	movl	(%rbp), %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB8_8
# BB#7:                                 # %for.inc.i
                                        #   in Loop: Header=BB8_6 Depth=2
	incq	%rbx
	addq	$16, %rbp
	cmpq	%r12, %rbx
	jb	.LBB8_6
.LBB8_8:                                # %for.end.i
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	%r14d, %ebx
	jne	.LBB8_11
# BB#9:                                 # %if.then.9.i
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	(%r13), %rax
	movq	%r15, %rbp
	shlq	$4, %rbp
	movl	8(%rax,%rbp), %ebx
	movl	$.L.str.107, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %esi
	callq	*136(%rdi)
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB8_14
# BB#10:                                # %cleanup.thread.i
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	(%r13), %rax
	movq	(%rax,%rbp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movl	%r14d, %eax
	shlq	$4, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%r12, (%rcx,%rax)
	movl	%ebx, 8(%rcx,%rax)
	movl	$0, 12(%rcx,%rax)
	incl	%r14d
.LBB8_11:                               # %for.inc.39.i
                                        #   in Loop: Header=BB8_4 Depth=1
	incl	%r15d
	cmpl	8(%r13), %r15d
	jb	.LBB8_4
	jmp	.LBB8_12
.LBB8_2:
	movq	%rbp, 16(%rsp)          # 8-byte Spill
.LBB8_12:                               # %if.end.12
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	(%rbx), %rsi
	movl	$.L.str.104, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	gs_free_const_object
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rbx)
	movl	%r14d, 8(%rbx)
	movl	$0, 12(%rbx)
	xorl	%eax, %eax
	jmp	.LBB8_13
.LBB8_14:                               # %if.then.10
	movl	$.L.str.103, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	$-25, %eax
.LBB8_13:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	merge_embed, .Lfunc_end8-merge_embed
	.cfi_endproc

	.align	16, 0x90
	.type	param_string_elt_enum_ptrs,@function
param_string_elt_enum_ptrs:             # @param_string_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %edi
	xorl	%eax, %eax
	shrl	$4, %edi
	je	.LBB9_3
# BB#1:                                 # %if.end
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB9_3
# BB#2:                                 # %sw.bb.i
	shlq	$4, %rdx
	movq	(%rsi,%rdx), %rax
	movq	%rax, (%r8)
	movl	8(%rsi,%rdx), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
.LBB9_3:                                # %cleanup
	retq
.Lfunc_end9:
	.size	param_string_elt_enum_ptrs, .Lfunc_end9-param_string_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	param_string_elt_reloc_ptrs,@function
param_string_elt_reloc_ptrs:            # @param_string_elt_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp94:
	.cfi_def_cfa_offset 64
.Ltmp95:
	.cfi_offset %rbx, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	$-16, %ebp
	je	.LBB10_3
# BB#1:                                 # %for.body.lr.ph
	shrl	$4, %ebp
	negl	%ebp
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	%rax, 8(%rsp)
	movl	8(%rbx), %eax
	movl	%eax, 16(%rsp)
	movq	(%r14), %rax
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	movq	8(%rsp), %rax
	movq	%rax, (%rbx)
	addq	$16, %rbx
	incl	%ebp
	jne	.LBB10_2
.LBB10_3:                               # %for.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	param_string_elt_reloc_ptrs, .Lfunc_end10-param_string_elt_reloc_ptrs
	.cfi_endproc

	.type	psdf_param_items,@object # @psdf_param_items
	.section	.rodata,"a",@progbits
	.align	16
psdf_param_items:
	.quad	.L.str.19
	.byte	1                       # 0x1
	.zero	1
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.byte	1                       # 0x1
	.zero	1
	.short	12                      # 0xc
	.zero	4
	.quad	.L.str.21
	.byte	1                       # 0x1
	.zero	1
	.short	20                      # 0x14
	.zero	4
	.quad	.L.str.22
	.byte	1                       # 0x1
	.zero	1
	.short	24                      # 0x18
	.zero	4
	.quad	.L.str.23
	.byte	3                       # 0x3
	.zero	1
	.short	32                      # 0x20
	.zero	4
	.quad	.L.str.24
	.byte	1                       # 0x1
	.zero	1
	.short	44                      # 0x2c
	.zero	4
	.quad	.L.str.25
	.byte	2                       # 0x2
	.zero	1
	.short	48                      # 0x30
	.zero	4
	.quad	.L.str.26
	.byte	1                       # 0x1
	.zero	1
	.short	132                     # 0x84
	.zero	4
	.quad	.L.str.27
	.byte	1                       # 0x1
	.zero	1
	.short	52                      # 0x34
	.zero	4
	.quad	.L.str.28
	.byte	1                       # 0x1
	.zero	1
	.short	136                     # 0x88
	.zero	4
	.quad	.L.str.14
	.byte	1                       # 0x1
	.zero	1
	.short	56                      # 0x38
	.zero	4
	.quad	.L.str.29
	.byte	1                       # 0x1
	.zero	1
	.short	232                     # 0xe8
	.zero	4
	.quad	.L.str.30
	.byte	1                       # 0x1
	.zero	1
	.short	236                     # 0xec
	.zero	4
	.quad	.L.str.31
	.byte	1                       # 0x1
	.zero	1
	.short	436                     # 0x1b4
	.zero	4
	.quad	.L.str.32
	.byte	2                       # 0x2
	.zero	1
	.short	440                     # 0x1b8
	.zero	4
	.quad	.L.str.33
	.byte	1                       # 0x1
	.zero	1
	.short	444                     # 0x1bc
	.zero	4
	.zero	16
	.size	psdf_param_items, 272

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AutoRotatePages"
	.size	.L.str, 16

	.type	AutoRotatePages_names,@object # @AutoRotatePages_names
	.section	.rodata,"a",@progbits
	.align	16
AutoRotatePages_names:
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	0
	.size	AutoRotatePages_names, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Binding"
	.size	.L.str.1, 8

	.type	Binding_names,@object   # @Binding_names
	.section	.rodata,"a",@progbits
	.align	16
Binding_names:
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	0
	.size	Binding_names, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"DefaultRenderingIntent"
	.size	.L.str.2, 23

	.type	DefaultRenderingIntent_names,@object # @DefaultRenderingIntent_names
	.section	.rodata,"a",@progbits
	.align	16
DefaultRenderingIntent_names:
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	0
	.size	DefaultRenderingIntent_names, 48

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"TransferFunctionInfo"
	.size	.L.str.3, 21

	.type	TransferFunctionInfo_names,@object # @TransferFunctionInfo_names
	.section	.rodata,"a",@progbits
	.align	16
TransferFunctionInfo_names:
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	0
	.size	TransferFunctionInfo_names, 32

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"UCRandBGInfo"
	.size	.L.str.4, 13

	.type	UCRandBGInfo_names,@object # @UCRandBGInfo_names
	.section	.rodata,"a",@progbits
	.align	16
UCRandBGInfo_names:
	.quad	.L.str.44
	.quad	.L.str.46
	.quad	0
	.size	UCRandBGInfo_names, 24

	.type	Color_names15,@object   # @Color_names15
	.align	8
Color_names15:
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.long	1069547520              # float 1.5
	.zero	4
	.quad	Poly_filters
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.byte	1                       # 0x1
	.zero	1
	.short	12                      # 0xc
	.zero	4
	.quad	.L.str.56
	.byte	1                       # 0x1
	.zero	1
	.short	8                       # 0x8
	.zero	4
	.quad	.L.str.57
	.byte	2                       # 0x2
	.zero	1
	.short	16                      # 0x10
	.zero	4
	.quad	.L.str.58
	.byte	1                       # 0x1
	.zero	1
	.short	32                      # 0x20
	.zero	4
	.quad	.L.str.59
	.byte	4                       # 0x4
	.zero	1
	.short	36                      # 0x24
	.zero	4
	.quad	.L.str.60
	.byte	1                       # 0x1
	.zero	1
	.short	44                      # 0x2c
	.zero	4
	.quad	.L.str.61
	.byte	2                       # 0x2
	.zero	1
	.short	56                      # 0x38
	.zero	4
	.quad	.L.str.54
	.byte	2                       # 0x2
	.zero	1
	.short	64                      # 0x40
	.zero	4
	.zero	16
	.size	Color_names15, 200

	.type	Color_names,@object     # @Color_names
	.align	8
Color_names:
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.long	1069547520              # float 1.5
	.zero	4
	.quad	Poly_filters
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.55
	.byte	1                       # 0x1
	.zero	1
	.short	12                      # 0xc
	.zero	4
	.quad	.L.str.56
	.byte	1                       # 0x1
	.zero	1
	.short	8                       # 0x8
	.zero	4
	.quad	.L.str.57
	.byte	2                       # 0x2
	.zero	1
	.short	16                      # 0x10
	.zero	4
	.quad	.L.str.58
	.byte	1                       # 0x1
	.zero	1
	.short	32                      # 0x20
	.zero	4
	.quad	.L.str.59
	.byte	4                       # 0x4
	.zero	1
	.short	36                      # 0x24
	.zero	4
	.quad	.L.str.60
	.byte	1                       # 0x1
	.zero	1
	.short	44                      # 0x2c
	.zero	4
	.quad	.L.str.61
	.byte	2                       # 0x2
	.zero	1
	.short	56                      # 0x38
	.zero	4
	.quad	0
	.byte	2                       # 0x2
	.zero	1
	.short	64                      # 0x40
	.zero	4
	.zero	16
	.size	Color_names, 200

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ColorConversionStrategy"
	.size	.L.str.5, 24

	.type	ColorConversionStrategy_names,@object # @ColorConversionStrategy_names
	.section	.rodata,"a",@progbits
	.align	16
ColorConversionStrategy_names:
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	0
	.size	ColorConversionStrategy_names, 80

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"CalCMYKProfile"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CalGrayProfile"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"CalRGBProfile"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sRGBProfile"
	.size	.L.str.9, 12

	.type	Gray_names15,@object    # @Gray_names15
	.section	.rodata,"a",@progbits
	.align	8
Gray_names15:
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.long	1073741824              # float 2
	.zero	4
	.quad	Poly_filters
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.byte	1                       # 0x1
	.zero	1
	.short	12                      # 0xc
	.zero	4
	.quad	.L.str.80
	.byte	1                       # 0x1
	.zero	1
	.short	8                       # 0x8
	.zero	4
	.quad	.L.str.81
	.byte	2                       # 0x2
	.zero	1
	.short	16                      # 0x10
	.zero	4
	.quad	.L.str.82
	.byte	1                       # 0x1
	.zero	1
	.short	32                      # 0x20
	.zero	4
	.quad	.L.str.83
	.byte	4                       # 0x4
	.zero	1
	.short	36                      # 0x24
	.zero	4
	.quad	.L.str.84
	.byte	1                       # 0x1
	.zero	1
	.short	44                      # 0x2c
	.zero	4
	.quad	.L.str.85
	.byte	2                       # 0x2
	.zero	1
	.short	56                      # 0x38
	.zero	4
	.quad	.L.str.78
	.byte	2                       # 0x2
	.zero	1
	.short	64                      # 0x40
	.zero	4
	.zero	16
	.size	Gray_names15, 200

	.type	Gray_names,@object      # @Gray_names
	.align	8
Gray_names:
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.long	1073741824              # float 2
	.zero	4
	.quad	Poly_filters
	.quad	.L.str.77
	.quad	0
	.quad	.L.str.79
	.byte	1                       # 0x1
	.zero	1
	.short	12                      # 0xc
	.zero	4
	.quad	.L.str.80
	.byte	1                       # 0x1
	.zero	1
	.short	8                       # 0x8
	.zero	4
	.quad	.L.str.81
	.byte	2                       # 0x2
	.zero	1
	.short	16                      # 0x10
	.zero	4
	.quad	.L.str.82
	.byte	1                       # 0x1
	.zero	1
	.short	32                      # 0x20
	.zero	4
	.quad	.L.str.83
	.byte	4                       # 0x4
	.zero	1
	.short	36                      # 0x24
	.zero	4
	.quad	.L.str.84
	.byte	1                       # 0x1
	.zero	1
	.short	44                      # 0x2c
	.zero	4
	.quad	.L.str.85
	.byte	2                       # 0x2
	.zero	1
	.short	56                      # 0x38
	.zero	4
	.quad	0
	.byte	2                       # 0x2
	.zero	1
	.short	64                      # 0x40
	.zero	4
	.zero	16
	.size	Gray_names, 200

	.type	Mono_names,@object      # @Mono_names
	.align	8
Mono_names:
	.quad	0
	.quad	.L.str.86
	.quad	.L.str.87
	.long	1073741824              # float 2
	.zero	4
	.quad	Mono_filters
	.quad	.L.str.88
	.quad	0
	.quad	0
	.byte	1                       # 0x1
	.zero	1
	.short	12                      # 0xc
	.zero	4
	.quad	.L.str.89
	.byte	1                       # 0x1
	.zero	1
	.short	8                       # 0x8
	.zero	4
	.quad	.L.str.90
	.byte	2                       # 0x2
	.zero	1
	.short	16                      # 0x10
	.zero	4
	.quad	.L.str.91
	.byte	1                       # 0x1
	.zero	1
	.short	32                      # 0x20
	.zero	4
	.quad	.L.str.92
	.byte	4                       # 0x4
	.zero	1
	.short	36                      # 0x24
	.zero	4
	.quad	.L.str.93
	.byte	1                       # 0x1
	.zero	1
	.short	44                      # 0x2c
	.zero	4
	.quad	.L.str.94
	.byte	2                       # 0x2
	.zero	1
	.short	56                      # 0x38
	.zero	4
	.quad	0
	.byte	2                       # 0x2
	.zero	1
	.short	64                      # 0x40
	.zero	4
	.zero	16
	.size	Mono_names, 200

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	".AlwaysEmbed"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	".NeverEmbed"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"CannotEmbedFontPolicy"
	.size	.L.str.12, 22

	.type	CannotEmbedFontPolicy_names,@object # @CannotEmbedFontPolicy_names
	.section	.rodata,"a",@progbits
	.align	16
CannotEmbedFontPolicy_names:
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	0
	.size	CannotEmbedFontPolicy_names, 32

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"LockDistillerParams"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"UseFlateCompression"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"~AlwaysEmbed"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"~NeverEmbed"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"PSDocOptions"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"PSPageOptions"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ASCII85EncodePages"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"CompressPages"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"DetectBlends"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"DoThumbnails"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"ImageMemory"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"LZWEncodePages"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"OPM"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"PreserveHalftoneInfo"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"PreserveOPIComments"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"PreserveOverprintSettings"
	.size	.L.str.28, 26

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"ConvertCMYKImagesToRGB"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"ConvertImagesToIndexed"
	.size	.L.str.30, 23

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"EmbedAllFonts"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"MaxSubsetPct"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"SubsetFonts"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"None"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"All"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"PageByPage"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Left"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Right"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Default"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Perceptual"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Saturation"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"RelativeColorimetric"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"AbsoluteColorimetric"
	.size	.L.str.43, 21

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Preserve"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Apply"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Remove"
	.size	.L.str.46, 7

	.type	DownsampleType_names,@object # @DownsampleType_names
	.section	.rodata,"a",@progbits
	.align	16
DownsampleType_names:
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	0
	.size	DownsampleType_names, 32

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"Average"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Bicubic"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Subsample"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"ColorACSImageDict"
	.size	.L.str.50, 18

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"ColorImageDict"
	.size	.L.str.51, 15

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"ColorImageDownsampleType"
	.size	.L.str.52, 25

	.type	Poly_filters,@object    # @Poly_filters
	.section	.rodata,"a",@progbits
	.align	16
Poly_filters:
	.quad	.L.str.62
	.quad	s_DCTE_template
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.63
	.quad	s_zlibE_template
	.long	3010                    # 0xbc2
	.zero	4
	.quad	.L.str.64
	.quad	s_LZWE_template
	.long	0                       # 0x0
	.zero	4
	.zero	24
	.size	Poly_filters, 96

	.type	.L.str.53,@object       # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"ColorImageFilter"
	.size	.L.str.53, 17

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"ColorAutoFilterStrategy"
	.size	.L.str.54, 24

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"AutoFilterColorImages"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"AntiAliasColorImages"
	.size	.L.str.56, 21

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"ColorImageDepth"
	.size	.L.str.57, 16

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"DownsampleColorImages"
	.size	.L.str.58, 22

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"ColorImageDownsampleThreshold"
	.size	.L.str.59, 30

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"EncodeColorImages"
	.size	.L.str.60, 18

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"ColorImageResolution"
	.size	.L.str.61, 21

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"DCTEncode"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"FlateEncode"
	.size	.L.str.63, 12

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"LZWEncode"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"LeaveColorUnchanged"
	.size	.L.str.65, 20

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"UseDeviceDependentColor"
	.size	.L.str.66, 24

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"UseDeviceIndependentColor"
	.size	.L.str.67, 26

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"UseDeviceIndependentColorForImages"
	.size	.L.str.68, 35

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"sRGB"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"CMYK"
	.size	.L.str.70, 5

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Gray"
	.size	.L.str.71, 5

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"RGB"
	.size	.L.str.72, 4

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"ByObjectType"
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"GrayACSImageDict"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"GrayImageDict"
	.size	.L.str.75, 14

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"GrayImageDownsampleType"
	.size	.L.str.76, 24

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"GrayImageFilter"
	.size	.L.str.77, 16

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"GrayAutoFilterStrategy"
	.size	.L.str.78, 23

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"AutoFilterGrayImages"
	.size	.L.str.79, 21

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"AntiAliasGrayImages"
	.size	.L.str.80, 20

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"GrayImageDepth"
	.size	.L.str.81, 15

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"DownsampleGrayImages"
	.size	.L.str.82, 21

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"GrayImageDownsampleThreshold"
	.size	.L.str.83, 29

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"EncodeGrayImages"
	.size	.L.str.84, 17

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"GrayImageResolution"
	.size	.L.str.85, 20

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"MonoImageDict"
	.size	.L.str.86, 14

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"MonoImageDownsampleType"
	.size	.L.str.87, 24

	.type	Mono_filters,@object    # @Mono_filters
	.section	.rodata,"a",@progbits
	.align	16
Mono_filters:
	.quad	.L.str.95
	.quad	s_CFE_template
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.63
	.quad	s_zlibE_template
	.long	3010                    # 0xbc2
	.zero	4
	.quad	.L.str.64
	.quad	s_LZWE_template
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.96
	.quad	s_RLE_template
	.long	0                       # 0x0
	.zero	4
	.zero	24
	.size	Mono_filters, 120

	.type	.L.str.88,@object       # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"MonoImageFilter"
	.size	.L.str.88, 16

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"AntiAliasMonoImages"
	.size	.L.str.89, 20

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"MonoImageDepth"
	.size	.L.str.90, 15

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"DownsampleMonoImages"
	.size	.L.str.91, 21

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"MonoImageDownsampleThreshold"
	.size	.L.str.92, 29

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"EncodeMonoImages"
	.size	.L.str.93, 17

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"MonoImageResolution"
	.size	.L.str.94, 20

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"CCITTFaxEncode"
	.size	.L.str.95, 15

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"RunLengthEncode"
	.size	.L.str.96, 16

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"OK"
	.size	.L.str.97, 3

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Warning"
	.size	.L.str.98, 8

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Error"
	.size	.L.str.99, 6

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"psdf_read_string_param"
	.size	.L.str.100, 23

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"psdf_put_embed_param(resize)"
	.size	.L.str.101, 29

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"delete_embed"
	.size	.L.str.102, 13

	.type	st_param_string_element,@object # @st_param_string_element
	.section	.rodata,"a",@progbits
	.align	8
st_param_string_element:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.105
	.quad	0
	.quad	0
	.quad	param_string_elt_enum_ptrs
	.quad	param_string_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_param_string_element, 64

	.type	.L.str.103,@object      # @.str.103
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.103:
	.asciz	"psdf_put_embed_param(update)"
	.size	.L.str.103, 29

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"psdf_put_embed_param(free)"
	.size	.L.str.104, 27

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"gs_param_string[]"
	.size	.L.str.105, 18

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"add_embed"
	.size	.L.str.107, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
