	.text
	.file	"layout.bc"
	.globl	FreeLayoutCv
	.align	16, 0x90
	.type	FreeLayoutCv,@function
FreeLayoutCv:                           # @FreeLayoutCv
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB0_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	FreeLayoutCv
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB0_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB0_6:                                # %if.end.7
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_8:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	FreeLayoutCv, .Lfunc_end0-FreeLayoutCv
	.cfi_endproc

	.globl	CreateLayout
	.align	16, 0x90
	.type	CreateLayout,@function
CreateLayout:                           # @CreateLayout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$10, -20(%rbp)
	jge	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jge	.LBB1_3
.LBB1_2:                                # %if.then
	movl	$0, -20(%rbp)
.LBB1_3:                                # %if.end
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB1_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	$0, laytab(,%rax,8)
	jne	.LBB1_6
# BB#5:                                 # %if.then.2
	jmp	.LBB1_11
.LBB1_6:                                # %if.end.3
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$10, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	$0, -44(%rbp)
.LBB1_8:                                # %if.end.6
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.8
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	Msg
	movq	$0, -8(%rbp)
	jmp	.LBB1_15
.LBB1_10:                               # %if.end.9
                                        #   in Loop: Header=BB1_4 Depth=1
	jmp	.LBB1_4
.LBB1_11:                               # %for.end
	movl	$1, %eax
	movl	%eax, %edi
	movl	$360, %eax              # imm = 0x168
	movl	%eax, %esi
	callq	calloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	SaveStr
	movabsq	$layouts, %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movl	$1, 352(%rax)
	movl	-44(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rdi
	movq	%rax, laytab(,%rdi,8)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	%rsi, -40(%rbp)
.LBB1_12:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_12
.LBB1_14:                               # %while.end
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	CreateLayout, .Lfunc_end1-CreateLayout
	.cfi_endproc

	.globl	SaveLayout
	.align	16, 0x90
	.type	SaveLayout,@function
SaveLayout:                             # @SaveLayout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	layouts, %rsi
	movq	%rsi, -24(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	cmpq	$0, -24(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.3
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	FreeLayoutCv
	jmp	.LBB2_9
.LBB2_8:                                # %if.else
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	CreateLayout
	movq	%rax, -24(%rbp)
.LBB2_9:                                # %if.end.5
	cmpq	$0, -24(%rbp)
	jne	.LBB2_11
# BB#10:                                # %if.then.7
	jmp	.LBB2_12
.LBB2_11:                               # %if.end.8
	movl	$1, %edx
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	DupLayoutCv
	movq	display, %rax
	movq	336(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 336(%rsi)
	movq	-32(%rbp), %rax
	movq	display, %rsi
	movq	%rax, 336(%rsi)
	movq	-24(%rbp), %rax
	movq	display, %rsi
	movq	%rax, 344(%rsi)
.LBB2_12:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	SaveLayout, .Lfunc_end2-SaveLayout
	.cfi_endproc

	.globl	AutosaveLayout
	.align	16, 0x90
	.type	AutosaveLayout,@function
AutosaveLayout:                         # @AutosaveLayout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$0, 352(%rax)
	jne	.LBB3_3
.LBB3_2:                                # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	FreeLayoutCv
	movl	$1, %edx
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	display, %rax
	addq	$16, %rax
	movq	-8(%rbp), %rdi
	addq	$24, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	DupLayoutCv
	movq	display, %rax
	movq	336(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 336(%rsi)
	movq	-16(%rbp), %rax
	movq	display, %rsi
	movq	%rax, 336(%rsi)
.LBB3_4:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	AutosaveLayout, .Lfunc_end3-AutosaveLayout
	.cfi_endproc

	.globl	FindLayout
	.align	16, 0x90
	.type	FindLayout,@function
FindLayout:                             # @FindLayout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$48, %eax
	movb	%cl, -37(%rbp)          # 1-byte Spill
	jl	.LBB4_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -37(%rbp)          # 1-byte Spill
.LBB4_3:                                # %land.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_6
.LBB4_4:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	imull	$10, -36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movsbl	(%rcx), %edx
	subl	$48, %edx
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB4_11
# BB#7:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB4_11
# BB#8:                                 # %land.lhs.true.8
	cmpl	$0, -36(%rbp)
	jl	.LBB4_11
# BB#9:                                 # %land.lhs.true.11
	cmpl	$10, -36(%rbp)
	jge	.LBB4_11
# BB#10:                                # %if.then
	movslq	-36(%rbp), %rax
	movq	laytab(,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_18
.LBB4_11:                               # %if.end
	movq	layouts, %rax
	movq	%rax, -24(%rbp)
.LBB4_12:                               # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_17
# BB#13:                                # %for.body.16
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_15
# BB#14:                                # %if.then.18
	jmp	.LBB4_17
.LBB4_15:                               # %if.end.19
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               # %for.inc.20
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_12
.LBB4_17:                               # %for.end.21
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	FindLayout, .Lfunc_end4-FindLayout
	.cfi_endproc

	.globl	LoadLayout
	.align	16, 0x90
	.type	LoadLayout,@function
LoadLayout:                             # @LoadLayout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	display, %rsi
	movq	344(%rsi), %rdi
	callq	AutosaveLayout
	cmpq	$0, -8(%rbp)
	jne	.LBB5_5
# BB#1:                                 # %if.then
	jmp	.LBB5_2
.LBB5_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	display, %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	display, %rax
	movq	48(%rax), %rdi
	callq	FreeCanvas
	jmp	.LBB5_2
.LBB5_4:                                # %while.end
	callq	MakeDefaultCanvas
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	display, %rdx
	movq	336(%rdx), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	SetCanvasWindow
	movq	display, %rdx
	movq	$0, 344(%rdx)
	jmp	.LBB5_14
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %while.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movq	display, %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_8
# BB#7:                                 # %while.body.9
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	display, %rax
	movq	48(%rax), %rdi
	callq	FreeCanvas
	jmp	.LBB5_6
.LBB5_8:                                # %while.end.12
	movq	display, %rax
	movq	$0, 328(%rax)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	display, %rcx
	movq	%rax, 336(%rcx)
	movq	display, %rax
	cmpq	$0, 336(%rax)
	jne	.LBB5_10
# BB#9:                                 # %if.then.16
	callq	MakeDefaultCanvas
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB5_10:                               # %if.end.18
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	display, %rcx
	addq	$16, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	DupLayoutCv
	movq	display, %rax
	cmpl	$4, 528(%rax)
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movq	display, %rax
	movl	%edx, 240(%rax)
	movq	display, %rax
	movl	448(%rax), %edx
	subl	$1, %edx
	movq	display, %rax
	cmpq	$0, 48(%rax)
	movl	%edx, -28(%rbp)         # 4-byte Spill
	je	.LBB5_12
# BB#11:                                # %land.lhs.true
	movb	$1, %al
	movq	display, %rcx
	movq	48(%rcx), %rcx
	cmpq	$0, 16(%rcx)
	movb	%al, -29(%rbp)          # 1-byte Spill
	jne	.LBB5_13
.LBB5_12:                               # %lor.rhs
	cmpl	$0, captionalways
	setne	%al
	movb	%al, -29(%rbp)          # 1-byte Spill
.LBB5_13:                               # %lor.end
	movb	-29(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-28(%rbp), %edx         # 4-byte Reload
	subl	%ecx, %edx
	movq	display, %rsi
	cmpl	$1, 528(%rsi)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	subl	%ecx, %edx
	movq	display, %rsi
	movl	%edx, 244(%rsi)
	movq	display, %rsi
	addq	$16, %rsi
	movq	%rsi, %rdi
	callq	ResizeCanvas
	callq	RecreateCanvasChain
	callq	RethinkDisplayViewports
	movq	display, %rsi
	addq	$16, %rsi
	movq	%rsi, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	PutWindowCv
	callq	ResizeLayersToCanvases
	movq	-8(%rbp), %rsi
	movq	display, %rdi
	movq	%rsi, 344(%rdi)
.LBB5_14:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	LoadLayout, .Lfunc_end5-LoadLayout
	.cfi_endproc

	.globl	NewLayout
	.align	16, 0x90
	.type	NewLayout,@function
NewLayout:                              # @NewLayout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	CreateLayout
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_6
.LBB6_2:                                # %if.end
	cmpq	$0, display
	je	.LBB6_4
# BB#3:                                 # %if.then.2
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	display, %rcx
	addq	$16, %rcx
	movq	%rcx, %rsi
	callq	LoadLayout
	movl	$1, %edx
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	display, %rcx
	addq	$16, %rcx
	movq	-24(%rbp), %rsi
	addq	$24, %rsi
	movq	%rcx, %rdi
	callq	DupLayoutCv
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, 336(%rsi)
	movq	-32(%rbp), %rcx
	movq	display, %rsi
	movq	%rcx, 336(%rsi)
	movq	-24(%rbp), %rcx
	movq	display, %rsi
	movq	%rcx, 344(%rsi)
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, layout_attach
.LBB6_5:                                # %if.end.6
	movq	-24(%rbp), %rax
	movl	$1, 352(%rax)
.LBB6_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	NewLayout, .Lfunc_end6-NewLayout
	.cfi_endproc

	.globl	ShowLayouts
	.align	16, 0x90
	.type	ShowLayouts,@function
ShowLayouts:                            # @ShowLayouts
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
	subq	$1088, %rsp             # imm = 0x440
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_15
.LBB7_2:                                # %if.end
	cmpq	$0, layouts
	jne	.LBB7_4
# BB#3:                                 # %if.then.2
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB7_15
.LBB7_4:                                # %if.end.3
	cmpl	$-1, -4(%rbp)
	jne	.LBB7_7
# BB#5:                                 # %land.lhs.true
	movq	display, %rax
	cmpq	$0, 344(%rax)
	je	.LBB7_7
# BB#6:                                 # %if.then.5
	movq	display, %rax
	movq	344(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_7:                                # %if.end.7
	movl	$1024, %esi             # imm = 0x400
	leaq	-1040(%rbp), %rdi
	movl	-4(%rbp), %edx
	callq	AddLayoutsInfo
	movl	$2, %edx
	leaq	-1040(%rbp), %rdi
	movq	%rax, -1056(%rbp)
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	movl	%edx, -1068(%rbp)       # 4-byte Spill
	callq	strlen
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -1048(%rbp)
	movq	-1056(%rbp), %rax
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	subq	%rdi, %rax
	movq	display, %rcx
	movl	444(%rcx), %edx
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	cltd
	movl	-1068(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movq	-1080(%rbp), %r8        # 8-byte Reload
	cmpq	%rcx, %r8
	jle	.LBB7_13
# BB#8:                                 # %if.then.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$2, %eax
	movq	display, %rdx
	movl	444(%rdx), %esi
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-1084(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movq	-1056(%rbp), %rdi
	movslq	%eax, %r8
	subq	%r8, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -1056(%rbp)
	movq	-1048(%rbp), %rcx
	movq	-1056(%rbp), %rdi
	subq	%rdi, %rcx
	movq	display, %rdi
	movslq	444(%rdi), %rdi
	cmpq	%rdi, %rcx
	jge	.LBB7_12
# BB#9:                                 # %if.then.25
	leaq	-1040(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1048(%rbp), %rsi
	movq	display, %rdi
	movslq	444(%rdi), %rdi
	subq	%rdi, %rdx
	addq	%rdx, %rsi
	movq	%rsi, -1056(%rbp)
	movq	-1056(%rbp), %rdx
	cmpq	%rax, %rdx
	jae	.LBB7_11
# BB#10:                                # %if.then.33
	leaq	-1040(%rbp), %rax
	movq	%rax, -1056(%rbp)
.LBB7_11:                               # %if.end.35
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.36
	jmp	.LBB7_14
.LBB7_13:                               # %if.else
	leaq	-1040(%rbp), %rax
	movq	%rax, -1056(%rbp)
.LBB7_14:                               # %if.end.38
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movq	-1056(%rbp), %rdx
	movb	$0, %al
	callq	Msg
.LBB7_15:                               # %return
	addq	$1088, %rsp             # imm = 0x440
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ShowLayouts, .Lfunc_end7-ShowLayouts
	.cfi_endproc

	.align	16, 0x90
	.type	AddLayoutsInfo,@function
AddLayoutsInfo:                         # @AddLayoutsInfo
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
	subq	$80, %rsp
	movabsq	$laytab, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rax, -56(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$laytab, %rax
	addq	$80, %rax
	cmpq	%rax, -56(%rbp)
	jae	.LBB8_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$laytab, %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	sarq	$3, %rcx
	movslq	-16(%rbp), %rax
	cmpq	%rax, %rcx
	jne	.LBB8_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB8_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB8_5:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB8_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_19
.LBB8_7:                                # %if.end.8
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$20, -60(%rbp)
	jle	.LBB8_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$20, -60(%rbp)
.LBB8_9:                                # %if.end.13
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movl	-12(%rbp), %edx
	subl	$24, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB8_11
# BB#10:                                # %if.then.20
	jmp	.LBB8_20
.LBB8_11:                               # %if.end.21
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jbe	.LBB8_13
# BB#12:                                # %if.then.24
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$32, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$32, (%rax)
.LBB8_13:                               # %if.end.26
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movq	-48(%rbp), %rsi
	movl	16(%rsi), %edx
	cmpl	-16(%rbp), %edx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jne	.LBB8_15
# BB#14:                                # %if.then.31
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB8_15:                               # %if.end.32
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	strlen
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, display
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	movq	display, %rcx
	cmpq	344(%rcx), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.37
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$42, (%rax)
.LBB8_18:                               # %if.end.39
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$32, (%rax)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movslq	-60(%rbp), %rdx
	callq	strncpy
	movl	-60(%rbp), %r8d
	movq	-24(%rbp), %rcx
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB8_19:                               # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_1
.LBB8_20:                               # %for.end
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	AddLayoutsInfo, .Lfunc_end8-AddLayoutsInfo
	.cfi_endproc

	.globl	RemoveLayout
	.align	16, 0x90
	.type	RemoveLayout,@function
RemoveLayout:                           # @RemoveLayout
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
	subq	$48, %rsp
	movabsq	$layouts, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB9_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB9_6
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB9_1
.LBB9_6:                                # %for.end
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rax
	movq	$0, laytab(,%rax,8)
	cmpq	$0, display
	je	.LBB9_9
# BB#7:                                 # %land.lhs.true
	movq	display, %rax
	movq	344(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB9_9
# BB#8:                                 # %if.then.4
	movq	display, %rax
	movq	$0, 344(%rax)
.LBB9_9:                                # %if.end.6
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	FreeLayoutCv
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_11
# BB#10:                                # %if.then.8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB9_11:                               # %if.end.10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	cmpq	$0, layouts
	je	.LBB9_23
# BB#12:                                # %if.then.12
	cmpq	$0, display
	je	.LBB9_15
# BB#13:                                # %land.lhs.true.14
	movq	display, %rax
	cmpq	$0, 344(%rax)
	je	.LBB9_15
# BB#14:                                # %cond.true
	movq	display, %rax
	movq	344(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB9_19
.LBB9_15:                               # %cond.false
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_17
# BB#16:                                # %cond.true.19
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB9_18
.LBB9_17:                               # %cond.false.20
	movq	layouts, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB9_18:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB9_19:                               # %cond.end.21
	movq	-24(%rbp), %rax         # 8-byte Reload
	cmpq	$0, display
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB9_21
# BB#20:                                # %cond.true.24
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB9_22
.LBB9_21:                               # %cond.false.25
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB9_22
.LBB9_22:                               # %cond.end.26
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	LoadLayout
.LBB9_23:                               # %if.end.28
	xorl	%edi, %edi
	callq	Activate
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	RemoveLayout, .Lfunc_end9-RemoveLayout
	.cfi_endproc

	.globl	UpdateLayoutCanvas
	.align	16, 0x90
	.type	UpdateLayoutCanvas,@function
UpdateLayoutCanvas:                     # @UpdateLayoutCanvas
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB10_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB10_11
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB10_11
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB10_8
# BB#5:                                 # %land.lhs.true.6
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB10_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	152(%rcx), %rax
	je	.LBB10_8
.LBB10_7:                               # %if.then.9
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	KillLayerChain
.LBB10_8:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB10_10
# BB#9:                                 # %if.then.13
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB10_10:                              # %if.end.16
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
.LBB10_11:                              # %if.end.18
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB10_13
# BB#12:                                # %if.then.20
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	UpdateLayoutCanvas
.LBB10_13:                              # %if.end.22
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_14
.LBB10_14:                              # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_1
.LBB10_15:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	UpdateLayoutCanvas, .Lfunc_end10-UpdateLayoutCanvas
	.cfi_endproc

	.globl	LayoutDumpCanvas
	.align	16, 0x90
	.type	LayoutDumpCanvas,@function
LayoutDumpCanvas:                       # @LayoutDumpCanvas
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.3, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	secfopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	dump_canvas
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB11_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	LayoutDumpCanvas, .Lfunc_end11-LayoutDumpCanvas
	.cfi_endproc

	.align	16, 0x90
	.type	dump_canvas,@function
dump_canvas:                            # @dump_canvas
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -24(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB12_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB12_3:                               # %land.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_4
	jmp	.LBB12_6
.LBB12_4:                               # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.6, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	cmpl	$2, 48(%rdx)
	cmoveq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -32(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB12_1
.LBB12_6:                               # %for.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB12_7:                               # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB12_13
# BB#8:                                 # %for.body.6
                                        #   in Loop: Header=BB12_7 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB12_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB12_7 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	dump_canvas
	jmp	.LBB12_11
.LBB12_10:                              # %if.else
                                        #   in Loop: Header=BB12_7 Depth=1
	movabsq	$.L.str.8, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB12_11:                              # %if.end
                                        #   in Loop: Header=BB12_7 Depth=1
	jmp	.LBB12_12
.LBB12_12:                              # %for.inc.10
                                        #   in Loop: Header=BB12_7 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB12_7
.LBB12_13:                              # %for.end.12
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dump_canvas, .Lfunc_end12-dump_canvas
	.cfi_endproc

	.globl	RenameLayout
	.align	16, 0x90
	.type	RenameLayout,@function
RenameLayout:                           # @RenameLayout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	free
	movq	-16(%rbp), %rdi
	callq	SaveStr
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	RenameLayout, .Lfunc_end13-RenameLayout
	.cfi_endproc

	.globl	RenumberLayout
	.align	16, 0x90
	.type	RenumberLayout,@function
RenumberLayout:                         # @RenumberLayout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	16(%rdi), %esi
	movl	%esi, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB14_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$10, -20(%rbp)
	jl	.LBB14_3
.LBB14_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB14_6
.LBB14_3:                               # %if.end
	movslq	-20(%rbp), %rax
	movq	laytab(,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	%rax, laytab(,%rcx,8)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	%rax, laytab(,%rcx,8)
	cmpq	$0, -32(%rbp)
	je	.LBB14_5
# BB#4:                                 # %if.then.7
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 16(%rcx)
.LBB14_5:                               # %if.end.9
	movl	$1, -4(%rbp)
.LBB14_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	RenumberLayout, .Lfunc_end14-RenumberLayout
	.cfi_endproc

	.type	layout_last_marker,@object # @layout_last_marker
	.comm	layout_last_marker,360,8
	.type	layout_attach,@object   # @layout_attach
	.data
	.globl	layout_attach
	.align	8
layout_attach:
	.quad	layout_last_marker
	.size	layout_attach, 8

	.type	laytab,@object          # @laytab
	.comm	laytab,80,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No more layouts\n"
	.size	.L.str, 17

	.type	layouts,@object         # @layouts
	.comm	layouts,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"No layouts defined\n"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"a"
	.size	.L.str.3, 2

	.type	layout_last,@object     # @layout_last
	.comm	layout_last,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"split%s\n"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" -v"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.zero	1
	.size	.L.str.7, 1

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"focus\n"
	.size	.L.str.8, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
