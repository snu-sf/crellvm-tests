	.text
	.file	"zdevice2.bc"
	.globl	z2copy
	.align	16, 0x90
	.type	z2copy,@function
z2copy:                                 # @z2copy
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
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	callq	zcopy
	testl	%eax, %eax
	jns	.LBB0_9
# BB#1:                                 # %if.end
	movzbl	1(%rbx), %ecx
	cmpl	$9, %ecx
	jne	.LBB0_9
# BB#2:                                 # %if.end.4
	movq	(%r15), %r14
	movq	%r14, %rdi
	callq	gs_state_client_data
	movzbl	513(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB0_10
# BB#3:                                 # %land.rhs.i.i
	movq	%r14, %rdi
	callq	gs_currentdevice
	movq	1296(%rax), %rbx
	movq	%r14, %rdi
	callq	gs_currentdevice
	movq	%rax, %rdi
	callq	*%rbx
	testq	%rax, %rax
	je	.LBB0_10
# BB#4:                                 # %if.end.i
	leaq	520(%r15), %r14
	movq	520(%r15), %rdx
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB0_7
# BB#5:                                 # %if.then.i.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB0_9
# BB#6:                                 # %if.then.if.end.7_crit_edge.i.i
	movq	(%r14), %rdx
.LBB0_7:                                # %if.end.7.i.i
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.16, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB0_9
# BB#8:                                 # %if.end.15.i.i
	movq	(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	orb	$-128, 16(%rax)
	movl	$5, %eax
.LBB0_9:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB0_10:                               # %if.then.i
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	zcopy_gstate            # TAILCALL
.Lfunc_end0:
	.size	z2copy, .Lfunc_end0-z2copy
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentshowpagecount,@function
zcurrentshowpagecount:                  # @zcurrentshowpagecount
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
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
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_currentdevice
	movq	%rax, %r14
	movq	%r14, %rdi
	callq	*1296(%r14)
	testq	%rax, %rax
	je	.LBB1_1
# BB#4:                                 # %do.body.12
	leaq	32(%r15), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB1_6
# BB#5:                                 # %if.then.18
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB1_8
.LBB1_1:                                # %do.body
	leaq	16(%r15), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB1_3
# BB#2:                                 # %if.then.5
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB1_8
.LBB1_6:                                # %if.else.22
	movq	%rax, 624(%rbx)
	movq	936(%r14), %rax
	movq	%rax, 24(%r15)
	movw	$2816, 16(%r15)         # imm = 0xB00
	movw	$1, 40(%r15)
	movw	$256, 32(%r15)          # imm = 0x100
	jmp	.LBB1_7
.LBB1_3:                                # %if.else
	movq	%rax, 624(%rbx)
	movw	$0, 24(%r15)
	movw	$256, 16(%r15)          # imm = 0x100
.LBB1_7:                                # %cleanup
	xorl	%eax, %eax
.LBB1_8:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	zcurrentshowpagecount, .Lfunc_end1-zcurrentshowpagecount
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentpagedevice,@function
zcurrentpagedevice:                     # @zcurrentpagedevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_currentdevice
	movq	%rax, %rcx
	leaq	32(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB2_6
.LBB2_2:                                # %if.else
	movq	%rax, 624(%rbx)
	movq	%rcx, %rdi
	callq	*1296(%rcx)
	testq	%rax, %rax
	je	.LBB2_4
# BB#3:                                 # %if.then.10
	leaq	16(%r14), %r15
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movups	512(%rax), %xmm0
	movups	%xmm0, (%r15)
	movw	$1, 40(%r14)
	jmp	.LBB2_5
.LBB2_4:                                # %if.else.13
	movw	$3584, 16(%r14)         # imm = 0xE00
	movw	$0, 40(%r14)
.LBB2_5:                                # %cleanup
	movw	$256, 32(%r14)          # imm = 0x100
	xorl	%eax, %eax
.LBB2_6:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	zcurrentpagedevice, .Lfunc_end2-zcurrentpagedevice
	.cfi_endproc

	.align	16, 0x90
	.type	zsetpagedevice,@function
zsetpagedevice:                         # @zsetpagedevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzbl	1(%r14), %eax
	cmpl	$14, %eax
	je	.LBB3_4
# BB#1:                                 # %entry
	movzbl	%al, %eax
	cmpl	$2, %eax
	jne	.LBB3_6
# BB#2:                                 # %do.body
	movq	8(%r14), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB3_5
# BB#3:                                 # %do.end
	movq	%rbx, %rdi
	callq	zreadonly
	testl	%eax, %eax
	js	.LBB3_5
.LBB3_4:                                # %if.end.19
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movups	(%r14), %xmm0
	movups	%xmm0, 512(%rax)
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB3_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB3_6:                                # %if.then.16
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.Lfunc_end3:
	.size	zsetpagedevice, .Lfunc_end3-zsetpagedevice
	.cfi_endproc

	.align	16, 0x90
	.type	z2gsave,@function
z2gsave:                                # @z2gsave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	(%r15), %rbx
	movq	%rbx, %rdi
	callq	gs_state_client_data
	movzbl	513(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB4_8
# BB#1:                                 # %land.rhs.i
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movq	1296(%rax), %r14
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movq	%rax, %rdi
	callq	*%r14
	testq	%rax, %rax
	je	.LBB4_8
# BB#2:                                 # %if.end
	leaq	520(%r15), %r14
	movq	520(%r15), %rdx
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB4_5
# BB#3:                                 # %if.then.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB4_7
# BB#4:                                 # %if.then.if.end.7_crit_edge.i
	movq	(%r14), %rdx
.LBB4_5:                                # %if.end.7.i
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.17, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB4_7
# BB#6:                                 # %if.end.15.i
	movq	(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	orb	$-128, 16(%rax)
	movl	$5, %eax
.LBB4_7:                                # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB4_8:                                # %if.then
	movq	(%r15), %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_gsave                # TAILCALL
.Lfunc_end4:
	.size	z2gsave, .Lfunc_end4-z2gsave
	.cfi_endproc

	.align	16, 0x90
	.type	z2save,@function
z2save:                                 # @z2save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 32
.Ltmp32:
	.cfi_offset %rbx, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	(%r15), %rbx
	movq	%rbx, %rdi
	callq	gs_state_client_data
	movzbl	513(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB5_8
# BB#1:                                 # %land.rhs.i
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movq	1296(%rax), %r14
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movq	%rax, %rdi
	callq	*%r14
	testq	%rax, %rax
	je	.LBB5_8
# BB#2:                                 # %if.end
	leaq	520(%r15), %r14
	movq	520(%r15), %rdx
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB5_5
# BB#3:                                 # %if.then.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB5_7
# BB#4:                                 # %if.then.if.end.7_crit_edge.i
	movq	(%r14), %rdx
.LBB5_5:                                # %if.end.7.i
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.18, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB5_7
# BB#6:                                 # %if.end.15.i
	movq	(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	orb	$-128, 16(%rax)
	movl	$5, %eax
.LBB5_7:                                # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB5_8:                                # %if.then
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	zsave                   # TAILCALL
.Lfunc_end5:
	.size	z2save, .Lfunc_end5-z2save
	.cfi_endproc

	.align	16, 0x90
	.type	z2gstate,@function
z2gstate:                               # @z2gstate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	(%r15), %rbx
	movq	%rbx, %rdi
	callq	gs_state_client_data
	movzbl	513(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB6_8
# BB#1:                                 # %land.rhs.i
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movq	1296(%rax), %r14
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movq	%rax, %rdi
	callq	*%r14
	testq	%rax, %rax
	je	.LBB6_8
# BB#2:                                 # %if.end
	leaq	520(%r15), %r14
	movq	520(%r15), %rdx
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB6_5
# BB#3:                                 # %if.then.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB6_7
# BB#4:                                 # %if.then.if.end.7_crit_edge.i
	movq	(%r14), %rdx
.LBB6_5:                                # %if.end.7.i
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.19, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB6_7
# BB#6:                                 # %if.end.15.i
	movq	(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	orb	$-128, 16(%rax)
	movl	$5, %eax
.LBB6_7:                                # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB6_8:                                # %if.then
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	zgstate                 # TAILCALL
.Lfunc_end6:
	.size	z2gstate, .Lfunc_end6-z2gstate
	.cfi_endproc

	.align	16, 0x90
	.type	z2currentgstate,@function
z2currentgstate:                        # @z2currentgstate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 32
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	(%r15), %rbx
	movq	%rbx, %rdi
	callq	gs_state_client_data
	movzbl	513(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB7_8
# BB#1:                                 # %land.rhs.i
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movq	1296(%rax), %r14
	movq	%rbx, %rdi
	callq	gs_currentdevice
	movq	%rax, %rdi
	callq	*%r14
	testq	%rax, %rax
	je	.LBB7_8
# BB#2:                                 # %if.end
	leaq	520(%r15), %r14
	movq	520(%r15), %rdx
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB7_5
# BB#3:                                 # %if.then.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB7_7
# BB#4:                                 # %if.then.if.end.7_crit_edge.i
	movq	(%r14), %rdx
.LBB7_5:                                # %if.end.7.i
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.20, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB7_7
# BB#6:                                 # %if.end.15.i
	movq	(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	orb	$-128, 16(%rax)
	movl	$5, %eax
.LBB7_7:                                # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB7_8:                                # %if.then
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	zcurrentgstate          # TAILCALL
.Lfunc_end7:
	.size	z2currentgstate, .Lfunc_end7-z2currentgstate
	.cfi_endproc

	.align	16, 0x90
	.type	z2grestore,@function
z2grestore:                             # @z2grestore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %rbx, -32
.Ltmp51:
	.cfi_offset %r14, -24
.Ltmp52:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	(%r15), %rbx
	movq	%rbx, %rdi
	callq	gs_state_saved
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	restore_page_device
	testl	%eax, %eax
	je	.LBB8_7
# BB#1:                                 # %if.end
	leaq	520(%r15), %r14
	movq	520(%r15), %rdx
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB8_4
# BB#2:                                 # %if.then.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB8_6
# BB#3:                                 # %if.then.if.end.7_crit_edge.i
	movq	(%r14), %rdx
.LBB8_4:                                # %if.end.7.i
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.21, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB8_6
# BB#5:                                 # %if.end.15.i
	movq	(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	orb	$-128, 16(%rax)
	movl	$5, %eax
.LBB8_6:                                # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB8_7:                                # %if.then
	movq	(%r15), %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_grestore             # TAILCALL
.Lfunc_end8:
	.size	z2grestore, .Lfunc_end8-z2grestore
	.cfi_endproc

	.align	16, 0x90
	.type	z2grestoreall,@function
z2grestoreall:                          # @z2grestoreall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 32
.Ltmp56:
	.cfi_offset %rbx, -32
.Ltmp57:
	.cfi_offset %r14, -24
.Ltmp58:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	.align	16, 0x90
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rbx
	movq	%rbx, %rdi
	callq	gs_state_saved
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	restore_page_device
	testl	%eax, %eax
	jne	.LBB9_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	(%r15), %rdi
	callq	gs_state_saved
	movq	%rax, %rdi
	callq	gs_state_saved
	movq	%rax, %rbx
	movq	(%r15), %rdi
	callq	gs_grestore
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.LBB9_1
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	leaq	520(%r15), %r14
	movq	520(%r15), %rdx
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB9_6
# BB#4:                                 # %if.then.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB9_8
# BB#5:                                 # %if.then.if.end.7_crit_edge.i
	movq	(%r14), %rdx
.LBB9_6:                                # %if.end.7.i
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.22, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB9_8
# BB#7:                                 # %if.end.15.i
	movq	(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	orb	$-128, 16(%rax)
	movl	$5, %eax
.LBB9_8:                                # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	z2grestoreall, .Lfunc_end9-z2grestoreall
	.cfi_endproc

	.align	16, 0x90
	.type	z2restore,@function
z2restore:                              # @z2restore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 48
.Ltmp64:
	.cfi_offset %rbx, -40
.Ltmp65:
	.cfi_offset %r12, -32
.Ltmp66:
	.cfi_offset %r14, -24
.Ltmp67:
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movq	(%r12), %rdi
	callq	gs_state_saved
	movq	%rax, %rdi
	callq	gs_state_saved
	movq	%rax, %r14
	movq	(%r12), %r15
	movq	%r15, %rdi
	callq	gs_state_saved
	movq	%r15, %rdi
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_10:                              # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	(%r12), %rdi
	callq	gs_grestore
	movq	(%r12), %rdi
	callq	gs_state_saved
	movq	%rax, %rdi
	callq	gs_state_saved
	movq	%rax, %r14
	movq	(%r12), %rbx
	movq	%rbx, %rdi
	callq	gs_state_saved
	movq	%rbx, %rdi
.LBB10_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	callq	restore_page_device
	testl	%eax, %eax
	setne	%al
	testq	%r14, %r14
	je	.LBB10_11
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	testb	$1, %al
	je	.LBB10_10
# BB#3:                                 # %if.then
	leaq	520(%r12), %r14
	movq	520(%r12), %rdx
	movq	536(%r12), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB10_6
# BB#4:                                 # %if.then.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB10_9
# BB#5:                                 # %if.then.if.end.7_crit_edge.i
	movq	(%r14), %rdx
.LBB10_6:                               # %if.end.7.i
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.23, %esi
	jmp	.LBB10_7
.LBB10_11:                              # %while.end
	testb	%al, %al
	je	.LBB10_16
# BB#12:                                # %if.then.15
	leaq	520(%r12), %r14
	movq	520(%r12), %rdx
	movq	536(%r12), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB10_15
# BB#13:                                # %if.then.i.11
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB10_9
# BB#14:                                # %if.then.if.end.7_crit_edge.i.13
	movq	(%r14), %rdx
.LBB10_15:                              # %if.end.7.i.20
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.24, %esi
.LBB10_7:                               # %if.end.7.i
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB10_9
# BB#8:                                 # %if.end.15.i
	movq	(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	orb	$-128, 16(%rax)
	movl	$5, %eax
.LBB10_9:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB10_16:                              # %if.end.17
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	zrestore                # TAILCALL
.Lfunc_end10:
	.size	z2restore, .Lfunc_end10-z2restore
	.cfi_endproc

	.align	16, 0x90
	.type	z2setgstate,@function
z2setgstate:                            # @z2setgstate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 32
.Ltmp71:
	.cfi_offset %rbx, -32
.Ltmp72:
	.cfi_offset %r14, -24
.Ltmp73:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB11_9
# BB#1:                                 # %land.lhs.true
	movq	8(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_igstate_obj, %ecx
	cmpq	%rcx, %rax
	je	.LBB11_2
.LBB11_9:                               # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB11_2:                               # %if.end
	movq	(%r15), %rdi
	movq	8(%rbx), %rax
	movq	8(%rax), %rsi
	callq	restore_page_device
	testl	%eax, %eax
	je	.LBB11_10
# BB#3:                                 # %if.end.14
	leaq	520(%r15), %r14
	movq	520(%r15), %rdx
	movq	536(%r15), %rax
	addq	$-16, %rax
	cmpq	%rax, %rdx
	jbe	.LBB11_6
# BB#4:                                 # %if.then.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB11_8
# BB#5:                                 # %if.then.if.end.7_crit_edge.i
	movq	(%r14), %rdx
.LBB11_6:                               # %if.end.7.i
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$16, %rdx
	movl	$.L.str.25, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB11_8
# BB#7:                                 # %if.end.15.i
	movq	(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%r14)
	orb	$-128, 16(%rax)
	movl	$5, %eax
.LBB11_8:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB11_10:                              # %if.then.12
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	zsetgstate              # TAILCALL
.Lfunc_end11:
	.size	z2setgstate, .Lfunc_end11-z2setgstate
	.cfi_endproc

	.align	16, 0x90
	.type	zcallinstall,@function
zcallinstall:                           # @zcallinstall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_currentdevice
	movq	%rax, %rdi
	callq	*1296(%rax)
	testq	%rax, %rax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rsi
	movq	%rax, %rdi
	callq	*1120(%rax)
	testl	%eax, %eax
	js	.LBB12_3
.LBB12_2:                               # %if.end.6
	xorl	%eax, %eax
.LBB12_3:                               # %cleanup.7
	popq	%rbx
	retq
.Lfunc_end12:
	.size	zcallinstall, .Lfunc_end12-zcallinstall
	.cfi_endproc

	.align	16, 0x90
	.type	zcallbeginpage,@function
zcallbeginpage:                         # @zcallbeginpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp78:
	.cfi_def_cfa_offset 32
.Ltmp79:
	.cfi_offset %rbx, -24
.Ltmp80:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	(%r14), %rdi
	callq	gs_currentdevice
	movq	%rax, %rcx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB13_5
# BB#1:                                 # %if.end
	movq	%rcx, %rdi
	callq	*1296(%rcx)
	testq	%rax, %rax
	je	.LBB13_3
# BB#2:                                 # %if.then.6
	movq	(%r14), %rsi
	movq	%rax, %rdi
	callq	*1128(%rax)
	testl	%eax, %eax
	js	.LBB13_4
.LBB13_3:                               # %if.end.13
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB13_4:                               # %cleanup.17
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB13_5:                               # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.Lfunc_end13:
	.size	zcallbeginpage, .Lfunc_end13-zcallbeginpage
	.cfi_endproc

	.align	16, 0x90
	.type	zcallendpage,@function
zcallendpage:                           # @zcallendpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp83:
	.cfi_def_cfa_offset 32
.Ltmp84:
	.cfi_offset %rbx, -24
.Ltmp85:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	(%r14), %rdi
	callq	gs_currentdevice
	movq	%rax, %rcx
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB14_1
# BB#3:                                 # %if.end
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB14_2
# BB#4:                                 # %if.end.13
	movq	%rcx, %rdi
	callq	*1296(%rcx)
	testq	%rax, %rax
	je	.LBB14_8
# BB#5:                                 # %if.then.17
	movl	8(%rbx), %esi
	movq	(%r14), %rdx
	movq	%rax, %rdi
	callq	*1136(%rax)
	testl	%eax, %eax
	js	.LBB14_6
# BB#7:                                 # %if.end.24
	movl	$-15, %ecx
	cmpl	$1, %eax
	jle	.LBB14_9
	jmp	.LBB14_10
.LBB14_1:                               # %if.then
	addq	$-16, %rbx
.LBB14_2:                               # %if.then.11
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.LBB14_8:                               # %if.else
	cmpq	$2, 8(%rbx)
	setne	%al
	movzbl	%al, %eax
.LBB14_9:                               # %if.end.33
	movw	%ax, -8(%rbx)
	movw	$256, -16(%rbx)         # imm = 0x100
	addq	$-16, 624(%r14)
	xorl	%ecx, %ecx
	jmp	.LBB14_10
.LBB14_6:
	movl	%eax, %ecx
.LBB14_10:                              # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	zcallendpage, .Lfunc_end14-zcallendpage
	.cfi_endproc

	.align	16, 0x90
	.type	restore_page_device,@function
restore_page_device:                    # @restore_page_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 48
.Ltmp91:
	.cfi_offset %rbx, -48
.Ltmp92:
	.cfi_offset %r12, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	gs_currentdevice
	movq	%rax, %rbp
	movq	24(%rbp), %r14
	movq	%rbx, %rdi
	callq	gs_state_client_data
	leaq	512(%rax), %rbx
	movq	%r15, %rdi
	callq	gs_state_client_data
	leaq	512(%rax), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	obj_eq
	movl	%eax, %r14d
	movq	%rbp, %rdi
	callq	*1296(%rbp)
	movq	%rax, %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB15_7
# BB#1:                                 # %if.end
	testl	%r14d, %r14d
	jne	.LBB15_3
# BB#2:                                 # %if.then.6
	movl	$0, 960(%rbp)
.LBB15_3:                               # %if.end.7
	movq	%r15, %rdi
	callq	gs_currentdevice
	cmpq	%rax, %rbp
	je	.LBB15_6
# BB#4:                                 # %if.then.10
	movq	%rax, %rdi
	callq	*1296(%rax)
	testq	%rax, %rax
	je	.LBB15_7
# BB#5:                                 # %if.end.16
	movl	$1, %r12d
	cmpq	%rax, %rbx
	jne	.LBB15_7
.LBB15_6:                               # %if.end.20
	testl	%r14d, %r14d
	sete	%al
	movzbl	%al, %r12d
.LBB15_7:                               # %cleanup
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	restore_page_device, .Lfunc_end15-restore_page_device
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"level2dict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0.currentshowpagecount"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0.currentpagedevice"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1.setpagedevice"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1copy"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0gsave"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0save"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0gstate"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1currentgstate"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"0grestore"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"0grestoreall"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1restore"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1setgstate"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"0.callinstall"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1.callbeginpage"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"2.callendpage"
	.size	.L.str.15, 14

	.type	zdevice2_l2_op_defs,@object # @zdevice2_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zdevice2_l2_op_defs
	.align	16
zdevice2_l2_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zcurrentshowpagecount
	.quad	.L.str.2
	.quad	zcurrentpagedevice
	.quad	.L.str.3
	.quad	zsetpagedevice
	.quad	.L.str.4
	.quad	z2copy
	.quad	.L.str.5
	.quad	z2gsave
	.quad	.L.str.6
	.quad	z2save
	.quad	.L.str.7
	.quad	z2gstate
	.quad	.L.str.8
	.quad	z2currentgstate
	.quad	.L.str.9
	.quad	z2grestore
	.quad	.L.str.10
	.quad	z2grestoreall
	.quad	.L.str.11
	.quad	z2restore
	.quad	.L.str.12
	.quad	z2setgstate
	.quad	.L.str.13
	.quad	zcallinstall
	.quad	.L.str.14
	.quad	zcallbeginpage
	.quad	.L.str.15
	.quad	zcallendpage
	.zero	16
	.size	zdevice2_l2_op_defs, 272

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"%copygstatepagedevice"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%gsavepagedevice"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%savepagedevice"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%gstatepagedevice"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%currentgstatepagedevice"
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%grestorepagedevice"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%grestoreallpagedevice"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%restore1pagedevice"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%restorepagedevice"
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%setgstatepagedevice"
	.size	.L.str.25, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
