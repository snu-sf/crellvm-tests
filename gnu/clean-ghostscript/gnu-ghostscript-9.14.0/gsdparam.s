	.text
	.file	"gsdparam.bc"
	.globl	gs_get_device_or_hw_params
	.align	16, 0x90
	.type	gs_get_device_or_hw_params,@function
gs_get_device_or_hw_params:             # @gs_get_device_or_hw_params
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 24(%rbx)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	%rbx, (%rsp)
	movq	%rbx, %rdi
	jmp	.LBB0_4
.LBB0_2:                                # %if.else
	movq	8(%r14), %rdx
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_copydevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_15
# BB#3:                                 # %if.else.if.end.3_crit_edge
	movq	(%rsp), %rdi
.LBB0_4:                                # %if.end.3
	callq	gx_device_set_procs
	movq	(%rsp), %rdi
	cmpq	$0, 1248(%rdi)
	jne	.LBB0_6
# BB#5:                                 # %if.then.5
	movq	$gx_default_get_params, 1248(%rdi)
	movq	(%rsp), %rdi
.LBB0_6:                                # %if.end.8
	cmpq	$0, 1296(%rdi)
	jne	.LBB0_8
# BB#7:                                 # %if.then.11
	movq	$gx_default_get_page_device, 1296(%rdi)
	movq	(%rsp), %rdi
.LBB0_8:                                # %if.end.14
	cmpq	$0, 1304(%rdi)
	jne	.LBB0_10
# BB#9:                                 # %if.then.17
	movq	$gx_default_get_alpha_bits, 1304(%rdi)
	movq	(%rsp), %rdi
.LBB0_10:                               # %if.end.20
	movq	%r14, %rsi
	testl	%r15d, %r15d
	je	.LBB0_12
# BB#11:                                # %cond.true
	callq	*1472(%rdi)
	jmp	.LBB0_13
.LBB0_12:                               # %cond.false
	callq	*1248(%rdi)
