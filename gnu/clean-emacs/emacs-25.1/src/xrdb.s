	.text
	.file	"xrdb.bc"
	.globl	x_load_resources
	.align	16, 0x90
	.type	x_load_resources,@function
x_load_resources:                       # @x_load_resources
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
	subq	$352, %rsp              # imm = 0x160
	movabsq	$.L.str.1, %rax
	movabsq	$.L.str, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -328(%rbp)
	movq	%rax, %rdi
	callq	XrmStringToQuark
	movl	%eax, x_rm_string
	callq	XrmInitialize
	movabsq	$.L.str.2, %rdi
	callq	XrmGetStringDatabase
	movabsq	$.L.str.3, %rsi
	leaq	-320(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movb	$0, %al
	callq	sprintf
	leaq	-48(%rbp), %rdi
	leaq	-320(%rbp), %rsi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	XrmPutLineResource
	movabsq	$.L.str.4, %rsi
	leaq	-320(%rbp), %rdi
	movq	-328(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-48(%rbp), %rdi
	leaq	-320(%rbp), %rsi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	XrmPutLineResource
	movabsq	$.L.str.5, %rsi
	leaq	-320(%rbp), %rdi
	movq	-328(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-48(%rbp), %rdi
	leaq	-320(%rbp), %rsi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	XrmPutLineResource
	movabsq	$.L.str.6, %rsi
	leaq	-320(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	leaq	-48(%rbp), %rdi
	leaq	-320(%rbp), %rsi
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	XrmPutLineResource
	movabsq	$.L.str.7, %rsi
	leaq	-320(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	leaq	-48(%rbp), %rdi
	leaq	-320(%rbp), %rsi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	XrmPutLineResource
	movabsq	$.L.str.8, %rsi
	leaq	-320(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	leaq	-48(%rbp), %rdi
	leaq	-320(%rbp), %rsi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	XrmPutLineResource
	movq	-8(%rbp), %rdi
	callq	get_user_db
	movq	%rax, -40(%rbp)
	movq	x_customization_string, %rdi
	callq	xfree
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	x_get_customization_string
	movq	%rax, x_customization_string
	movq	-32(%rbp), %rdi
	callq	get_system_app
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	XrmMergeDatabases
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	get_fallback
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.24
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	XrmMergeDatabases
.LBB0_4:                                # %if.end.25
	movq	-32(%rbp), %rdi
	callq	get_user_app
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_6
# BB#5:                                 # %if.then.28
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	XrmMergeDatabases
.LBB0_6:                                # %if.end.29
	cmpq	$0, -40(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.31
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	XrmMergeDatabases
.LBB0_8:                                # %if.end.32
	callq	get_environ_db
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.35
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	XrmMergeDatabases
.LBB0_10:                               # %if.end.36
	cmpq	$0, -16(%rbp)
	je	.LBB0_14
# BB#11:                                # %if.then.38
	movq	-16(%rbp), %rdi
	callq	XrmGetStringDatabase
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then.41
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	XrmMergeDatabases
.LBB0_13:                               # %if.end.42
	jmp	.LBB0_14
.LBB0_14:                               # %if.end.43
	movq	-48(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end0:
	.size	x_load_resources, .Lfunc_end0-x_load_resources
	.cfi_endproc

	.align	16, 0x90
	.type	get_user_db,@function
get_user_db:                            # @get_user_db
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XResourceManagerString
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	XrmGetStringDatabase
	movq	%rax, -16(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	callq	gethomedir
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$11, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	-40(%rbp), %rax
	movl	$xdefaults, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-48(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	XrmGetFileDatabase
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdi
	callq	xfree
.LBB1_3:                                # %if.end
	movq	-8(%rbp), %rax
	movslq	224(%rax), %rax
	movq	-8(%rbp), %rcx
	shlq	$7, %rax
	addq	232(%rcx), %rax
	movq	%rax, %rdi
	callq	XScreenResourceString
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	callq	XrmGetStringDatabase
	leaq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	XrmMergeDatabases
	movq	-24(%rbp), %rdi
	callq	XFree
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB1_5:                                # %if.end.12
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	get_user_db, .Lfunc_end1-get_user_db
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_customization_string,@function
x_get_customization_string:             # @x_get_customization_string
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
	subq	$80, %rsp
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	strlen
	addq	$32, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	addq	$32, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.15, %rcx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	sprintf
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	x_get_string_resource
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB2_2
# BB#1:                                 # %cond.true
	movq	-48(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_3:                                # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	x_get_customization_string, .Lfunc_end2-x_get_customization_string
	.cfi_endproc

	.align	16, 0x90
	.type	get_system_app,@function
get_system_app:                         # @get_system_app
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
	subq	$16, %rsp
	movabsq	$.L.str.16, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	getenv
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rax
	movq	%rax, -16(%rbp)
.LBB3_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	search_magic_path
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_system_app, .Lfunc_end3-get_system_app
	.cfi_endproc

	.align	16, 0x90
	.type	get_fallback,@function
get_fallback:                           # @get_fallback
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
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	get_fallback, .Lfunc_end4-get_fallback
	.cfi_endproc

	.align	16, 0x90
	.type	get_user_app,@function
get_user_app:                           # @get_user_app
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
	movabsq	$.L.str.21, %rax
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	%rax, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	search_magic_path
	movq	%rax, -16(%rbp)
.LBB5_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	jne	.LBB5_8
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.22, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_7
# BB#4:                                 # %if.then.6
	movabsq	$.L.str.23, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	search_magic_path
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.9
	movabsq	$.L.str.24, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	search_magic_path
	movq	%rax, -16(%rbp)
.LBB5_6:                                # %if.end.11
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.12
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.13
	cmpq	$0, -16(%rbp)
	jne	.LBB5_12
# BB#9:                                 # %if.then.15
	callq	gethomedir
	movabsq	$.L.str.25, %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	search_magic_path
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_11
# BB#10:                                # %if.then.19
	movabsq	$.L.str.26, %rdx
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	search_magic_path
	movq	%rax, -16(%rbp)
.LBB5_11:                               # %if.end.21
	movq	-32(%rbp), %rdi
	callq	xfree
.LBB5_12:                               # %if.end.22
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_user_app, .Lfunc_end5-get_user_app
	.cfi_endproc

	.align	16, 0x90
	.type	get_environ_db,@function
get_environ_db:                         # @get_environ_db
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
	subq	$80, %rsp
	movabsq	$.L.str.27, %rdi
	callq	getenv
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	callq	gethomedir
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, -40(%rbp)
	callq	Fsystem_name
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$11, %rax
	movq	-48(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-64(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	-40(%rbp), %rax
	movl	$xdefaults, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	stpcpy
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	lispstpcpy
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	XrmGetFileDatabase
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_environ_db, .Lfunc_end6-get_environ_db
	.cfi_endproc

	.globl	x_get_string_resource
	.align	16, 0x90
	.type	x_get_string_resource,@function
x_get_string_resource:                  # @x_get_string_resource
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	testb	$1, globals+3401
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	leaq	-48(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	x_rm_string, %ecx
	callq	x_get_resource
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.2
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.end.3
	movq	$0, -8(%rbp)
.LBB7_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	x_get_string_resource, .Lfunc_end7-x_get_string_resource
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_resource,@function
x_get_resource:                         # @x_get_resource
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
	subq	$880, %rsp              # imm = 0x370
	leaq	-464(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	XrmStringToQuarkList
	leaq	-864(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	XrmStringToQuarkList
	leaq	-868(%rbp), %rcx
	leaq	-64(%rbp), %r8
	leaq	-864(%rbp), %rdx
	leaq	-464(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	XrmQGetResource
	cmpl	$1, %eax
	jne	.LBB8_6
# BB#1:                                 # %land.lhs.true
	movl	-868(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB8_6
# BB#2:                                 # %if.then
	movl	-868(%rbp), %eax
	cmpl	x_rm_string, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.6
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	callq	memcpy
.LBB8_5:                                # %if.end
	movl	-64(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.end.11
	movl	$0, -4(%rbp)
.LBB8_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$880, %rsp              # imm = 0x370
	popq	%rbp
	retq
.Lfunc_end8:
	.size	x_get_resource, .Lfunc_end8-x_get_resource
	.cfi_endproc

	.align	16, 0x90
	.type	gethomedir,@function
gethomedir:                             # @gethomedir
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
	subq	$64, %rsp
	movabsq	$.L.str.9, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB9_8
# BB#1:                                 # %if.then
	movabsq	$.L.str.10, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB9_3
# BB#2:                                 # %lor.lhs.false
	movabsq	$.L.str.11, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB9_4
.LBB9_3:                                # %if.then.5
	movq	-24(%rbp), %rdi
	callq	getpwnam
	movq	%rax, -16(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	callq	getuid
	movl	%eax, %edi
	callq	getpwuid
	movq	%rax, -16(%rbp)
.LBB9_5:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB9_7
# BB#6:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB9_7:                                # %if.end.10
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.11
	cmpq	$0, -24(%rbp)
	jne	.LBB9_10
# BB#9:                                 # %if.then.13
	movabsq	$.L.str.12, %rdi
	callq	xstrdup
	movq	%rax, -8(%rbp)
	jmp	.LBB9_11
.LBB9_10:                               # %if.end.15
	movq	-24(%rbp), %rdi
	callq	strlen
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	-40(%rbp), %rax
	movl	$.L.str.12, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB9_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gethomedir, .Lfunc_end9-gethomedir
	.cfi_endproc

	.align	16, 0x90
	.type	search_magic_path,@function
search_magic_path:                      # @search_magic_path
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB10_21
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB10_3:                               # %for.cond.1
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB10_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -65(%rbp)          # 1-byte Spill
.LBB10_5:                               # %land.end
                                        #   in Loop: Header=BB10_3 Depth=2
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_6
	jmp	.LBB10_8
.LBB10_6:                               # %for.body.5
                                        #   in Loop: Header=BB10_3 Depth=2
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB10_3
.LBB10_8:                               # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.LBB10_12
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	magic_db
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB10_11
# BB#10:                                # %if.then.9
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_22
.LBB10_11:                              # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_17
.LBB10_12:                              # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB10_16
# BB#13:                                # %if.then.13
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$search_magic_path.ns, %rdi
	movl	$search_magic_path.ns, %eax
	movl	%eax, %ecx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	strlen
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	magic_db
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.18
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_22
.LBB10_15:                              # %if.end.19
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_16
.LBB10_16:                              # %if.end.20
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_17
.LBB10_17:                              # %if.end.21
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB10_19
# BB#18:                                # %if.then.25
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB10_19:                              # %if.end.27
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_20
.LBB10_20:                              # %for.inc.28
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_1
.LBB10_21:                              # %for.end.29
	movq	$0, -8(%rbp)
.LBB10_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	search_magic_path, .Lfunc_end10-search_magic_path
	.cfi_endproc

	.align	16, 0x90
	.type	magic_db,@function
magic_db:                               # @magic_db
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
	subq	$144, %rsp
	movabsq	$.L.str.18, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, %rdi
	callq	getenv
	movq	%rax, -56(%rbp)
	movq	$100, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB11_27
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$1, -104(%rbp)
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB11_21
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB11_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	$0, -104(%rbp)
	jmp	.LBB11_20
.LBB11_5:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$37, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%edx, -112(%rbp)        # 4-byte Spill
	je	.LBB11_6
	jmp	.LBB11_29
.LBB11_29:                              # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB11_7
	jmp	.LBB11_30
.LBB11_30:                              # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$76, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB11_15
	jmp	.LBB11_31
.LBB11_31:                              # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$78, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB11_11
	jmp	.LBB11_32
.LBB11_32:                              # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB11_14
	jmp	.LBB11_33
.LBB11_33:                              # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$84, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB11_12
	jmp	.LBB11_34
.LBB11_34:                              # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB11_18
	jmp	.LBB11_35
.LBB11_35:                              # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB11_15
	jmp	.LBB11_36
.LBB11_36:                              # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB11_18
	jmp	.LBB11_13
.LBB11_6:                               # %sw.bb
                                        #   in Loop: Header=BB11_1 Depth=1
	movabsq	$.L.str.19, %rax
	movq	%rax, -96(%rbp)
	movq	$1, -104(%rbp)
	jmp	.LBB11_19
.LBB11_7:                               # %sw.bb.9
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, x_customization_string
	je	.LBB11_9
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	x_customization_string, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	strlen
	movq	%rax, -104(%rbp)
	jmp	.LBB11_10
.LBB11_9:                               # %if.else.12
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	$0, -104(%rbp)
.LBB11_10:                              # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_19
.LBB11_11:                              # %sw.bb.13
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, -104(%rbp)
	jmp	.LBB11_19
.LBB11_12:                              # %sw.bb.15
                                        #   in Loop: Header=BB11_1 Depth=1
	movabsq	$.L.str.20, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	strlen
	movq	%rax, -104(%rbp)
	jmp	.LBB11_19
.LBB11_13:                              # %sw.default
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_14
.LBB11_14:                              # %sw.bb.17
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	$0, -104(%rbp)
	jmp	.LBB11_19
.LBB11_15:                              # %sw.bb.18
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB11_17
# BB#16:                                # %if.then.20
	movq	-72(%rbp), %rdi
	callq	xfree
	movq	$0, -8(%rbp)
	jmp	.LBB11_28
.LBB11_17:                              # %if.end.21
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	strlen
	movq	%rax, -104(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %sw.bb.23
	movq	-72(%rbp), %rdi
	callq	xfree
	movq	$0, -8(%rbp)
	jmp	.LBB11_28
.LBB11_19:                              # %sw.epilog
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.24
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_21
.LBB11_21:                              # %if.end.25
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-64(%rbp), %rax
	subq	-80(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jg	.LBB11_23
# BB#22:                                # %if.then.28
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-64(%rbp), %rsi
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rdx
	subq	-64(%rbp), %rdx
	addq	-104(%rbp), %rdx
	addq	$1, %rdx
	callq	xpalloc
	movq	%rax, -72(%rbp)
.LBB11_23:                              # %if.end.32
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-72(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-104(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	-24(%rbp), %rdx
	cmpq	%rdx, %rax
	jb	.LBB11_26
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB11_26
# BB#25:                                # %if.then.40
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -40(%rbp)
.LBB11_26:                              # %if.end.42
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_1
.LBB11_27:                              # %while.end
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-72(%rbp), %rdi
	callq	XrmGetFileDatabase
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rdi
	callq	xfree
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	magic_db, .Lfunc_end11-magic_db
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-*-helvetica-medium-r-*--*-120-*-*-*-*-iso8859-1"
	.size	.L.str, 49

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"String"
	.size	.L.str.1, 7

	.type	x_rm_string,@object     # @x_rm_string
	.local	x_rm_string
	.comm	x_rm_string,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Emacs.dialog*.background: grey75"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Emacs.dialog*.font: %s"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"*XlwMenu*font: %s"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"*XlwMenu*background: grey75"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Emacs*verticalScrollBar.background: grey75"
	.size	.L.str.7, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Emacs*horizontalScrollBar.background: grey75"
	.size	.L.str.8, 45

	.type	x_customization_string,@object # @x_customization_string
	.local	x_customization_string
	.comm	x_customization_string,8,8
	.type	xdefaults,@object       # @xdefaults
	.section	.rodata,"a",@progbits
xdefaults:
	.asciz	".Xdefaults"
	.size	xdefaults, 11

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"HOME"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"LOGNAME"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"USER"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s.%s"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"customization"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Customization"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"XFILESEARCHPATH"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/usr/share/X11/%L/%T/%N%C%S:/usr/share/X11/%l/%T/%N%C%S:/usr/share/X11/%T/%N%C%S:/usr/share/X11/%L/%T/%N%S:/usr/share/X11/%l/%T/%N%S:/usr/share/X11/%T/%N%S:/usr/lib/X11/%L/%T/%N%C%S:/usr/lib/X11/%l/%T/%N%C%S:/usr/lib/X11/%T/%N%C%S:/usr/lib/X11/%L/%T/%N%S:/usr/lib/X11/%l/%T/%N%S:/usr/lib/X11/%T/%N%S"
	.size	.L.str.17, 300

	.type	search_magic_path.ns,@object # @search_magic_path.ns
	.section	.rodata,"a",@progbits
search_magic_path.ns:
	.asciz	"%N%S"
	.size	search_magic_path.ns, 5

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"LANG"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"app-defaults"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"XUSERFILESEARCHPATH"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"XAPPLRESDIR"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/%L/%N"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/%N"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%L/%N"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%N"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"XENVIRONMENT"
	.size	.L.str.27, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
