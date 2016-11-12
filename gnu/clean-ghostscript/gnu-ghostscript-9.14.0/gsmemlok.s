	.text
	.file	"gsmemlok.bc"
	.globl	gs_memory_locked_init
	.align	16, 0x90
	.type	gs_memory_locked_init,@function
gs_memory_locked_init:                  # @gs_memory_locked_init
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, (%rbx)
	leaq	8(%rbx), %rdi
	movl	$locked_procs, %esi
	movl	$184, %edx
	callq	memcpy
	movq	%r14, 216(%rbx)
	movq	192(%r14), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, 200(%rbx)
	movq	%rbx, 208(%rbx)
	movq	%r14, %rdi
	callq	gx_monitor_alloc
	movq	%rax, 224(%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	movl	$-25, %eax
	cmovnel	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gs_memory_locked_init, .Lfunc_end0-gs_memory_locked_init
	.cfi_endproc

	.globl	gs_memory_locked_release
	.align	16, 0x90
	.type	gs_memory_locked_release,@function
gs_memory_locked_release:               # @gs_memory_locked_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$2, %esi
	movl	$.L.str, %edx
	callq	*48(%rbx)
	movq	224(%rbx), %rdi
	popq	%rbx
	jmp	gx_monitor_free         # TAILCALL
.Lfunc_end1:
	.size	gs_memory_locked_release, .Lfunc_end1-gs_memory_locked_release
	.cfi_endproc

	.globl	gs_memory_locked_target
	.align	16, 0x90
	.type	gs_memory_locked_target,@function
gs_memory_locked_target:                # @gs_memory_locked_target
	.cfi_startproc
# BB#0:                                 # %entry
	movq	216(%rdi), %rax
	retq
.Lfunc_end2:
	.size	gs_memory_locked_target, .Lfunc_end2-gs_memory_locked_target
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_bytes_immovable,@function
gs_locked_alloc_bytes_immovable:        # @gs_locked_alloc_bytes_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -32
.Ltmp11:
	.cfi_offset %r14, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	callq	*8(%rdi)
	movq	%rax, %rbp
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbp, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gs_locked_alloc_bytes_immovable, .Lfunc_end3-gs_locked_alloc_bytes_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_resize_object,@function
gs_locked_resize_object:                # @gs_locked_resize_object
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
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	224(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbp), %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	*16(%rdi)
	movq	%rax, %rbx
	movq	224(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gs_locked_resize_object, .Lfunc_end4-gs_locked_resize_object
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_free_object,@function
gs_locked_free_object:                  # @gs_locked_free_object
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
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*24(%rdi)
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gp_monitor_leave        # TAILCALL
.Lfunc_end5:
	.size	gs_locked_free_object, .Lfunc_end5-gs_locked_free_object
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_stable,@function
gs_locked_stable:                       # @gs_locked_stable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB6_8
# BB#1:                                 # %if.then
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	callq	*32(%rdi)
	movq	%rax, %r14
	cmpq	216(%rbx), %r14
	je	.LBB6_2
# BB#3:                                 # %if.else
	movl	$232, %esi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB6_7
# BB#4:                                 # %if.then.10
	movq	$0, (%r15)
	movq	%r15, %rdi
	addq	$8, %rdi
	movl	$locked_procs, %esi
	movl	$184, %edx
	callq	memcpy
	movq	%r14, 216(%r15)
	movq	192(%r14), %rax
	movq	%rax, 192(%r15)
	movq	%r15, 200(%r15)
	movq	%r15, 208(%r15)
	movq	%r14, %rdi
	callq	gx_monitor_alloc
	movq	%rax, 224(%r15)
	testq	%rax, %rax
	je	.LBB6_5
# BB#6:                                 # %if.else.15
	movq	%r15, (%rbx)
	jmp	.LBB6_7
.LBB6_2:                                # %if.then.5
	movq	%rbx, (%rbx)
	jmp	.LBB6_7
.LBB6_5:                                # %if.then.13
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
.LBB6_7:                                # %if.end.18
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	(%rbx), %rax
.LBB6_8:                                # %if.end.22
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	gs_locked_stable, .Lfunc_end6-gs_locked_stable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_status,@function
gs_locked_status:                       # @gs_locked_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -24
.Ltmp38:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movq	%r14, %rsi
	callq	*40(%rdi)
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movl	$1, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	gs_locked_status, .Lfunc_end7-gs_locked_status
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_free_all,@function
gs_locked_free_all:                     # @gs_locked_free_all
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
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movq	216(%rbx), %r15
	testq	%rdi, %rdi
	je	.LBB8_5
# BB#1:                                 # %if.then
	cmpq	%rbx, %rdi
	je	.LBB8_3
# BB#2:                                 # %if.then.3
	movl	%ebp, %esi
	movq	%r14, %rdx
	callq	*48(%rdi)
.LBB8_3:                                # %if.end
	testb	$4, %bpl
	je	.LBB8_5
# BB#4:                                 # %if.then.7
	movq	$0, (%rbx)
.LBB8_5:                                # %if.end.10
	testb	$2, %bpl
	je	.LBB8_9
# BB#6:                                 # %if.then.13
	movq	224(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_8
# BB#7:                                 # %if.then.15
	callq	gx_monitor_free
.LBB8_8:                                # %if.end.17
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rbx)
.LBB8_9:                                # %if.end.20
	testb	$4, %bpl
	jne	.LBB8_11
# BB#10:                                # %if.end.25
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_11:                               # %if.then.23
	movq	24(%r15), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end8:
	.size	gs_locked_free_all, .Lfunc_end8-gs_locked_free_all
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_consolidate_free,@function
gs_locked_consolidate_free:             # @gs_locked_consolidate_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	callq	*56(%rdi)
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	popq	%rbx
	jmp	gp_monitor_leave        # TAILCALL
.Lfunc_end9:
	.size	gs_locked_consolidate_free, .Lfunc_end9-gs_locked_consolidate_free
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_bytes,@function
gs_locked_alloc_bytes:                  # @gs_locked_alloc_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	callq	*64(%rdi)
	movq	%rax, %rbp
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbp, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_locked_alloc_bytes, .Lfunc_end10-gs_locked_alloc_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_struct,@function
gs_locked_alloc_struct:                 # @gs_locked_alloc_struct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 32
.Ltmp59:
	.cfi_offset %rbx, -32
.Ltmp60:
	.cfi_offset %r14, -24
.Ltmp61:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*72(%rdi)
	movq	%rax, %r14
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	gs_locked_alloc_struct, .Lfunc_end11-gs_locked_alloc_struct
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_struct_immovable,@function
gs_locked_alloc_struct_immovable:       # @gs_locked_alloc_struct_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -32
.Ltmp66:
	.cfi_offset %r14, -24
.Ltmp67:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*80(%rdi)
	movq	%rax, %r14
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	gs_locked_alloc_struct_immovable, .Lfunc_end12-gs_locked_alloc_struct_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_byte_array,@function
gs_locked_alloc_byte_array:             # @gs_locked_alloc_byte_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp72:
	.cfi_def_cfa_offset 48
.Ltmp73:
	.cfi_offset %rbx, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movl	%esi, %ebx
	movq	%rdi, %rbp
	movq	224(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbp), %rdi
	movl	%ebx, %esi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movq	224(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gs_locked_alloc_byte_array, .Lfunc_end13-gs_locked_alloc_byte_array
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_byte_array_immovable,@function
gs_locked_alloc_byte_array_immovable:   # @gs_locked_alloc_byte_array_immovable
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
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 48
.Ltmp82:
	.cfi_offset %rbx, -40
.Ltmp83:
	.cfi_offset %r14, -32
.Ltmp84:
	.cfi_offset %r15, -24
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movl	%esi, %ebx
	movq	%rdi, %rbp
	movq	224(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbp), %rdi
	movl	%ebx, %esi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	*96(%rdi)
	movq	%rax, %rbx
	movq	224(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gs_locked_alloc_byte_array_immovable, .Lfunc_end14-gs_locked_alloc_byte_array_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_struct_array,@function
gs_locked_alloc_struct_array:           # @gs_locked_alloc_struct_array
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
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp90:
	.cfi_def_cfa_offset 48
.Ltmp91:
	.cfi_offset %rbx, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*104(%rdi)
	movq	%rax, %rbp
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_locked_alloc_struct_array, .Lfunc_end15-gs_locked_alloc_struct_array
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_struct_array_immovable,@function
gs_locked_alloc_struct_array_immovable: # @gs_locked_alloc_struct_array_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp99:
	.cfi_def_cfa_offset 48
.Ltmp100:
	.cfi_offset %rbx, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*112(%rdi)
	movq	%rax, %rbp
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gs_locked_alloc_struct_array_immovable, .Lfunc_end16-gs_locked_alloc_struct_array_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_object_size,@function
gs_locked_object_size:                  # @gs_locked_object_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 32
.Ltmp107:
	.cfi_offset %rbx, -32
.Ltmp108:
	.cfi_offset %r14, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movq	%r14, %rsi
	callq	*120(%rdi)
	movl	%eax, %ebp
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gs_locked_object_size, .Lfunc_end17-gs_locked_object_size
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_object_type,@function
gs_locked_object_type:                  # @gs_locked_object_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp112:
	.cfi_def_cfa_offset 32
.Ltmp113:
	.cfi_offset %rbx, -24
.Ltmp114:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movq	%r14, %rsi
	callq	*128(%rdi)
	movq	%rax, %r14
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end18:
	.size	gs_locked_object_type, .Lfunc_end18-gs_locked_object_type
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_string,@function
gs_locked_alloc_string:                 # @gs_locked_alloc_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 32
.Ltmp118:
	.cfi_offset %rbx, -32
.Ltmp119:
	.cfi_offset %r14, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	callq	*136(%rdi)
	movq	%rax, %rbp
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbp, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gs_locked_alloc_string, .Lfunc_end19-gs_locked_alloc_string
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_alloc_string_immovable,@function
gs_locked_alloc_string_immovable:       # @gs_locked_alloc_string_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 32
.Ltmp124:
	.cfi_offset %rbx, -32
.Ltmp125:
	.cfi_offset %r14, -24
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	callq	*144(%rdi)
	movq	%rax, %rbp
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbp, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gs_locked_alloc_string_immovable, .Lfunc_end20-gs_locked_alloc_string_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_resize_string,@function
gs_locked_resize_string:                # @gs_locked_resize_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp128:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp129:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp130:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 48
.Ltmp132:
	.cfi_offset %rbx, -48
.Ltmp133:
	.cfi_offset %r12, -40
.Ltmp134:
	.cfi_offset %r14, -32
.Ltmp135:
	.cfi_offset %r15, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movq	%rbp, %rsi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movq	%r14, %r8
	callq	*152(%rdi)
	movq	%rax, %rbp
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbp, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gs_locked_resize_string, .Lfunc_end21-gs_locked_resize_string
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_free_string,@function
gs_locked_free_string:                  # @gs_locked_free_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp141:
	.cfi_def_cfa_offset 48
.Ltmp142:
	.cfi_offset %rbx, -40
.Ltmp143:
	.cfi_offset %r14, -32
.Ltmp144:
	.cfi_offset %r15, -24
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	224(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbp), %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	*160(%rdi)
	movq	224(%rbp), %rdi
	addq	$8, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gp_monitor_leave        # TAILCALL
.Lfunc_end22:
	.size	gs_locked_free_string, .Lfunc_end22-gs_locked_free_string
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_register_root,@function
gs_locked_register_root:                # @gs_locked_register_root
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp149:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp152:
	.cfi_def_cfa_offset 64
.Ltmp153:
	.cfi_offset %rbx, -56
.Ltmp154:
	.cfi_offset %r12, -48
.Ltmp155:
	.cfi_offset %r13, -40
.Ltmp156:
	.cfi_offset %r14, -32
.Ltmp157:
	.cfi_offset %r15, -24
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	*168(%rdi)
	movl	%eax, %ebp
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gs_locked_register_root, .Lfunc_end23-gs_locked_register_root
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_unregister_root,@function
gs_locked_unregister_root:              # @gs_locked_unregister_root
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp160:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp161:
	.cfi_def_cfa_offset 32
.Ltmp162:
	.cfi_offset %rbx, -32
.Ltmp163:
	.cfi_offset %r14, -24
.Ltmp164:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*176(%rdi)
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gp_monitor_leave        # TAILCALL
.Lfunc_end24:
	.size	gs_locked_unregister_root, .Lfunc_end24-gs_locked_unregister_root
	.cfi_endproc

	.align	16, 0x90
	.type	gs_locked_enable_free,@function
gs_locked_enable_free:                  # @gs_locked_enable_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp167:
	.cfi_def_cfa_offset 32
.Ltmp168:
	.cfi_offset %rbx, -24
.Ltmp169:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	216(%rbx), %rdi
	movl	%ebp, %esi
	callq	*184(%rdi)
	movq	224(%rbx), %rdi
	addq	$8, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gp_monitor_leave        # TAILCALL
.Lfunc_end25:
	.size	gs_locked_enable_free, .Lfunc_end25-gs_locked_enable_free
	.cfi_endproc

	.type	locked_procs,@object    # @locked_procs
	.section	.rodata,"a",@progbits
	.align	8
locked_procs:
	.quad	gs_locked_alloc_bytes_immovable
	.quad	gs_locked_resize_object
	.quad	gs_locked_free_object
	.quad	gs_locked_stable
	.quad	gs_locked_status
	.quad	gs_locked_free_all
	.quad	gs_locked_consolidate_free
	.quad	gs_locked_alloc_bytes
	.quad	gs_locked_alloc_struct
	.quad	gs_locked_alloc_struct_immovable
	.quad	gs_locked_alloc_byte_array
	.quad	gs_locked_alloc_byte_array_immovable
	.quad	gs_locked_alloc_struct_array
	.quad	gs_locked_alloc_struct_array_immovable
	.quad	gs_locked_object_size
	.quad	gs_locked_object_type
	.quad	gs_locked_alloc_string
	.quad	gs_locked_alloc_string_immovable
	.quad	gs_locked_resize_string
	.quad	gs_locked_free_string
	.quad	gs_locked_register_root
	.quad	gs_locked_unregister_root
	.quad	gs_locked_enable_free
	.size	locked_procs, 184

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_memory_locked_release"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_locked_stable"
	.size	.L.str.1, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