.LBB0_13:                               # %cond.end
	movl	%eax, %ebp
	movq	(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_15
# BB#14:                                # %if.then.28
	xorl	%esi, %esi
	callq	gx_device_retain
.LBB0_15:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_get_device_or_hw_params, .Lfunc_end0-gs_get_device_or_hw_params
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
.LCPI1_1:
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
.LCPI1_2:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	gx_default_get_params
	.align	16, 0x90
	.type	gx_default_get_params,@function
gx_default_get_params:                  # @gx_default_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$1288, %rsp             # imm = 0x508
.Ltmp15:
	.cfi_def_cfa_offset 1344
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
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$0, 1284(%rsp)
	movl	$1, 1084(%rsp)
	movl	$0, 1080(%rsp)
	movl	$0, 1076(%rsp)
	movl	$1, 1072(%rsp)
	movl	$1, 1068(%rsp)
	movb	$0, 983(%rsp)
	movl	100(%r12), %eax
	movl	%eax, 976(%rsp)
	movl	96(%r12), %eax
	movl	%eax, 972(%rsp)
	movzwl	108(%r12), %eax
	movl	%eax, 968(%rsp)
	movl	112(%r12), %eax
	incl	%eax
	movl	%eax, 964(%rsp)
	movq	16(%r12), %rdi
	movq	%rdi, 1264(%rsp)
	callq	strlen
	movl	%eax, 1272(%rsp)
	movl	$1, 1276(%rsp)
	movq	784(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	cmpb	$0, (%rdi)
	je	.LBB1_3
# BB#2:                                 # %if.then
	movq	%rdi, 1248(%rsp)
	callq	strlen
	movl	%eax, 1256(%rsp)
	movl	$1, 1260(%rsp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movq	$0, 1248(%rsp)
.LBB1_4:                                # %if.end
	leaq	884(%r12), %rax
	movq	%rax, 1016(%rsp)
	movl	$2, 1024(%rsp)
	movl	$0, 1028(%rsp)
	leaq	856(%r12), %rax
	movq	%rax, 1048(%rsp)
	movl	$2, 1056(%rsp)
	movl	$0, 1060(%rsp)
	leaq	864(%r12), %rax
	movq	%rax, 1032(%rsp)
	movl	$4, 1040(%rsp)
	movl	$0, 1044(%rsp)
	leaq	900(%r12), %rax
	movq	%rax, 1000(%rsp)
	movl	$2, 1008(%rsp)
	movl	$0, 1012(%rsp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 984(%rsp)
	movl	832(%r12), %eax
	movl	%eax, 956(%rsp)
	movl	836(%r12), %eax
	movl	%eax, 960(%rsp)
	leaq	956(%rsp), %rax
	movq	%rax, 936(%rsp)
	movl	$2, 944(%rsp)
	movl	$0, 948(%rsp)
	leaq	908(%r12), %rax
	movq	%rax, 920(%rsp)
	movl	$4, 928(%rsp)
	movl	$0, 932(%rsp)
	leaq	892(%r12), %rax
	movq	%rax, 904(%rsp)
	movq	$2, 912(%rsp)
	movq	1680(%r12), %rax
	testq	%rax, %rax
	je	.LBB1_5
# BB#6:                                 # %if.then.52
	leaq	896(%rsp), %rsi
	movq	%r12, %rdi
	callq	*%rax
	movq	896(%rsp), %r13
	testq	%r13, %r13
	jne	.LBB1_8
# BB#7:                                 # %if.then.58
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	gsicc_init_device_profile_struct
	leaq	896(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	movq	896(%rsp), %r13
.LBB1_8:                                # %for.cond.preheader
	xorl	%ebp, %ebp
	movl	$32, %ebx
	leaq	983(%rsp), %r15
	.align	16, 0x90
.LBB1_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbp,2), %rax
	testq	%rax, %rax
	je	.LBB1_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	320(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB1_11
# BB#12:                                # %if.else.96
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%rdi, 1184(%rsp,%rbp,4)
	callq	strlen
	movl	%eax, 1192(%rsp,%rbp,4)
	movl	$1, 1196(%rsp,%rbp,4)
	movl	-8(%r13,%rbx,2), %eax
	movl	%eax, 1120(%rsp,%rbp)
	movl	-4(%r13,%rbx,2), %eax
	movl	%eax, 1104(%rsp,%rbp)
	movl	(%r13,%rbx,2), %eax
	movl	%eax, 1088(%rsp,%rbp)
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_11:                               # %if.then.74
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%r15, 1184(%rsp,%rbp,4)
	movq	%r15, %rdi
	callq	strlen
	movl	%eax, 1192(%rsp,%rbp,4)
	movl	$1, 1196(%rsp,%rbp,4)
	movl	$8, 1120(%rsp,%rbp)
	movl	$8, 1104(%rsp,%rbp)
	movl	$8, 1088(%rsp,%rbp)
.LBB1_13:                               # %for.inc
                                        #   in Loop: Header=BB1_9 Depth=1
	addq	$4, %rbp
	addq	$12, %rbx
	cmpq	$16, %rbp
	jne	.LBB1_9
# BB#14:                                # %for.end
	movq	32(%r13), %rax
	testq	%rax, %rax
	je	.LBB1_15
# BB#16:                                # %if.else.141
	movq	320(%rax), %rdi
	movq	%rdi, 1168(%rsp)
	jmp	.LBB1_17
.LBB1_5:                                # %for.cond.209.preheader
	leaq	983(%rsp), %rbx
	movq	%rbx, 1184(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 1192(%rsp)
	movl	$1, 1196(%rsp)
	movl	$8, 1120(%rsp)
	movl	$8, 1104(%rsp)
	movl	$8, 1088(%rsp)
	movq	%rbx, 1200(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 1208(%rsp)
	movl	$1, 1212(%rsp)
	movl	$8, 1124(%rsp)
	movl	$8, 1108(%rsp)
	movl	$8, 1092(%rsp)
	movq	%rbx, 1216(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 1224(%rsp)
	movl	$1, 1228(%rsp)
	movl	$8, 1128(%rsp)
	movl	$8, 1112(%rsp)
	movl	$8, 1096(%rsp)
	movq	%rbx, 1232(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 1240(%rsp)
	movl	$1, 1244(%rsp)
	movl	$8, 1132(%rsp)
	movl	$8, 1116(%rsp)
	movl	$8, 1100(%rsp)
	movq	%rbx, 1168(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 1176(%rsp)
	movl	$1, 1180(%rsp)
	movq	%rbx, 1152(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 1160(%rsp)
	movl	$1, 1164(%rsp)
	movq	%rbx, 1136(%rsp)
	movq	%rbx, %rdi
	jmp	.LBB1_24
.LBB1_15:                               # %if.then.133
	movq	%r15, 1168(%rsp)
	movq	%r15, %rdi
.LBB1_17:                               # %if.end.150
	callq	strlen
	movl	%eax, 1176(%rsp)
	movl	$1, 1180(%rsp)
	movq	40(%r13), %rax
	testq	%rax, %rax
	je	.LBB1_18
# BB#19:                                # %if.else.162
	movq	320(%rax), %rdi
	movq	%rdi, 1152(%rsp)
	jmp	.LBB1_20
.LBB1_18:                               # %if.then.154
	movq	%r15, 1152(%rsp)
	movq	%r15, %rdi
.LBB1_20:                               # %if.end.171
	callq	strlen
	movl	%eax, 1160(%rsp)
	movl	$1, 1164(%rsp)
	movl	152(%r13), %eax
	movl	%eax, 1084(%rsp)
	movl	156(%r13), %eax
	movl	%eax, 1080(%rsp)
	movl	164(%r13), %eax
	movl	%eax, 1076(%rsp)
	movl	172(%r13), %eax
	movl	%eax, 1072(%rsp)
	movl	184(%r13), %eax
	movl	%eax, 1068(%rsp)
	cmpq	$0, 176(%r13)
	je	.LBB1_23
# BB#21:                                # %if.else.187
	movq	%r13, %rdi
	callq	gsicc_get_dev_icccolorants
	testq	%rax, %rax
	je	.LBB1_23
# BB#22:                                # %if.then.191
	movq	%rax, 1136(%rsp)
	movq	%rax, %rdi
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.198
	movq	%r15, 1136(%rsp)
	movq	%r15, %rdi
.LBB1_24:                               # %if.end.258
	callq	strlen
	movl	%eax, 1144(%rsp)
	movl	$1, 1148(%rsp)
	leaq	1264(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%r14, %rdi
	callq	param_write_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#25:                                # %lor.lhs.false.262
	leaq	1048(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#26:                                # %lor.lhs.false.266
	cmpq	$0, 1248(%rsp)
	je	.LBB1_28
# BB#27:                                # %cond.end
	leaq	1248(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_write_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
.LBB1_28:                               # %lor.lhs.false.273
	leaq	1016(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#29:                                # %lor.lhs.false.277
	cmpl	$0, 880(%r12)
	je	.LBB1_31
# BB#30:                                # %cond.true.278
	leaq	1032(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	jmp	.LBB1_32
.LBB1_31:                               # %cond.false.280
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB1_32:                               # %cond.end.282
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#33:                                # %lor.lhs.false.286
	leaq	1000(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#34:                                # %lor.lhs.false.290
	leaq	972(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#35:                                # %lor.lhs.false.294
	cmpl	$0, 948(%r12)
	js	.LBB1_41
# BB#36:                                # %lor.lhs.false.297
	movq	%r12, %rdi
	callq	*1296(%r12)
	testq	%rax, %rax
	je	.LBB1_41
# BB#37:                                # %cond.false.303
	cmpl	$0, 948(%r12)
	je	.LBB1_39
# BB#38:                                # %cond.true.306
	leaq	944(%r12), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_int
	jmp	.LBB1_40
.LBB1_39:                               # %cond.false.308
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB1_40:                               # %cond.end.312
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
.LBB1_41:                               # %lor.lhs.false.316
	leaq	984(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_write_name_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#42:                                # %lor.lhs.false.320
	leaq	1284(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#43:                                # %lor.lhs.false.324
	leaq	956(%r12), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#44:                                # %lor.lhs.false.328
	leaq	1084(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#45:                                # %lor.lhs.false.332
	leaq	1080(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#46:                                # %lor.lhs.false.336
	leaq	1076(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#47:                                # %lor.lhs.false.340
	leaq	1072(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#48:                                # %lor.lhs.false.344
	leaq	1068(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#49:                                # %lor.lhs.false.348
	leaq	1184(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#50:                                # %lor.lhs.false.353
	leaq	1200(%rsp), %rdx
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#51:                                # %lor.lhs.false.358
	leaq	1216(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#52:                                # %lor.lhs.false.363
	leaq	1232(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#53:                                # %lor.lhs.false.368
	leaq	1168(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#54:                                # %lor.lhs.false.372
	leaq	1152(%rsp), %rdx
	movl	$.L.str.21, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#55:                                # %lor.lhs.false.376
	leaq	1136(%rsp), %rdx
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#56:                                # %lor.lhs.false.380
	leaq	1120(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#57:                                # %lor.lhs.false.385
	leaq	1124(%rsp), %rdx
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#58:                                # %lor.lhs.false.390
	leaq	1128(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#59:                                # %lor.lhs.false.395
	leaq	1132(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#60:                                # %lor.lhs.false.400
	leaq	1104(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#61:                                # %lor.lhs.false.405
	leaq	1108(%rsp), %rdx
	movl	$.L.str.28, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#62:                                # %lor.lhs.false.410
	leaq	1112(%rsp), %rdx
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#63:                                # %lor.lhs.false.415
	leaq	1116(%rsp), %rdx
	movl	$.L.str.30, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#64:                                # %lor.lhs.false.420
	leaq	1088(%rsp), %rdx
	movl	$.L.str.31, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#65:                                # %lor.lhs.false.425
	leaq	1092(%rsp), %rdx
	movl	$.L.str.32, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#66:                                # %lor.lhs.false.430
	leaq	1096(%rsp), %rdx
	movl	$.L.str.33, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#67:                                # %lor.lhs.false.435
	leaq	1100(%rsp), %rdx
	movl	$.L.str.34, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#68:                                # %lor.lhs.false.440
	leaq	936(%rsp), %rdx
	movl	$.L.str.35, %esi
	movq	%r14, %rdi
	callq	param_write_int_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#69:                                # %lor.lhs.false.444
	leaq	920(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#70:                                # %lor.lhs.false.448
	leaq	904(%rsp), %rdx
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#71:                                # %lor.lhs.false.452
	leaq	1048(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#72:                                # %lor.lhs.false.456
	leaq	1264(%rsp), %rdx
	movl	$.L.str.39, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#73:                                # %lor.lhs.false.460
	leaq	976(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#74:                                # %lor.lhs.false.464
	leaq	968(%rsp), %rdx
	movl	$.L.str.41, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#75:                                # %lor.lhs.false.468
	leaq	964(%rsp), %rdx
	movl	$.L.str.42, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#76:                                # %lor.lhs.false.472
	leaq	928(%r12), %rdx
	movl	$.L.str.43, %esi
	movq	%r14, %rdi
	callq	param_write_long
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#77:                                # %lor.lhs.false.476
	leaq	952(%r12), %rdx
	movl	$.L.str.44, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#78:                                # %lor.lhs.false.480
	movq	%r12, %rdx
	subq	$-128, %rdx
	movl	$.L.str.45, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#79:                                # %lor.lhs.false.485
	leaq	132(%r12), %rdx
	movl	$.L.str.46, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#80:                                # %lor.lhs.false.491
	leaq	960(%r12), %rdx
	movl	$.L.str.47, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#81:                                # %lor.lhs.false.495
	leaq	1052(%r12), %rdx
	movl	$.L.str.48, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#82:                                # %lor.lhs.false.499
	leaq	1056(%r12), %rdx
	movl	$.L.str.49, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#83:                                # %lor.lhs.false.503
	leaq	1064(%r12), %rdx
	movl	$.L.str.50, %esi
	movq	%r14, %rdi
	callq	param_write_long
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#84:                                # %lor.lhs.false.507
	leaq	1088(%r12), %rdx
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	param_write_long
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#85:                                # %lor.lhs.false.512
	leaq	1084(%r12), %rdx
	movl	$.L.str.52, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#86:                                # %lor.lhs.false.518
	leaq	1080(%r12), %rdx
	movl	$.L.str.53, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#87:                                # %lor.lhs.false.524
	leaq	1072(%r12), %rdx
	movl	$.L.str.54, %esi
	movq	%r14, %rdi
	callq	param_write_long
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#88:                                # %if.end.530
	movl	852(%r12), %eax
	testb	$4, %al
	je	.LBB1_90
# BB#89:                                # %if.end.536
	andl	$3, %eax
	movl	%eax, 128(%rsp)
	leaq	128(%rsp), %rdx
	movl	$.L.str.55, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
.LBB1_90:                               # %if.end.540
	cmpl	$2, 976(%rsp)
	jl	.LBB1_95
# BB#91:                                # %if.then.543
	movl	116(%r12), %eax
	incl	%eax
	movl	%eax, 112(%rsp)
	movl	968(%rsp), %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	cmpl	$31, %ecx
	movq	$-1, %rcx
	cmovleq	%rax, %rcx
	movq	%rcx, 128(%rsp)
	leaq	112(%rsp), %rdx
	movl	$.L.str.56, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#92:                                # %lor.lhs.false.555
	leaq	112(%rsp), %rdx
	movl	$.L.str.57, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#93:                                # %lor.lhs.false.559
	leaq	112(%rsp), %rdx
	movl	$.L.str.58, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
# BB#94:                                # %cleanup
	leaq	128(%rsp), %rdx
	movl	$.L.str.59, %esi
	movq	%r14, %rdi
	callq	param_write_long
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_120
.LBB1_95:                               # %if.end.570
	movq	(%r14), %rax
	movl	$.L.str.60, %esi
	movq	%r14, %rdi
	callq	*40(%rax)
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB1_120
# BB#96:                                # %if.then.574
	movzwl	108(%r12), %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	cmpq	$8, %rax
	ja	.LBB1_120
# BB#97:                                # %if.then.574
	movl	100(%r12), %ebx
	cmpl	$3, %ebx
	jg	.LBB1_120
# BB#98:                                # %if.then.i
	movq	1192(%r12), %rcx
	testq	%rcx, %rcx
	jne	.LBB1_100
# BB#99:                                # %if.then.8.i
	movq	$gx_default_w_b_map_color_rgb, 1192(%r12)
	movl	$gx_default_w_b_map_color_rgb, %ecx
.LBB1_100:                              # %for.cond.preheader.i
	leal	-1(%rbx), %r15d
	leaq	112(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	*%rcx
	testl	%eax, %eax
	js	.LBB1_120
# BB#101:                               # %for.cond.19.preheader.i.preheader
	movq	%r15, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	128(%rsp), %r15
	leaq	1(%rax), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leaq	112(%rsp,%rax,2), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	1(%rbx), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rcx, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
.LBB1_102:                              # %for.cond.19.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_107 Depth 2
                                        #     Child Loop BB1_114 Depth 2
	testl	%ebx, %ebx
	jle	.LBB1_116
# BB#103:                               # %overflow.checked
                                        #   in Loop: Header=BB1_102 Depth=1
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movl	$0, %ecx
	movq	%r15, %rax
	je	.LBB1_109
# BB#104:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_102 Depth=1
	cmpq	72(%rsp), %r15          # 8-byte Folded Reload
	ja	.LBB1_106
# BB#105:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_102 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%r15,%rax), %rax
	leaq	112(%rsp), %rcx
	cmpq	%rax, %rcx
	movl	$0, %ecx
	movq	%r15, %rax
	jbe	.LBB1_109
.LBB1_106:                              # %vector.body.preheader
                                        #   in Loop: Header=BB1_102 Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	(%r15,%rdx), %rax
	leaq	4(%r15), %rcx
	leaq	120(%rsp), %rsi
.LBB1_107:                              # %vector.body
                                        #   Parent Loop BB1_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI1_0(%rip), %xmm3   # xmm3 = [65281,65281,65281,65281]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqa	.LCPI1_1(%rip), %xmm2   # xmm2 = [8388608,8388608,8388608,8388608]
	paddd	%xmm2, %xmm0
	paddd	%xmm2, %xmm1
	psrld	$24, %xmm0
	psrld	$24, %xmm1
	movdqa	.LCPI1_2(%rip), %xmm2   # xmm2 = [255,255,255,255]
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, -4(%rcx)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rcx)
	addq	$16, %rsi
	addq	$8, %rcx
	addq	$-8, %rdx
	jne	.LBB1_107
# BB#108:                               #   in Loop: Header=BB1_102 Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
.LBB1_109:                              # %middle.block
                                        #   in Loop: Header=BB1_102 Depth=1
	cmpq	%rcx, 80(%rsp)          # 8-byte Folded Reload
	je	.LBB1_115
# BB#110:                               # %for.body.22.i.preheader
                                        #   in Loop: Header=BB1_102 Depth=1
	movl	%ecx, %edx
	orl	$1, %edx
	movl	68(%rsp), %esi          # 4-byte Reload
	subl	%edx, %esi
	testb	$1, %sil
	je	.LBB1_112
# BB#111:                               # %for.body.22.i.prol
                                        #   in Loop: Header=BB1_102 Depth=1
	movzwl	112(%rsp,%rcx,2), %esi
	imull	$65281, %esi, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movb	%sil, (%rax)
	incq	%rax
	orq	$1, %rcx
.LBB1_112:                              # %for.body.22.i.preheader.split
                                        #   in Loop: Header=BB1_102 Depth=1
	cmpl	%edx, %ebx
	je	.LBB1_115
# BB#113:                               # %for.body.22.i.preheader.split.split
                                        #   in Loop: Header=BB1_102 Depth=1
	movl	%ebx, %edx
	subl	%ecx, %edx
	leaq	114(%rsp), %rsi
	leaq	(%rsi,%rcx,2), %rcx
.LBB1_114:                              # %for.body.22.i
                                        #   Parent Loop BB1_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-2(%rcx), %esi
	imull	$65281, %esi, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movb	%sil, (%rax)
	movzwl	(%rcx), %esi
	imull	$65281, %esi, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movb	%sil, 1(%rax)
	addq	$4, %rcx
	addq	$2, %rax
	addl	$-2, %edx
	jne	.LBB1_114
.LBB1_115:                              # %for.cond.19.for.inc.27_crit_edge.i
                                        #   in Loop: Header=BB1_102 Depth=1
	addq	88(%rsp), %r15          # 8-byte Folded Reload
.LBB1_116:                              # %for.inc.27.i
                                        #   in Loop: Header=BB1_102 Depth=1
	incq	%r13
	movq	%r13, %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	shrq	%cl, %rax
	testq	%rax, %rax
	jne	.LBB1_118
# BB#117:                               # %for.inc.27.for.body_crit_edge.i
                                        #   in Loop: Header=BB1_102 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	leaq	112(%rsp), %rdx
	callq	*1192(%r12)
	testl	%eax, %eax
	jns	.LBB1_102
	jmp	.LBB1_120
.LBB1_118:                              # %if.then.578
	leaq	128(%rsp), %rax
	movq	%rax, 112(%rsp)
	movl	976(%rsp), %eax
	movb	968(%rsp), %cl
	shll	%cl, %eax
	movl	%eax, 120(%rsp)
	movl	$0, 124(%rsp)
	leaq	112(%rsp), %rdx
	movl	$.L.str.60, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	jns	.LBB1_120
# BB#119:                               # %cleanup.593.thread161
	movl	%eax, %ebp
.LBB1_120:                              # %cleanup.597
	movl	%ebp, %eax
	addq	$1288, %rsp             # imm = 0x508
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gx_default_get_params, .Lfunc_end1-gx_default_get_params
	.cfi_endproc

	.globl	gx_default_get_hardware_params
	.align	16, 0x90
	.type	gx_default_get_hardware_params,@function
gx_default_get_hardware_params:         # @gx_default_get_hardware_params
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gx_default_get_hardware_params, .Lfunc_end2-gx_default_get_hardware_params
	.cfi_endproc

	.globl	gdev_begin_input_media
	.align	16, 0x90
	.type	gdev_begin_input_media,@function
gdev_begin_input_media:                 # @gdev_begin_input_media
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	%edx, 8(%rax)
	movq	(%rdi), %rcx
	movq	8(%rcx), %r8
	movl	$.L.str.61, %esi
	movl	$1, %ecx
	movq	%rax, %rdx
	jmpq	*%r8                    # TAILCALL
.Lfunc_end3:
	.size	gdev_begin_input_media, .Lfunc_end3-gdev_begin_input_media
	.cfi_endproc

	.globl	gdev_write_input_media
	.align	16, 0x90
	.type	gdev_write_input_media,@function
gdev_write_input_media:                 # @gdev_write_input_media
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 112
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movl	%edi, %ecx
	leaq	32(%rsp), %rbx
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	gs_sprintf
	movl	$4, 24(%rsp)
	movq	(%r14), %rdi
	movq	(%rdi), %rax
	leaq	16(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	*8(%rax)
	testl	%eax, %eax
	js	.LBB4_17
# BB#1:                                 # %if.end
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB4_2
	jnp	.LBB4_4
.LBB4_2:                                # %land.lhs.true
	movss	4(%r15), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jne	.LBB4_3
	jnp	.LBB4_4
.LBB4_3:                                # %land.lhs.true.if.then.15_crit_edge
	movss	8(%r15), %xmm1          # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB4_6
.LBB4_4:                                # %lor.lhs.false
	movss	8(%r15), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jne	.LBB4_5
	jnp	.LBB4_10
.LBB4_5:                                # %land.lhs.true.11
	movss	12(%r15), %xmm2         # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB4_6
	jnp	.LBB4_10
.LBB4_6:                                # %if.then.15
	movq	%r15, 64(%rsp)
	movl	$4, %eax
	ucomiss	%xmm1, %xmm0
	jne	.LBB4_9
	jp	.LBB4_9
# BB#7:                                 # %land.rhs
	movss	4(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	$2, %eax
	ucomiss	12(%r15), %xmm0
	jne	.LBB4_8
	jnp	.LBB4_9
.LBB4_8:                                # %select.mid
	movl	$4, %eax
.LBB4_9:                                # %land.end
	movl	%eax, 72(%rsp)
	movl	$0, 76(%rsp)
	movq	16(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.1, %esi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB4_17
.LBB4_10:                               # %if.end.34
	movq	16(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB4_12
# BB#11:                                # %if.then.36
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
	movq	16(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.63, %esi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_17
.LBB4_12:                               # %if.end.49
	movss	24(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB4_13
	jnp	.LBB4_14
.LBB4_13:                               # %if.then.52
	movss	%xmm0, 64(%rsp)
	movq	16(%rsp), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.64, %esi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB4_17
.LBB4_14:                               # %if.end.63
	movq	32(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB4_16
# BB#15:                                # %finish_media.exit
	movq	16(%rsp), %rbx
	movq	%rdi, 64(%rsp)
	callq	strlen
	movl	%eax, 72(%rsp)
	movl	$1, 76(%rsp)
	leaq	64(%rsp), %rdx
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB4_17
.LBB4_16:                               # %if.end.69
	movq	(%r14), %rdi
	movq	(%rdi), %rax
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	callq	*16(%rax)
.LBB4_17:                               # %cleanup.75
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	gdev_write_input_media, .Lfunc_end4-gdev_write_input_media
	.cfi_endproc

	.globl	gdev_write_input_page_size
	.align	16, 0x90
	.type	gdev_write_input_page_size,@function
gdev_write_input_page_size:             # @gdev_write_input_page_size
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 48
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsp)
	movss	%xmm0, (%rsp)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 12(%rsp)
	movss	%xmm0, 4(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	leaq	(%rsp), %rdx
	callq	gdev_write_input_media
	addq	$40, %rsp
	retq
.Lfunc_end5:
	.size	gdev_write_input_page_size, .Lfunc_end5-gdev_write_input_page_size
	.cfi_endproc

	.globl	gdev_end_input_media
	.align	16, 0x90
	.type	gdev_end_input_media,@function
gdev_end_input_media:                   # @gdev_end_input_media
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	(%rdi), %rcx
	movq	16(%rcx), %rcx
	movl	$.L.str.61, %esi
	movq	%rax, %rdx
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end6:
	.size	gdev_end_input_media, .Lfunc_end6-gdev_end_input_media
	.cfi_endproc

	.globl	gdev_begin_output_media
	.align	16, 0x90
	.type	gdev_begin_output_media,@function
gdev_begin_output_media:                # @gdev_begin_output_media
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	%edx, 8(%rax)
	movq	(%rdi), %rcx
	movq	8(%rcx), %r8
	movl	$.L.str.66, %esi
	movl	$1, %ecx
	movq	%rax, %rdx
	jmpq	*%r8                    # TAILCALL
.Lfunc_end7:
	.size	gdev_begin_output_media, .Lfunc_end7-gdev_begin_output_media
	.cfi_endproc

	.globl	gdev_write_output_media
	.align	16, 0x90
	.type	gdev_write_output_media,@function
gdev_write_output_media:                # @gdev_write_output_media
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 96
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ecx
	leaq	16(%rsp), %rbx
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	gs_sprintf
	movl	$4, 8(%rsp)
	movq	(%r15), %rdi
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	*8(%rax)
	testl	%eax, %eax
	js	.LBB8_4
# BB#1:                                 # %if.end
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB8_3
# BB#2:                                 # %finish_media.exit
	movq	(%rsp), %rbx
	movq	%rdi, 48(%rsp)
	callq	strlen
	movl	%eax, 56(%rsp)
	movl	$1, 60(%rsp)
	leaq	48(%rsp), %rdx
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB8_4
.LBB8_3:                                # %if.end.8
	movq	(%r15), %rdi
	movq	(%rdi), %rax
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	callq	*16(%rax)
.LBB8_4:                                # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	gdev_write_output_media, .Lfunc_end8-gdev_write_output_media
	.cfi_endproc

	.globl	gdev_end_output_media
	.align	16, 0x90
	.type	gdev_end_output_media,@function
gdev_end_output_media:                  # @gdev_end_output_media
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	(%rdi), %rcx
	movq	16(%rcx), %rcx
	movl	$.L.str.66, %esi
	movq	%rax, %rdx
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end9:
	.size	gdev_end_output_media, .Lfunc_end9-gdev_end_output_media
	.cfi_endproc

	.globl	gs_putdeviceparams
	.align	16, 0x90
	.type	gs_putdeviceparams,@function
gs_putdeviceparams:                     # @gs_putdeviceparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	84(%rbx), %ebp
	callq	gx_device_set_procs
	movq	1256(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	$gx_default_put_params, 1256(%rbx)
	movl	$gx_default_put_params, %eax
.LBB10_2:                               # %if.end
	cmpq	$0, 1304(%rbx)
	jne	.LBB10_4
# BB#3:                                 # %if.then.5
	movq	$gx_default_get_alpha_bits, 1304(%rbx)
.LBB10_4:                               # %if.end.8
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB10_7
# BB#5:                                 # %cond.false
	testl	%ebp, %ebp
	je	.LBB10_7
# BB#6:                                 # %land.lhs.true
	movl	$1, %ecx
	cmpl	$0, 84(%rbx)
	je	.LBB10_8
.LBB10_7:                               # %cond.false.15
	movl	%eax, %ecx
.LBB10_8:                               # %cond.end.16
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_putdeviceparams, .Lfunc_end10-gs_putdeviceparams
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
.LCPI11_3:
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
.LCPI11_4:
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
.LCPI11_5:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_1:
	.long	1116733440              # float 72
.LCPI11_2:
	.long	1258291198              # float 8388607
	.text
	.globl	gx_default_put_params
	.align	16, 0x90
	.type	gx_default_put_params,@function
gx_default_put_params:                  # @gx_default_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 56
	subq	$1272, %rsp             # imm = 0x4F8
.Ltmp49:
	.cfi_def_cfa_offset 1328
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movl	944(%rdi), %eax
	movl	%eax, 1140(%rsp)
	movl	948(%rdi), %r8d
	movl	952(%rdi), %eax
	movl	%eax, 1136(%rsp)
	movl	956(%rdi), %eax
	movl	%eax, 1132(%rsp)
	movl	960(%rdi), %eax
	movl	%eax, 1108(%rsp)
	movslq	100(%rdi), %rdx
	movl	112(%rdi), %esi
	movl	116(%rdi), %r14d
	movzwl	108(%rdi), %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	$1, %eax
	shlq	%cl, %rax
	cmpq	$31, %rcx
	movq	$-1, %rcx
	cmovbeq	%rax, %rcx
	movl	128(%rdi), %eax
	movl	%eax, 1084(%rsp)
	movl	132(%rdi), %eax
	movl	%eax, 1080(%rsp)
	movl	1052(%rdi), %eax
	movl	%eax, 1076(%rsp)
	movl	1056(%rdi), %eax
	movl	%eax, 1072(%rsp)
	movq	1096(%rdi), %rax
	movq	%rax, 1056(%rsp)
	movups	1064(%rdi), %xmm0
	movups	1080(%rdi), %xmm1
	movaps	%xmm1, 1040(%rsp)
	movaps	%xmm0, 1024(%rsp)
	movq	1072(%rdi), %rbp
	movq	1080(%rdi), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	1088(%rdi), %rbx
	movl	852(%rdi), %r12d
	movl	$1, 956(%rsp)
	movl	$0, 952(%rsp)
	movl	$0, 948(%rsp)
	movl	$1, 944(%rsp)
	movl	$0, 940(%rsp)
	movq	1104(%rdi), %rax
	testq	%rax, %rax
	je	.LBB11_2
# BB#1:                                 # %for.cond.preheader
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	56(%rax), %ecx
	movl	%ecx, 1008(%rsp)
	movl	60(%rax), %ecx
	movl	%ecx, 992(%rsp)
	movl	64(%rax), %ecx
	movl	%ecx, 976(%rsp)
	movl	80(%rax), %ecx
	movl	%ecx, 1012(%rsp)
	movl	84(%rax), %ecx
	movl	%ecx, 996(%rsp)
	movl	88(%rax), %ecx
	movl	%ecx, 980(%rsp)
	movl	104(%rax), %ecx
	movl	%ecx, 1016(%rsp)
	movl	108(%rax), %ecx
	movl	%ecx, 1000(%rsp)
	movl	112(%rax), %ecx
	movl	%ecx, 984(%rsp)
	movl	128(%rax), %ecx
	movl	%ecx, 1020(%rsp)
	movl	132(%rax), %ecx
	movl	%ecx, 1004(%rsp)
	movl	136(%rax), %ecx
	movl	%ecx, 988(%rsp)
	movl	156(%rax), %ecx
	movl	%ecx, 952(%rsp)
	movl	152(%rax), %ecx
	movl	%ecx, 956(%rsp)
	movl	164(%rax), %ecx
	movl	%ecx, 948(%rsp)
	movl	184(%rax), %ecx
	movl	%ecx, 940(%rsp)
	movl	172(%rax), %eax
	movl	%eax, 944(%rsp)
	jmp	.LBB11_3
.LBB11_2:                               # %for.cond.41.preheader
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movaps	.LCPI11_0(%rip), %xmm0  # xmm0 = [8,8,8,8]
	movaps	%xmm0, 1008(%rsp)
	movaps	%xmm0, 992(%rsp)
	movaps	%xmm0, 976(%rsp)
.LBB11_3:                               # %if.end
	testb	$8, %r12b
	jne	.LBB11_5
# BB#4:
	movl	%r8d, 140(%rsp)         # 4-byte Spill
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movl	%esi, 120(%rsp)         # 4-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	jmp	.LBB11_6
.LBB11_5:                               # %if.then.54
	movl	%r8d, 140(%rsp)         # 4-byte Spill
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movl	%esi, 120(%rsp)         # 4-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	andl	$4, %eax
	shrl	$4, %r12d
	andl	$3, %r12d
	orl	%eax, %r12d
.LBB11_6:                               # %do.body
	leaq	1240(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	callq	param_read_float_array
	xorl	%ebx, %ebx
	cmpl	$1, %eax
	je	.LBB11_13
# BB#7:                                 # %do.body
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.LBB11_12
# BB#8:                                 # %sw.bb
	cmpl	$2, 1248(%rsp)
	jne	.LBB11_9
# BB#10:                                # %if.else.61
	movq	1240(%rsp), %rax
	movl	$-15, %ebx
	xorps	%xmm0, %xmm0
	ucomiss	(%rax), %xmm0
	jae	.LBB11_12
# BB#11:                                # %lor.lhs.false
	xorl	%r15d, %r15d
	ucomiss	4(%rax), %xmm0
	jb	.LBB11_14
	jmp	.LBB11_12
.LBB11_9:                               # %if.then.60
	movq	$0, 1240(%rsp)
	movl	$-15, %ebx
.LBB11_12:                              # %hwre
	movq	(%r13), %rax
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
.LBB11_13:                              # %sw.bb.75
	movq	$0, 1240(%rsp)
	movl	%ebx, %r15d
.LBB11_14:                              # %do.body.77
	leaq	1224(%rsp), %rdx
	movl	$.L.str.35, %esi
	movq	%r13, %rdi
	callq	param_read_int_array
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_25
# BB#15:                                # %do.body.77
	testl	%ebx, %ebx
	jne	.LBB11_24
# BB#16:                                # %sw.bb.79
	cmpl	$2, 1232(%rsp)
	jne	.LBB11_17
# BB#18:                                # %if.else.85
	movq	1224(%rsp), %rcx
	movl	(%rcx), %eax
	testl	%eax, %eax
	jg	.LBB11_20
# BB#19:                                # %land.lhs.true
	movl	$-15, %ebx
	movq	152(%rsp), %rdx         # 8-byte Reload
	cmpl	832(%rdx), %eax
	jne	.LBB11_24
.LBB11_20:                              # %lor.lhs.false.94
	movl	4(%rcx), %ecx
	testl	%ecx, %ecx
	jg	.LBB11_22
# BB#21:                                # %land.lhs.true.99
	movl	$-15, %ebx
	movq	152(%rsp), %rdx         # 8-byte Reload
	cmpl	836(%rdx), %ecx
	jne	.LBB11_24
.LBB11_22:                              # %if.else.105
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	movl	$-13, %ebx
	jg	.LBB11_24
# BB#23:                                # %if.else.105
	cmpl	$8388608, %ecx          # imm = 0x800000
	jl	.LBB11_26
	jmp	.LBB11_24
.LBB11_17:                              # %if.then.83
	movq	$0, 1224(%rsp)
	movl	$-15, %ebx
.LBB11_24:                              # %hwse
	movq	(%r13), %rax
	movl	$.L.str.35, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r15d
.LBB11_25:                              # %sw.bb.126
	movq	$0, 1224(%rsp)
.LBB11_26:                              # %do.end.130
	leaq	160(%rsp), %rdx
	movl	$.L.str.55, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB11_27
# BB#28:                                # %if.else.142
	je	.LBB11_30
# BB#29:
	movl	%r14d, 144(%rsp)        # 4-byte Spill
	jmp	.LBB11_33
.LBB11_27:                              # %if.then.134
	movl	%r14d, 144(%rsp)        # 4-byte Spill
	movl	$.L.str.55, %esi
	movq	%r13, %rdi
	callq	param_read_null
	movl	%r12d, %ecx
	andl	$-5, %ecx
	testl	%eax, %eax
	cmovel	%ecx, %r12d
	cmovnel	%ebx, %r15d
	jmp	.LBB11_33
.LBB11_30:                              # %if.then.145
	movl	%r14d, 144(%rsp)        # 4-byte Spill
	movl	160(%rsp), %eax
	cmpl	$4, %eax
	jb	.LBB11_32
# BB#31:                                # %if.then.151
	movq	(%r13), %rax
	movl	$-15, %r15d
	movl	$.L.str.55, %esi
	movl	$-15, %edx
	movq	%r13, %rdi
	callq	*56(%rax)
	jmp	.LBB11_33
.LBB11_32:                              # %if.else.155
	orl	$4, %eax
	movl	%eax, %r12d
.LBB11_33:                              # %if.end.159
	movq	1240(%rsp), %rbx
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	884(%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	cmoveq	%rax, %rbx
	leaq	1208(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	callq	param_read_float_array
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB11_38
# BB#34:                                # %if.end.159
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.LBB11_37
# BB#35:                                # %sw.bb.i
	cmpl	$2, 1216(%rsp)
	jne	.LBB11_36
# BB#39:                                # %if.else.i
	movq	1208(%rsp), %r14
	movss	(%r14), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx), %xmm0
	movss	.LCPI11_1(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm0
	pxor	%xmm3, %xmm3
	ucomiss	%xmm0, %xmm3
	movl	$-15, %ebp
	ja	.LBB11_37
# BB#40:                                # %if.else.i
	movss	4(%r14), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	4(%rbx), %xmm1
	divss	%xmm2, %xmm1
	ucomiss	%xmm1, %xmm3
	ja	.LBB11_37
# BB#41:                                # %if.else.11.i
	ucomiss	.LCPI11_2(%rip), %xmm0
	movl	$-13, %ebp
	ja	.LBB11_37
# BB#42:                                # %if.else.11.i
	ucomiss	.LCPI11_2(%rip), %xmm1
	ja	.LBB11_37
# BB#43:
	xorl	%ebp, %ebp
	jmp	.LBB11_44
.LBB11_36:                              # %if.then.i
	movq	$0, 1208(%rsp)
	movl	$-15, %ebp
.LBB11_37:                              # %mse.i
	movq	(%r13), %rax
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
.LBB11_38:                              # %sw.bb.21.i
	movq	$0, 1208(%rsp)
	xorl	%r14d, %r14d
.LBB11_44:                              # %param_MediaSize.exit
	testl	%ebp, %ebp
	cmovsl	%ebp, %r15d
	leaq	1208(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	%r13, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB11_45
# BB#47:                                # %sw.bb.i.498
	cmpl	$2, 1216(%rsp)
	jne	.LBB11_48
# BB#49:                                # %if.else.i.509
	movq	1208(%rsp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx), %xmm0
	movss	.LCPI11_1(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm0
	pxor	%xmm3, %xmm3
	ucomiss	%xmm0, %xmm3
	movl	$-15, %ebp
	ja	.LBB11_53
# BB#50:                                # %if.else.i.509
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	4(%rbx), %xmm1
	divss	%xmm2, %xmm1
	ucomiss	%xmm1, %xmm3
	ja	.LBB11_53
# BB#51:                                # %if.else.11.i.513
	ucomiss	.LCPI11_2(%rip), %xmm0
	movl	$-13, %ebp
	ja	.LBB11_53
# BB#52:                                # %if.else.11.i.513
	ucomiss	.LCPI11_2(%rip), %xmm1
	ja	.LBB11_53
# BB#54:                                # %if.else.179
	testq	%rax, %rax
	jne	.LBB11_56
	jmp	.LBB11_55
.LBB11_45:                              # %param_MediaSize.exit
	cmpl	$1, %ebp
	jne	.LBB11_53
# BB#46:                                # %param_MediaSize.exit523.thread963
	movq	$0, 1208(%rsp)
	jmp	.LBB11_55
.LBB11_48:                              # %if.then.i.499
	movq	$0, 1208(%rsp)
	movl	$-15, %ebp
.LBB11_53:                              # %param_MediaSize.exit523
	movq	(%r13), %rax
	movl	$.L.str.38, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movq	$0, 1208(%rsp)
	testl	%ebp, %ebp
	js	.LBB11_57
.LBB11_55:                              # %if.then.183
	movq	%r14, 1208(%rsp)
.LBB11_56:                              # %if.end.186
	movl	%r15d, %ebp
.LBB11_57:                              # %if.end.186
	leaq	1192(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r13, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
	cmpl	$1, %ebx
	jne	.LBB11_59
# BB#58:
	movq	152(%rsp), %r14         # 8-byte Reload
	jmp	.LBB11_63
.LBB11_59:                              # %if.end.186
	testl	%ebx, %ebx
	movq	152(%rsp), %r14         # 8-byte Reload
	jne	.LBB11_62
# BB#60:                                # %sw.bb.189
	cmpl	$2, 1200(%rsp)
	je	.LBB11_64
# BB#61:                                # %if.then.193
	movq	$0, 1192(%rsp)
	movl	$-15, %ebx
.LBB11_62:                              # %me
	movq	(%r13), %rax
	movl	$.L.str.5, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_63:                              # %sw.bb.201
	movq	$0, 1192(%rsp)
.LBB11_64:                              # %do.body.206
	leaq	1176(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	%r13, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_69
# BB#65:                                # %do.body.206
	testl	%ebx, %ebx
	jne	.LBB11_68
# BB#66:                                # %sw.bb.208
	cmpl	$4, 1184(%rsp)
	je	.LBB11_70
# BB#67:                                # %if.then.212
	movq	$0, 1176(%rsp)
	movl	$-15, %ebx
.LBB11_68:                              # %hwme
	movq	(%r13), %rax
	movl	$.L.str.36, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_69:                              # %sw.bb.220
	movq	$0, 1176(%rsp)
.LBB11_70:                              # %do.body.225
	leaq	1160(%rsp), %rdx
	movl	$.L.str.37, %esi
	movq	%r13, %rdi
	callq	param_read_float_array
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_77
# BB#71:                                # %do.body.225
	testl	%ebx, %ebx
	jne	.LBB11_76
# BB#72:                                # %sw.bb.227
	cmpl	$2, 1168(%rsp)
	jne	.LBB11_73
# BB#74:                                # %if.else.233
	movq	1160(%rsp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movl	$-15, %ebx
	ucomiss	892(%r14), %xmm0
	jne	.LBB11_76
	jp	.LBB11_76
	jmp	.LBB11_75
.LBB11_73:                              # %if.then.231
	movq	$0, 1160(%rsp)
	movl	$-15, %ebx
	jmp	.LBB11_76
.LBB11_75:                              # %lor.lhs.false.239
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	896(%r14), %xmm0
	jne	.LBB11_76
	jnp	.LBB11_78
.LBB11_76:                              # %mhwre
	movq	(%r13), %rax
	movl	$.L.str.37, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_77:                              # %sw.bb.254
	movq	$0, 1160(%rsp)
.LBB11_78:                              # %do.end.258
	leaq	1136(%rsp), %rdx
	movl	$.L.str.44, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB11_80
# BB#79:                                # %sw.default.260
	movq	(%r13), %rax
	movl	$.L.str.44, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_80:                              # %sw.epilog.265
	cmpl	$0, 948(%r14)
	js	.LBB11_81
# BB#82:                                # %land.lhs.true.269
	movq	%r14, %rdi
	callq	*1296(%r14)
	testq	%rax, %rax
	je	.LBB11_83
# BB#84:                                # %if.then.274
	leaq	1140(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r13, %rdi
	callq	param_read_int
	cmpl	$1, %eax
	jne	.LBB11_86
# BB#85:
	movl	140(%rsp), %eax         # 4-byte Reload
	jmp	.LBB11_90
.LBB11_81:
	movl	140(%rsp), %eax         # 4-byte Reload
	jmp	.LBB11_90
.LBB11_83:
	movl	140(%rsp), %eax         # 4-byte Reload
	jmp	.LBB11_90
.LBB11_86:                              # %if.then.274
	testl	%eax, %eax
	jne	.LBB11_88
# BB#87:                                # %sw.bb.276
	movl	$1, %eax
	movl	$-15, %ebx
	cmpl	$0, 1140(%rsp)
	jns	.LBB11_90
	jmp	.LBB11_89
.LBB11_88:                              # %sw.default.282
	movl	$.L.str.7, %esi
	movq	%r13, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.LBB11_90
.LBB11_89:                              # %nce
	movq	(%r13), %rax
	movl	$.L.str.7, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%ebx, %ebp
.LBB11_90:                              # %if.end.292
	movl	%eax, 100(%rsp)         # 4-byte Spill
	leaq	1112(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%r13, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB11_97
# BB#91:                                # %if.then.296
	movl	1120(%rsp), %esi
	testl	%esi, %esi
	je	.LBB11_97
# BB#92:                                # %if.end.i
	cmpq	$0, 1680(%r14)
	jne	.LBB11_94
# BB#93:                                # %if.then.2.i
	movq	$gx_default_get_profile, 1680(%r14)
.LBB11_94:                              # %if.end.5.i
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB11_97
# BB#95:                                # %if.then.8.i
	movq	24(%r14), %rdi
	incl	%esi
	movl	$.L.str.70, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_97
# BB#96:                                # %if.end.14.i
	movq	1112(%rsp), %rsi
	movl	1120(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	1120(%rsp), %eax
	movb	$0, (%rbx,%rax)
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gsicc_init_device_profile_struct
	movq	24(%r14), %rdi
	movl	$.L.str.70, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB11_97:                              # %if.end.298
	leaq	1112(%rsp), %rdx
	movl	$.L.str.17, %esi
	movq	%r13, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB11_104
# BB#98:                                # %if.then.302
	movl	1120(%rsp), %esi
	testl	%esi, %esi
	je	.LBB11_104
# BB#99:                                # %if.end.i.532
	cmpq	$0, 1680(%r14)
	jne	.LBB11_101
# BB#100:                               # %if.then.2.i.533
	movq	$gx_default_get_profile, 1680(%r14)
.LBB11_101:                             # %if.end.5.i.535
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB11_104
# BB#102:                               # %if.then.8.i.541
	movq	24(%r14), %rdi
	incl	%esi
	movl	$.L.str.70, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_104
# BB#103:                               # %if.end.14.i.549
	movq	1112(%rsp), %rsi
	movl	1120(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	1120(%rsp), %eax
	movb	$0, (%rbx,%rax)
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gsicc_init_device_profile_struct
	movq	24(%r14), %rdi
	movl	$.L.str.70, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB11_104:                             # %if.end.304
	leaq	1112(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%r13, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB11_111
# BB#105:                               # %if.then.308
	movl	1120(%rsp), %esi
	testl	%esi, %esi
	je	.LBB11_111
# BB#106:                               # %if.end.i.555
	cmpq	$0, 1680(%r14)
	jne	.LBB11_108
# BB#107:                               # %if.then.2.i.556
	movq	$gx_default_get_profile, 1680(%r14)
.LBB11_108:                             # %if.end.5.i.558
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB11_111
# BB#109:                               # %if.then.8.i.564
	movq	24(%r14), %rdi
	incl	%esi
	movl	$.L.str.70, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_111
# BB#110:                               # %if.end.14.i.572
	movq	1112(%rsp), %rsi
	movl	1120(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	1120(%rsp), %eax
	movb	$0, (%rbx,%rax)
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gsicc_init_device_profile_struct
	movq	24(%r14), %rdi
	movl	$.L.str.70, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB11_111:                             # %if.end.310
	leaq	1112(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%r13, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB11_118
# BB#112:                               # %if.then.314
	movl	1120(%rsp), %esi
	testl	%esi, %esi
	je	.LBB11_118
# BB#113:                               # %if.end.i.578
	cmpq	$0, 1680(%r14)
	jne	.LBB11_115
# BB#114:                               # %if.then.2.i.579
	movq	$gx_default_get_profile, 1680(%r14)
.LBB11_115:                             # %if.end.5.i.581
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB11_118
# BB#116:                               # %if.then.8.i.587
	movq	24(%r14), %rdi
	incl	%esi
	movl	$.L.str.70, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_118
# BB#117:                               # %if.end.14.i.595
	movq	1112(%rsp), %rsi
	movl	1120(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	1120(%rsp), %eax
	movb	$0, (%rbx,%rax)
	movl	$3, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gsicc_init_device_profile_struct
	movq	24(%r14), %rdi
	movl	$.L.str.70, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB11_118:                             # %if.end.316
	leaq	1112(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%r13, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB11_125
# BB#119:                               # %if.then.320
	movl	1120(%rsp), %esi
	testl	%esi, %esi
	je	.LBB11_125
# BB#120:                               # %if.end.i.601
	cmpq	$0, 1680(%r14)
	jne	.LBB11_122
# BB#121:                               # %if.then.2.i.602
	movq	$gx_default_get_profile, 1680(%r14)
.LBB11_122:                             # %if.end.5.i.604
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB11_125
# BB#123:                               # %if.then.8.i.610
	movq	24(%r14), %rdi
	incl	%esi
	movl	$.L.str.70, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_125
# BB#124:                               # %if.end.14.i.618
	movq	1112(%rsp), %rsi
	movl	1120(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	1120(%rsp), %eax
	movb	$0, (%rbx,%rax)
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gsicc_init_device_profile_struct
	movq	24(%r14), %rdi
	movl	$.L.str.70, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB11_125:                             # %if.end.322
	leaq	1112(%rsp), %rdx
	movl	$.L.str.21, %esi
	movq	%r13, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB11_132
# BB#126:                               # %if.then.326
	movl	1120(%rsp), %esi
	testl	%esi, %esi
	je	.LBB11_132
# BB#127:                               # %if.end.i.624
	cmpq	$0, 1680(%r14)
	jne	.LBB11_129
# BB#128:                               # %if.then.2.i.625
	movq	$gx_default_get_profile, 1680(%r14)
.LBB11_129:                             # %if.end.5.i.627
	cmpl	$4095, %esi             # imm = 0xFFF
	ja	.LBB11_132
# BB#130:                               # %if.then.8.i.633
	movq	24(%r14), %rdi
	incl	%esi
	movl	$.L.str.70, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_132
# BB#131:                               # %if.end.14.i.641
	movq	1112(%rsp), %rsi
	movl	1120(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	1120(%rsp), %eax
	movb	$0, (%rbx,%rax)
	movl	$5, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gsicc_init_device_profile_struct
	movq	24(%r14), %rdi
	movl	$.L.str.70, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB11_132:                             # %if.end.328
	leaq	1112(%rsp), %rdx
	movl	$.L.str.22, %esi
	movq	%r13, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB11_137
# BB#133:                               # %if.then.332
	movl	1120(%rsp), %esi
	testl	%esi, %esi
	je	.LBB11_137
# BB#134:                               # %if.end.i.647
	cmpq	$0, 1680(%r14)
	jne	.LBB11_136
# BB#135:                               # %if.then.2.i.648
	movq	$gx_default_get_profile, 1680(%r14)
.LBB11_136:                             # %if.end.5.i.658
	movq	24(%r14), %rdi
	incl	%esi
	movl	$.L.str.71, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	movq	1112(%rsp), %rsi
	movl	1120(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	1120(%rsp), %eax
	movb	$0, (%rbx,%rax)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gsicc_set_device_profile_colorants
	movq	24(%r14), %rdi
	movl	$.L.str.71, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB11_137:                             # %if.end.334
	leaq	1008(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_139
# BB#138:                               # %if.then.339
	movq	(%r13), %rax
	movl	$.L.str.23, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_139:                             # %if.end.343
	leaq	1012(%rsp), %rdx
	movl	$.L.str.24, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_141
# BB#140:                               # %if.then.348
	movq	(%r13), %rax
	movl	$.L.str.24, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_141:                             # %if.end.352
	leaq	1016(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_143
# BB#142:                               # %if.then.357
	movq	(%r13), %rax
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_143:                             # %if.end.361
	leaq	1020(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_145
# BB#144:                               # %if.then.366
	movq	(%r13), %rax
	movl	$.L.str.26, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_145:                             # %if.end.370
	leaq	992(%rsp), %rdx
	movl	$.L.str.27, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_147
# BB#146:                               # %if.then.375
	movq	(%r13), %rax
	movl	$.L.str.27, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_147:                             # %if.end.379
	leaq	996(%rsp), %rdx
	movl	$.L.str.28, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_149
# BB#148:                               # %if.then.384
	movq	(%r13), %rax
	movl	$.L.str.28, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_149:                             # %if.end.388
	leaq	1000(%rsp), %rdx
	movl	$.L.str.29, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_151
# BB#150:                               # %if.then.393
	movq	(%r13), %rax
	movl	$.L.str.29, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_151:                             # %if.end.397
	leaq	1004(%rsp), %rdx
	movl	$.L.str.30, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_153
# BB#152:                               # %if.then.402
	movq	(%r13), %rax
	movl	$.L.str.30, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_153:                             # %if.end.406
	leaq	976(%rsp), %rdx
	movl	$.L.str.31, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_155
# BB#154:                               # %if.then.411
	movq	(%r13), %rax
	movl	$.L.str.31, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_155:                             # %if.end.415
	leaq	980(%rsp), %rdx
	movl	$.L.str.32, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_157
# BB#156:                               # %if.then.420
	movq	(%r13), %rax
	movl	$.L.str.32, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_157:                             # %if.end.424
	leaq	984(%rsp), %rdx
	movl	$.L.str.33, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_159
# BB#158:                               # %if.then.429
	movq	(%r13), %rax
	movl	$.L.str.33, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_159:                             # %if.end.433
	leaq	988(%rsp), %rdx
	movl	$.L.str.34, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_161
# BB#160:                               # %if.then.438
	movq	(%r13), %rax
	movl	$.L.str.34, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_161:                             # %if.end.442
	leaq	956(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_163
# BB#162:                               # %if.then.446
	movq	(%r13), %rax
	movl	$.L.str.11, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_163:                             # %if.end.450
	leaq	952(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_165
# BB#164:                               # %if.then.454
	movq	(%r13), %rax
	movl	$.L.str.12, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_165:                             # %if.end.458
	leaq	948(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_167
# BB#166:                               # %if.then.462
	movq	(%r13), %rax
	movl	$.L.str.13, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_167:                             # %if.end.466
	leaq	944(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_169
# BB#168:                               # %if.then.470
	movq	(%r13), %rax
	movl	$.L.str.14, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_169:                             # %if.end.474
	leaq	940(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_171
# BB#170:                               # %if.then.478
	movq	(%r13), %rax
	movl	$.L.str.15, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_171:                             # %if.end.482
	leaq	1132(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_173
# BB#172:                               # %if.then.486
	movq	(%r13), %rax
	movl	$.L.str.10, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_173:                             # %if.end.490
	movl	%ebp, %r15d
	leaq	1084(%rsp), %rdx
	movl	$.L.str.45, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	movl	$1, %ebp
	cmpl	$1, %ebx
	movl	$1, %eax
	je	.LBB11_178
# BB#174:                               # %if.end.490
	testl	%ebx, %ebx
	jne	.LBB11_177
# BB#175:                               # %sw.bb.i.660
	movl	$-15, %ebx
	movl	1084(%rsp), %ecx
	cmpl	$4, %ecx
	ja	.LBB11_177
# BB#176:                               # %sw.bb.i.660
	xorl	%eax, %eax
	movl	$22, %edx
	btl	%ecx, %edx
	jb	.LBB11_178
.LBB11_177:                             # %sw.default.2.i
	movq	(%r13), %rax
	movl	$.L.str.45, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB11_178:                             # %param_anti_alias_bits.exit
	testl	%eax, %eax
	cmovsl	%eax, %r15d
	leaq	1080(%rsp), %rdx
	movl	$.L.str.46, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_183
# BB#179:                               # %param_anti_alias_bits.exit
	testl	%ebx, %ebx
	jne	.LBB11_182
# BB#180:                               # %sw.bb.i.664
	movl	$-15, %ebx
	movl	1080(%rsp), %eax
	cmpl	$4, %eax
	ja	.LBB11_182
# BB#181:                               # %sw.bb.i.664
	xorl	%ebp, %ebp
	movl	$22, %ecx
	btl	%eax, %ecx
	jb	.LBB11_183
.LBB11_182:                             # %sw.default.2.i.669
	movq	(%r13), %rax
	movl	$.L.str.46, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_183:                             # %param_anti_alias_bits.exit671
	testl	%ebp, %ebp
	cmovsl	%ebp, %r15d
	movl	%r15d, %ebp
	leaq	1076(%rsp), %rdx
	movl	$.L.str.48, %esi
	movq	%r13, %rdi
	callq	param_read_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	1072(%rsp), %rdx
	movl	$.L.str.49, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB11_185
# BB#184:                               # %if.then.509
	movq	(%r13), %rax
	movl	$.L.str.49, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_185:                             # %if.end.513
	leaq	1024(%rsp), %rdx
	movl	$.L.str.50, %esi
	movq	%r13, %rdi
	callq	param_read_long
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	1032(%rsp), %rdx
	movl	$.L.str.54, %esi
	movq	%r13, %rdi
	callq	param_read_long
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_191
# BB#186:                               # %if.end.513
	testl	%ebx, %ebx
	jne	.LBB11_190
# BB#187:                               # %sw.bb.520
	cmpl	$0, 1056(%rsp)
	movq	1032(%rsp), %rax
	movl	$-15, %ebx
	je	.LBB11_189
# BB#188:                               # %cond.true.522
	cmpq	64(%rsp), %rax          # 8-byte Folded Reload
	jne	.LBB11_190
	jmp	.LBB11_191
.LBB11_189:                             # %cond.false.527
	cmpq	$9999, %rax             # imm = 0x270F
	jg	.LBB11_191
.LBB11_190:                             # %bse
	movq	(%r13), %rax
	movl	$.L.str.54, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_191:                             # %sw.epilog.538
	leaq	1040(%rsp), %rdx
	movl	$.L.str.53, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_197
# BB#192:                               # %sw.epilog.538
	testl	%ebx, %ebx
	jne	.LBB11_196
# BB#193:                               # %sw.bb.540
	cmpl	$0, 1056(%rsp)
	movl	1040(%rsp), %eax
	movl	$-15, %ebx
	je	.LBB11_195
# BB#194:                               # %cond.true.543
	movq	128(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB11_196
	jmp	.LBB11_197
.LBB11_195:                             # %cond.false.550
	testl	%eax, %eax
	jns	.LBB11_197
.LBB11_196:                             # %bwe
	movq	(%r13), %rax
	movl	$.L.str.53, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_197:                             # %sw.epilog.562
	leaq	1044(%rsp), %rdx
	movl	$.L.str.52, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_203
# BB#198:                               # %sw.epilog.562
	testl	%ebx, %ebx
	jne	.LBB11_202
# BB#199:                               # %sw.bb.565
	cmpl	$0, 1056(%rsp)
	movl	1044(%rsp), %eax
	je	.LBB11_201
# BB#200:                               # %cond.true.568
	movq	128(%rsp), %rcx         # 8-byte Reload
	shrq	$32, %rcx
	movl	$-15, %ebx
	cmpl	%ecx, %eax
	jne	.LBB11_202
	jmp	.LBB11_203
.LBB11_201:                             # %cond.false.575
	movl	$-15, %ebx
	testl	%eax, %eax
	jns	.LBB11_203
.LBB11_202:                             # %bhe
	movq	(%r13), %rax
	movl	$.L.str.52, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_203:                             # %sw.epilog.587
	leaq	1048(%rsp), %rdx
	movl	$.L.str.51, %esi
	movq	%r13, %rdi
	callq	param_read_long
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_209
# BB#204:                               # %sw.epilog.587
	testl	%ebx, %ebx
	jne	.LBB11_208
# BB#205:                               # %sw.bb.590
	cmpl	$0, 1056(%rsp)
	movq	1048(%rsp), %rax
	movl	$-15, %ebx
	je	.LBB11_207
# BB#206:                               # %cond.true.593
	cmpq	104(%rsp), %rax         # 8-byte Folded Reload
	jne	.LBB11_208
	jmp	.LBB11_209
.LBB11_207:                             # %cond.false.600
	testq	%rax, %rax
	jns	.LBB11_209
.LBB11_208:                             # %bbse
	movq	(%r13), %rax
	movl	$.L.str.51, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_209:                             # %sw.epilog.612
	leaq	1108(%rsp), %rdx
	movl	$.L.str.47, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_214
# BB#210:                               # %sw.epilog.612
	testl	%ebx, %ebx
	jne	.LBB11_213
# BB#211:                               # %sw.bb.614
	cmpl	$0, 960(%r14)
	je	.LBB11_214
# BB#212:                               # %sw.bb.614
	movl	1108(%rsp), %eax
	movl	$-7, %ebx
	testl	%eax, %eax
	jne	.LBB11_214
.LBB11_213:                             # %sw.default.622
	movq	(%r13), %rax
	movl	$.L.str.47, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_214:                             # %sw.epilog.626
	leaq	160(%rsp), %rdx
	movl	$.L.str.68, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB11_216
# BB#215:                               # %sw.default.628
	movq	(%r13), %rax
	movl	$.L.str.68, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_216:                             # %sw.epilog.633
	leaq	160(%rsp), %rdx
	movl	$.L.str.69, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB11_218
# BB#217:                               # %sw.default.636
	movq	(%r13), %rax
	movl	$.L.str.69, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_218:                             # %sw.epilog.641
	leaq	1088(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r13, %rdi
	callq	param_read_float_array
	cmpl	$1, %eax
	je	.LBB11_224
# BB#219:                               # %sw.epilog.641
	testl	%eax, %eax
	jne	.LBB11_225
# BB#220:                               # %sw.bb.643
	movl	$-15, %ebx
	cmpl	$4, 1096(%rsp)
	jne	.LBB11_223
# BB#221:                               # %lor.lhs.false.647
	movq	1088(%rsp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	8(%rax), %xmm0
	ja	.LBB11_223
# BB#222:                               # %lor.lhs.false.654
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	ucomiss	12(%rax), %xmm0
	jbe	.LBB11_227
	jmp	.LBB11_223
.LBB11_225:                             # %sw.default.664
	movl	$.L.str.4, %esi
	movq	%r13, %rdi
	callq	param_read_null
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB11_226
.LBB11_223:                             # %ibbe
	movq	(%r13), %rax
	movl	$.L.str.4, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_224:                             # %sw.bb.674
	movq	$0, 1088(%rsp)
	xorl	%ecx, %ecx
.LBB11_227:                             # %sw.epilog.676
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%ebp, 140(%rsp)         # 4-byte Spill
	movl	%r12d, 104(%rsp)        # 4-byte Spill
	movq	784(%r14), %rbx
	movq	%r14, %r12
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB11_229
# BB#228:                               # %cond.true.680
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r15
.LBB11_229:                             # %cond.end.683
	leaq	160(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %r14d
	movl	$1, %ebp
	cmpl	$1, %r14d
	jne	.LBB11_231
# BB#230:
	movq	%r12, %r15
	jmp	.LBB11_240
.LBB11_231:                             # %cond.end.683
	testl	%r14d, %r14d
	jne	.LBB11_237
# BB#232:                               # %sw.bb.i.673
	movl	$-15, %r14d
	testq	%rbx, %rbx
	je	.LBB11_233
# BB#234:                               # %land.lhs.true.i
	cmpl	%r15d, 168(%rsp)
	jne	.LBB11_235
# BB#236:                               # %land.lhs.true.2.i
	movq	160(%rsp), %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcmp
	xorl	%ebp, %ebp
	jmp	.LBB11_238
.LBB11_237:                             # %sw.default.i
	movl	$.L.str.2, %esi
	movq	%r13, %rdi
	callq	param_read_null
.LBB11_238:                             # %sw.default.i
	testl	%eax, %eax
	movq	%r12, %r15
	jne	.LBB11_239
	jmp	.LBB11_240
.LBB11_226:                             # %if.then.668
	movq	$0, 1088(%rsp)
	movl	$1, %ecx
	jmp	.LBB11_227
.LBB11_233:
	movq	%r12, %r15
	jmp	.LBB11_239
.LBB11_235:
	movq	%r12, %r15
.LBB11_239:                             # %e.i
	movq	(%r13), %rax
	movl	$.L.str.2, %esi
	movq	%r13, %rdi
	movl	%r14d, %edx
	callq	*56(%rax)
	movl	%r14d, %ebp
.LBB11_240:                             # %param_check_bytes.exit
	testl	%ebp, %ebp
	movl	140(%rsp), %r12d        # 4-byte Reload
	cmovsl	%ebp, %r12d
	leaq	160(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB11_242
# BB#241:                               # %sw.default.695
	movq	(%r13), %rax
	movl	$.L.str.6, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r12d
.LBB11_242:                             # %sw.epilog.700
	leaq	160(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebx
	movl	$1, %ebp
	cmpl	$1, %ebx
	je	.LBB11_247
# BB#243:                               # %sw.epilog.700
	testl	%ebx, %ebx
	jne	.LBB11_245
# BB#244:                               # %land.lhs.true.i.686
	movl	$-15, %ebx
	xorl	%ebp, %ebp
	cmpl	$0, 160(%rsp)
	jne	.LBB11_246
	jmp	.LBB11_247
.LBB11_245:                             # %sw.default.i.687
	movl	$.L.str.9, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB11_247
.LBB11_246:                             # %e.i.692
	movq	(%r13), %rax
	movl	$.L.str.9, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_247:                             # %param_check_bool.exit
	testl	%ebp, %ebp
	cmovsl	%ebp, %r12d
	leaq	1144(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r13, %rdi
	callq	param_read_name_array
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB11_251
# BB#248:                               # %param_check_bool.exit
	cmpl	$1, %ebx
	je	.LBB11_250
# BB#249:                               # %scne
	movq	(%r13), %rax
	movl	$.L.str.8, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r12d
.LBB11_250:                             # %sw.bb.721
	movq	$0, 1144(%rsp)
.LBB11_251:                             # %do.end.725
	movq	16(%r15), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r15
	leaq	160(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	movl	$1, %r14d
	cmpl	$1, %ebp
	movl	$1, %ecx
	je	.LBB11_257
# BB#252:                               # %do.end.725
	testl	%ebp, %ebp
	jne	.LBB11_255
# BB#253:                               # %sw.bb.i.696
	movl	$-15, %ebp
	cmpl	%r15d, 168(%rsp)
	jne	.LBB11_256
# BB#254:                               # %land.lhs.true.2.i.704
	movq	160(%rsp), %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB11_256
	jmp	.LBB11_257
.LBB11_255:                             # %sw.default.i.707
	movl	$.L.str, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	movl	$1, %ecx
	je	.LBB11_257
.LBB11_256:                             # %e.i.712
	movq	(%r13), %rax
	movl	$.L.str, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %ecx
.LBB11_257:                             # %param_check_bytes.exit714
	testl	%ecx, %ecx
	cmovsl	%ecx, %r12d
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r15
	leaq	160(%rsp), %rdx
	movl	$.L.str.39, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	jne	.LBB11_259
# BB#258:
	movq	152(%rsp), %r15         # 8-byte Reload
	jmp	.LBB11_266
.LBB11_259:                             # %param_check_bytes.exit714
	testl	%ebp, %ebp
	jne	.LBB11_263
# BB#260:                               # %sw.bb.i.717
	movl	$-15, %ebp
	cmpl	%r15d, 168(%rsp)
	jne	.LBB11_261
# BB#262:                               # %land.lhs.true.2.i.725
	movq	160(%rsp), %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcmp
	xorl	%r14d, %r14d
	jmp	.LBB11_264
.LBB11_263:                             # %sw.default.i.728
	movl	$.L.str.39, %esi
	movq	%r13, %rdi
	callq	param_read_null
.LBB11_264:                             # %sw.default.i.728
	testl	%eax, %eax
	movq	152(%rsp), %r15         # 8-byte Reload
	jne	.LBB11_265
	jmp	.LBB11_266
.LBB11_261:
	movq	152(%rsp), %r15         # 8-byte Reload
.LBB11_265:                             # %e.i.733
	movq	(%r13), %rax
	movl	$.L.str.39, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r14d
.LBB11_266:                             # %param_check_bytes.exit735
	testl	%r14d, %r14d
	cmovsl	%r14d, %r12d
	leaq	160(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%r13, %rdi
	callq	param_read_long
	movl	%eax, %ebx
	movl	$1, %ebp
	cmpl	$1, %ebx
	movl	$1, %eax
	je	.LBB11_271
# BB#267:                               # %param_check_bytes.exit735
	testl	%ebx, %ebx
	jne	.LBB11_269
# BB#268:                               # %land.lhs.true.i.739
	movl	$-15, %ebx
	xorl	%eax, %eax
	movq	112(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, 160(%rsp)
	jne	.LBB11_270
	jmp	.LBB11_271
.LBB11_269:                             # %sw.default.i.742
	movl	$.L.str.40, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	movl	$1, %eax
	je	.LBB11_271
.LBB11_270:                             # %e.i.747
	movq	(%r13), %rax
	movl	$.L.str.40, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB11_271:                             # %param_check_long.exit
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	leaq	160(%rsp), %rdx
	movl	$.L.str.41, %esi
	movq	%r13, %rdi
	callq	param_read_long
	movl	%eax, %ebx
	cmpl	$1, %ebx
	movl	144(%rsp), %r14d        # 4-byte Reload
	je	.LBB11_276
# BB#272:                               # %param_check_long.exit
	testl	%ebx, %ebx
	jne	.LBB11_274
# BB#273:                               # %land.lhs.true.i.752
	movl	$-15, %ebx
	xorl	%ebp, %ebp
	movq	88(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 160(%rsp)
	jne	.LBB11_275
	jmp	.LBB11_276
.LBB11_274:                             # %sw.default.i.755
	movl	$.L.str.41, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB11_276
.LBB11_275:                             # %e.i.760
	movq	(%r13), %rax
	movl	$.L.str.41, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_276:                             # %param_check_long.exit762
	testl	%ebp, %ebp
	cmovsl	%ebp, %r12d
	leaq	160(%rsp), %rdx
	movl	$.L.str.42, %esi
	movq	%r13, %rdi
	callq	param_read_long
	movl	%eax, %ebx
	movl	$1, %ebp
	cmpl	$1, %ebx
	je	.LBB11_281
# BB#277:                               # %param_check_long.exit762
	testl	%ebx, %ebx
	jne	.LBB11_279
# BB#278:                               # %land.lhs.true.i.766
	movl	120(%rsp), %eax         # 4-byte Reload
	incl	%eax
	cltq
	movl	$-15, %ebx
	xorl	%ebp, %ebp
	cmpq	%rax, 160(%rsp)
	jne	.LBB11_280
	jmp	.LBB11_281
.LBB11_279:                             # %sw.default.i.769
	movl	$.L.str.42, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB11_281
.LBB11_280:                             # %e.i.774
	movq	(%r13), %rax
	movl	$.L.str.42, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB11_281:                             # %param_check_long.exit776
	incl	%r14d
	testl	%ebp, %ebp
	cmovsl	%ebp, %r12d
	leaq	160(%rsp), %rdx
	movl	$.L.str.43, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jb	.LBB11_283
# BB#282:                               # %sw.default.763
	movq	(%r13), %rax
	movl	$.L.str.43, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r12d
.LBB11_283:                             # %sw.epilog.768
	movl	%r12d, %ebp
	movslq	%r14d, %r14
	leaq	160(%rsp), %rdx
	movl	$.L.str.56, %esi
	movq	%r13, %rdi
	callq	param_read_long
	movl	%eax, %ebx
	movl	$1, %r12d
	cmpl	$1, %ebx
	movl	$1, %eax
	je	.LBB11_288
# BB#284:                               # %sw.epilog.768
	testl	%ebx, %ebx
	jne	.LBB11_286
# BB#285:                               # %land.lhs.true.i.780
	movl	$-15, %ebx
	xorl	%eax, %eax
	cmpq	%r14, 160(%rsp)
	jne	.LBB11_287
	jmp	.LBB11_288
.LBB11_286:                             # %sw.default.i.783
	movl	$.L.str.56, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	movl	$1, %eax
	je	.LBB11_288
.LBB11_287:                             # %e.i.788
	movq	(%r13), %rax
	movl	$.L.str.56, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB11_288:                             # %param_check_long.exit790
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	160(%rsp), %rdx
	movl	$.L.str.57, %esi
	movq	%r13, %rdi
	callq	param_read_long
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_293
# BB#289:                               # %param_check_long.exit790
	testl	%ebx, %ebx
	jne	.LBB11_291
# BB#290:                               # %land.lhs.true.i.794
	movl	$-15, %ebx
	xorl	%r12d, %r12d
	cmpq	%r14, 160(%rsp)
	jne	.LBB11_292
	jmp	.LBB11_293
.LBB11_291:                             # %sw.default.i.797
	movl	$.L.str.57, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB11_293
.LBB11_292:                             # %e.i.802
	movq	(%r13), %rax
	movl	$.L.str.57, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r12d
.LBB11_293:                             # %param_check_long.exit804
	testl	%r12d, %r12d
	cmovsl	%r12d, %ebp
	leaq	160(%rsp), %rdx
	movl	$.L.str.58, %esi
	movq	%r13, %rdi
	callq	param_read_long
	movl	%eax, %ebx
	movl	$1, %r12d
	cmpl	$1, %ebx
	movl	$1, %eax
	je	.LBB11_298
# BB#294:                               # %param_check_long.exit804
	testl	%ebx, %ebx
	jne	.LBB11_296
# BB#295:                               # %land.lhs.true.i.808
	movl	$-15, %ebx
	xorl	%eax, %eax
	cmpq	%r14, 160(%rsp)
	jne	.LBB11_297
	jmp	.LBB11_298
.LBB11_296:                             # %sw.default.i.811
	movl	$.L.str.58, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	movl	$1, %eax
	je	.LBB11_298
.LBB11_297:                             # %e.i.816
	movq	(%r13), %rax
	movl	$.L.str.58, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %eax
.LBB11_298:                             # %param_check_long.exit818
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	160(%rsp), %r14
	movl	$.L.str.59, %esi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	param_read_long
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB11_303
# BB#299:                               # %param_check_long.exit818
	testl	%ebx, %ebx
	jne	.LBB11_301
# BB#300:                               # %land.lhs.true.i.822
	movl	$-15, %ebx
	xorl	%r12d, %r12d
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 160(%rsp)
	jne	.LBB11_302
	jmp	.LBB11_303
.LBB11_301:                             # %sw.default.i.825
	movl	$.L.str.59, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB11_303
.LBB11_302:                             # %e.i.830
	movq	(%r13), %rax
	movl	$.L.str.59, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r12d
.LBB11_303:                             # %param_check_long.exit832
	testl	%r12d, %r12d
	cmovsl	%r12d, %ebp
	leaq	960(%rsp), %rdx
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB11_340
# BB#304:                               # %if.then.795
	movl	%ebp, 140(%rsp)         # 4-byte Spill
	movzwl	108(%r15), %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	cmpq	$8, %rax
	ja	.LBB11_327
# BB#305:                               # %if.then.795
	movl	100(%r15), %ebx
	cmpl	$3, %ebx
	jg	.LBB11_327
# BB#306:                               # %if.then.i.836
	movq	1192(%r15), %rcx
	testq	%rcx, %rcx
	jne	.LBB11_308
# BB#307:                               # %if.then.8.i.837
	movq	$gx_default_w_b_map_color_rgb, 1192(%r15)
	movl	$gx_default_w_b_map_color_rgb, %ecx
.LBB11_308:                             # %for.cond.preheader.i
	leal	-1(%rbx), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	1256(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%r15, %rbp
	callq	*%rcx
	testl	%eax, %eax
	js	.LBB11_326
# BB#309:                               # %for.cond.19.preheader.i.preheader
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	1(%rax), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leaq	1256(%rsp,%rax,2), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	1(%rbx), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movabsq	$8589934584, %r12       # imm = 0x1FFFFFFF8
	andq	%rcx, %r12
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB11_310:                             # %for.cond.19.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_315 Depth 2
                                        #     Child Loop BB11_322 Depth 2
	testl	%ebx, %ebx
	jle	.LBB11_324
# BB#311:                               # %overflow.checked
                                        #   in Loop: Header=BB11_310 Depth=1
	testq	%r12, %r12
	movl	$0, %ecx
	movq	%r14, %rax
	je	.LBB11_317
# BB#312:                               # %vector.memcheck
                                        #   in Loop: Header=BB11_310 Depth=1
	cmpq	64(%rsp), %r14          # 8-byte Folded Reload
	ja	.LBB11_314
# BB#313:                               # %vector.memcheck
                                        #   in Loop: Header=BB11_310 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%r14,%rax), %rax
	leaq	1256(%rsp), %rcx
	cmpq	%rax, %rcx
	movl	$0, %ecx
	movq	%r14, %rax
	jbe	.LBB11_317
.LBB11_314:                             # %vector.body.preheader
                                        #   in Loop: Header=BB11_310 Depth=1
	leaq	(%r14,%r12), %rax
	leaq	4(%r14), %rcx
	movq	%r12, %rdx
	leaq	1264(%rsp), %rsi
	pxor	%xmm3, %xmm3
	movdqa	.LCPI11_3(%rip), %xmm4  # xmm4 = [65281,65281,65281,65281]
	movdqa	.LCPI11_4(%rip), %xmm5  # xmm5 = [8388608,8388608,8388608,8388608]
	movdqa	.LCPI11_5(%rip), %xmm6  # xmm6 = [255,255,255,255]
	.align	16, 0x90
.LBB11_315:                             # %vector.body
                                        #   Parent Loop BB11_310 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddd	%xmm5, %xmm0
	paddd	%xmm5, %xmm1
	psrld	$24, %xmm0
	psrld	$24, %xmm1
	pand	%xmm6, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, -4(%rcx)
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rcx)
	addq	$16, %rsi
	addq	$8, %rcx
	addq	$-8, %rdx
	jne	.LBB11_315
# BB#316:                               #   in Loop: Header=BB11_310 Depth=1
	movq	%r12, %rcx
.LBB11_317:                             # %middle.block
                                        #   in Loop: Header=BB11_310 Depth=1
	cmpq	%rcx, 120(%rsp)         # 8-byte Folded Reload
	je	.LBB11_323
# BB#318:                               # %for.body.22.i.preheader
                                        #   in Loop: Header=BB11_310 Depth=1
	movl	%ecx, %edx
	orl	$1, %edx
	movl	56(%rsp), %esi          # 4-byte Reload
	subl	%edx, %esi
	testb	$1, %sil
	je	.LBB11_320
# BB#319:                               # %for.body.22.i.prol
                                        #   in Loop: Header=BB11_310 Depth=1
	movzwl	1256(%rsp,%rcx,2), %esi
	imull	$65281, %esi, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movb	%sil, (%rax)
	incq	%rax
	orq	$1, %rcx
.LBB11_320:                             # %for.body.22.i.preheader.split
                                        #   in Loop: Header=BB11_310 Depth=1
	cmpl	%edx, %ebx
	je	.LBB11_323
# BB#321:                               # %for.body.22.i.preheader.split.split
                                        #   in Loop: Header=BB11_310 Depth=1
	movl	%ebx, %edx
	subl	%ecx, %edx
	leaq	1258(%rsp), %rsi
	leaq	(%rsi,%rcx,2), %rcx
	.align	16, 0x90
.LBB11_322:                             # %for.body.22.i
                                        #   Parent Loop BB11_310 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-2(%rcx), %esi
	imull	$65281, %esi, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movb	%sil, (%rax)
	movzwl	(%rcx), %esi
	imull	$65281, %esi, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$24, %esi
	movb	%sil, 1(%rax)
	addq	$4, %rcx
	addq	$2, %rax
	addl	$-2, %edx
	jne	.LBB11_322
.LBB11_323:                             # %for.cond.19.for.inc.27_crit_edge.i
                                        #   in Loop: Header=BB11_310 Depth=1
	addq	128(%rsp), %r14         # 8-byte Folded Reload
.LBB11_324:                             # %for.inc.27.i
                                        #   in Loop: Header=BB11_310 Depth=1
	incq	%r15
	movq	%r15, %rax
	movq	144(%rsp), %rcx         # 8-byte Reload
	shrq	%cl, %rax
	testq	%rax, %rax
	jne	.LBB11_332
# BB#325:                               # %for.inc.27.for.body_crit_edge.i
                                        #   in Loop: Header=BB11_310 Depth=1
	movq	%rbp, %rdi
	movq	%r15, %rsi
	leaq	1256(%rsp), %rdx
	callq	*1192(%rbp)
	testl	%eax, %eax
	jns	.LBB11_310
.LBB11_326:                             # %param_HWColorMap.exit.thread967
	movq	%rbp, %r15
.LBB11_327:                             # %if.else.803
	leaq	1256(%rsp), %rdx
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebx
	movl	$-15, %ebp
	testl	%ebx, %ebx
	je	.LBB11_330
# BB#328:                               # %if.else.803
	movl	$1, %r14d
	cmpl	$1, %ebx
	je	.LBB11_331
# BB#329:                               # %sw.default.i.868
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	movl	%ebx, %ebp
	je	.LBB11_331
.LBB11_330:                             # %e.i.873
	movq	(%r13), %rax
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r14d
.LBB11_331:                             # %param_check_bytes.exit875
	movl	140(%rsp), %ebp         # 4-byte Reload
.LBB11_339:                             # %if.end.805
	testl	%r14d, %r14d
	cmovsl	%r14d, %ebp
.LBB11_340:                             # %if.end.810
	movq	(%r13), %rax
	movq	%r13, %rdi
	callq	*64(%rax)
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	js	.LBB11_427
# BB#341:                               # %if.end.816
	testl	%eax, %eax
	movl	%eax, %ecx
	js	.LBB11_427
# BB#342:                               # %if.end.820
	movq	1240(%rsp), %rax
	testq	%rax, %rax
	movl	104(%rsp), %ebx         # 4-byte Reload
	je	.LBB11_348
# BB#343:                               # %land.lhs.true.824
	movq	72(%rsp), %rcx          # 8-byte Reload
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB11_345
	jp	.LBB11_345
# BB#344:                               # %lor.lhs.false.831
	movss	888(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	4(%rax), %xmm1
	jne	.LBB11_345
	jnp	.LBB11_348
.LBB11_345:                             # %if.then.838
	cmpl	$0, 84(%r15)
	je	.LBB11_347
# BB#346:                               # %if.then.840
	movq	%r15, %rdi
	callq	gs_closedevice
	movq	1240(%rsp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
.LBB11_347:                             # %if.end.842
	cvtss2sd	%xmm0, %xmm0
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movq	%r15, %rdi
	callq	gx_device_set_resolution
.LBB11_348:                             # %if.end.849
	movl	852(%r15), %eax
	movl	%eax, %ecx
	xorl	%ebx, %ecx
	testb	$3, %cl
	je	.LBB11_352
# BB#349:                               # %if.then.855
	movl	%ebx, 852(%r15)
	cmpl	$0, 84(%r15)
	je	.LBB11_351
# BB#350:                               # %if.then.859
	movq	%r15, %rdi
	callq	gs_closedevice
.LBB11_351:                             # %if.end.861
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movq	%r15, %rdi
	callq	gx_device_set_resolution
	movl	852(%r15), %eax
.LBB11_352:                             # %if.end.868
	andl	$3, %eax
	andl	$4, %ebx
	orl	%eax, %ebx
	movl	%ebx, 852(%r15)
	movq	1224(%rsp), %rax
	testq	%rax, %rax
	je	.LBB11_358
# BB#353:                               # %land.lhs.true.877
	movl	(%rax), %esi
	cmpl	%esi, 832(%r15)
	jne	.LBB11_355
# BB#354:                               # %lor.lhs.false.883
	movl	836(%r15), %ecx
	cmpl	4(%rax), %ecx
	je	.LBB11_358
.LBB11_355:                             # %if.then.889
	cmpl	$0, 84(%r15)
	je	.LBB11_357
# BB#356:                               # %if.then.892
	movq	%r15, %rdi
	callq	gs_closedevice
	movq	1224(%rsp), %rax
	movl	(%rax), %esi
.LBB11_357:                             # %if.end.894
	movl	4(%rax), %edx
	movq	%r15, %rdi
	callq	gx_device_set_width_height
.LBB11_358:                             # %if.end.899
	movq	1208(%rsp), %rax
	testq	%rax, %rax
	je	.LBB11_364
# BB#359:                               # %land.lhs.true.903
	movss	856(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB11_361
	jp	.LBB11_361
# BB#360:                               # %lor.lhs.false.909
	movss	860(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	4(%rax), %xmm1
	jne	.LBB11_361
	jnp	.LBB11_364
.LBB11_361:                             # %if.then.916
	cmpl	$0, 84(%r15)
	je	.LBB11_363
# BB#362:                               # %if.then.919
	movq	%r15, %rdi
	callq	gs_closedevice
	movq	1208(%rsp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
.LBB11_363:                             # %if.end.921
	cvtss2sd	%xmm0, %xmm0
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movq	%r15, %rdi
	callq	gx_device_set_media_size
.LBB11_364:                             # %if.end.928
	movq	1192(%rsp), %rax
	testq	%rax, %rax
	je	.LBB11_366
# BB#365:                               # %if.then.932
	movl	(%rax), %ecx
	movl	%ecx, 900(%r15)
	movl	4(%rax), %eax
	movl	%eax, 904(%r15)
.LBB11_366:                             # %if.end.940
	movq	1176(%rsp), %rax
	testq	%rax, %rax
	je	.LBB11_368
# BB#367:                               # %if.then.944
	movl	(%rax), %ecx
	movl	%ecx, 908(%r15)
	movl	4(%rax), %ecx
	movl	%ecx, 912(%r15)
	movl	8(%rax), %ecx
	movl	%ecx, 916(%r15)
	movl	12(%rax), %eax
	movl	%eax, 920(%r15)
.LBB11_368:                             # %if.end.960
	leaq	1064(%r15), %rbx
	movl	1140(%rsp), %eax
	movl	%eax, 944(%r15)
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, 948(%r15)
	movl	1136(%rsp), %eax
	movl	%eax, 952(%r15)
	movq	1088(%rsp), %rax
	testq	%rax, %rax
	je	.LBB11_370
# BB#369:                               # %if.then.967
	movl	(%rax), %ecx
	movl	%ecx, 864(%r15)
	movl	4(%rax), %ecx
	movl	%ecx, 868(%r15)
	movl	8(%rax), %ecx
	movl	%ecx, 872(%r15)
	movl	12(%rax), %eax
	movl	%eax, 876(%r15)
	movl	$1, 880(%r15)
	jmp	.LBB11_372
.LBB11_370:                             # %if.else.983
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB11_372
# BB#371:                               # %if.then.985
	movl	$0, 880(%r15)
.LBB11_372:                             # %if.end.988
	movl	1132(%rsp), %eax
	movl	%eax, 956(%r15)
	movl	112(%r15), %eax
	movl	116(%r15), %edi
	cmpl	%edi, %eax
	cmoval	%eax, %edi
	movl	1084(%rsp), %ebp
	incl	%edi
	callq	ilog2
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	movl	%ebp, 128(%r15)
	movl	112(%r15), %eax
	movl	116(%r15), %edi
	cmpl	%edi, %eax
	cmoval	%eax, %edi
	movl	1080(%rsp), %ebp
	incl	%edi
	callq	ilog2
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	movl	%ebp, 132(%r15)
	movl	1108(%rsp), %eax
	movl	%eax, 960(%r15)
	movl	1076(%rsp), %eax
	movl	%eax, 1052(%r15)
	movq	1056(%rsp), %rax
	movq	%rax, 32(%rbx)
	movaps	1024(%rsp), %xmm0
	movaps	1040(%rsp), %xmm1
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movl	1072(%rsp), %eax
	movl	%eax, 1056(%r15)
	movq	%r15, %rdi
	callq	gx_device_decache_colors
	cmpq	$0, 1104(%r15)
	je	.LBB11_389
# BB#373:                               # %if.then.1033
	movl	1008(%rsp), %edi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	gx_default_put_intent
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB11_427
# BB#374:                               # %if.end.1039
	movl	992(%rsp), %edi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	gx_default_put_blackptcomp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB11_427
# BB#375:                               # %if.end.1045
	movl	976(%rsp), %edi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	gx_default_put_blackpreserve
	movl	%eax, %ecx
	movl	$1, %ebp
	testl	%ecx, %ecx
	js	.LBB11_427
	.align	16, 0x90
.LBB11_377:                             # %for.body.1055
                                        # =>This Inner Loop Header: Depth=1
	movl	1008(%rsp), %edi
	movl	1008(%rsp,%rbp,4), %eax
	movl	.Lgx_default_put_params.profile_types(,%rbp,4), %ebx
	cmpl	$8, %edi
	je	.LBB11_379
# BB#378:                               # %for.body.1055
                                        #   in Loop: Header=BB11_377 Depth=1
	cmpl	$8, %eax
	je	.LBB11_380
.LBB11_379:                             # %if.else.1069
                                        #   in Loop: Header=BB11_377 Depth=1
	movl	%eax, %edi
.LBB11_380:                             # %if.end.1075
                                        #   in Loop: Header=BB11_377 Depth=1
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	gx_default_put_intent
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB11_427
# BB#381:                               # %if.end.1079
                                        #   in Loop: Header=BB11_377 Depth=1
	movl	992(%rsp), %edi
	movl	992(%rsp,%rbp,4), %eax
	cmpl	$8, %edi
	je	.LBB11_383
# BB#382:                               # %if.end.1079
                                        #   in Loop: Header=BB11_377 Depth=1
	cmpl	$8, %eax
	je	.LBB11_384
.LBB11_383:                             # %if.else.1093
                                        #   in Loop: Header=BB11_377 Depth=1
	movl	%eax, %edi
.LBB11_384:                             # %if.end.1099
                                        #   in Loop: Header=BB11_377 Depth=1
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	gx_default_put_blackptcomp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB11_427
# BB#385:                               # %if.end.1103
                                        #   in Loop: Header=BB11_377 Depth=1
	movl	976(%rsp), %edi
	movl	976(%rsp,%rbp,4), %eax
	cmpl	$8, %edi
	je	.LBB11_387
# BB#386:                               # %if.end.1103
                                        #   in Loop: Header=BB11_377 Depth=1
	cmpl	$8, %eax
	je	.LBB11_388
.LBB11_387:                             # %if.else.1117
                                        #   in Loop: Header=BB11_377 Depth=1
	movl	%eax, %edi
.LBB11_388:                             # %if.end.1123
                                        #   in Loop: Header=BB11_377 Depth=1
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	gx_default_put_blackpreserve
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB11_427
# BB#376:                               # %for.cond.1052
                                        #   in Loop: Header=BB11_377 Depth=1
	incq	%rbp
	cmpq	$3, %rbp
	jle	.LBB11_377
.LBB11_389:                             # %if.end.1131
	movl	956(%rsp), %ebx
	movq	1680(%r15), %rax
	testq	%rax, %rax
	je	.LBB11_390
# BB#393:                               # %if.else.i.891
	leaq	160(%rsp), %rsi
	movq	%r15, %rdi
	callq	*%rax
	movl	%eax, %ebp
	movq	160(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB11_396
# BB#394:                               # %if.then.13.i
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
	movq	%rax, 160(%rsp)
	testq	%rax, %rax
	je	.LBB11_395
.LBB11_396:                             # %gx_default_put_graytok.exit
	movl	%ebx, 152(%rax)
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	jns	.LBB11_397
	jmp	.LBB11_427
.LBB11_332:                             # %if.then.799
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	112(%rsp), %rax         # 8-byte Reload
	shll	%cl, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	1256(%rsp), %rdx
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebx
	movl	$1, %r14d
	cmpl	$1, %ebx
	jne	.LBB11_334
# BB#333:
	movq	%rbp, %r15
	movl	140(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB11_339
.LBB11_390:                             # %if.then.i.886
	movq	1104(%r15), %rax
	testq	%rax, %rax
	jne	.LBB11_392
# BB#391:                               # %if.then.2.i.889
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
	testq	%rax, %rax
	je	.LBB11_395
.LBB11_392:                             # %gx_default_put_graytok.exit.thread972
	movl	%ebx, 152(%rax)
.LBB11_397:                             # %if.end.1136
	movl	948(%rsp), %ebx
	movq	1680(%r15), %rax
	testq	%rax, %rax
	je	.LBB11_398
# BB#401:                               # %if.else.i.906
	leaq	160(%rsp), %rsi
	movq	%r15, %rdi
	callq	*%rax
	movl	%eax, %ebp
	movq	160(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB11_404
# BB#402:                               # %if.then.13.i.911
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
	movq	%rax, 160(%rsp)
	testq	%rax, %rax
	je	.LBB11_403
.LBB11_404:                             # %gx_default_put_usefastcolor.exit
	movl	%ebx, 164(%rax)
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	jns	.LBB11_405
	jmp	.LBB11_427
.LBB11_334:                             # %if.then.799
	testl	%ebx, %ebx
	movq	%rbp, %r15
	jne	.LBB11_337
# BB#335:                               # %sw.bb.i.844
	movl	$-15, %ebx
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, 1264(%rsp)
	movl	140(%rsp), %ebp         # 4-byte Reload
	jne	.LBB11_338
# BB#336:                               # %land.lhs.true.2.i.852
	movq	1256(%rsp), %rsi
	movl	%eax, %edx
	leaq	160(%rsp), %rdi
	callq	memcmp
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.LBB11_338
	jmp	.LBB11_339
.LBB11_398:                             # %if.then.i.898
	movq	1104(%r15), %rax
	testq	%rax, %rax
	jne	.LBB11_400
# BB#399:                               # %if.then.2.i.902
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
	testq	%rax, %rax
	je	.LBB11_403
.LBB11_400:                             # %gx_default_put_usefastcolor.exit.thread975
	movl	%ebx, 164(%rax)
.LBB11_405:                             # %if.end.1141
	movl	944(%rsp), %ebx
	movq	1680(%r15), %rax
	testq	%rax, %rax
	je	.LBB11_406
# BB#409:                               # %if.else.i.926
	leaq	160(%rsp), %rsi
	movq	%r15, %rdi
	callq	*%rax
	movl	%eax, %ebp
	movq	160(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB11_412
# BB#410:                               # %if.then.14.i
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
	movq	%rax, 160(%rsp)
	testq	%rax, %rax
	je	.LBB11_411
.LBB11_412:                             # %gx_default_put_simulateoverprint.exit
	movl	%ebx, 172(%rax)
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	jns	.LBB11_413
	jmp	.LBB11_427
.LBB11_406:                             # %if.then.i.919
	movq	1104(%r15), %rax
	testq	%rax, %rax
	jne	.LBB11_408
# BB#407:                               # %if.then.2.i.923
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
	testq	%rax, %rax
	je	.LBB11_411
.LBB11_408:                             # %gx_default_put_simulateoverprint.exit.thread978
	movl	%ebx, 172(%rax)
.LBB11_413:                             # %if.end.1146
	movl	952(%rsp), %ebx
	movq	1680(%r15), %rax
	testq	%rax, %rax
	je	.LBB11_414
# BB#417:                               # %if.else.i.939
	leaq	160(%rsp), %rsi
	movq	%r15, %rdi
	callq	*%rax
	movl	%eax, %ebp
	movq	160(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB11_419
# BB#418:                               # %if.then.11.i
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
	movq	%rax, 160(%rsp)
.LBB11_419:                             # %gx_default_put_graydetection.exit
	movl	%ebx, 156(%rax)
	movl	%ebx, 160(%rax)
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	jns	.LBB11_420
	jmp	.LBB11_427
.LBB11_395:                             # %gx_default_put_graytok.exit.thread
	movl	$-25, %ecx
	jmp	.LBB11_427
.LBB11_337:                             # %sw.default.i.855
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	callq	param_read_null
	testl	%eax, %eax
	movl	140(%rsp), %ebp         # 4-byte Reload
	je	.LBB11_339
.LBB11_338:                             # %e.i.860
	movq	(%r13), %rax
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r14d
	jmp	.LBB11_339
.LBB11_414:                             # %if.then.i.934
	movq	1104(%r15), %rax
	testq	%rax, %rax
	jne	.LBB11_416
# BB#415:                               # %if.then.2.i.937
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
.LBB11_416:                             # %gx_default_put_graydetection.exit.thread
	movl	%ebx, 156(%rax)
	movl	%ebx, 160(%rax)
.LBB11_420:                             # %if.end.1151
	movl	940(%rsp), %ebp
	movq	1680(%r15), %rax
	testq	%rax, %rax
	je	.LBB11_421
# BB#424:                               # %if.else.i.954
	leaq	160(%rsp), %rsi
	movq	%r15, %rdi
	callq	*%rax
	movl	%eax, %ebx
	movq	160(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB11_426
# BB#425:                               # %if.then.14.i.959
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
	movq	%rax, 160(%rsp)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB11_427
.LBB11_426:                             # %if.end.22.i.960
	movl	%ebp, 184(%rax)
	movl	%ebx, %ecx
	jmp	.LBB11_427
.LBB11_403:                             # %gx_default_put_usefastcolor.exit.thread
	movl	$-25, %ecx
	jmp	.LBB11_427
.LBB11_421:                             # %if.then.i.946
	movq	1104(%r15), %rax
	testq	%rax, %rax
	jne	.LBB11_423
# BB#422:                               # %if.then.2.i.950
	movq	24(%r15), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r15)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB11_427
.LBB11_423:                             # %if.end.7.i.951
	movl	%ebp, 184(%rax)
	xorl	%ecx, %ecx
	jmp	.LBB11_427
.LBB11_411:                             # %gx_default_put_simulateoverprint.exit.thread
	movl	$-25, %ecx
.LBB11_427:                             # %cleanup
	movl	%ecx, %eax
	addq	$1272, %rsp             # imm = 0x4F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gx_default_put_params, .Lfunc_end11-gx_default_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	gx_default_put_intent,@function
gx_default_put_intent:                  # @gx_default_put_intent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 48
.Ltmp60:
	.cfi_offset %rbx, -32
.Ltmp61:
	.cfi_offset %r14, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movl	%edi, %ebp
	movq	1680(%rbx), %rax
	testq	%rax, %rax
	je	.LBB12_1
# BB#2:                                 # %if.else
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*%rax
	cmpq	$0, 8(%rsp)
	jne	.LBB12_4
	jmp	.LBB12_3
.LBB12_1:                               # %if.then
	cmpq	$0, 1104(%rbx)
	jne	.LBB12_4
.LBB12_3:                               # %if.then.13
	movq	24(%rbx), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, %rcx
	movq	%rcx, 1104(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB12_5
.LBB12_4:                               # %if.end.21
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	gsicc_set_device_profile_intent
.LBB12_5:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gx_default_put_intent, .Lfunc_end12-gx_default_put_intent
	.cfi_endproc

	.align	16, 0x90
	.type	gx_default_put_blackptcomp,@function
gx_default_put_blackptcomp:             # @gx_default_put_blackptcomp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp66:
	.cfi_def_cfa_offset 48
.Ltmp67:
	.cfi_offset %rbx, -32
.Ltmp68:
	.cfi_offset %r14, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movl	%edi, %ebp
	movq	1680(%rbx), %rax
	testq	%rax, %rax
	je	.LBB13_1
# BB#2:                                 # %if.else
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB13_6
# BB#3:                                 # %if.end.14
	cmpq	$0, 8(%rsp)
	jne	.LBB13_5
	jmp	.LBB13_4
.LBB13_1:                               # %if.then
	cmpq	$0, 1104(%rbx)
	jne	.LBB13_5
.LBB13_4:                               # %if.then.16
	movq	24(%rbx), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, %rcx
	movq	%rcx, 1104(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB13_6
.LBB13_5:                               # %if.end.24
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	gsicc_set_device_blackptcomp
.LBB13_6:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gx_default_put_blackptcomp, .Lfunc_end13-gx_default_put_blackptcomp
	.cfi_endproc

	.align	16, 0x90
	.type	gx_default_put_blackpreserve,@function
gx_default_put_blackpreserve:           # @gx_default_put_blackpreserve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 48
.Ltmp74:
	.cfi_offset %rbx, -32
.Ltmp75:
	.cfi_offset %r14, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movl	%edi, %ebp
	movq	1680(%rbx), %rax
	testq	%rax, %rax
	je	.LBB14_1
# BB#2:                                 # %if.else
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB14_6
# BB#3:                                 # %if.end.14
	cmpq	$0, 8(%rsp)
	jne	.LBB14_5
	jmp	.LBB14_4
.LBB14_1:                               # %if.then
	cmpq	$0, 1104(%rbx)
	jne	.LBB14_5
.LBB14_4:                               # %if.then.16
	movq	24(%rbx), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, %rcx
	movq	%rcx, 1104(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB14_6
.LBB14_5:                               # %if.end.24
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	gsicc_set_device_blackpreserve
.LBB14_6:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gx_default_put_blackpreserve, .Lfunc_end14-gx_default_put_blackpreserve
	.cfi_endproc

	.globl	gx_device_request_leadingedge
	.align	16, 0x90
	.type	gx_device_request_leadingedge,@function
gx_device_request_leadingedge:          # @gx_device_request_leadingedge
	.cfi_startproc
# BB#0:                                 # %entry
	movl	852(%rdi), %eax
	andl	$-57, %eax
	shll	$4, %esi
	andl	$48, %esi
	orl	%eax, %esi
	orl	$8, %esi
	movl	%esi, 852(%rdi)
	retq
.Lfunc_end15:
	.size	gx_device_request_leadingedge, .Lfunc_end15-gx_device_request_leadingedge
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OutputDevice"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"PageSize"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ProcessColorModel"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"HWResolution"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ImagingBBox"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Margins"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"MaxSeparations"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"NumCopies"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"SeparationColorNames"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Separations"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"UseCIEColor"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"DeviceGrayToK"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GrayDetection"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"UseFastColor"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"SimulateOverprint"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"PreBandThreshold"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"OutputICCProfile"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GraphicICCProfile"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ImageICCProfile"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"TextICCProfile"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ProofProfile"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"DeviceLinkProfile"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"ICCOutputColors"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"RenderIntent"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"GraphicIntent"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ImageIntent"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"TextIntent"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"BlackPtComp"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GraphicBlackPt"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"ImageBlackPt"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"TextBlackPt"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"KPreserve"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GraphicKPreserve"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"ImageKPreserve"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"TextKPreserve"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"HWSize"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	".HWMargins"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	".MarginsHWResolution"
	.size	.L.str.37, 21

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	".MediaSize"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Name"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Colors"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"BitsPerPixel"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GrayValues"
	.size	.L.str.42, 11

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"PageCount"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	".IgnoreNumCopies"
	.size	.L.str.44, 17

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"TextAlphaBits"
	.size	.L.str.45, 14

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"GraphicsAlphaBits"
	.size	.L.str.46, 18

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	".LockSafetyParams"
	.size	.L.str.47, 18

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"MaxPatternBitmap"
	.size	.L.str.48, 17

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"PageUsesTransparency"
	.size	.L.str.49, 21

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"MaxBitmap"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"BandBufferSpace"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"BandHeight"
	.size	.L.str.52, 11

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"BandWidth"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"BufferSpace"
	.size	.L.str.54, 12

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"LeadingEdge"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"RedValues"
	.size	.L.str.56, 10

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"GreenValues"
	.size	.L.str.57, 12

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"BlueValues"
	.size	.L.str.58, 11

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"ColorValues"
	.size	.L.str.59, 12

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"HWColorMap"
	.size	.L.str.60, 11

	.type	gdev_input_media_default,@object # @gdev_input_media_default
	.section	.rodata,"a",@progbits
	.globl	gdev_input_media_default
	.align	8
gdev_input_media_default:
	.zero	40
	.size	gdev_input_media_default, 40

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"InputAttributes"
	.size	.L.str.61, 16

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%d"
	.size	.L.str.62, 3

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"MediaColor"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"MediaWeight"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"MediaType"
	.size	.L.str.65, 10

	.type	gdev_output_media_default,@object # @gdev_output_media_default
	.section	.rodata,"a",@progbits
	.globl	gdev_output_media_default
	.align	8
gdev_output_media_default:
	.zero	8
	.size	gdev_output_media_default, 8

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"OutputAttributes"
	.size	.L.str.66, 17

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"OutputType"
	.size	.L.str.67, 11

	.type	.Lgx_default_put_params.profile_types,@object # @gx_default_put_params.profile_types
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.Lgx_default_put_params.profile_types:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.size	.Lgx_default_put_params.profile_types, 16

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"%MediaSource"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"%MediaDestination"
	.size	.L.str.69, 18

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gx_default_put_icc"
	.size	.L.str.70, 19

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gx_default_put_icc_colorants"
	.size	.L.str.71, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
