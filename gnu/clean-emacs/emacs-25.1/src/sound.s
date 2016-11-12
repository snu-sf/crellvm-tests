	.text
	.file	"sound.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	Fplay_sound_internal
	.align	16, 0x90
	.type	Fplay_sound_internal,@function
Fplay_sound_internal:                   # @Fplay_sound_internal
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	leaq	-48(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	parse_sound
	testb	$1, %al
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$96, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, -64(%rbp)
	callq	xzalloc
	movl	$40, %ecx
	movl	%ecx, %edi
	movq	%rax, current_sound_device
	callq	xzalloc
	movabsq	$sound_cleanup, %rdi
	movq	%rax, current_sound
	callq	record_unwind_protect_void
	leaq	-112(%rbp), %rax
	movq	current_sound, %rdi
	movq	%rax, 8(%rdi)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB0_3
	jmp	.LBB0_8
.LBB0_3:                                # %if.then.7
	movq	globals+408, %rdi
	callq	list1
	xorl	%edi, %edi
	movq	-48(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-64(%rbp), %rcx
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	callq	openp
	movq	current_sound, %rcx
	movl	%eax, 4(%rcx)
	movq	current_sound, %rcx
	cmpl	$0, 4(%rcx)
	jge	.LBB0_5
# BB#4:                                 # %if.then.14
	movabsq	$.L.str.1, %rdi
	callq	sound_perror
.LBB0_5:                                # %if.end.15
	movl	$44, %eax
	movl	%eax, %edx
	movq	current_sound, %rcx
	movl	4(%rcx), %edi
	movq	current_sound, %rcx
	movq	8(%rcx), %rsi
	callq	emacs_read
	movl	%eax, %edi
	movq	current_sound, %rax
	movl	%edi, 16(%rax)
	movq	current_sound, %rax
	cmpl	$0, 16(%rax)
	jge	.LBB0_7
# BB#6:                                 # %if.then.22
	movabsq	$.L.str.2, %rdi
	callq	sound_perror
.LBB0_7:                                # %if.end.23
	jmp	.LBB0_12
.LBB0_8:                                # %if.else
	movq	-40(%rbp), %rax
	movq	current_sound, %rcx
	movq	%rax, 24(%rcx)
	movq	current_sound, %rax
	movq	24(%rax), %rdi
	callq	SBYTES
	movl	$44, %edx
	movl	%edx, %ecx
	cmpq	%rax, %rcx
	jae	.LBB0_10
# BB#9:                                 # %cond.true
	movl	$44, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               # %cond.false
	movq	current_sound, %rax
	movq	24(%rax), %rdi
	callq	SBYTES
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB0_11:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movq	current_sound, %rax
	movl	%ecx, 16(%rax)
	movq	current_sound, %rax
	movq	8(%rax), %rdi
	movq	current_sound, %rax
	movq	24(%rax), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	current_sound, %rdi
	movslq	16(%rdi), %rdx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
.LBB0_12:                               # %if.end.38
	movq	current_sound, %rdi
	callq	find_sound_type
	movq	-32(%rbp), %rdi
	movq	current_sound_device, %rax
	movq	%rdi, (%rax)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_14
# BB#13:                                # %if.then.46
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	current_sound_device, %rax
	movl	%ecx, 16(%rax)
	jmp	.LBB0_17
.LBB0_14:                               # %if.else.49
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB0_16
# BB#15:                                # %if.then.55
	movq	-24(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	current_sound_device, %rdi
	movl	%eax, 16(%rdi)
.LBB0_16:                               # %if.end.60
	jmp	.LBB0_17
.LBB0_17:                               # %if.end.61
	movl	$751, %edi              # imm = 0x2EF
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-128(%rbp), %rsi
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	Frun_hook_with_args
	movq	current_sound_device, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	vox_init
	testb	$1, %al
	jne	.LBB0_19
# BB#18:                                # %if.then.66
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB0_19:                               # %if.end.67
	movq	current_sound_device, %rax
	movq	40(%rax), %rax
	movq	current_sound_device, %rdi
	callq	*%rax
	movq	current_sound, %rax
	movq	32(%rax), %rax
	movq	current_sound, %rdi
	movq	current_sound_device, %rsi
	callq	*%rax
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fplay_sound_internal, .Lfunc_end0-Fplay_sound_internal
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	parse_sound,@function
parse_sound:                            # @parse_sound
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	jne	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	movl	$866, %edi              # imm = 0x362
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_3
.LBB1_2:                                # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB1_24
.LBB1_3:                                # %if.end
	movl	$41, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$29, %edi
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$32, %edi
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$136, %edi
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_6
# BB#5:                                 # %if.then.20
	movb	$0, -1(%rbp)
	jmp	.LBB1_24
.LBB1_6:                                # %if.end.21
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_20
# BB#7:                                 # %if.then.26
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB1_12
# BB#8:                                 # %if.then.33
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB1_10
# BB#9:                                 # %lor.lhs.false.37
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	sarq	$2, %rax
	cmpq	$100, %rax
	jle	.LBB1_11
.LBB1_10:                               # %if.then.42
	movb	$0, -1(%rbp)
	jmp	.LBB1_24
.LBB1_11:                               # %if.end.43
	jmp	.LBB1_19
.LBB1_12:                               # %if.else
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB1_17
# BB#13:                                # %if.then.49
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB1_15
# BB#14:                                # %lor.lhs.false.54
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_16
.LBB1_15:                               # %if.then.59
	movb	$0, -1(%rbp)
	jmp	.LBB1_24
.LBB1_16:                               # %if.end.60
	jmp	.LBB1_18
.LBB1_17:                               # %if.else.61
	movb	$0, -1(%rbp)
	jmp	.LBB1_24
.LBB1_18:                               # %if.end.62
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.63
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.64
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_23
# BB#21:                                # %land.lhs.true.69
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_23
# BB#22:                                # %if.then.72
	movb	$0, -1(%rbp)
	jmp	.LBB1_24
.LBB1_23:                               # %if.end.73
	movb	$1, -1(%rbp)
.LBB1_24:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	parse_sound, .Lfunc_end1-parse_sound
	.cfi_endproc

	.align	16, 0x90
	.type	sound_cleanup,@function
sound_cleanup:                          # @sound_cleanup
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
	subq	$16, %rsp
	movq	current_sound_device, %rax
	cmpq	$0, 48(%rax)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	current_sound_device, %rax
	movq	48(%rax), %rax
	movq	current_sound_device, %rdi
	callq	*%rax
.LBB2_2:                                # %if.end
	movq	current_sound, %rax
	cmpl	$0, 4(%rax)
	jle	.LBB2_4
# BB#3:                                 # %if.then.2
	movq	current_sound, %rax
	movl	4(%rax), %edi
	callq	emacs_close
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB2_4:                                # %if.end.4
	movq	current_sound_device, %rax
	movq	%rax, %rdi
	callq	xfree
	movq	current_sound, %rax
	movq	%rax, %rdi
	callq	xfree
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sound_cleanup, .Lfunc_end2-sound_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	sound_perror,@function
sound_perror:                           # @sound_perror
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	callq	__errno_location
	movl	$1, %edi
	movl	(%rax), %ecx
	movl	%ecx, -12(%rbp)
	callq	turn_on_atimers
	leaq	-144(%rbp), %rdi
	callq	sigemptyset
	leaq	-144(%rbp), %rdi
	movl	$29, %esi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	sigaddset
	movl	$1, %edi
	leaq	-144(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	cmpl	$0, -12(%rbp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	strerror
	movabsq	$.L.str.4, %rdi
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB3_2:                                # %if.else
	movabsq	$.L.str.5, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	error
.Lfunc_end3:
	.size	sound_perror, .Lfunc_end3-sound_perror
	.cfi_endproc

	.align	16, 0x90
	.type	find_sound_type,@function
find_sound_type:                        # @find_sound_type
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	wav_init
	testb	$1, %al
	jne	.LBB4_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	au_init
	testb	$1, %al
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB4_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	find_sound_type, .Lfunc_end4-find_sound_type
	.cfi_endproc

	.align	16, 0x90
	.type	vox_init,@function
vox_init:                               # @vox_init
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
	subq	$32, %rsp
	movabsq	$.L.str.10, %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	string_default
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	emacs_open
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB5_2
# BB#1:                                 # %if.then
	movl	-28(%rbp), %edi
	callq	emacs_close
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movb	$0, -1(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.end
	movabsq	$vox_write, %rax
	movabsq	$vox_choose_format, %rcx
	movabsq	$vox_configure, %rdx
	movabsq	$vox_close, %rsi
	movabsq	$vox_open, %rdi
	movq	-16(%rbp), %r8
	movl	$-1, 8(%r8)
	movq	-16(%rbp), %r8
	movq	%rdi, 40(%r8)
	movq	-16(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-16(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-16(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movb	$1, -1(%rbp)
.LBB5_4:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	vox_init, .Lfunc_end5-vox_init
	.cfi_endproc

	.globl	syms_of_sound
	.align	16, 0x90
	.type	syms_of_sound,@function
syms_of_sound:                          # @syms_of_sound
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
	movabsq	$Splay_sound_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end6:
	.size	syms_of_sound, .Lfunc_end6-syms_of_sound
	.cfi_endproc

	.align	16, 0x90
	.type	wav_init,@function
wav_init:                               # @wav_init
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movslq	16(%rdi), %rdi
	cmpq	$44, %rdi
	jb	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	subl	$1179011410, %ecx       # imm = 0x46464952
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB7_3
.LBB7_2:                                # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB7_4
.LBB7_3:                                # %if.end
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	le2hl
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %edi
	callq	le2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edi
	callq	le2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %edi
	callq	le2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-24(%rbp), %rcx
	movl	16(%rcx), %edi
	callq	le2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-24(%rbp), %rcx
	movzwl	20(%rcx), %edi
	callq	le2hs
	movq	-24(%rbp), %rcx
	movw	%ax, 20(%rcx)
	movq	-24(%rbp), %rcx
	movzwl	22(%rcx), %edi
	callq	le2hs
	movq	-24(%rbp), %rcx
	movw	%ax, 22(%rcx)
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %edi
	callq	le2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rcx
	movl	28(%rcx), %edi
	callq	le2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-24(%rbp), %rcx
	movzwl	32(%rcx), %edi
	callq	le2hs
	movq	-24(%rbp), %rcx
	movw	%ax, 32(%rcx)
	movq	-24(%rbp), %rcx
	movzwl	34(%rcx), %edi
	callq	le2hs
	movq	-24(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-24(%rbp), %rcx
	movl	36(%rcx), %edi
	callq	le2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %edi
	callq	le2hl
	movabsq	$wav_play, %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, 40(%rdx)
	movq	-16(%rbp), %rdx
	movl	$0, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movb	$1, -1(%rbp)
.LBB7_4:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	wav_init, .Lfunc_end7-wav_init
	.cfi_endproc

	.align	16, 0x90
	.type	au_init,@function
au_init:                                # @au_init
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movslq	16(%rdi), %rdi
	cmpq	$24, %rdi
	jb	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	subl	$1684960046, %ecx       # imm = 0x646E732E
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB8_3
.LBB8_2:                                # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.end
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	be2hl
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %edi
	callq	be2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edi
	callq	be2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %edi
	callq	be2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-24(%rbp), %rcx
	movl	16(%rcx), %edi
	callq	be2hl
	movq	-24(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-24(%rbp), %rcx
	movl	20(%rcx), %edi
	callq	be2hl
	movabsq	$au_play, %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, 20(%rdx)
	movq	-16(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-16(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movb	$1, -1(%rbp)
.LBB8_4:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	au_init, .Lfunc_end8-au_init
	.cfi_endproc

	.align	16, 0x90
	.type	le2hl,@function
le2hl:                                  # @le2hl
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	le2hl, .Lfunc_end9-le2hl
	.cfi_endproc

	.align	16, 0x90
	.type	le2hs,@function
le2hs:                                  # @le2hs
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
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movzwl	-2(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	le2hs, .Lfunc_end10-le2hs
	.cfi_endproc

	.align	16, 0x90
	.type	wav_play,@function
wav_play:                               # @wav_play
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-88(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-24(%rbp), %rax
	movzwl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-24(%rbp), %rax
	movzwl	22(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB11_1
	jmp	.LBB11_2
.LBB11_1:                               # %if.then
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	SSDATA
	addq	$44, %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	SBYTES
	subq	$44, %rax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-104(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	jmp	.LBB11_22
.LBB11_2:                               # %if.else
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB11_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_5:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -48(%rbp)
	movq	$16384, -56(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jg	.LBB11_7
# BB#6:                                 # %cond.true.15
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false.17
	movb	$1, -65(%rbp)
	movq	-40(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB11_8:                               # %cond.end.19
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	$44, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	lseek
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB11_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jle	.LBB11_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	emacs_read
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	setg	%cl
	movb	%cl, -137(%rbp)         # 1-byte Spill
.LBB11_11:                              # %land.end
                                        #   in Loop: Header=BB11_9 Depth=1
	movb	-137(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_12
	jmp	.LBB11_15
.LBB11_12:                              # %while.body
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB11_14
# BB#13:                                # %if.then.30
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB11_14:                              # %if.end
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	jmp	.LBB11_9
.LBB11_15:                              # %while.end
	cmpq	$0, -32(%rbp)
	jge	.LBB11_17
# BB#16:                                # %if.then.35
	movabsq	$.L.str.8, %rdi
	callq	sound_perror
.LBB11_17:                              # %if.end.36
	jmp	.LBB11_18
.LBB11_18:                              # %do.body
	testb	$1, -65(%rbp)
	je	.LBB11_20
# BB#19:                                # %if.then.38
	xorl	%edi, %edi
	movb	$0, -65(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB11_20:                              # %if.end.41
	jmp	.LBB11_21
.LBB11_21:                              # %do.end
	jmp	.LBB11_22
.LBB11_22:                              # %if.end.42
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	wav_play, .Lfunc_end11-wav_play
	.cfi_endproc

	.align	16, 0x90
	.type	be2hl,@function
be2hl:                                  # @be2hl
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	#APP
	bswapl	%edi
	#NO_APP
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %edi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	be2hl, .Lfunc_end12-be2hl
	.cfi_endproc

	.align	16, 0x90
	.type	au_play,@function
au_play:                                # @au_play
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	$0, 20(%rsi)
	movq	-24(%rbp), %rsi
	movl	16(%rsi), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 24(%rsi)
	movq	-16(%rbp), %rsi
	movl	$0, 28(%rsi)
	movq	-24(%rbp), %rsi
	movl	20(%rsi), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 32(%rsi)
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	-16(%rbp), %rdi
	callq	*%rcx
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB13_1
	jmp	.LBB13_2
.LBB13_1:                               # %if.then
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %ecx
	subq	%rcx, %rax
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	jmp	.LBB13_18
.LBB13_2:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB13_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %cond.false
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB13_5
.LBB13_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %esi
	callq	lseek
	movq	$16384, -48(%rbp)       # imm = 0x4000
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB13_7
# BB#6:                                 # %cond.true.16
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false.18
	movb	$1, -57(%rbp)
	movq	-32(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB13_8:                               # %cond.end.20
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB13_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	emacs_read
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jle	.LBB13_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB13_9 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	*%rax
	jmp	.LBB13_9
.LBB13_11:                              # %while.end
	cmpq	$0, -40(%rbp)
	jge	.LBB13_13
# BB#12:                                # %if.then.29
	movabsq	$.L.str.8, %rdi
	callq	sound_perror
.LBB13_13:                              # %if.end
	jmp	.LBB13_14
.LBB13_14:                              # %do.body
	testb	$1, -57(%rbp)
	je	.LBB13_16
# BB#15:                                # %if.then.31
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB13_16:                              # %if.end.34
	jmp	.LBB13_17
.LBB13_17:                              # %do.end
	jmp	.LBB13_18
.LBB13_18:                              # %if.end.35
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	au_play, .Lfunc_end13-au_play
	.cfi_endproc

	.align	16, 0x90
	.type	string_default,@function
string_default:                         # @string_default
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_1
	jmp	.LBB14_2
.LBB14_1:                               # %cond.true
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB14_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	string_default, .Lfunc_end14-string_default
	.cfi_endproc

	.align	16, 0x90
	.type	vox_open,@function
vox_open:                               # @vox_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.10, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	string_default
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	emacs_open
	movq	-8(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-8(%rbp), %rdi
	cmpl	$0, 8(%rdi)
	jge	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	sound_perror
.LBB15_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	vox_open, .Lfunc_end15-vox_open
	.cfi_endproc

	.align	16, 0x90
	.type	vox_close,@function
vox_close:                              # @vox_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 8(%rdi)
	jl	.LBB16_2
# BB#1:                                 # %if.then
	leaq	-136(%rbp), %rdi
	callq	sigemptyset
	leaq	-136(%rbp), %rdi
	movl	$29, %esi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	sigaddset
	xorl	%edi, %edi
	leaq	-136(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	xorl	%edi, %edi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	turn_on_atimers
	movl	$20481, %eax            # imm = 0x5001
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edi
	movb	$0, %al
	callq	ioctl
	movl	$1, %edi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	turn_on_atimers
	movl	$2, %edi
	leaq	-264(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	pthread_sigmask
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	emacs_close
	movq	-8(%rbp), %rcx
	movl	$-1, 8(%rcx)
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB16_2:                               # %if.end
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end16:
	.size	vox_close, .Lfunc_end16-vox_close
	.cfi_endproc

	.align	16, 0x90
	.type	vox_configure,@function
vox_configure:                          # @vox_configure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	turn_on_atimers
	leaq	-272(%rbp), %rdi
	callq	sigemptyset
	leaq	-272(%rbp), %rdi
	movl	$29, %esi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	sigaddset
	xorl	%edi, %edi
	leaq	-272(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movl	$3221508101, %edi       # imm = 0xC0045005
	movl	%edi, %esi
	movq	-8(%rbp), %rdx
	movl	12(%rdx), %edi
	movl	%edi, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %edi
	movq	-8(%rbp), %rdx
	addq	$12, %rdx
	movl	%eax, -288(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jl	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	je	.LBB17_3
.LBB17_2:                               # %if.then
	movabsq	$.L.str.11, %rdi
	callq	sound_perror
.LBB17_3:                               # %if.end
	movl	$3221508099, %eax       # imm = 0xC0045003
	movl	%eax, %esi
	leaq	-12(%rbp), %rdx
	movq	-8(%rbp), %rcx
	cmpl	$1, 32(%rcx)
	setne	%dil
	andb	$1, %dil
	movzbl	%dil, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jl	.LBB17_5
# BB#4:                                 # %lor.lhs.false.12
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	$1, 32(%rcx)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %eax
	je	.LBB17_6
.LBB17_5:                               # %if.then.18
	movabsq	$.L.str.12, %rdi
	callq	sound_perror
.LBB17_6:                               # %if.end.19
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jle	.LBB17_13
# BB#7:                                 # %if.then.22
	movl	$3221508098, %eax       # imm = 0xC0045002
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edi
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jge	.LBB17_9
# BB#8:                                 # %if.then.29
	movabsq	$.L.str.13, %rdi
	callq	sound_perror
.LBB17_9:                               # %if.else
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	je	.LBB17_11
# BB#10:                                # %if.then.33
	movabsq	$.L.str.14, %rdi
	callq	sound_warning
.LBB17_11:                              # %if.end.34
	jmp	.LBB17_12
.LBB17_12:                              # %if.end.35
	jmp	.LBB17_13
.LBB17_13:                              # %if.end.36
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB17_15
# BB#14:                                # %if.then.39
	movl	$3221507332, %eax       # imm = 0xC0044D04
	movl	%eax, %esi
	leaq	-276(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$255, %eax
	movl	%eax, -276(%rbp)
	movl	-276(%rbp), %eax
	shll	$8, %eax
	orl	-276(%rbp), %eax
	movl	%eax, -276(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edi
	movb	$0, %al
	callq	ioctl
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB17_15:                              # %if.end.44
	movl	$1, %edi
	callq	turn_on_atimers
	movl	$2, %edi
	leaq	-144(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	pthread_sigmask
	movl	%eax, -296(%rbp)        # 4-byte Spill
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end17:
	.size	vox_configure, .Lfunc_end17-vox_configure
	.cfi_endproc

	.align	16, 0x90
	.type	vox_choose_format,@function
vox_choose_format:                      # @vox_choose_format
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, (%rsi)
	jne	.LBB18_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzwl	34(%rax), %ecx
	cmpl	$8, %ecx
	jne	.LBB18_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movl	$8, 12(%rax)
	jmp	.LBB18_7
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	movzwl	34(%rax), %ecx
	cmpl	$16, %ecx
	jne	.LBB18_5
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movl	$16, 12(%rax)
	jmp	.LBB18_6
.LBB18_5:                               # %if.else.10
	movabsq	$.L.str.15, %rdi
	movb	$0, %al
	callq	error
.LBB18_6:                               # %if.end
	jmp	.LBB18_7
.LBB18_7:                               # %if.end.11
	jmp	.LBB18_16
.LBB18_8:                               # %if.else.12
	movq	-16(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB18_14
# BB#9:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	12(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	%edx, -40(%rbp)         # 4-byte Spill
	je	.LBB18_10
	jmp	.LBB18_17
.LBB18_17:                              # %if.then.16
	movl	-36(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$4, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jb	.LBB18_11
	jmp	.LBB18_18
.LBB18_18:                              # %if.then.16
	movl	-36(%rbp), %eax         # 4-byte Reload
	addl	$-6, %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	ja	.LBB18_12
	jmp	.LBB18_10
.LBB18_10:                              # %sw.bb
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.LBB18_13
.LBB18_11:                              # %sw.bb.20
	movq	-8(%rbp), %rax
	movl	$16, 12(%rax)
	jmp	.LBB18_13
.LBB18_12:                              # %sw.default
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB18_13:                              # %sw.epilog
	jmp	.LBB18_15
.LBB18_14:                              # %if.else.22
	callq	emacs_abort
.LBB18_15:                              # %if.end.23
	jmp	.LBB18_16
.LBB18_16:                              # %if.end.24
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	vox_choose_format, .Lfunc_end18-vox_choose_format
	.cfi_endproc

	.align	16, 0x90
	.type	vox_write,@function
vox_write:                              # @vox_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	emacs_write_sig
	cmpq	-24(%rbp), %rax
	je	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rdi
	callq	sound_perror
.LBB19_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	vox_write, .Lfunc_end19-vox_write
	.cfi_endproc

	.align	16, 0x90
	.type	sound_warning,@function
sound_warning:                          # @sound_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	message1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	sound_warning, .Lfunc_end20-sound_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid sound specification"
	.size	.L.str, 28

	.type	current_sound_device,@object # @current_sound_device
	.local	current_sound_device
	.comm	current_sound_device,8,8
	.type	current_sound,@object   # @current_sound
	.local	current_sound
	.comm	current_sound,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not open sound file"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Invalid sound file header"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"No usable sound device driver found"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s: %s"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Unknown sound format"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"RIFF"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Error reading sound file"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	".snd"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/dev/dsp"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Could not set sound format"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Could not set stereo/mono"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Could not set sound speed"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Could not set sample rate"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Unsupported WAV file format"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unsupported AU file format"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Error writing to sound device"
	.size	.L.str.17, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"play-sound-internal"
	.size	.L.str.18, 20

	.type	Splay_sound_internal,@object # @Splay_sound_internal
	.data
	.align	8
Splay_sound_internal:
	.quad	167772160               # 0xa000000
	.quad	Fplay_sound_internal
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.size	Splay_sound_internal, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
