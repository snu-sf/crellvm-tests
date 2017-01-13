	.text
	.file	"zdevice.bc"
	.globl	zcurrentdevice
	.align	16, 0x90
	.type	zcurrentdevice,@function
zcurrentdevice:                         # @zcurrentdevice
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
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_currentdevice
	leaq	16(%r15), %r14
	cmpq	640(%rbx), %r14
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB0_5
.LBB0_2:                                # %if.else
	movq	24(%rax), %rdi
	movq	%r14, 624(%rbx)
	movq	%rax, 24(%r15)
	movw	$4976, %ax              # imm = 0x1370
	testq	%rdi, %rdi
	je	.LBB0_4
# BB#3:                                 # %cond.false
	callq	imemory_space
	orl	$112, %eax
	addl	$4864, %eax             # imm = 0x1300
.LBB0_4:                                # %cond.end
	movw	%ax, (%r14)
	xorl	%eax, %eax
.LBB0_5:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	zcurrentdevice, .Lfunc_end0-zcurrentdevice
	.cfi_endproc

	.globl	zflushpage
	.align	16, 0x90
	.type	zflushpage,@function
zflushpage:                             # @zflushpage
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_flushpage            # TAILCALL
.Lfunc_end1:
	.size	zflushpage, .Lfunc_end1-zflushpage
	.cfi_endproc

	.globl	zsetdevice
	.align	16, 0x90
	.type	zsetdevice,@function
zsetdevice:                             # @zsetdevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_currentdevice
	movq	624(%rbx), %rbp
	movzwl	(%rbp), %ecx
	andl	$16144, %ecx            # imm = 0x3F10
	cmpl	$4880, %ecx             # imm = 0x1310
	jne	.LBB2_1
# BB#3:                                 # %if.end
	cmpl	$0, 960(%rax)
	movq	8(%rbp), %rsi
	je	.LBB2_6
# BB#4:                                 # %if.then.8
	movl	$-7, %r14d
	cmpq	%rax, %rsi
	jne	.LBB2_14
# BB#5:                                 # %if.end.13.thread
	movq	$0, 936(%rax)
	movq	%rax, %rsi
	jmp	.LBB2_7
.LBB2_1:                                # %if.then
	movzbl	1(%rbp), %eax
	movl	$-7, %r14d
	cmpl	$19, %eax
	je	.LBB2_14
# BB#2:                                 # %cond.true
	movq	%rbp, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB2_6:                                # %if.end.13
	movq	$0, 936(%rax)
	movl	$-21, %r14d
	testq	%rsi, %rsi
	je	.LBB2_14
.LBB2_7:                                # %if.end.19
	movq	(%rbx), %rdi
	callq	gs_setdevice_no_erase
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_14
# BB#8:                                 # %if.end.27
	setne	%al
	movzbl	%al, %eax
	movw	%ax, 8(%rbp)
	movw	$256, (%rbp)            # imm = 0x100
	movq	632(%rbx), %rax
	movq	640(%rbx), %rcx
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_12:                               # %if.end.i
                                        #   in Loop: Header=BB2_9 Depth=1
	addq	$16, %rax
.LBB2_9:                                # %if.end.27
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rax
	je	.LBB2_13
# BB#10:                                # %while.body.i
                                        #   in Loop: Header=BB2_9 Depth=1
	movzbl	1(%rax), %edx
	cmpl	$19, %edx
	jne	.LBB2_12
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB2_9 Depth=1
	movq	$0, 8(%rax)
	movq	640(%rbx), %rcx
	jmp	.LBB2_12
.LBB2_13:                               # %invalidate_stack_devices.exit
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movw	$3584, 512(%rax)        # imm = 0xE00
.LBB2_14:                               # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zsetdevice, .Lfunc_end2-zsetdevice
	.cfi_endproc

	.align	16, 0x90
	.type	zcopydevice2,@function
