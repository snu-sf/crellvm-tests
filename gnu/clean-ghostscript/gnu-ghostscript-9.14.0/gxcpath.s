	.text
	.file	"gxcpath.bc"
	.align	16, 0x90
	.type	clip_path_enum_ptrs,@function
clip_path_enum_ptrs:                    # @clip_path_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jne	.LBB0_1
# BB#3:                                 # %sw.bb
	movq	272(%rsi), %rax
	subq	$-128, %rsi
	xorl	%ecx, %ecx
	cmpq	%rsi, %rax
	cmovneq	%rax, %rcx
	movq	%rcx, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_1:                                # %entry
	cmpl	$1, %ecx
	jne	.LBB0_2
# BB#4:                                 # %sw.bb.2
	movq	288(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_2:                                # %sw.default
	addl	$-2, %ecx
	movl	$128, %edx
	movl	$st_path, %r9d
	jmpq	*st_path+32(%rip)       # TAILCALL
.Lfunc_end0:
	.size	clip_path_enum_ptrs, .Lfunc_end0-clip_path_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	clip_path_reloc_ptrs,@function
clip_path_reloc_ptrs:                   # @clip_path_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	272(%rbx), %rdi
	movq	%rbx, %rax
	subq	$-128, %rax
	cmpq	%rax, %rdi
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%r14), %rax
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 272(%rbx)
.LBB1_2:                                # %if.end
	movq	(%r14), %rax
	movq	288(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 288(%rbx)
	movl	$128, %esi
	movl	$st_path, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*st_path+40(%rip)       # TAILCALL
.Lfunc_end1:
	.size	clip_path_reloc_ptrs, .Lfunc_end1-clip_path_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_clip_enum_ptrs,@function
device_clip_enum_ptrs:                  # @device_clip_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB2_3
# BB#1:                                 # %sw.default
	cmpl	$2, %ecx
	jg	.LBB2_2
# BB#4:                                 # %if.then
	addq	$1736, %rsi             # imm = 0x6C8
	decl	%ecx
	movl	$80, %edx
	movl	$st_clip_list, %r9d
	jmp	basic_enum_ptrs         # TAILCALL
.LBB2_3:                                # %cleanup
	movq	1816(%rsi), %rax
	addq	$1736, %rsi             # imm = 0x6C8
	xorl	%ecx, %ecx
	cmpq	%rsi, %rax
	cmovneq	%rax, %rcx
	movq	%rcx, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB2_2:                                # %if.end
	addl	$-3, %ecx
	movl	$1736, %edx             # imm = 0x6C8
	movl	$st_device_forward, %r9d
	jmpq	*st_device_forward+32(%rip) # TAILCALL
.Lfunc_end2:
	.size	device_clip_enum_ptrs, .Lfunc_end2-device_clip_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_clip_reloc_ptrs,@function
device_clip_reloc_ptrs:                 # @device_clip_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	1816(%rbx), %rdi
	leaq	1736(%rbx), %r15
	movq	(%r14), %rax
	movq	(%rax), %rax
	cmpq	%r15, %rdi
	je	.LBB3_1
# BB#2:                                 # %if.else
	movq	%r14, %rsi
	callq	*%rax
	jmp	.LBB3_3
.LBB3_1:                                # %if.then
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%rax
	addq	$1736, %rax             # imm = 0x6C8
.LBB3_3:                                # %if.end
	movq	%rax, 1816(%rbx)
	movl	$80, %esi
	movl	$st_clip_list, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	movl	$1736, %esi             # imm = 0x6C8
	movl	$st_device_forward, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*st_device_forward+40(%rip) # TAILCALL
.Lfunc_end3:
	.size	device_clip_reloc_ptrs, .Lfunc_end3-device_clip_reloc_ptrs
	.cfi_endproc

	.globl	gx_cpath_init_contained_shared
	.align	16, 0x90
	.type	gx_cpath_init_contained_shared,@function
gx_cpath_init_contained_shared:         # @gx_cpath_init_contained_shared
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 64
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	testq	%rbx, %rbx
	je	.LBB4_9
# BB#1:                                 # %if.then
	cmpq	%rbx, 56(%rbx)
	je	.LBB4_2
# BB#3:                                 # %if.end
	movl	$304, %edx              # imm = 0x130
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r14, 40(%r12)
	movl	$1, 48(%r12)
	movq	56(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_5
# BB#4:                                 # %do.body.11
	incq	(%rax)
.LBB4_5:                                # %do.body.18
	movq	272(%r12), %rax
	testq	%rax, %rax
	je	.LBB4_7
# BB#6:                                 # %do.body.21
	incq	(%rax)
.LBB4_7:                                # %do.body.31
	movq	288(%r12), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB4_13
# BB#8:                                 # %do.body.34
	incq	128(%rax)
	jmp	.LBB4_13
.LBB4_9:                                # %if.else
	movl	$st_clip_rect_list, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	*72(%r14)
	movq	%rax, 272(%r12)
	movl	$-25, %ebx
	testq	%rax, %rax
	je	.LBB4_13
# BB#10:                                # %if.end.48
	movq	$1, (%rax)
	movq	%r14, 8(%rax)
	movq	272(%r12), %rax
	movq	$rc_free_struct_only, 16(%rax)
	movq	272(%r12), %rax
	movq	$rc_free_cpath_list, 16(%rax)
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	gx_path_init_contained_shared
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_11
# BB#12:                                # %cleanup
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	leaq	(%rsp), %rsi
	movq	%r12, %rdi
	callq	cpath_init_rectangle
	movq	$0, 288(%r12)
	jmp	.LBB4_13
.LBB4_2:                                # %if.then.2
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.4, %edi
	movl	$165, %esi
	callq	lprintf_file_and_line
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	errprintf_nomem
	movl	$-100, %ebx
	jmp	.LBB4_13
.LBB4_11:                               # %if.then.52
	movq	272(%r12), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	*24(%r14)
	movq	$0, 272(%r12)
	movl	%ebp, %ebx
.LBB4_13:                               # %return
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gx_cpath_init_contained_shared, .Lfunc_end4-gx_cpath_init_contained_shared
	.cfi_endproc

	.globl	gx_cpath_alloc_shared
	.align	16, 0x90
	.type	gx_cpath_alloc_shared,@function
gx_cpath_alloc_shared:                  # @gx_cpath_alloc_shared
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 48
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r12, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	$st_clip_path, %esi
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB5_4
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	gx_cpath_init_contained_shared
	testl	%eax, %eax
	js	.LBB5_2
# BB#3:                                 # %if.end.5
	movl	$2, 48(%rbx)
	movq	%rbx, %rax
	jmp	.LBB5_4
.LBB5_2:                                # %if.then.3
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*24(%r15)
	xorl	%eax, %eax
.LBB5_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	gx_cpath_alloc_shared, .Lfunc_end5-gx_cpath_alloc_shared
	.cfi_endproc

	.globl	gx_cpath_init_local_shared_nested
	.align	16, 0x90
	.type	gx_cpath_init_local_shared_nested,@function
gx_cpath_init_local_shared_nested:      # @gx_cpath_init_local_shared_nested
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 48
.Ltmp35:
	.cfi_offset %rbx, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%r14, %r14
	je	.LBB6_11
# BB#1:                                 # %if.then
	testl	%ecx, %ecx
	jne	.LBB6_4
# BB#2:                                 # %if.then
	cmpq	%r14, 56(%r14)
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.4, %edi
	movl	$223, %esi
	callq	lprintf_file_and_line
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movl	$-100, %r14d
	jmp	.LBB6_12
.LBB6_11:                               # %if.else
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	gx_path_init_local_shared
	movq	%rbx, %rax
	subq	$-128, %rax
	movq	$1, 128(%rbx)
	movq	%r15, 136(%rbx)
	movq	$rc_free_cpath_list_local, 144(%rbx)
	movq	%rax, 272(%rbx)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cpath_init_rectangle
	movq	$0, 288(%rbx)
	jmp	.LBB6_12
.LBB6_4:                                # %if.end
	movups	112(%r14), %xmm0
	movups	%xmm0, 112(%rbx)
	movups	96(%r14), %xmm0
	movups	%xmm0, 96(%rbx)
	movups	80(%r14), %xmm0
	movups	%xmm0, 80(%rbx)
	movups	64(%r14), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movups	48(%r14), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movl	$0, 48(%rbx)
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB6_6
# BB#5:                                 # %do.body.13
	incq	(%rax)
.LBB6_6:                                # %do.end.19
	movq	272(%r14), %rax
	movq	%rax, 272(%rbx)
	testq	%rax, %rax
	je	.LBB6_8
# BB#7:                                 # %do.body.25
	incq	(%rax)
.LBB6_8:                                # %do.end.34
	movq	288(%r14), %rax
	movq	%rax, 288(%rbx)
	testq	%rax, %rax
	je	.LBB6_10
# BB#9:                                 # %do.body.40
	incq	128(%rax)
.LBB6_10:                               # %do.end.49
	movups	236(%r14), %xmm0
	movups	%xmm0, 236(%rbx)
	movl	280(%r14), %eax
	movl	%eax, 280(%rbx)
	movups	252(%r14), %xmm0
	movups	%xmm0, 252(%rbx)
	movq	296(%r14), %rax
	movq	%rax, 296(%rbx)
	movl	232(%r14), %eax
	movl	%eax, 232(%rbx)
	xorl	%r14d, %r14d
.LBB6_12:                               # %return
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	gx_cpath_init_local_shared_nested, .Lfunc_end6-gx_cpath_init_local_shared_nested
	.cfi_endproc

	.align	16, 0x90
	.type	rc_free_cpath_list_local,@function
rc_free_cpath_list_local:               # @rc_free_cpath_list_local
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 32
.Ltmp41:
	.cfi_offset %rbx, -32
.Ltmp42:
	.cfi_offset %r14, -24
.Ltmp43:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	72(%r14), %rsi
	addq	$24, %r14
	testq	%rsi, %rsi
	je	.LBB7_2
	.align	16, 0x90
.LBB7_1:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rbx
	movl	$.L.str.12, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB7_1
.LBB7_2:                                # %gx_clip_list_free.exit
	movups	clip_list_empty+64(%rip), %xmm0
	movups	%xmm0, 64(%r14)
	movups	clip_list_empty+48(%rip), %xmm0
	movups	%xmm0, 48(%r14)
	movups	clip_list_empty+32(%rip), %xmm0
	movups	%xmm0, 32(%r14)
	movups	clip_list_empty+16(%rip), %xmm0
	movups	%xmm0, 16(%r14)
	movups	clip_list_empty(%rip), %xmm0
	movups	%xmm0, (%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	rc_free_cpath_list_local, .Lfunc_end7-rc_free_cpath_list_local
	.cfi_endproc

	.globl	gx_cpath_init_local_shared
	.align	16, 0x90
	.type	gx_cpath_init_local_shared,@function
gx_cpath_init_local_shared:             # @gx_cpath_init_local_shared
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%ecx, %ecx
	jmp	gx_cpath_init_local_shared_nested # TAILCALL
.Lfunc_end8:
	.size	gx_cpath_init_local_shared, .Lfunc_end8-gx_cpath_init_local_shared
	.cfi_endproc

	.globl	gx_cpath_unshare
	.align	16, 0x90
	.type	gx_cpath_unshare,@function
gx_cpath_unshare:                       # @gx_cpath_unshare
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
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 48
.Ltmp49:
	.cfi_offset %rbx, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	gx_path_unshare
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_5
# BB#1:                                 # %if.end
	movq	272(%rbx), %r14
	cmpq	$2, (%r14)
	jl	.LBB9_5
# BB#2:                                 # %if.then.2
	movq	40(%rbx), %r15
	movl	$st_clip_rect_list, %esi
	movl	$.L.str.6, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rcx
	movq	%rcx, 272(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_6
# BB#3:                                 # %do.end
	movq	$1, (%rcx)
	movq	%r15, 8(%rcx)
	movq	272(%rbx), %rax
	movq	$rc_free_struct_only, 16(%rax)
	movq	272(%rbx), %rax
	movq	$rc_free_cpath_list, 16(%rax)
	decq	(%r14)
	jne	.LBB9_5
# BB#4:                                 # %do.end.24
	movq	8(%r14), %rdi
	movl	$.L.str.6, %edx
	movq	%r14, %rsi
	callq	*16(%r14)
.LBB9_5:                                # %cleanup.38
	movl	%ebp, %eax
.LBB9_6:                                # %cleanup.38
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gx_cpath_unshare, .Lfunc_end9-gx_cpath_unshare
	.cfi_endproc

	.globl	gx_cpath_free
	.align	16, 0x90
	.type	gx_cpath_free,@function
gx_cpath_free:                          # @gx_cpath_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp55:
	.cfi_def_cfa_offset 32
.Ltmp56:
	.cfi_offset %rbx, -24
.Ltmp57:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB10_9
# BB#1:                                 # %do.body
	movq	272(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_4
# BB#2:                                 # %do.end
	decq	(%rsi)
	jne	.LBB10_4
# BB#3:                                 # %do.end.13
	movq	8(%rsi), %rdi
	movq	%r14, %rdx
	callq	*16(%rsi)
	movq	$0, 272(%rbx)
.LBB10_4:                               # %do.body.26
	movq	288(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB10_7
# BB#5:                                 # %do.end.31
	decq	128(%rsi)
	jne	.LBB10_7
# BB#6:                                 # %do.end.44
	movq	136(%rsi), %rdi
	movq	%r14, %rdx
	callq	*144(%rsi)
	movq	$0, 288(%rbx)
.LBB10_7:                               # %do.end.59
	movq	$0, 272(%rbx)
	movq	$0, 288(%rbx)
	cmpl	$2, 48(%rbx)
	jne	.LBB10_8
# BB#10:                                # %if.then.63
	movl	$1, 48(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_path_free
	movq	40(%rbx), %rdi
	movq	24(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB10_9:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB10_8:                               # %if.else.71
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_path_free            # TAILCALL
.Lfunc_end10:
	.size	gx_cpath_free, .Lfunc_end10-gx_cpath_free
	.cfi_endproc

	.globl	gx_cpath_assign_preserve
	.align	16, 0x90
	.type	gx_cpath_assign_preserve,@function
gx_cpath_assign_preserve:               # @gx_cpath_assign_preserve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp64:
	.cfi_def_cfa_offset 208
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r13
	callq	gx_path_assign_preserve
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB11_22
# BB#1:                                 # %if.end
	movq	272(%r14), %rbp
	movq	272(%r13), %r15
	movq	%r14, %rax
	subq	$-128, %rax
	cmpq	%rax, %rbp
	je	.LBB11_2
# BB#14:                                # %do.body.71
	testq	%rbp, %rbp
	je	.LBB11_16
# BB#15:                                # %do.body.74
	incq	(%rbp)
.LBB11_16:                              # %do.body.86
	testq	%r15, %r15
	je	.LBB11_19
# BB#17:                                # %do.end.93
	decq	(%r15)
	jne	.LBB11_19
# BB#18:                                # %do.end.108
	movq	8(%r15), %rdi
	movl	$.L.str.7, %edx
	movq	%r15, %rsi
	callq	*16(%r15)
	movq	$0, 272(%r13)
	jmp	.LBB11_19
.LBB11_2:                               # %if.then.5
	movq	%r13, %rax
	subq	$-128, %rax
	cmpq	%rax, %r15
	je	.LBB11_4
# BB#3:                                 # %lor.lhs.false
	cmpq	$2, (%r15)
	jl	.LBB11_8
.LBB11_4:                               # %if.then.9
	movq	8(%r15), %r12
	movl	$st_clip_rect_list, %esi
	movl	$.L.str.7, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB11_22
# BB#5:                                 # %do.body
	movq	$1, (%r15)
	movq	%r12, 8(%r15)
	movq	$rc_free_cpath_list, 16(%r15)
	movq	272(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB11_12
# BB#6:                                 # %do.end
	decq	(%rsi)
	jne	.LBB11_12
# BB#7:                                 # %do.end.33
	movq	8(%rsi), %rdi
	movl	$.L.str.7, %edx
	callq	*16(%rsi)
	movq	$0, 272(%r13)
	jmp	.LBB11_12
.LBB11_8:                               # %if.else.50
	movq	72(%r15), %rsi
	leaq	24(%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB11_11
# BB#9:                                 # %while.body.lr.ph.i.i
	movq	8(%r15), %rbx
	.align	16, 0x90
.LBB11_10:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %r12
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	testq	%r12, %r12
	movq	%r12, %rsi
	jne	.LBB11_10
.LBB11_11:                              # %rc_free_cpath_list_local.exit
	movups	clip_list_empty+64(%rip), %xmm0
	movq	8(%rsp), %rax           # 8-byte Reload
	movups	%xmm0, 64(%rax)
	movups	clip_list_empty+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	clip_list_empty+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	clip_list_empty+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	clip_list_empty(%rip), %xmm0
	movups	%xmm0, (%rax)
.LBB11_12:                              # %if.end.53
	movups	88(%rbp), %xmm0
	movups	%xmm0, 88(%r15)
	movups	24(%rbp), %xmm0
	movups	40(%rbp), %xmm1
	movups	56(%rbp), %xmm2
	movups	72(%rbp), %xmm3
	movups	%xmm3, 72(%r15)
	movups	%xmm2, 56(%r15)
	movups	%xmm1, 40(%r15)
	movups	%xmm0, 24(%r15)
	movq	%r15, 272(%r14)
	testq	%r15, %r15
	je	.LBB11_19
# BB#13:                                # %do.body.59
	incq	(%r15)
.LBB11_19:                              # %do.body.128
	movq	288(%r14), %rax
	testq	%rax, %rax
	je	.LBB11_21
# BB#20:                                # %do.body.131
	incq	128(%rax)
.LBB11_21:                              # %do.end.143
	movups	112(%r13), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	96(%r13), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	80(%r13), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	64(%r13), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movl	$304, %edx              # imm = 0x130
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movaps	128(%rsp), %xmm0
	movups	%xmm0, 112(%r13)
	movaps	112(%rsp), %xmm0
	movups	%xmm0, 96(%r13)
	movaps	96(%rsp), %xmm0
	movups	%xmm0, 80(%r13)
	movaps	80(%rsp), %xmm0
	movups	%xmm0, 64(%r13)
	movaps	16(%rsp), %xmm0
	movaps	32(%rsp), %xmm1
	movaps	48(%rsp), %xmm2
	movaps	64(%rsp), %xmm3
	movups	%xmm3, 48(%r13)
	movups	%xmm2, 32(%r13)
	movups	%xmm1, 16(%r13)
	movups	%xmm0, (%r13)
	xorl	%eax, %eax
.LBB11_22:                              # %cleanup.146
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gx_cpath_assign_preserve, .Lfunc_end11-gx_cpath_assign_preserve
	.cfi_endproc

	.globl	gx_cpath_assign_free
	.align	16, 0x90
	.type	gx_cpath_assign_free,@function
gx_cpath_assign_free:                   # @gx_cpath_assign_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	gx_cpath_assign_preserve
	testl	%eax, %eax
	js	.LBB12_2
# BB#1:                                 # %if.end
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	gx_cpath_free
.LBB12_2:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end12:
	.size	gx_cpath_assign_free, .Lfunc_end12-gx_cpath_assign_free
	.cfi_endproc

	.globl	gx_cpath_to_path_synthesize
	.align	16, 0x90
	.type	gx_cpath_to_path_synthesize,@function
gx_cpath_to_path_synthesize:            # @gx_cpath_to_path_synthesize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 32
	subq	$160, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 192
.Ltmp77:
	.cfi_offset %rbx, -32
.Ltmp78:
	.cfi_offset %r14, -24
.Ltmp79:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %rax
	leaq	48(%rsp), %r14
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	gx_cpath_enum_init
	leaq	16(%rsp), %r15
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gx_cpath_enum_next
	decl	%eax
	cmpl	$4, %eax
	ja	.LBB13_9
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB13_1 Depth=1
	jmpq	*.LJTI13_0(,%rax,8)
.LBB13_3:                               # %sw.bb
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	16(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rbx, %rdi
	callq	gx_path_add_point
	jmp	.LBB13_8
.LBB13_4:                               # %sw.bb.4
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	16(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	gx_path_add_line_notes
	jmp	.LBB13_8
.LBB13_6:                               # %sw.bb.18
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rcx
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rcx, %r8
	shrq	$32, %r8
	movq	32(%rsp), %r9
	movq	%r9, %rax
	shrq	$32, %rax
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	movq	%rbx, %rdi
	callq	gx_path_add_curve_notes
	jmp	.LBB13_8
.LBB13_7:                               # %sw.bb.33
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_path_close_subpath_notes
	jmp	.LBB13_8
.LBB13_5:                               # %sw.bb.11
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	16(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	gx_path_add_gap_notes
.LBB13_8:                               # %sw.epilog
                                        #   in Loop: Header=BB13_1 Depth=1
	testl	%eax, %eax
	jns	.LBB13_1
.LBB13_9:                               # %while.end
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	gx_cpath_to_path_synthesize, .Lfunc_end13-gx_cpath_to_path_synthesize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_3
	.quad	.LBB13_4
	.quad	.LBB13_6
	.quad	.LBB13_7
	.quad	.LBB13_5

	.text
	.globl	gx_cpath_enum_init
	.align	16, 0x90
	.type	gx_cpath_enum_init,@function
gx_cpath_enum_init:                     # @gx_cpath_enum_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 160
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
.Ltmp86:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movl	280(%rsi), %eax
	movl	%eax, 64(%r15)
	testl	%eax, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	callq	gx_path_enum_init
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%r15)
	movl	$1, 88(%r15)
	jmp	.LBB14_14
.LBB14_2:                               # %if.else
	movq	272(%rsi), %rbx
	cmpl	$1, 96(%rbx)
	jg	.LBB14_4
# BB#3:                                 # %cond.true
	addq	$24, %rbx
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	movq	64(%rbx), %rbx
.LBB14_5:                               # %cond.end
	movq	40(%rsi), %rdx
	leaq	(%rsp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_path_init_local_shared
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_path_enum_init
	movl	$1, 88(%r15)
	movq	%rbx, 72(%r15)
	jmp	.LBB14_6
	.align	16, 0x90
.LBB14_12:                              # %land.end
                                        #   in Loop: Header=BB14_6 Depth=1
	movb	%al, 32(%rbx)
	movq	(%rbx), %rbx
.LBB14_6:                               # %cond.end
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB14_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	24(%rbx), %eax
	cmpl	28(%rbx), %eax
	jge	.LBB14_8
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	16(%rbx), %eax
	cmpl	20(%rbx), %eax
	setl	%al
	jmp	.LBB14_10
	.align	16, 0x90
.LBB14_8:                               #   in Loop: Header=BB14_6 Depth=1
	xorl	%eax, %eax
.LBB14_10:                              # %land.end
                                        #   in Loop: Header=BB14_6 Depth=1
	testb	%al, %al
	je	.LBB14_12
# BB#11:                                # %land.end
                                        #   in Loop: Header=BB14_6 Depth=1
	movb	$3, %al
	jmp	.LBB14_12
.LBB14_13:                              # %for.end
	movq	$0, 80(%r15)
	movl	$0, 108(%r15)
	movq	$0, 92(%r15)
.LBB14_14:                              # %if.end
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	gx_cpath_enum_init, .Lfunc_end14-gx_cpath_enum_init
	.cfi_endproc

	.globl	gx_cpath_enum_next
	.align	16, 0x90
	.type	gx_cpath_enum_next,@function
gx_cpath_enum_next:                     # @gx_cpath_enum_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 32
.Ltmp90:
	.cfi_offset %rbx, -32
.Ltmp91:
	.cfi_offset %r14, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	cmpl	$0, 64(%rdi)
	je	.LBB15_1
# BB#73:                                # %if.then
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gx_path_enum_next       # TAILCALL
.LBB15_1:                               # %if.end
	cmpl	$0, 96(%rdi)
	je	.LBB15_3
# BB#2:                                 # %if.then.2
	movl	100(%rdi), %eax
	shll	$8, %eax
	movl	%eax, (%rsi)
	movl	104(%rdi), %eax
	shll	$8, %eax
	movl	%eax, 4(%rsi)
	movl	$0, 96(%rdi)
	movl	$2, %eax
	jmp	.LBB15_72
.LBB15_3:                               # %if.end.9
	movl	$-1, %eax
	movl	92(%rdi), %ecx
	cmpq	$4, %rcx
	ja	.LBB15_72
# BB#4:                                 # %if.end.9
	movq	72(%rdi), %r10
	movq	80(%rdi), %r11
	movl	88(%rdi), %r8d
	xorl	%eax, %eax
	movl	$4, %r9d
	jmpq	*.LJTI15_0(,%rcx,8)
.LBB15_15:                              # %left.preheader
	movl	$3, %r9d
.LBB15_16:                              # %left
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_18 Depth 2
	andb	$-2, 32(%r11)
	movq	(%r11), %rdx
	testq	%rdx, %rdx
	je	.LBB15_24
# BB#17:                                # %land.rhs.lr.ph
                                        #   in Loop: Header=BB15_16 Depth=1
	movl	16(%r11), %ebp
	.align	16, 0x90
.LBB15_18:                              # %land.rhs
                                        #   Parent Loop BB15_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	16(%rdx), %ecx
	cmpl	%ebp, %ecx
	je	.LBB15_19
# BB#20:                                # %lor.rhs
                                        #   in Loop: Header=BB15_18 Depth=2
	movl	20(%r11), %eax
	cmpl	%eax, %ecx
	jne	.LBB15_22
# BB#21:                                # %land.rhs.62
                                        #   in Loop: Header=BB15_18 Depth=2
	movl	28(%rdx), %ebx
	cmpl	24(%r11), %ebx
	jg	.LBB15_22
.LBB15_19:                              # %for.cond.50.backedge
                                        #   in Loop: Header=BB15_18 Depth=2
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB15_18
	jmp	.LBB15_24
.LBB15_22:                              # %lor.lhs.false
                                        #   in Loop: Header=BB15_16 Depth=1
	cmpl	%eax, %ecx
	jg	.LBB15_24
# BB#23:                                # %lor.lhs.false.76
                                        #   in Loop: Header=BB15_16 Depth=1
	movl	24(%rdx), %ebp
	cmpl	28(%r11), %ebp
	jge	.LBB15_24
# BB#30:                                # %if.end.101
                                        #   in Loop: Header=BB15_16 Depth=1
	movq	8(%r11), %rbx
	testq	%rbx, %rbx
	je	.LBB15_38
# BB#31:                                # %land.lhs.true.105
                                        #   in Loop: Header=BB15_16 Depth=1
	cmpl	%eax, 20(%rbx)
	jne	.LBB15_38
# BB#32:                                # %land.lhs.true.110
                                        #   in Loop: Header=BB15_16 Depth=1
	movl	28(%rbx), %r14d
	cmpl	%r14d, %ebp
	jl	.LBB15_33
.LBB15_38:                              # %if.end.140
                                        #   in Loop: Header=BB15_16 Depth=1
	movl	24(%r11), %ebx
	cmpl	$1, %r8d
	jne	.LBB15_41
# BB#39:                                # %if.end.140
                                        #   in Loop: Header=BB15_16 Depth=1
	cmpq	%r10, %rdx
	je	.LBB15_40
.LBB15_41:                              # %if.else.147
                                        #   in Loop: Header=BB15_16 Depth=1
	cmpl	%ebx, %ebp
	movq	%rdx, %r11
	je	.LBB15_16
# BB#42:                                # %if.else.153
	movl	%ebp, 100(%rdi)
	movl	%ecx, 104(%rdi)
	movl	$1, 96(%rdi)
	movl	$1, %r9d
	jmp	.LBB15_43
.LBB15_5:                               # %for.inc
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	(%r10), %r10
.LBB15_6:                               # %for.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%r10, %r10
	je	.LBB15_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB15_6 Depth=1
	movzbl	32(%r10), %eax
	testb	$1, %al
	jne	.LBB15_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB15_6 Depth=1
	testb	$2, %al
	je	.LBB15_5
# BB#10:                                # %if.then.26
	movl	28(%r10), %eax
	shll	$8, %eax
	movl	%eax, (%rsi)
	movl	20(%r10), %eax
	shll	$8, %eax
	movl	%eax, 4(%rsi)
	movl	$2, %r9d
	jmp	.LBB15_11
.LBB15_44:                              # %right.preheader
	movl	$3, %r9d
.LBB15_45:                              # %right
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_47 Depth 2
	andb	$-3, 32(%r11)
	movq	8(%r11), %rdx
	testq	%rdx, %rdx
	je	.LBB15_53
# BB#46:                                # %land.rhs.181.lr.ph
                                        #   in Loop: Header=BB15_45 Depth=1
	movl	20(%r11), %ebp
	.align	16, 0x90
.LBB15_47:                              # %land.rhs.181
                                        #   Parent Loop BB15_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	20(%rdx), %ecx
	cmpl	%ebp, %ecx
	je	.LBB15_48
# BB#49:                                # %lor.rhs.186
                                        #   in Loop: Header=BB15_47 Depth=2
	movl	16(%r11), %eax
	cmpl	%eax, %ecx
	jne	.LBB15_51
# BB#50:                                # %land.rhs.191
                                        #   in Loop: Header=BB15_47 Depth=2
	movl	24(%rdx), %ebx
	cmpl	28(%r11), %ebx
	jl	.LBB15_51
.LBB15_48:                              # %for.cond.177.backedge
                                        #   in Loop: Header=BB15_47 Depth=2
	movq	8(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB15_47
	jmp	.LBB15_53
.LBB15_51:                              # %lor.lhs.false.203
                                        #   in Loop: Header=BB15_45 Depth=1
	cmpl	%eax, %ecx
	jl	.LBB15_53
# BB#52:                                # %lor.lhs.false.208
                                        #   in Loop: Header=BB15_45 Depth=1
	movl	28(%rdx), %ebp
	cmpl	24(%r11), %ebp
	jle	.LBB15_53
# BB#58:                                # %if.end.238
                                        #   in Loop: Header=BB15_45 Depth=1
	movq	(%r11), %rbx
	testq	%rbx, %rbx
	je	.LBB15_65
# BB#59:                                # %land.lhs.true.244
                                        #   in Loop: Header=BB15_45 Depth=1
	cmpl	%eax, 16(%rbx)
	jne	.LBB15_65
# BB#60:                                # %land.lhs.true.249
                                        #   in Loop: Header=BB15_45 Depth=1
	movl	24(%rbx), %r14d
	cmpl	%r14d, %ebp
	jg	.LBB15_61
.LBB15_65:                              # %if.end.279
                                        #   in Loop: Header=BB15_45 Depth=1
	movl	28(%r11), %ebx
	cmpl	$2, %r8d
	jne	.LBB15_68
# BB#66:                                # %if.end.279
                                        #   in Loop: Header=BB15_45 Depth=1
	cmpq	%r10, %rdx
	je	.LBB15_67
.LBB15_68:                              # %if.else.286
                                        #   in Loop: Header=BB15_45 Depth=1
	cmpl	%ebx, %ebp
	movq	%rdx, %r11
	je	.LBB15_45
# BB#69:                                # %if.else.292
	movl	%ebp, 100(%rdi)
	movl	%ecx, 104(%rdi)
	movl	$1, 96(%rdi)
	movl	$2, %r9d
	jmp	.LBB15_43
.LBB15_70:                              # %sw.bb.313
	movl	$4, %eax
	xorl	%r9d, %r9d
	jmp	.LBB15_71
.LBB15_24:                              # %if.then.81
	cmpl	$2, %r8d
	jne	.LBB15_27
# BB#25:                                # %if.then.81
	cmpq	%r10, %r11
	jne	.LBB15_27
# BB#26:                                # %if.then.81.cond.end_crit_edge
	movl	20(%r10), %eax
	movl	$3, %r9d
	jmp	.LBB15_28
.LBB15_53:                              # %if.then.213
	cmpl	$1, %r8d
	jne	.LBB15_56
# BB#54:                                # %if.then.213
	cmpq	%r10, %r11
	jne	.LBB15_56
# BB#55:                                # %if.then.213.cond.end.228_crit_edge
	movl	16(%r10), %eax
	movl	$3, %r9d
	movl	28(%r11), %ecx
	jmp	.LBB15_29
.LBB15_12:                              # %for.end
	xorl	%eax, %eax
	cmpl	$0, 108(%rdi)
	je	.LBB15_14
# BB#13:
	xorl	%r10d, %r10d
	jmp	.LBB15_71
.LBB15_27:                              # %cond.false
	movl	28(%r11), %eax
	movl	%eax, 100(%rdi)
	movl	20(%r11), %eax
	movl	%eax, 104(%rdi)
	movl	$1, 96(%rdi)
	movl	$2, %r9d
.LBB15_28:                              # %cond.end
	movl	24(%r11), %ecx
	jmp	.LBB15_29
.LBB15_56:                              # %cond.false.220
	movl	24(%r11), %eax
	movl	%eax, 100(%rdi)
	movl	16(%r11), %eax
	movl	%eax, 104(%rdi)
	movl	$1, 96(%rdi)
	movl	$1, %r9d
	movl	28(%r11), %ecx
.LBB15_29:                              # %out
	shll	$8, %ecx
	movl	%ecx, (%rsi)
	shll	$8, %eax
	movl	%eax, 4(%rsi)
	movl	$2, %eax
	jmp	.LBB15_71
.LBB15_14:                              # %if.then.38
	movq	$0, (%rsi)
	movl	$1, %eax
	xorl	%r10d, %r10d
	jmp	.LBB15_71
.LBB15_8:                               # %if.then.15
	movl	24(%r10), %eax
	shll	$8, %eax
	movl	%eax, (%rsi)
	movl	16(%r10), %eax
	shll	$8, %eax
	movl	%eax, 4(%rsi)
	movl	$1, %r9d
.LBB15_11:                              # %if.end.35
	movl	$1, 108(%rdi)
	movl	$1, %eax
	movl	%r9d, %r8d
	movq	%r10, %r11
	jmp	.LBB15_71
.LBB15_40:
	movq	%r10, %rdx
	jmp	.LBB15_43
.LBB15_67:
	movq	%r10, %rdx
.LBB15_43:                              # %if.end.162
	shll	$8, %ebx
	movl	%ebx, (%rsi)
	shll	$8, %eax
	movl	%eax, 4(%rsi)
	movl	$2, %eax
	movq	%rdx, %r11
.LBB15_71:                              # %out
	movq	%r10, 72(%rdi)
	movq	%r11, 80(%rdi)
	movl	%r8d, 88(%rdi)
	movl	%r9d, 92(%rdi)
.LBB15_72:                              # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB15_33:                              # %if.then.115
	cmpl	$2, %r8d
	jne	.LBB15_35
# BB#34:                                # %if.then.115
	movl	$3, %r9d
	cmpq	%r10, %rbx
	je	.LBB15_36
.LBB15_35:                              # %cond.false.122
	movl	%r14d, 100(%rdi)
	movl	%eax, 104(%rdi)
	movl	$1, 96(%rdi)
	movl	$2, %r9d
.LBB15_36:                              # %cond.end.130
	movl	24(%r11), %ecx
	jmp	.LBB15_37
.LBB15_61:                              # %if.then.254
	cmpl	$1, %r8d
	jne	.LBB15_63
# BB#62:                                # %if.then.254
	movl	$3, %r9d
	cmpq	%r10, %rbx
	je	.LBB15_64
.LBB15_63:                              # %cond.false.261
	movl	%r14d, 100(%rdi)
	movl	%eax, 104(%rdi)
	movl	$1, 96(%rdi)
	movl	$1, %r9d
.LBB15_64:                              # %cond.end.269
	movl	28(%r11), %ecx
.LBB15_37:                              # %out
	shll	$8, %ecx
	movl	%ecx, (%rsi)
	shll	$8, %eax
	movl	%eax, 4(%rsi)
	movl	$2, %eax
	movq	%rbx, %r11
	jmp	.LBB15_71
.Lfunc_end15:
	.size	gx_cpath_enum_next, .Lfunc_end15-gx_cpath_enum_next
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_6
	.quad	.LBB15_15
	.quad	.LBB15_44
	.quad	.LBB15_70
	.quad	.LBB15_71

	.text
	.globl	gx_cpath_enum_notes
	.align	16, 0x90
	.type	gx_cpath_enum_notes,@function
gx_cpath_enum_notes:                    # @gx_cpath_enum_notes
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	gx_cpath_enum_notes, .Lfunc_end16-gx_cpath_enum_notes
	.cfi_endproc

	.globl	gx_cpath_to_path
	.align	16, 0x90
	.type	gx_cpath_to_path,@function
gx_cpath_to_path:                       # @gx_cpath_to_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
.Ltmp96:
	.cfi_def_cfa_offset 160
.Ltmp97:
	.cfi_offset %rbx, -32
.Ltmp98:
	.cfi_offset %r14, -24
.Ltmp99:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, 280(%rbx)
	jne	.LBB17_3
# BB#1:                                 # %if.then
	movq	40(%rbx), %rdx
	leaq	(%rsp), %r15
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gx_path_init_local_shared
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_cpath_to_path_synthesize
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_path_assign_free
	testl	%eax, %eax
	js	.LBB17_4
# BB#2:                                 # %if.end.7
	movl	$1, 280(%rbx)
.LBB17_3:                               # %if.end.10
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_path_assign_preserve
.LBB17_4:                               # %return
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	gx_cpath_to_path, .Lfunc_end17-gx_cpath_to_path
	.cfi_endproc

	.globl	gx_cpath_inner_box
	.align	16, 0x90
	.type	gx_cpath_inner_box,@function
gx_cpath_inner_box:                     # @gx_cpath_inner_box
	.cfi_startproc
# BB#0:                                 # %entry
	movups	236(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	movq	272(%rdi), %rax
	cmpl	$2, 96(%rax)
	setl	%al
	movzbl	%al, %eax
	retq
.Lfunc_end18:
	.size	gx_cpath_inner_box, .Lfunc_end18-gx_cpath_inner_box
	.cfi_endproc

	.globl	gx_cpath_list
	.align	16, 0x90
	.type	gx_cpath_list,@function
gx_cpath_list:                          # @gx_cpath_list
	.cfi_startproc
# BB#0:                                 # %entry
	movq	272(%rdi), %rax
	addq	$24, %rax
	retq
.Lfunc_end19:
	.size	gx_cpath_list, .Lfunc_end19-gx_cpath_list
	.cfi_endproc

	.globl	gx_cpath_outer_box
	.align	16, 0x90
	.type	gx_cpath_outer_box,@function
gx_cpath_outer_box:                     # @gx_cpath_outer_box
	.cfi_startproc
# BB#0:                                 # %entry
	movups	252(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	movq	272(%rdi), %rax
	cmpl	$2, 96(%rax)
	setl	%al
	movzbl	%al, %eax
	retq
.Lfunc_end20:
	.size	gx_cpath_outer_box, .Lfunc_end20-gx_cpath_outer_box
	.cfi_endproc

	.globl	gx_cpath_includes_rectangle
	.align	16, 0x90
	.type	gx_cpath_includes_rectangle,@function
gx_cpath_includes_rectangle:            # @gx_cpath_includes_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	%ecx, %esi
	movl	236(%rdi), %eax
	jle	.LBB21_1
# BB#5:                                 # %cond.false
	cmpl	%ecx, %eax
	jle	.LBB21_7
# BB#6:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB21_1:                               # %cond.true
	cmpl	%esi, %eax
	jle	.LBB21_3
# BB#2:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB21_7:                               # %land.lhs.true.9
	cmpl	%esi, 244(%rdi)
	jge	.LBB21_9
# BB#8:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB21_3:                               # %land.lhs.true
	cmpl	%ecx, 244(%rdi)
	jge	.LBB21_9
# BB#4:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB21_9:                               # %land.rhs
	cmpl	%r8d, %edx
	movl	240(%rdi), %eax
	jle	.LBB21_10
# BB#13:                                # %cond.false.24
	cmpl	%r8d, %eax
	jle	.LBB21_15
# BB#14:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB21_10:                              # %cond.true.15
	cmpl	%edx, %eax
	jle	.LBB21_12
# BB#11:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB21_15:                              # %land.rhs.29
	cmpl	%edx, 248(%rdi)
	jmp	.LBB21_16
.LBB21_12:                              # %land.rhs.19
	cmpl	%r8d, 248(%rdi)
.LBB21_16:                              # %land.end.36
	setge	%al
	movzbl	%al, %eax
	retq
.Lfunc_end21:
	.size	gx_cpath_includes_rectangle, .Lfunc_end21-gx_cpath_includes_rectangle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI22_0:
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.text
	.globl	gx_cpath_set_outer_box
	.align	16, 0x90
	.type	gx_cpath_set_outer_box,@function
gx_cpath_set_outer_box:                 # @gx_cpath_set_outer_box
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$255, %eax
	movl	80(%rdi), %ecx
	addl	%eax, %ecx
	addl	84(%rdi), %eax
	movd	%eax, %xmm0
	movd	76(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%ecx, %xmm0
	movd	72(%rdi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pand	.LCPI22_0(%rip), %xmm2
	movdqu	%xmm2, 252(%rdi)
	retq
.Lfunc_end22:
	.size	gx_cpath_set_outer_box, .Lfunc_end22-gx_cpath_set_outer_box
	.cfi_endproc

	.globl	gx_cpath_from_rectangle
	.align	16, 0x90
	.type	gx_cpath_from_rectangle,@function
gx_cpath_from_rectangle:                # @gx_cpath_from_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp102:
	.cfi_def_cfa_offset 32
.Ltmp103:
	.cfi_offset %rbx, -24
.Ltmp104:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_path_new
	testl	%eax, %eax
	js	.LBB23_1
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	cpath_set_rectangle     # TAILCALL
.LBB23_1:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end23:
	.size	gx_cpath_from_rectangle, .Lfunc_end23-gx_cpath_from_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	cpath_set_rectangle,@function
cpath_set_rectangle:                    # @cpath_set_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 48
.Ltmp110:
	.cfi_offset %rbx, -48
.Ltmp111:
	.cfi_offset %r12, -40
.Ltmp112:
	.cfi_offset %r13, -32
.Ltmp113:
	.cfi_offset %r14, -24
.Ltmp114:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	272(%r15), %rbx
	cmpq	$1, (%rbx)
	jg	.LBB24_5
# BB#1:                                 # %if.then
	leaq	24(%rbx), %r12
	movq	72(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB24_4
# BB#2:                                 # %while.body.lr.ph.i
	movq	8(%rbx), %r13
	.align	16, 0x90
.LBB24_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rbx
	movl	$.L.str.12, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB24_3
.LBB24_4:                               # %gx_clip_list_free.exit
	movups	clip_list_empty+64(%rip), %xmm0
	movups	%xmm0, 64(%r12)
	movups	clip_list_empty+48(%rip), %xmm0
	movups	%xmm0, 48(%r12)
	movups	clip_list_empty+32(%rip), %xmm0
	movups	%xmm0, 32(%r12)
	movups	clip_list_empty+16(%rip), %xmm0
	movups	%xmm0, 16(%r12)
	movups	clip_list_empty(%rip), %xmm0
	movups	%xmm0, (%r12)
	jmp	.LBB24_9
.LBB24_5:                               # %if.else
	movq	40(%r15), %r12
	movl	$st_clip_rect_list, %esi
	movl	$.L.str.15, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, 272(%r15)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB24_10
# BB#6:                                 # %do.body
	movq	$1, (%rax)
	movq	%r12, 8(%rax)
	movq	272(%r15), %rax
	movq	$rc_free_struct_only, 16(%rax)
	movq	272(%r15), %rax
	movq	$rc_free_cpath_list, 16(%rax)
	testq	%rbx, %rbx
	je	.LBB24_9
# BB#7:                                 # %do.end
	decq	(%rbx)
	jne	.LBB24_9
# BB#8:                                 # %do.end.20
	movq	8(%rbx), %rdi
	movl	$.L.str.15, %edx
	movq	%rbx, %rsi
	callq	*16(%rbx)
.LBB24_9:                               # %if.end.35
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	cpath_init_rectangle
	xorl	%ecx, %ecx
.LBB24_10:                              # %cleanup.36
	movl	%ecx, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end24:
	.size	cpath_set_rectangle, .Lfunc_end24-cpath_set_rectangle
	.cfi_endproc

	.globl	gx_cpath_reset
	.align	16, 0x90
	.type	gx_cpath_reset,@function
gx_cpath_reset:                         # @gx_cpath_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp116:
	.cfi_def_cfa_offset 32
.Ltmp117:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	callq	gx_path_new
	testl	%eax, %eax
	js	.LBB25_2
# BB#1:                                 # %if.end.i
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cpath_set_rectangle
.LBB25_2:                               # %gx_cpath_from_rectangle.exit
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end25:
	.size	gx_cpath_reset, .Lfunc_end25-gx_cpath_reset
	.cfi_endproc

	.globl	cpath_is_rectangle
	.align	16, 0x90
	.type	cpath_is_rectangle,@function
cpath_is_rectangle:                     # @cpath_is_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp118:
	.cfi_def_cfa_offset 16
	cmpl	$0, 280(%rdi)
	je	.LBB26_2
# BB#1:                                 # %if.then
	callq	gx_path_is_rectangular
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.LBB26_2:                               # %if.end
	movl	236(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	72(%rdi), %ecx
	jne	.LBB26_7
# BB#3:                                 # %lor.lhs.false
	movl	240(%rdi), %edx
	cmpl	76(%rdi), %edx
	jne	.LBB26_7
# BB#4:                                 # %lor.lhs.false.14
	movl	244(%rdi), %r8d
	cmpl	80(%rdi), %r8d
	jne	.LBB26_7
# BB#5:                                 # %lor.lhs.false.23
	movl	248(%rdi), %r9d
	cmpl	84(%rdi), %r9d
	jne	.LBB26_7
# BB#6:                                 # %if.end.34
	movl	%ecx, (%rsi)
	movl	%edx, 4(%rsi)
	movl	%r8d, 8(%rsi)
	movl	%r9d, 12(%rsi)
	movl	$3, %eax
.LBB26_7:                               # %return
	popq	%rdx
	retq
.Lfunc_end26:
	.size	cpath_is_rectangle, .Lfunc_end26-cpath_is_rectangle
	.cfi_endproc

	.globl	gx_cpath_clip
	.align	16, 0x90
	.type	gx_cpath_clip,@function
gx_cpath_clip:                          # @gx_cpath_clip
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	xorl	%r8d, %r8d
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	%rax, %rcx
	jmp	gx_cpath_intersect_with_params # TAILCALL
.Lfunc_end27:
	.size	gx_cpath_clip, .Lfunc_end27-gx_cpath_clip
	.cfi_endproc

	.globl	gx_cpath_intersect
	.align	16, 0x90
	.type	gx_cpath_intersect,@function
gx_cpath_intersect:                     # @gx_cpath_intersect
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%r8d, %r8d
	jmp	gx_cpath_intersect_with_params # TAILCALL
.Lfunc_end28:
	.size	gx_cpath_intersect, .Lfunc_end28-gx_cpath_intersect
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI29_0:
	.long	1132462080              # float 256
	.text
	.globl	gx_cpath_intersect_with_params
	.align	16, 0x90
	.type	gx_cpath_intersect_with_params,@function
gx_cpath_intersect_with_params:         # @gx_cpath_intersect_with_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp120:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp121:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp122:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp123:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp125:
	.cfi_def_cfa_offset 368
.Ltmp126:
	.cfi_offset %rbx, -56
.Ltmp127:
	.cfi_offset %r12, -48
.Ltmp128:
	.cfi_offset %r13, -40
.Ltmp129:
	.cfi_offset %r14, -32
.Ltmp130:
	.cfi_offset %r15, -24
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rcx, %rbp
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	cmpl	$0, 108(%rbx)
	movq	%rbx, %r15
	je	.LBB29_4
# BB#1:                                 # %if.then
	movq	8(%rbp), %rdx
	leaq	56(%rsp), %r15
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gx_path_init_local_shared
	movss	296(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI29_0(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	movl	$2, %r8d
	cmpl	$0, 312(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %select.mid
	xorl	%r8d, %r8d
.LBB29_3:                               # %select.end
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_path_copy_reducing
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB29_77
.LBB29_4:                               # %if.end.5
	movq	272(%r12), %rax
	cmpl	$1, 96(%rax)
	jg	.LBB29_34
# BB#5:                                 # %land.lhs.true
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	236(%r12), %ebx
	movl	240(%r12), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	244(%r12), %r13d
	movl	248(%r12), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	leaq	40(%rsp), %rsi
	movq	%r15, %rdi
	callq	gx_path_is_rectangular
	testl	%eax, %eax
	setne	%r9b
	je	.LBB29_6
# BB#11:                                # %if.else
	movq	24(%rsp), %rsi          # 8-byte Reload
	leaq	4(%rsi), %rax
	leaq	8(%rsi), %rcx
	leaq	300(%rbp), %rdx
	addq	$304, %rbp              # imm = 0x130
	testq	%rsi, %rsi
	cmovneq	%rcx, %rbp
	cmovneq	%rax, %rdx
	movl	(%rdx), %eax
	movl	$127, %ecx
	xorl	%r14d, %r14d
	cmpl	$-1, %eax
	movl	$0, %edi
	movl	$127, %r8d
	movl	$0, %edx
	movl	$127, %esi
	je	.LBB29_13
# BB#12:                                # %if.else.40
	movl	(%rbp), %esi
	cmpl	$128, %eax
	movl	$127, %edx
	movl	%eax, %edi
	cmovel	%edx, %edi
	cmpl	$128, %esi
	cmovnel	%esi, %edx
	addl	$127, %eax
	addl	$127, %esi
	movl	%eax, %r8d
.LBB29_13:                              # %if.end.65
	movq	40(%rsp), %rbp
	movl	$127, %eax
	subl	%edi, %eax
	addl	%ebp, %eax
	andl	$-256, %eax
	movl	%eax, 40(%rsp)
	shrq	$32, %rbp
	subl	%edx, %ecx
	addl	%ebp, %ecx
	andl	$-256, %ecx
	movl	%ecx, 44(%rsp)
	movq	48(%rsp), %rdx
	movl	%edx, %edi
	addl	%r8d, %edi
	andl	$-256, %edi
	movl	%edi, 48(%rsp)
	shrq	$32, %rdx
	addl	%esi, %edx
	andl	$-256, %edx
	movl	%edx, 52(%rsp)
	cmpl	%eax, %ebx
	jle	.LBB29_15
# BB#14:                                # %if.then.108
	movl	%ebx, 40(%rsp)
	movl	$1, %r14d
	movl	%ebx, %eax
.LBB29_15:                              # %if.end.113
	movl	20(%rsp), %esi          # 4-byte Reload
	cmpl	%ecx, %esi
	jle	.LBB29_16
# BB#17:                                # %if.then.120
	movl	%esi, 44(%rsp)
	incl	%r14d
	jmp	.LBB29_18
.LBB29_6:                               # %lor.lhs.false
	movq	56(%r15), %rax
	testq	%rax, %rax
	movq	32(%rsp), %rbx          # 8-byte Reload
	je	.LBB29_34
# BB#7:                                 # %land.lhs.true.13
	cmpq	$0, 24(%rax)
	je	.LBB29_8
.LBB29_34:                              # %if.else.218
	movq	272(%r12), %rax
	movq	288(%r12), %r13
	cmpl	$1, 96(%rax)
	jg	.LBB29_35
# BB#36:                                # %land.lhs.true.223
	leaq	40(%rsp), %rsi
	movq	%r15, %rdi
	callq	gx_path_bbox
	testl	%eax, %eax
	js	.LBB29_37
# BB#38:                                # %land.rhs
	movq	40(%rsp), %rax
	movq	48(%rsp), %rcx
	cmpl	%ecx, %eax
	movl	236(%r12), %edx
	jle	.LBB29_39
# BB#43:                                # %cond.false.i
	cmpl	%ecx, %edx
	jle	.LBB29_45
# BB#44:
	xorl	%eax, %eax
	jmp	.LBB29_55
.LBB29_35:
	xorl	%eax, %eax
	jmp	.LBB29_55
.LBB29_16:
	movl	%ecx, %esi
.LBB29_18:                              # %if.end.126
	movq	32(%rsp), %rbx          # 8-byte Reload
	movl	8(%rsp), %ecx           # 4-byte Reload
	cmpl	%edi, %r13d
	jge	.LBB29_19
# BB#20:                                # %if.then.133
	movl	%r13d, 48(%rsp)
	incl	%r14d
	jmp	.LBB29_21
.LBB29_19:
	movl	%edi, %r13d
.LBB29_21:                              # %if.end.139
	cmpl	%edx, %ecx
	jge	.LBB29_22
# BB#23:                                # %if.then.146
	movl	%ecx, 52(%rsp)
	incl	%r14d
	jmp	.LBB29_24
.LBB29_22:
	movl	%edx, %ecx
.LBB29_24:                              # %if.end.152
	cmpl	%eax, %r13d
	jl	.LBB29_26
# BB#25:                                # %if.end.152
	cmpl	%esi, %ecx
	jl	.LBB29_26
# BB#27:                                # %if.end.170
	xorl	%r13d, %r13d
	cmpl	$4, %r14d
	je	.LBB29_77
	jmp	.LBB29_28
.LBB29_26:                              # %if.then.166
	movq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	movl	$1, %r14d
	jmp	.LBB29_28
.LBB29_37:
	xorl	%eax, %eax
	jmp	.LBB29_55
.LBB29_39:                              # %cond.true.i
	cmpl	%eax, %edx
	jle	.LBB29_41
# BB#40:
	xorl	%eax, %eax
	jmp	.LBB29_55
.LBB29_45:                              # %land.lhs.true.9.i
	cmpl	%eax, 244(%r12)
	jge	.LBB29_47
# BB#46:
	xorl	%eax, %eax
	jmp	.LBB29_55
.LBB29_41:                              # %land.lhs.true.i
	cmpl	%ecx, 244(%r12)
	jge	.LBB29_47
# BB#42:
	xorl	%eax, %eax
	jmp	.LBB29_55
.LBB29_47:                              # %land.rhs.i
	shrq	$32, %rax
	shrq	$32, %rcx
	cmpl	%ecx, %eax
	movl	240(%r12), %edx
	jle	.LBB29_48
# BB#51:                                # %cond.false.24.i
	cmpl	%ecx, %edx
	jle	.LBB29_53
# BB#52:
	xorl	%eax, %eax
	jmp	.LBB29_55
.LBB29_8:                               # %if.then.19
	movb	%r9b, %r13b
	leaq	40(%rsp), %rsi
	movq	%r15, %rdi
	callq	gx_path_current_point
	testl	%eax, %eax
	jns	.LBB29_10
# BB#9:                                 # %if.then.23
	movss	.LCPI29_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	148(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, 40(%rsp)
	mulss	152(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 44(%rsp)
.LBB29_10:                              # %if.end.31
	movq	40(%rsp), %rax
	movq	%rax, 48(%rsp)
	movl	$1, %r14d
	movb	%r13b, %r9b
.LBB29_28:                              # %do.body
	movq	288(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB29_31
# BB#29:                                # %do.end
	decq	128(%rsi)
	jne	.LBB29_31
# BB#30:                                # %do.end.191
	movq	136(%rsi), %rdi
	movl	$.L.str.10, %edx
	movb	%r9b, %bpl
	callq	*144(%rsi)
	movb	%bpl, %r9b
	movq	$0, 288(%r12)
.LBB29_31:                              # %do.end.208
	movzbl	%r9b, %r13d
	movq	$0, 288(%r12)
	movq	%r12, %rdi
	callq	gx_path_new
	movups	40(%rsp), %xmm0
	movups	%xmm0, 72(%r15)
	leaq	40(%rsp), %rsi
	movq	%r12, %rdi
	callq	cpath_set_rectangle
	testl	%r14d, %r14d
	je	.LBB29_33
# BB#32:
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	jmp	.LBB29_75
.LBB29_33:                              # %if.then.214
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_path_assign_preserve
	movl	$1, 280(%r12)
	jmp	.LBB29_75
.LBB29_48:                              # %cond.true.15.i
	cmpl	%eax, %edx
	jle	.LBB29_50
# BB#49:
	xorl	%eax, %eax
	jmp	.LBB29_55
.LBB29_53:                              # %land.rhs.29.i
	cmpl	%eax, 248(%r12)
	jmp	.LBB29_54
.LBB29_50:                              # %land.rhs.19.i
	cmpl	%ecx, 248(%r12)
.LBB29_54:                              # %land.end
	setge	%al
.LBB29_55:                              # %land.end
	testq	%r13, %r13
	jne	.LBB29_56
# BB#57:                                # %land.end
	movl	%eax, 20(%rsp)          # 4-byte Spill
	xorb	$1, %al
	je	.LBB29_68
# BB#58:                                # %if.then.241
	movl	%r14d, 4(%rsp)          # 4-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	40(%r12), %r14
	movl	232(%r12), %ebx
	movl	$st_cpath_path_list, %esi
	movl	$.L.str.16, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB29_75
# BB#59:                                # %land.lhs.true.i.115
	movl	%ebx, (%rsp)            # 4-byte Spill
	movq	%rax, %rbx
	movq	$1, 128(%rbx)
	movq	%r14, 136(%rbx)
	movq	$rc_free_cpath_path_list, 144(%rbx)
	cmpl	$0, 280(%r12)
	je	.LBB29_60
# BB#65:                                # %if.else.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gx_path_init_local_shared
	movq	%rbx, %rdi
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%r12, %rsi
	callq	gx_path_assign_preserve
	movl	%eax, %r13d
	movl	(%rsp), %ebx            # 4-byte Reload
	jmp	.LBB29_66
.LBB29_56:
	movl	%eax, 20(%rsp)          # 4-byte Spill
	jmp	.LBB29_68
.LBB29_60:                              # %if.then.7.i
	xorl	%esi, %esi
	movl	$.L.str.16, %ecx
	movq	%rbx, %rdi
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%r14, %rdx
	callq	gx_path_init_contained_shared
	movl	%eax, %r13d
	testl	%r13d, %r13d
	movl	(%rsp), %ebx            # 4-byte Reload
	js	.LBB29_75
# BB#61:                                # %if.end.11.i
	cmpl	$0, 280(%r12)
	jne	.LBB29_64
# BB#62:                                # %if.then.i
	movq	40(%r12), %rdx
	leaq	184(%rsp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_path_init_local_shared
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gx_cpath_to_path_synthesize
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gx_path_assign_free
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB29_75
# BB#63:                                # %if.end.7.i
	movl	$1, 280(%r12)
.LBB29_64:                              # %if.end.10.i
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r12, %rsi
	callq	gx_path_assign_preserve
	movl	%eax, %r13d
.LBB29_66:                              # %if.end.18.i
	testl	%r13d, %r13d
	js	.LBB29_75
# BB#67:                                # %gx_cpath_path_list_new.exit124
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	$0, 160(%r13)
	movl	%ebx, 152(%r13)
	movq	32(%rsp), %rbx          # 8-byte Reload
	movl	4(%rsp), %r14d          # 4-byte Reload
.LBB29_68:                              # %if.end.251
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movq	24(%rsp), %r8           # 8-byte Reload
	testq	%r8, %r8
	movq	%r15, %rsi
	cmovneq	%rbx, %rsi
	movq	%r12, %rdi
	movl	%r14d, %edx
	movq	%rbp, %rcx
	callq	gx_cpath_intersect_path_slow
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB29_69
# BB#70:                                # %if.end.262
	movl	20(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	je	.LBB29_72
# BB#71:                                # %if.then.264
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	callq	gx_path_assign_preserve
	movl	$1, 280(%r12)
	movl	%r14d, 232(%r12)
	jmp	.LBB29_75
.LBB29_69:
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	jmp	.LBB29_75
.LBB29_72:                              # %if.else.269
	movl	%r14d, 4(%rsp)          # 4-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	40(%r12), %r14
	movl	$st_cpath_path_list, %esi
	movl	$.L.str.16, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbp
	movl	$-25, %r13d
	testq	%rbp, %rbp
	je	.LBB29_75
# BB#73:                                # %do.body.i
	movq	$1, 128(%rbp)
	movq	%r14, 136(%rbp)
	movq	$rc_free_cpath_path_list, 144(%rbp)
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	gx_path_init_local_shared
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	gx_path_assign_preserve
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB29_75
# BB#74:                                # %if.end.21.i
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 160(%rbp)
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 152(%rbp)
	movq	%rbp, 288(%r12)
	xorl	%r13d, %r13d
.LBB29_75:                              # %ex
	cmpq	32(%rsp), %r15          # 8-byte Folded Reload
	je	.LBB29_77
# BB#76:                                # %if.then.282
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	gx_path_free
.LBB29_77:                              # %cleanup.284
	movl	%r13d, %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gx_cpath_intersect_with_params, .Lfunc_end29-gx_cpath_intersect_with_params
	.cfi_endproc

	.globl	gx_cpath_scale_exp2_shared
	.align	16, 0x90
	.type	gx_cpath_scale_exp2_shared,@function
gx_cpath_scale_exp2_shared:             # @gx_cpath_scale_exp2_shared
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp133:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp134:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp135:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 48
.Ltmp137:
	.cfi_offset %rbx, -48
.Ltmp138:
	.cfi_offset %r12, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
.Ltmp141:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
	cmpl	$0, 280(%r14)
	je	.LBB30_2
# BB#1:                                 # %cond.end
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	movl	%r8d, %ecx
	callq	gx_path_scale_exp2_shared
	testl	%eax, %eax
	js	.LBB30_19
.LBB30_2:                               # %if.end
	movq	272(%r14), %r12
	leaq	236(%r14), %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	callq	gx_rect_scale_exp2
	leaq	252(%r14), %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	callq	gx_rect_scale_exp2
	testl	%r15d, %r15d
	jne	.LBB30_18
# BB#3:                                 # %if.then.3
	leaq	24(%r12), %rsi
	movq	64(%r12), %rdi
	testq	%rdi, %rdi
	cmovneq	%rdi, %rsi
	movl	%ebx, %r9d
	negl	%r9d
	movl	%ebp, %r8d
	negl	%r8d
	.align	16, 0x90
.LBB30_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rsi
	je	.LBB30_14
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB30_4 Depth=1
	cmpq	72(%r12), %rsi
	je	.LBB30_14
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	24(%rsi), %eax
	leal	-2147483647(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB30_8
# BB#7:                                 # %if.then.16
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	%eax, %edx
	movb	%bpl, %cl
	shll	%cl, %edx
	movb	%r8b, %cl
	sarl	%cl, %eax
	testl	%ebp, %ebp
	cmovnsl	%edx, %eax
	movl	%eax, 24(%rsi)
.LBB30_8:                               # %if.end.25
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	28(%rsi), %eax
	leal	-2147483647(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB30_10
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	%eax, %edx
	movb	%bpl, %cl
	shll	%cl, %edx
	movb	%r8b, %cl
	sarl	%cl, %eax
	testl	%ebp, %ebp
	cmovnsl	%edx, %eax
	movl	%eax, 28(%rsi)
.LBB30_10:                              # %if.end.42
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	16(%rsi), %eax
	leal	-2147483647(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB30_12
# BB#11:                                # %if.then.47
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	%eax, %edx
	movb	%bl, %cl
	shll	%cl, %edx
	movb	%r9b, %cl
	sarl	%cl, %eax
	testl	%ebx, %ebx
	cmovnsl	%edx, %eax
	movl	%eax, 16(%rsi)
.LBB30_12:                              # %if.end.59
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	20(%rsi), %eax
	leal	-2147483647(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB30_14
# BB#13:                                # %if.then.64
                                        #   in Loop: Header=BB30_4 Depth=1
	movl	%eax, %edx
	movb	%bl, %cl
	shll	%cl, %edx
	movb	%r9b, %cl
	sarl	%cl, %eax
	testl	%ebx, %ebx
	cmovnsl	%edx, %eax
	movl	%eax, 20(%rsi)
	.align	16, 0x90
.LBB30_14:                              # %for.inc
                                        #   in Loop: Header=BB30_4 Depth=1
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB30_4
# BB#15:                                # %for.end
	movl	88(%r12), %eax
	testl	%ebp, %ebp
	jle	.LBB30_17
# BB#16:                                # %if.then.79
	movb	%bpl, %cl
	shll	%cl, %eax
	movl	%eax, 88(%r12)
	movb	%bpl, %cl
	shll	%cl, 92(%r12)
	jmp	.LBB30_18
.LBB30_17:                              # %if.else
	movb	%r8b, %cl
	sarl	%cl, %eax
	movl	%eax, 88(%r12)
	movb	%r8b, %cl
	sarl	%cl, 92(%r12)
.LBB30_18:                              # %if.end.93
	movq	40(%r14), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 296(%r14)
	xorl	%eax, %eax
.LBB30_19:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gx_cpath_scale_exp2_shared, .Lfunc_end30-gx_cpath_scale_exp2_shared
	.cfi_endproc

	.globl	gx_clip_list_init
	.align	16, 0x90
	.type	gx_clip_list_init,@function
gx_clip_list_init:                      # @gx_clip_list_init
	.cfi_startproc
# BB#0:                                 # %entry
	movups	clip_list_empty+64(%rip), %xmm0
	movups	%xmm0, 64(%rdi)
	movups	clip_list_empty+48(%rip), %xmm0
	movups	%xmm0, 48(%rdi)
	movups	clip_list_empty+32(%rip), %xmm0
	movups	%xmm0, 32(%rdi)
	movups	clip_list_empty+16(%rip), %xmm0
	movups	%xmm0, 16(%rdi)
	movups	clip_list_empty(%rip), %xmm0
	movups	%xmm0, (%rdi)
	retq
.Lfunc_end31:
	.size	gx_clip_list_init, .Lfunc_end31-gx_clip_list_init
	.cfi_endproc

	.globl	gx_clip_list_free
	.align	16, 0x90
	.type	gx_clip_list_free,@function
gx_clip_list_free:                      # @gx_clip_list_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp144:
	.cfi_def_cfa_offset 32
.Ltmp145:
	.cfi_offset %rbx, -32
.Ltmp146:
	.cfi_offset %r14, -24
.Ltmp147:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	48(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB32_2
	.align	16, 0x90
.LBB32_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rbx
	movl	$.L.str.12, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB32_1
.LBB32_2:                               # %while.end
	movups	clip_list_empty+64(%rip), %xmm0
	movups	%xmm0, 64(%r14)
	movups	clip_list_empty+48(%rip), %xmm0
	movups	%xmm0, 48(%r14)
	movups	clip_list_empty+32(%rip), %xmm0
	movups	%xmm0, 32(%r14)
	movups	clip_list_empty+16(%rip), %xmm0
	movups	%xmm0, 16(%r14)
	movups	clip_list_empty(%rip), %xmm0
	movups	%xmm0, (%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end32:
	.size	gx_clip_list_free, .Lfunc_end32-gx_clip_list_free
	.cfi_endproc

	.globl	gx_cpath_rect_visible
	.align	16, 0x90
	.type	gx_cpath_rect_visible,@function
gx_cpath_rect_visible:                  # @gx_cpath_rect_visible
	.cfi_startproc
# BB#0:                                 # %entry
	movq	272(%rdi), %rcx
	movl	96(%rcx), %eax
	testl	%eax, %eax
	je	.LBB33_10
# BB#1:                                 # %entry
	cmpl	$1, %eax
	jne	.LBB33_3
# BB#2:                                 # %for.cond.preheader.thread
	addq	$24, %rcx
	jmp	.LBB33_4
.LBB33_3:                               # %for.cond.preheader
	movq	64(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB33_10
.LBB33_4:                               # %for.body.lr.ph
	movl	8(%rsi), %edx
	.align	16, 0x90
.LBB33_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edx, 24(%rcx)
	jg	.LBB33_9
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB33_5 Depth=1
	movl	28(%rcx), %eax
	cmpl	(%rsi), %eax
	jl	.LBB33_9
# BB#7:                                 # %if.end.7
                                        #   in Loop: Header=BB33_5 Depth=1
	movl	16(%rcx), %eax
	cmpl	12(%rsi), %eax
	jg	.LBB33_9
# BB#8:                                 # %if.end.11
                                        #   in Loop: Header=BB33_5 Depth=1
	movl	20(%rcx), %edi
	movl	$1, %eax
	cmpl	4(%rsi), %edi
	jge	.LBB33_11
	.align	16, 0x90
.LBB33_9:                               # %for.inc
                                        #   in Loop: Header=BB33_5 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB33_5
.LBB33_10:
	xorl	%eax, %eax
.LBB33_11:                              # %cleanup
	retq
.Lfunc_end33:
	.size	gx_cpath_rect_visible, .Lfunc_end33-gx_cpath_rect_visible
	.cfi_endproc

	.globl	gx_cpath_copy
	.align	16, 0x90
	.type	gx_cpath_copy,@function
gx_cpath_copy:                          # @gx_cpath_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp152:
	.cfi_def_cfa_offset 48
.Ltmp153:
	.cfi_offset %rbx, -40
.Ltmp154:
	.cfi_offset %r12, -32
.Ltmp155:
	.cfi_offset %r14, -24
.Ltmp156:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	272(%r15), %r12
	leaq	24(%r12), %rbx
	movl	$0, 280(%r15)
	movq	288(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB34_3
# BB#1:                                 # %do.end
	decq	128(%rsi)
	jne	.LBB34_3
# BB#2:                                 # %do.end.17
	movq	136(%rsi), %rdi
	movl	$.L.str.13, %edx
	callq	*144(%rsi)
	movq	$0, 288(%r15)
.LBB34_3:                               # %if.end.32
	movq	$0, 288(%r15)
	movl	232(%r14), %eax
	movl	%eax, 232(%r15)
	movups	252(%r14), %xmm0
	movups	%xmm0, 252(%r15)
	movups	236(%r14), %xmm0
	movups	%xmm0, 236(%r15)
	movq	272(%r14), %rax
	movq	56(%rax), %rcx
	movq	%rcx, 32(%rbx)
	movups	24(%rax), %xmm0
	movups	40(%rax), %xmm1
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	272(%r14), %rax
	movq	64(%rax), %rbx
	jmp	.LBB34_4
	.align	16, 0x90
.LBB34_9:                               # %if.end.59
                                        #   in Loop: Header=BB34_4 Depth=1
	movq	%rax, 72(%r12)
	movq	(%rbx), %rbx
	movq	272(%r14), %rax
.LBB34_4:                               # %if.end.32
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB34_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB34_4 Depth=1
	movq	8(%rax), %rdi
	movl	$st_clip_rect, %esi
	movl	$.L.str.13, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB34_11
# BB#6:                                 # %if.end.50
                                        #   in Loop: Header=BB34_4 Depth=1
	movq	32(%rbx), %rcx
	movq	%rcx, 32(%rax)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	$0, (%rax)
	movq	72(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB34_8
# BB#7:                                 # %if.then.52
                                        #   in Loop: Header=BB34_4 Depth=1
	movq	%rcx, 8(%rax)
	movq	%rax, (%rcx)
	jmp	.LBB34_9
	.align	16, 0x90
.LBB34_8:                               # %if.else.56
                                        #   in Loop: Header=BB34_4 Depth=1
	movq	%rax, 64(%r12)
	movq	$0, 8(%rax)
	jmp	.LBB34_9
.LBB34_10:                              # %for.end
	movl	96(%rax), %eax
	movl	%eax, 96(%r12)
	xorl	%ecx, %ecx
.LBB34_11:                              # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end34:
	.size	gx_cpath_copy, .Lfunc_end34-gx_cpath_copy
	.cfi_endproc

	.align	16, 0x90
	.type	rc_free_cpath_list,@function
rc_free_cpath_list:                     # @rc_free_cpath_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp159:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp160:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp161:
	.cfi_def_cfa_offset 48
.Ltmp162:
	.cfi_offset %rbx, -48
.Ltmp163:
	.cfi_offset %r12, -40
.Ltmp164:
	.cfi_offset %r13, -32
.Ltmp165:
	.cfi_offset %r14, -24
.Ltmp166:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	leaq	24(%r15), %r12
	movq	72(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB35_2
	.align	16, 0x90
.LBB35_1:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rbx
	movl	$.L.str.12, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB35_1
.LBB35_2:                               # %rc_free_cpath_list_local.exit
	movups	clip_list_empty+64(%rip), %xmm0
	movups	%xmm0, 64(%r12)
	movups	clip_list_empty+48(%rip), %xmm0
	movups	%xmm0, 48(%r12)
	movups	clip_list_empty+32(%rip), %xmm0
	movups	%xmm0, 32(%r12)
	movups	clip_list_empty+16(%rip), %xmm0
	movups	%xmm0, 16(%r12)
	movups	clip_list_empty(%rip), %xmm0
	movups	%xmm0, (%r12)
	movq	24(%r13), %rax
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end35:
	.size	rc_free_cpath_list, .Lfunc_end35-rc_free_cpath_list
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI36_0:
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.text
	.align	16, 0x90
	.type	cpath_init_rectangle,@function
cpath_init_rectangle:                   # @cpath_init_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	272(%rbx), %rax
	movups	clip_list_empty+64(%rip), %xmm0
	movups	%xmm0, 88(%rax)
	movups	clip_list_empty+48(%rip), %xmm0
	movups	%xmm0, 72(%rax)
	movups	clip_list_empty+32(%rip), %xmm0
	movups	%xmm0, 56(%rax)
	movups	clip_list_empty+16(%rip), %xmm0
	movups	%xmm0, 40(%rax)
	movups	clip_list_empty(%rip), %xmm0
	movups	%xmm0, 24(%rax)
	movl	(%rsi), %edx
	movl	8(%rsi), %r10d
	cmpl	%r10d, %edx
	jle	.LBB36_1
# BB#2:                                 # %if.then.i
	movl	%r10d, (%rsi)
	movl	%edx, 8(%rsi)
	movl	%edx, %r8d
	jmp	.LBB36_3
.LBB36_1:
	movl	%r10d, %r8d
	movl	%edx, %r10d
.LBB36_3:                               # %if.end.i
	movl	4(%rsi), %edi
	movl	12(%rsi), %r11d
	cmpl	%r11d, %edi
	jle	.LBB36_4
# BB#5:                                 # %if.then.14.i
	movl	%r11d, 4(%rsi)
	movl	%edi, 12(%rsi)
	movl	%edi, %r9d
	jmp	.LBB36_6
.LBB36_4:
	movl	%r11d, %r9d
	movl	%edi, %r11d
.LBB36_6:                               # %gx_clip_list_from_rectangle.exit
	movl	%r10d, %edi
	sarl	$8, %edi
	movl	%edi, 88(%rax)
	movl	%edi, 48(%rax)
	movl	%r11d, %edx
	sarl	$8, %edx
	movl	%edx, 40(%rax)
	leal	255(%r8), %ecx
	sarl	$8, %ecx
	cmpl	%r10d, %r8d
	cmovel	%edi, %ecx
	movl	%ecx, 92(%rax)
	movl	%ecx, 52(%rax)
	leal	255(%r9), %ecx
	sarl	$8, %ecx
	cmpl	%r11d, %r9d
	cmovel	%edx, %ecx
	movl	%ecx, 44(%rax)
	movl	$1, 96(%rax)
	movups	(%rsi), %xmm0
	movups	%xmm0, 236(%rbx)
	movl	$0, 280(%rbx)
	movups	(%rsi), %xmm0
	movups	%xmm0, 72(%rbx)
	movl	$255, %eax
	movl	80(%rbx), %ecx
	addl	%eax, %ecx
	addl	84(%rbx), %eax
	movd	%eax, %xmm0
	movd	76(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%ecx, %xmm0
	movd	72(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pand	.LCPI36_0(%rip), %xmm2
	movdqu	%xmm2, 252(%rbx)
	movq	40(%rbx), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 296(%rbx)
	popq	%rbx
	retq
.Lfunc_end36:
	.size	cpath_init_rectangle, .Lfunc_end36-cpath_init_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	rc_free_cpath_path_list,@function
rc_free_cpath_path_list:                # @rc_free_cpath_path_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp170:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp171:
	.cfi_def_cfa_offset 32
.Ltmp172:
	.cfi_offset %rbx, -24
.Ltmp173:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	160(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB37_3
# BB#1:                                 # %do.end
	decq	128(%rsi)
	jne	.LBB37_3
# BB#2:                                 # %do.end.14
	movq	136(%rsi), %rdi
	movq	%r14, %rdx
	callq	*144(%rsi)
	movq	$0, 160(%rbx)
.LBB37_3:                               # %do.end.28
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_path_free
	movq	40(%rbx), %rdi
	movq	24(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end37:
	.size	rc_free_cpath_path_list, .Lfunc_end37-rc_free_cpath_path_list
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"clip_rect"
	.size	.L.str, 10

	.type	clip_rect_reloc_ptrs,@object # @clip_rect_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
clip_rect_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	clip_rect_enum_ptrs
	.size	clip_rect_reloc_ptrs, 24

	.type	st_clip_rect,@object    # @st_clip_rect
	.globl	st_clip_rect
	.align	8
st_clip_rect:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clip_rect_reloc_ptrs
	.size	st_clip_rect, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"clip_list"
	.size	.L.str.1, 10

	.type	clip_list_reloc_ptrs,@object # @clip_list_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
clip_list_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	clip_list_enum_ptrs
	.size	clip_list_reloc_ptrs, 24

	.type	st_clip_list,@object    # @st_clip_list
	.globl	st_clip_list
	.align	8
st_clip_list:
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clip_list_reloc_ptrs
	.size	st_clip_list, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"clip_path"
	.size	.L.str.2, 10

	.type	st_clip_path,@object    # @st_clip_path
	.section	.rodata,"a",@progbits
	.globl	st_clip_path
	.align	8
st_clip_path:
	.long	304                     # 0x130
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	clip_path_enum_ptrs
	.quad	clip_path_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_clip_path, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gx_device_clip"
	.size	.L.str.3, 15

	.type	st_device_clip,@object  # @st_device_clip
	.section	.rodata,"a",@progbits
	.globl	st_device_clip
	.align	8
st_device_clip:
	.long	1856                    # 0x740
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	device_clip_enum_ptrs
	.quad	device_clip_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_clip, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"./base/gxcpath.c"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Attempt to share (local) segments of clip path 0x%lx!\n"
	.size	.L.str.5, 55

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gx_cpath_unshare"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gx_cpath_assign"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gx_cpath_assign_free"
	.size	.L.str.8, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_cpath_intersect"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gx_cpath_clip"
	.size	.L.str.11, 14

	.type	clip_list_empty,@object # @clip_list_empty
	.section	.rodata,"a",@progbits
	.align	8
clip_list_empty:
	.quad	0
	.quad	0
	.long	2147483648              # 0x80000000
	.long	2147483647              # 0x7fffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	clip_list_empty, 80

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"gx_clip_list_free"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gx_cpath_copy"
	.size	.L.str.13, 14

	.type	clip_rect_enum_ptrs,@object # @clip_rect_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
clip_rect_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	clip_rect_enum_ptrs, 8

	.type	clip_list_enum_ptrs,@object # @clip_list_enum_ptrs
	.align	2
clip_list_enum_ptrs:
	.short	0                       # 0x0
	.short	40                      # 0x28
	.short	0                       # 0x0
	.short	48                      # 0x30
	.size	clip_list_enum_ptrs, 8

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"gx_clip_rect_list"
	.size	.L.str.14, 18

	.type	clip_rect_list_reloc_ptrs,@object # @clip_rect_list_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
clip_rect_list_reloc_ptrs:
	.short	0                       # 0x0
	.short	24                      # 0x18
	.zero	4
	.quad	st_clip_list
	.quad	0
	.size	clip_rect_list_reloc_ptrs, 24

	.type	st_clip_rect_list,@object # @st_clip_rect_list
	.align	8
st_clip_rect_list:
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clip_rect_list_reloc_ptrs
	.size	st_clip_rect_list, 64

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"gx_cpath_from_rectangle"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gx_cpath_path_list_new"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gs_cpath_list"
	.size	.L.str.17, 14

	.type	cpath_path_list_reloc_ptrs,@object # @cpath_path_list_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cpath_path_list_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_path
	.quad	cpath_path_list_enum_ptrs
	.size	cpath_path_list_reloc_ptrs, 24

	.type	st_cpath_path_list,@object # @st_cpath_path_list
	.align	8
st_cpath_path_list:
	.long	168                     # 0xa8
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cpath_path_list_reloc_ptrs
	.size	st_cpath_path_list, 64

	.type	cpath_path_list_enum_ptrs,@object # @cpath_path_list_enum_ptrs
	.align	2
cpath_path_list_enum_ptrs:
	.short	0                       # 0x0
	.short	160                     # 0xa0
	.size	cpath_path_list_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