zcopydevice2:                           # @zcopydevice2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -24
.Ltmp16:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	-16(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4896, %eax             # imm = 0x1320
	jne	.LBB3_1
# BB#3:                                 # %if.end
	movzbl	1(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB3_2
# BB#4:                                 # %if.end.18
	movq	-8(%rbx), %rsi
	movzwl	8(%rbx), %edx
	movq	8(%r14), %rcx
	leaq	(%rsp), %rdi
	callq	gs_copydevice2
	testl	%eax, %eax
	js	.LBB3_6
# BB#5:                                 # %if.end.26
	movq	8(%r14), %rax
	movq	(%rsp), %rcx
	movq	%rax, 24(%rcx)
	movq	(%rsp), %rax
	movq	%rax, -8(%rbx)
	movl	56(%r14), %eax
	orl	$112, %eax
	addl	$4864, %eax             # imm = 0x1300
	movw	%ax, -16(%rbx)
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB3_6
.LBB3_1:                                # %if.then
	addq	$-16, %rbx
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$19, %ecx
	je	.LBB3_6
.LBB3_2:                                # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB3_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	zcopydevice2, .Lfunc_end3-zcopydevice2
	.cfi_endproc

	.align	16, 0x90
	.type	zdevicename,@function
zdevicename:                            # @zdevicename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4896, %eax             # imm = 0x1320
	jne	.LBB4_1
# BB#3:                                 # %if.end
	movq	8(%rbx), %rax
	movq	16(%rax), %rdi
	movq	%rdi, 8(%rbx)
	movw	$4704, (%rbx)           # imm = 0x1260
	callq	strlen
	movl	%eax, 4(%rbx)
	xorl	%eax, %eax
	jmp	.LBB4_4
.LBB4_1:                                # %if.then
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$19, %ecx
	jne	.LBB4_2
.LBB4_4:                                # %cleanup
	popq	%rbx
	retq
.LBB4_2:                                # %cond.true
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end4:
	.size	zdevicename, .Lfunc_end4-zdevicename
	.cfi_endproc

	.align	16, 0x90
	.type	zdoneshowpage,@function
zdoneshowpage:                          # @zdoneshowpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	gs_currentdevice
	movq	%rax, %rdi
	callq	*1296(%rax)
	testq	%rax, %rax
	je	.LBB5_2
# BB#1:                                 # %if.then
	incq	936(%rax)
.LBB5_2:                                # %if.end
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end5:
	.size	zdoneshowpage, .Lfunc_end5-zdoneshowpage
	.cfi_endproc

	.align	16, 0x90
	.type	zgetbitsrect,@function
zgetbitsrect:                           # @zgetbitsrect
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
	subq	$552, %rsp              # imm = 0x228
.Ltmp26:
	.cfi_def_cfa_offset 608
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	-112(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4896, %eax             # imm = 0x1320
	jne	.LBB6_1
# BB#4:                                 # %if.end
	leaq	-96(%rbx), %r15
	movzbl	-95(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_5
# BB#6:                                 # %if.end.21
	movq	-104(%rbx), %rdi
	movq	-88(%rbx), %rsi
	movslq	832(%rdi), %rax
	movl	$-15, %ecx
	cmpq	%rax, %rsi
	ja	.LBB6_32
# BB#7:                                 # %do.end
	movl	%esi, 536(%rsp)
	movzbl	-79(%rbx), %edx
	cmpl	$11, %edx
	jne	.LBB6_8
# BB#9:                                 # %if.end.45
	movq	-72(%rbx), %r11
	movslq	836(%rdi), %rdx
	cmpq	%rdx, %r11
	ja	.LBB6_32
# BB#10:                                # %do.end.55
	movl	%r11d, 540(%rsp)
	movzbl	-63(%rbx), %ebp
	cmpl	$11, %ebp
	jne	.LBB6_11
# BB#12:                                # %if.end.72
	movq	-56(%rbx), %r8
	cmpq	%rax, %r8
	ja	.LBB6_32
# BB#13:                                # %do.end.83
	movzbl	-47(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_14
# BB#15:                                # %if.end.99
	movq	-40(%rbx), %r9
	cmpq	%rdx, %r9
	ja	.LBB6_32
# BB#16:                                # %do.end.110
	movzbl	-31(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_17
# BB#18:                                # %if.end.125
	movq	-24(%rbx), %rax
	leaq	1(%rax), %rdx
	cmpq	$2, %rdx
	ja	.LBB6_32
# BB#19:                                # %switch.lookup
	movq	.Lswitch.table+8(,%rax,8), %r10
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_20
# BB#23:                                # %if.end.173
	movq	-8(%rbx), %rax
	cmpq	$16, %rax
	ja	.LBB6_32
# BB#24:                                # %do.end.182
	movslq	%eax, %rdx
	movl	$61161, %ebp            # imm = 0xEEE9
	btq	%rdx, %rbp
	jb	.LBB6_32
# BB#25:                                # %cleanup
	orq	zgetbitsrect.depths(,%rdx,8), %r10
	movl	%r10d, %r13d
	shrl	$4, %r13d
	notl	%r13d
	andl	$1, %r13d
	addl	100(%rdi), %r13d
	imull	%eax, %r13d
	jmp	.LBB6_26
.LBB6_1:                                # %if.then
	addq	$-112, %rbx
	movzbl	1(%rbx), %eax
	movl	$-7, %ecx
	cmpl	$19, %eax
	je	.LBB6_32
	jmp	.LBB6_2
.LBB6_5:                                # %if.then.18
	movq	%r15, %rdi
	jmp	.LBB6_3
.LBB6_8:                                # %if.then.42
	addq	$-80, %rbx
	jmp	.LBB6_2
.LBB6_11:                               # %if.then.69
	addq	$-64, %rbx
	jmp	.LBB6_2
.LBB6_14:                               # %if.then.96
	addq	$-48, %rbx
	jmp	.LBB6_2
.LBB6_17:                               # %if.then.122
	addq	$-32, %rbx
.LBB6_2:                                # %cond.true
	movq	%rbx, %rdi
.LBB6_3:                                # %cleanup.268
	callq	check_type_failed
	movl	%eax, %ecx
.LBB6_32:                               # %cleanup.268
	movl	%ecx, %eax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_20:                               # %switch.lookup
	movzbl	%al, %eax
	cmpl	$14, %eax
	jne	.LBB6_22
# BB#21:                                # %if.then.157
	movzwl	108(%rdi), %r13d
.LBB6_26:                               # %if.end.198
	testl	%r8d, %r8d
	je	.LBB6_32
# BB#27:                                # %if.end.202
	movzwl	(%rbx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB6_28
# BB#29:                                # %if.end.223
	imull	%r8d, %r13d
	addl	$7, %r13d
	sarl	$3, %r13d
	movl	4(%rbx), %eax
	xorl	%edx, %edx
	divl	%r13d
	movl	%eax, %r12d
	cmpl	%r12d, %r9d
	cmovlel	%r9d, %r12d
	testl	%r12d, %r12d
	je	.LBB6_32
# BB#30:                                # %if.end.234
	orq	$1, %r10
	addl	%r8d, %esi
	movl	%esi, 544(%rsp)
	addl	%r12d, %r11d
	movl	%r11d, 548(%rsp)
	movq	%r10, (%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	leaq	536(%rsp), %rsi
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	*1448(%rdi)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB6_32
# BB#31:                                # %if.end.251
	movslq	%r12d, %rax
	movq	%rax, -104(%rbx)
	movw	$2816, -112(%rbx)       # imm = 0xB00
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
	imull	%r12d, %r13d
	movl	%r13d, -92(%rbx)
	addq	$-96, 624(%r14)
	xorl	%ecx, %ecx
	jmp	.LBB6_32
.LBB6_22:                               # %if.then.170
	addq	$-16, %rbx
	jmp	.LBB6_2
.LBB6_28:                               # %if.then.211
	movzbl	1(%rbx), %eax
	movl	$-7, %ecx
	cmpl	$18, %eax
	jne	.LBB6_2
	jmp	.LBB6_32
.Lfunc_end6:
	.size	zgetbitsrect, .Lfunc_end6-zgetbitsrect
	.cfi_endproc

	.align	16, 0x90
	.type	zgetdevice,@function
zgetdevice:                             # @zgetdevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 32
.Ltmp36:
	.cfi_offset %rbx, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB7_5
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	movslq	%edi, %rax
	movl	$-15, %ebp
	cmpq	%rax, %rdi
	jne	.LBB7_4
# BB#2:                                 # %if.end.9
	callq	gs_getdevice
	testq	%rax, %rax
	je	.LBB7_4
# BB#3:                                 # %if.end.17
	movq	%rax, 8(%rbx)
	movw	$4960, (%rbx)           # imm = 0x1360
	xorl	%ebp, %ebp
.LBB7_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB7_5:                                # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.Lfunc_end7:
	.size	zgetdevice, .Lfunc_end7-zgetdevice
	.cfi_endproc

	.align	16, 0x90
	.type	zgetdefaultdevice,@function
zgetdefaultdevice:                      # @zgetdefaultdevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 32
.Ltmp41:
	.cfi_offset %rbx, -24
.Ltmp42:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	callq	gs_getdefaultdevice
	movl	$-1, %ecx
	testq	%rax, %rax
	je	.LBB8_4
# BB#1:                                 # %do.body
	leaq	16(%r14), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB8_3
# BB#2:                                 # %if.then.4
	movl	$1, 688(%rbx)
	movl	$-16, %ecx
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movq	%rcx, 624(%rbx)
	movq	%rax, 24(%r14)
	movw	$4960, 16(%r14)         # imm = 0x1360
	xorl	%ecx, %ecx
.LBB8_4:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	zgetdefaultdevice, .Lfunc_end8-zgetdefaultdevice
	.cfi_endproc

	.align	16, 0x90
	.type	zgetdeviceparams,@function
zgetdeviceparams:                       # @zgetdeviceparams
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	zget_device_params      # TAILCALL
.Lfunc_end9:
	.size	zgetdeviceparams, .Lfunc_end9-zgetdeviceparams
	.cfi_endproc

	.align	16, 0x90
	.type	zgethardwareparams,@function
zgethardwareparams:                     # @zgethardwareparams
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	jmp	zget_device_params      # TAILCALL
.Lfunc_end10:
	.size	zgethardwareparams, .Lfunc_end10-zgethardwareparams
	.cfi_endproc

	.align	16, 0x90
	.type	zmakewordimagedevice,@function
zmakewordimagedevice:                   # @zmakewordimagedevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 96
.Ltmp48:
	.cfi_offset %rbx, -40
.Ltmp49:
	.cfi_offset %r12, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	-47(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB11_1
# BB#2:                                 # %if.end
	movl	$-15, %eax
	cmpq	$2147483647, -40(%rbx)  # imm = 0x7FFFFFFF
	ja	.LBB11_20
# BB#3:                                 # %do.body.9
	movzbl	-31(%rbx), %ecx
	cmpl	$11, %ecx
	jne	.LBB11_4
# BB#5:                                 # %if.end.20
	cmpq	$2147483647, -24(%rbx)  # imm = 0x7FFFFFFF
	ja	.LBB11_20
# BB#6:                                 # %do.end.29
	movzbl	1(%rbx), %ecx
	cmpl	$1, %ecx
	jne	.LBB11_7
# BB#8:                                 # %if.end.38
	leaq	-16(%rbx), %rdi
	movzbl	1(%rdi), %ecx
	xorl	%r12d, %r12d
	cmpl	$18, %ecx
	je	.LBB11_15
# BB#9:                                 # %if.end.38
	movl	$-24, %r15d
	movzbl	%cl, %ecx
	cmpl	$14, %ecx
	je	.LBB11_17
# BB#10:                                # %if.end.38
	cmpl	$11, %ecx
	jne	.LBB11_14
# BB#11:                                # %if.then.52
	movq	-8(%rbx), %r15
	cmpq	$32, %r15
	ja	.LBB11_20
# BB#12:                                # %if.then.52
	movabsq	$4311810048, %rcx       # imm = 0x101010000
	btq	%r15, %rcx
	jae	.LBB11_20
# BB#13:                                # %if.end.67
	negl	%r15d
	xorl	%r12d, %r12d
	jmp	.LBB11_17
.LBB11_1:                               # %if.then
	addq	$-48, %rbx
	jmp	.LBB11_7
.LBB11_4:                               # %if.then.17
	addq	$-32, %rbx
.LBB11_7:                               # %if.then.36
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB11_20:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB11_15:                              # %if.end.80
	movl	-12(%rbx), %r15d
	cmpl	$768, %r15d             # imm = 0x300
	ja	.LBB11_20
# BB#16:                                # %if.end.85
	movq	-8(%rbx), %r12
.LBB11_17:                              # %if.end.90
	movq	8(%r14), %rdi
	leaq	-64(%rbx), %rsi
	leaq	32(%rsp), %rdx
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB11_20
# BB#18:                                # %if.end.96
	movl	-40(%rbx), %edx
	movl	-24(%rbx), %ecx
	movzwl	8(%rbx), %eax
	movq	8(%r14), %rsi
	movq	%rsi, 16(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 8(%rsp)
	leaq	24(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movq	%r12, %r8
	movl	%r15d, %r9d
	callq	gs_makewordimagedevice
	testl	%eax, %eax
	jne	.LBB11_20
# BB#19:                                # %if.then.112
	movq	8(%r14), %rax
	movq	24(%rsp), %rcx
	movq	%rax, 24(%rcx)
	movq	24(%rsp), %rax
	movq	%rax, -56(%rbx)
	movq	8(%r14), %rdi
	callq	imemory_space
	orl	$112, %eax
	addl	$4864, %eax             # imm = 0x1300
	movw	%ax, -64(%rbx)
	addq	$-64, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB11_20
.LBB11_14:                              # %if.then.78
	callq	check_type_failed
	jmp	.LBB11_20
.Lfunc_end11:
	.size	zmakewordimagedevice, .Lfunc_end11-zmakewordimagedevice
	.cfi_endproc

	.align	16, 0x90
	.type	znulldevice,@function
znulldevice:                            # @znulldevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_nulldevice
	movq	632(%rbx), %rax
	movq	640(%rbx), %rcx
	jmp	.LBB12_1
	.align	16, 0x90
.LBB12_4:                               # %if.end.i
                                        #   in Loop: Header=BB12_1 Depth=1
	addq	$16, %rax
.LBB12_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rax
	je	.LBB12_5
# BB#2:                                 # %while.body.i
                                        #   in Loop: Header=BB12_1 Depth=1
	movzbl	1(%rax), %edx
	cmpl	$19, %edx
	jne	.LBB12_4
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	$0, 8(%rax)
	movq	640(%rbx), %rcx
	jmp	.LBB12_4
.LBB12_5:                               # %invalidate_stack_devices.exit
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movw	$3584, 512(%rax)        # imm = 0xE00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end12:
	.size	znulldevice, .Lfunc_end12-znulldevice
	.cfi_endproc

	.align	16, 0x90
	.type	zoutputpage,@function
zoutputpage:                            # @zoutputpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 32
.Ltmp57:
	.cfi_offset %rbx, -32
.Ltmp58:
	.cfi_offset %r14, -24
.Ltmp59:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB13_1
# BB#3:                                 # %if.end
	movzbl	1(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB13_2
# BB#4:                                 # %if.end.12
	cmpb	$0, gs_debug+58(%rip)
	je	.LBB13_6
# BB#5:                                 # %if.then.13
	leaq	8(%r14), %r15
	movq	8(%r14), %rax
	movq	200(%rax), %rdi
	callq	get_minst_from_memory
	movl	$.L.str.15, %edx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	print_resource_usage
.LBB13_6:                               # %if.end.16
	movq	(%r14), %rdi
	movl	-8(%rbx), %esi
	movzwl	8(%rbx), %edx
	callq	gs_output_page
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB13_9
# BB#7:                                 # %if.end.25
	addq	$-32, 624(%r14)
	xorl	%ebx, %ebx
	cmpb	$0, gs_debug+58(%rip)
	je	.LBB13_9
# BB#8:                                 # %if.then.30
	movq	8(%r14), %rax
	addq	$8, %r14
	movq	200(%rax), %rdi
	callq	get_minst_from_memory
	movl	$.L.str.16, %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	print_resource_usage
.LBB13_9:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB13_1:                               # %if.then
	addq	$-16, %rbx
.LBB13_2:                               # %if.then.10
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end13:
	.size	zoutputpage, .Lfunc_end13-zoutputpage
	.cfi_endproc

	.align	16, 0x90
	.type	zputdeviceparams,@function
zputdeviceparams:                       # @zputdeviceparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp63:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp64:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp66:
	.cfi_def_cfa_offset 224
.Ltmp67:
	.cfi_offset %rbx, -56
.Ltmp68:
	.cfi_offset %r12, -48
.Ltmp69:
	.cfi_offset %r13, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	624(%r14), %rbx
	movq	%rbx, %rdi
	callq	ref_stack_counttomark
	movl	%eax, %ebp
	movl	$-24, %edx
	testl	%ebp, %ebp
	je	.LBB14_27
# BB#1:                                 # %if.end
	movl	%ebp, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movq	%rax, %r13
	leal	1(%rbp), %r12d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	ref_stack_index
	movq	%rax, %r15
	leal	2(%rbp), %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movl	$-17, %edx
	testq	%rax, %rax
	je	.LBB14_27
# BB#2:                                 # %do.body
	movl	$-20, %edx
	movzbl	1(%r13), %ecx
	cmpl	$1, %ecx
	jne	.LBB14_27
# BB#3:                                 # %do.body.22
	movzwl	(%rax), %ecx
	andl	$16144, %ecx            # imm = 0x3F10
	cmpl	$4880, %ecx             # imm = 0x1310
	jne	.LBB14_4
# BB#6:                                 # %do.end.37
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movzwl	8(%r13), %r8d
	movq	8(%r14), %r9
	leaq	64(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r15, %rcx
	callq	stack_param_list_read
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB14_27
# BB#7:                                 # %if.end.46
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	832(%rdi), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	836(%rdi), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	leaq	64(%rsp), %rsi
	callq	gs_putdeviceparams
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leal	-2(%rbp), %ebx
	testl	$-2, %ebp
	je	.LBB14_8
# BB#9:                                 # %for.body.preheader
	movq	%r12, 24(%rsp)          # 8-byte Spill
	leal	-2(%rbp), %r15d
	shrl	%ebp
	xorl	%r12d, %r12d
	movq	48(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB14_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	136(%rsp), %rax
	movq	%r12, %rcx
	sarq	$30, %rcx
	cmpl	$0, (%rax,%rcx)
	jns	.LBB14_12
# BB#11:                                # %if.then.53
                                        #   in Loop: Header=BB14_10 Depth=1
	movq	%r12, %r14
	sarq	$32, %r14
	movslq	%ebx, %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	ref_stack_index
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	%r15d, %esi
	movq	%r13, %rdi
	callq	ref_stack_index
	movups	(%rax), %xmm0
	movq	56(%rsp), %rax          # 8-byte Reload
	movups	%xmm0, (%rax)
	movq	136(%rsp), %rax
	movl	(%rax,%r14,4), %r14d
	leal	-1(%rbx), %eax
	movslq	%eax, %rsi
	movq	%r13, %rdi
	callq	ref_stack_index
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %esi
	movq	%rax, %rdx
	callq	gs_errorname
	addl	$-2, %ebx
.LBB14_12:                              # %for.inc
                                        #   in Loop: Header=BB14_10 Depth=1
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rax, %r12
	addl	$-2, %r15d
	decl	%ebp
	jne	.LBB14_10
	jmp	.LBB14_13
.LBB14_4:                               # %if.then.28
	movzbl	1(%rax), %eax
	movl	$-20, %edx
	cmpl	$19, %eax
	jne	.LBB14_27
# BB#5:                                 # %select.mid
	movl	$-7, %edx
	jmp	.LBB14_27
.LBB14_8:
	movq	%r12, 24(%rsp)          # 8-byte Spill
.LBB14_13:                              # %for.end
	movq	72(%rsp), %rdi
	movq	136(%rsp), %rsi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
	movl	20(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movq	24(%rsp), %r15          # 8-byte Reload
	js	.LBB14_14
# BB#15:                                # %if.end.84
	movq	48(%rsp), %r12          # 8-byte Reload
	jg	.LBB14_19
# BB#16:                                # %land.lhs.true
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	16(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, 832(%rcx)
	jne	.LBB14_19
# BB#17:                                # %lor.lhs.false.92
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	12(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, 836(%rcx)
	jne	.LBB14_19
# BB#18:                                # %lor.lhs.false.92.if.end.113_crit_edge
	xorl	%edx, %edx
	movq	40(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB14_25
.LBB14_19:                              # %if.then.96
	movl	%eax, %ebp
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx), %rdi
	callq	gs_currentdevice
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rcx, %rsi
	je	.LBB14_21
# BB#20:
	movl	%ebp, %edx
	jmp	.LBB14_25
.LBB14_14:                              # %if.then.80
	incl	%ebx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %esi
	callq	ref_stack_pop
	jmp	.LBB14_26
.LBB14_21:                              # %if.then.100
	movq	(%rbx), %rdi
	movl	84(%rsi), %r14d
	callq	gs_setdevice_no_erase
	movl	%eax, %edx
	cmpl	$0, %r14d
	je	.LBB14_24
# BB#22:                                # %if.then.100
	testl	%edx, %edx
	js	.LBB14_24
# BB#23:
	movl	$1, %edx
	jmp	.LBB14_25
.LBB14_24:                              # %if.end.109
	testl	%edx, %edx
	js	.LBB14_27
.LBB14_25:                              # %if.end.113
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%edx, %ebp
	callq	ref_stack_pop
	movq	(%r12), %rax
	movw	%bp, 8(%rax)
	movw	$256, (%rax)            # imm = 0x100
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movw	$3584, 512(%rax)        # imm = 0xE00
.LBB14_26:                              # %cleanup
	xorl	%edx, %edx
.LBB14_27:                              # %cleanup
	movl	%edx, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	zputdeviceparams, .Lfunc_end14-zputdeviceparams
	.cfi_endproc

	.align	16, 0x90
	.type	zget_device_params,@function
zget_device_params:                     # @zget_device_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 176
.Ltmp78:
	.cfi_offset %rbx, -40
.Ltmp79:
	.cfi_offset %r14, -32
.Ltmp80:
	.cfi_offset %r15, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rax
	movq	624(%rax), %rcx
	leaq	-16(%rcx), %rdi
	movzwl	-16(%rcx), %edx
	andl	$16160, %edx            # imm = 0x3F20
	cmpl	$4896, %edx             # imm = 0x1320
	jne	.LBB15_1
# BB#3:                                 # %if.end
	movups	(%rcx), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	-8(%rcx), %rbx
	movq	%rdi, 624(%rax)
	movq	8(%rax), %rcx
	leaq	624(%rax), %r14
	leaq	8(%rsp), %r15
	leaq	112(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	stack_param_list_write
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	gs_get_device_or_hw_params
	movl	%eax, %ebp
	movl	88(%rsp), %esi
	testl	%ebp, %ebp
	js	.LBB15_4
# BB#8:                                 # %if.end.34
	addl	%esi, %esi
	movq	%r14, %rdi
	callq	ref_stack_index
	movw	$3072, (%rax)           # imm = 0xC00
	xorl	%ebp, %ebp
	jmp	.LBB15_9
.LBB15_1:                               # %if.then
	movzbl	1(%rdi), %eax
	movl	$-7, %ebp
	cmpl	$19, %eax
	je	.LBB15_9
# BB#2:                                 # %cond.true
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB15_9
.LBB15_4:                               # %if.then.20
	testl	%esi, %esi
	je	.LBB15_6
# BB#5:                                 # %if.then.23
	leal	-1(%rsi,%rsi), %esi
	movq	%r14, %rdi
	callq	ref_stack_pop
	jmp	.LBB15_7
.LBB15_6:                               # %if.else
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_push
.LBB15_7:                               # %if.end.30
	movq	(%r14), %rax
	movaps	112(%rsp), %xmm0
	movups	%xmm0, (%rax)
.LBB15_9:                               # %cleanup
	movl	%ebp, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	zget_device_params, .Lfunc_end15-zget_device_params
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.copydevice2"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0currentdevice"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.devicename"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0.doneshowpage"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0flushpage"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"7.getbitsrect"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1.getdevice"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1.getdefaultdevice"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"2.getdeviceparams"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2.gethardwareparams"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"5makewordimagedevice"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0nulldevice"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"2.outputpage"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"3.putdeviceparams"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1.setdevice"
	.size	.L.str.14, 12

	.type	zdevice_op_defs,@object # @zdevice_op_defs
	.section	.rodata,"a",@progbits
	.globl	zdevice_op_defs
	.align	16
zdevice_op_defs:
	.quad	.L.str
	.quad	zcopydevice2
	.quad	.L.str.1
	.quad	zcurrentdevice
	.quad	.L.str.2
	.quad	zdevicename
	.quad	.L.str.3
	.quad	zdoneshowpage
	.quad	.L.str.4
	.quad	zflushpage
	.quad	.L.str.5
	.quad	zgetbitsrect
	.quad	.L.str.6
	.quad	zgetdevice
	.quad	.L.str.7
	.quad	zgetdefaultdevice
	.quad	.L.str.8
	.quad	zgetdeviceparams
	.quad	.L.str.9
	.quad	zgethardwareparams
	.quad	.L.str.10
	.quad	zmakewordimagedevice
	.quad	.L.str.11
	.quad	znulldevice
	.quad	.L.str.12
	.quad	zoutputpage
	.quad	.L.str.13
	.quad	zputdeviceparams
	.quad	.L.str.14
	.quad	zsetdevice
	.zero	16
	.size	zdevice_op_defs, 256

	.type	zgetbitsrect.depths,@object # @zgetbitsrect.depths
	.align	16
zgetbitsrect.depths:
	.quad	0                       # 0x0
	.quad	256                     # 0x100
	.quad	512                     # 0x200
	.quad	0                       # 0x0
	.quad	1024                    # 0x400
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	2048                    # 0x800
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4096                    # 0x1000
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	8192                    # 0x2000
	.size	zgetbitsrect.depths, 136

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Outputpage start"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Outputpage end"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"iparam_list_release"
	.size	.L.str.17, 20

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	294715424               # 0x11910020
	.quad	294715408               # 0x11910010
	.quad	294715456               # 0x11910040
	.size	.Lswitch.table, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
