	.text
	.file	"gsdevice.bc"
	.globl	gx_device_finalize
	.align	16, 0x90
	.type	gx_device_finalize,@function
gx_device_finalize:                     # @gx_device_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	1104(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
# BB#1:                                 # %do.end
	decq	200(%rsi)
	jne	.LBB0_3
# BB#2:                                 # %do.end.16
	movq	208(%rsi), %rdi
	movl	$.L.str, %edx
	callq	*216(%rsi)
	movq	$0, 1104(%rbx)
.LBB0_3:                                # %if.end.31
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_5
# BB#4:                                 # %if.then.33
	movq	%rbx, %rdi
	callq	*%rax
.LBB0_5:                                # %if.end.35
	cmpl	$0, 84(%rbx)
	je	.LBB0_7
# BB#6:                                 # %if.then.i
	movq	%rbx, %rdi
	callq	*1176(%rbx)
	movl	$0, 84(%rbx)
.LBB0_7:                                # %gs_closedevice.exit
	cmpl	$0, 40(%rbx)
	je	.LBB0_8
# BB#9:                                 # %if.then.37
	movq	24(%rbx), %rax
	movq	32(%rbx), %rsi
	movq	200(%rax), %rdi
	movl	$.L.str.1, %edx
	popq	%rbx
	jmp	gs_free_const_object    # TAILCALL
.LBB0_8:                                # %if.end.39
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gx_device_finalize, .Lfunc_end0-gx_device_finalize
	.cfi_endproc

	.globl	gs_closedevice
	.align	16, 0x90
	.type	gs_closedevice,@function
gs_closedevice:                         # @gs_closedevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 84(%rbx)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*1176(%rbx)
	movl	$0, 84(%rbx)
	popq	%rbx
	retq
.LBB1_2:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gs_closedevice, .Lfunc_end1-gs_closedevice
	.cfi_endproc

	.globl	gx_device_free_local
	.align	16, 0x90
	.type	gx_device_free_local,@function
gx_device_free_local:                   # @gx_device_free_local
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1104(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_3
# BB#1:                                 # %do.end.i
	decq	200(%rsi)
	jne	.LBB2_3
# BB#2:                                 # %do.end.16.i
	movq	208(%rsi), %rdi
	movl	$.L.str, %edx
	callq	*216(%rsi)
	movq	$0, 1104(%rbx)
.LBB2_3:                                # %if.end.31.i
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_5
# BB#4:                                 # %if.then.33.i
	movq	%rbx, %rdi
	callq	*%rax
.LBB2_5:                                # %if.end.35.i
	cmpl	$0, 84(%rbx)
	je	.LBB2_7
# BB#6:                                 # %if.then.i.i
	movq	%rbx, %rdi
	callq	*1176(%rbx)
	movl	$0, 84(%rbx)
.LBB2_7:                                # %gs_closedevice.exit.i
	cmpl	$0, 40(%rbx)
	je	.LBB2_8
# BB#9:                                 # %if.then.37.i
	movq	24(%rbx), %rax
	movq	32(%rbx), %rsi
	movq	200(%rax), %rdi
	movl	$.L.str.1, %edx
	popq	%rbx
	jmp	gs_free_const_object    # TAILCALL
.LBB2_8:                                # %gx_device_finalize.exit
	popq	%rbx
	retq
.Lfunc_end2:
	.size	gx_device_free_local, .Lfunc_end2-gx_device_free_local
	.cfi_endproc

	.align	16, 0x90
	.type	device_forward_enum_ptrs,@function
device_forward_enum_ptrs:               # @device_forward_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB3_5
# BB#1:                                 # %sw.bb
	movq	1728(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB3_4
# BB#2:                                 # %lor.lhs.false.i
	xorl	%eax, %eax
	cmpq	$0, 24(%rcx)
	je	.LBB3_4
# BB#3:                                 # %select.mid
	movq	%rcx, %rax
.LBB3_4:                                # %gx_device_enum_ptr.exit
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB3_5:                                # %cleanup
	retq
.Lfunc_end3:
	.size	device_forward_enum_ptrs, .Lfunc_end3-device_forward_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_forward_reloc_ptrs,@function
device_forward_reloc_ptrs:              # @device_forward_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1728(%rbx), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB4_4
# BB#1:                                 # %lor.lhs.false.i
	cmpq	$0, 24(%rdi)
	je	.LBB4_2
# BB#3:                                 # %if.end.i
	movq	(%rcx), %rax
	movq	%rcx, %rsi
	callq	*(%rax)
	jmp	.LBB4_4
.LBB4_2:
	movq	%rdi, %rax
.LBB4_4:                                # %gx_device_reloc_ptr.exit
	movq	%rax, 1728(%rbx)
	popq	%rbx
	retq
.Lfunc_end4:
	.size	device_forward_reloc_ptrs, .Lfunc_end4-device_forward_reloc_ptrs
	.cfi_endproc

	.globl	gx_device_enum_ptr
	.align	16, 0x90
	.type	gx_device_enum_ptr,@function
gx_device_enum_ptr:                     # @gx_device_enum_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB5_4
# BB#1:                                 # %lor.lhs.false
	xorl	%eax, %eax
	cmpq	$0, 24(%rdi)
	je	.LBB5_3
# BB#2:                                 # %select.mid
	movq	%rdi, %rax
.LBB5_3:                                # %select.end
	retq
.LBB5_4:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gx_device_enum_ptr, .Lfunc_end5-gx_device_enum_ptr
	.cfi_endproc

	.globl	gx_device_reloc_ptr
	.align	16, 0x90
	.type	gx_device_reloc_ptr,@function
gx_device_reloc_ptr:                    # @gx_device_reloc_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB6_4
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 24(%rdi)
	je	.LBB6_2
# BB#3:                                 # %if.end
	movq	(%rsi), %rax
	callq	*(%rax)
.LBB6_4:                                # %return
	popq	%rdx
	retq
.LBB6_2:
	movq	%rdi, %rax
	popq	%rdx
	retq
.Lfunc_end6:
	.size	gx_device_reloc_ptr, .Lfunc_end6-gx_device_reloc_ptr
	.cfi_endproc

	.globl	gx_device_set_procs
	.align	16, 0x90
	.type	gx_device_set_procs,@function
gx_device_set_procs:                    # @gx_device_set_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_2
# BB#1:                                 # %if.then
	leaq	1144(%rbx), %rdi
	movl	$584, %edx              # imm = 0x248
	callq	memcpy
	movq	$0, 8(%rbx)
.LBB7_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end7:
	.size	gx_device_set_procs, .Lfunc_end7-gx_device_set_procs
	.cfi_endproc

	.globl	gs_flushpage
	.align	16, 0x90
	.type	gs_flushpage,@function
gs_flushpage:                           # @gs_flushpage
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1872(%rdi), %rdi
	jmpq	*1160(%rdi)             # TAILCALL
.Lfunc_end8:
	.size	gs_flushpage, .Lfunc_end8-gs_flushpage
	.cfi_endproc

	.globl	gs_currentdevice
	.align	16, 0x90
	.type	gs_currentdevice,@function
gs_currentdevice:                       # @gs_currentdevice
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1872(%rdi), %rax
	retq
.Lfunc_end9:
	.size	gs_currentdevice, .Lfunc_end9-gs_currentdevice
	.cfi_endproc

	.globl	gs_copypage
	.align	16, 0x90
	.type	gs_copypage,@function
gs_copypage:                            # @gs_copypage
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	gs_output_page          # TAILCALL
.Lfunc_end10:
	.size	gs_copypage, .Lfunc_end10-gs_copypage
	.cfi_endproc

	.globl	gs_output_page
	.align	16, 0x90
	.type	gs_output_page,@function
gs_output_page:                         # @gs_output_page
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
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	1872(%rbx), %r14
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_14
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	gs_newpath
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_6
# BB#2:                                 # %lor.lhs.false
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movq	%rbx, %rdi
	callq	gs_moveto
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_6
# BB#3:                                 # %lor.lhs.false.6
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_setgray
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_4
# BB#5:                                 # %lor.lhs.false.9
	movq	%rbx, %rdi
	callq	gs_fill
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_6
# BB#7:                                 # %if.end.15
	movq	%rbx, %rdi
	callq	gs_grestore
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_14
# BB#8:                                 # %if.end.20
	cmpl	$0, 952(%r14)
	je	.LBB11_10
# BB#9:                                 # %select.mid
	movl	$1, %r12d
.LBB11_10:                              # %select.end
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	*1168(%r14)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_14
# BB#11:                                # %if.end.27
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1680(%r14)
	movl	%eax, %ebp
	movq	8(%rsp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB11_14
# BB#12:                                # %land.lhs.true
	cmpl	$0, 160(%rax)
	jne	.LBB11_14
# BB#13:                                # %if.then.32
	movl	$1, 160(%rax)
	movq	344(%rbx), %rdi
	movq	%r14, %rsi
	callq	gsicc_mcm_begin_monitor
	jmp	.LBB11_14
.LBB11_4:
	shrl	$31, %ebp
.LBB11_6:                               # %if.then.13
	movq	%rbx, %rdi
	callq	gs_grestore
.LBB11_14:                              # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gs_output_page, .Lfunc_end11-gs_output_page
	.cfi_endproc

	.globl	gx_finish_output_page
	.align	16, 0x90
	.type	gx_finish_output_page,@function
gx_finish_output_page:                  # @gx_finish_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%esi, %rax
	addq	%rax, 928(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	gx_finish_output_page, .Lfunc_end12-gx_finish_output_page
	.cfi_endproc

	.globl	gs_copyscanlines
	.align	16, 0x90
	.type	gs_copyscanlines,@function
gs_copyscanlines:                       # @gs_copyscanlines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 96
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movslq	832(%r13), %rax
	movzwl	108(%r13), %edi
	imulq	%rax, %rdi
	cmpl	$0, 848(%r13)
	je	.LBB13_1
# BB#2:                                 # %if.then.i
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movslq	100(%r13), %rsi
	xorl	%edx, %edx
	movq	%rdi, %rax
	divq	%rsi
	movq	%rax, %rdi
	jmp	.LBB13_3
.LBB13_1:
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%r9, 16(%rsp)           # 8-byte Spill
.LBB13_3:                               # %gx_device_raster.exit
	addq	$7, %rdi
	shrq	$3, %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %r14d
	testl	%r14d, %r14d
	je	.LBB13_8
# BB#4:                                 # %for.body.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB13_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r12), %r15d
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	callq	*1240(%r13)
	testl	%eax, %eax
	js	.LBB13_6
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB13_5 Depth=1
	incl	%r12d
	addq	%rbp, %rbx
	cmpl	%r14d, %r12d
	jb	.LBB13_5
	jmp	.LBB13_8
.LBB13_6:                               # %cleanup
	cmpl	836(%r13), %r15d
	jne	.LBB13_12
.LBB13_8:                               # %for.end
	movq	8(%rsp), %rax           # 8-byte Reload
	testq	%rax, %rax
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	movl	%r12d, (%rax)
.LBB13_10:                              # %if.end.9
	xorl	%eax, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movq	24(%rsp), %rdx          # 8-byte Reload
	je	.LBB13_12
# BB#11:                                # %if.then.11
	imull	%edx, %r12d
	movl	%r12d, (%rcx)
.LBB13_12:                              # %cleanup.13
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gs_copyscanlines, .Lfunc_end13-gs_copyscanlines
	.cfi_endproc

	.globl	gx_device_raster
	.align	16, 0x90
	.type	gx_device_raster,@function
gx_device_raster:                       # @gx_device_raster
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	832(%rdi), %rcx
	movzwl	108(%rdi), %eax
	imulq	%rcx, %rax
	cmpl	$0, 848(%rdi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movslq	100(%rdi), %rcx
	xorl	%edx, %edx
	divq	%rcx
.LBB14_2:                               # %if.end
	testl	%esi, %esi
	je	.LBB14_3
# BB#4:                                 # %if.end.9
	movl	844(%rdi), %ecx
	cmpl	$3, %ecx
	movl	$3, %edx
	cmovgel	%ecx, %edx
	movb	$3, %sil
	jl	.LBB14_6
# BB#5:                                 # %if.end.9
	movb	%cl, %sil
.LBB14_6:                               # %if.end.9
	movl	$8, %edi
	movb	%sil, %cl
	shll	%cl, %edi
	movslq	%edi, %rcx
	leaq	-1(%rax,%rcx), %rax
	addl	$3, %edx
	movb	%dl, %cl
	shrq	%cl, %rax
	movb	%sil, %cl
	shlq	%cl, %rax
	retq
.LBB14_3:                               # %if.then.7
	addq	$7, %rax
	shrq	$3, %rax
	retq
.Lfunc_end14:
	.size	gx_device_raster, .Lfunc_end14-gx_device_raster
	.cfi_endproc

	.globl	gs_devicename
	.align	16, 0x90
	.type	gs_devicename,@function
gs_devicename:                          # @gs_devicename
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	retq
.Lfunc_end15:
	.size	gs_devicename, .Lfunc_end15-gs_devicename
	.cfi_endproc

	.globl	gs_deviceinitialmatrix
	.align	16, 0x90
	.type	gs_deviceinitialmatrix,@function
gs_deviceinitialmatrix:                 # @gs_deviceinitialmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1152(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	$gx_default_get_initial_matrix, 1152(%rdi)
	movl	$gx_default_get_initial_matrix, %eax
.LBB16_2:                               # %if.end
	jmpq	*%rax                   # TAILCALL
.Lfunc_end16:
	.size	gs_deviceinitialmatrix, .Lfunc_end16-gs_deviceinitialmatrix
	.cfi_endproc

	.globl	gs_getdevice
	.align	16, 0x90
	.type	gs_getdevice,@function
gs_getdevice:                           # @gs_getdevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	xorl	%ebx, %ebx
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_lib_device_list
	testl	%ebp, %ebp
	js	.LBB17_3
# BB#1:                                 # %entry
	cmpl	%ebp, %eax
	jle	.LBB17_3
# BB#2:                                 # %if.end
	movslq	%ebp, %rax
	movq	(%rsp), %rcx
	movq	(%rcx,%rax,8), %rbx
.LBB17_3:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gs_getdevice, .Lfunc_end17-gs_getdevice
	.cfi_endproc

	.globl	gs_getdefaultdevice
	.align	16, 0x90
	.type	gs_getdefaultdevice,@function
gs_getdefaultdevice:                    # @gs_getdefaultdevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 96
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_lib_device_list
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	gs_dev_defaults(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	jle	.LBB18_18
# BB#1:                                 # %while.cond.2.preheader.lr.ph
	movq	24(%rsp), %r13
	movslq	12(%rsp), %r14          # 4-byte Folded Reload
	leaq	(%rax,%rbx), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	jmp	.LBB18_4
	.align	16, 0x90
.LBB18_21:                              # %while.body.9
                                        #   in Loop: Header=BB18_4 Depth=1
	incq	%rbx
.LBB18_4:                               # %while.cond.2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_15 Depth 2
                                        #     Child Loop BB18_10 Depth 2
	cmpq	%rcx, %rbx
	jae	.LBB18_7
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB18_4 Depth=1
	movzbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB18_21
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB18_4 Depth=1
	movzbl	%al, %eax
	cmpl	$32, %eax
	je	.LBB18_21
.LBB18_7:                               # %while.cond.10.preheader
                                        #   in Loop: Header=BB18_4 Depth=1
	cmpq	%rcx, %rbx
	movq	%rbx, %rdx
	jae	.LBB18_8
.LBB18_15:                              # %land.lhs.true
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %eax
	cmpl	$9, %eax
	je	.LBB18_8
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB18_15 Depth=2
	movzbl	%al, %eax
	cmpl	$32, %eax
	je	.LBB18_8
# BB#17:                                # %while.body.21
                                        #   in Loop: Header=BB18_15 Depth=2
	incq	%rdx
	cmpq	%rcx, %rdx
	jb	.LBB18_15
.LBB18_8:                               # %for.cond.preheader
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jle	.LBB18_3
# BB#9:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	16(%rsp), %r12          # 8-byte Reload
	subq	%rbx, %r12
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB18_10:                              # %for.body
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%r15,8), %rax
	movq	16(%rax), %rbp
	movq	%rbp, %rdi
	callq	strlen
	cmpq	%rax, %r12
	jne	.LBB18_2
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB18_10 Depth=2
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB18_12
.LBB18_2:                               # %for.inc
                                        #   in Loop: Header=BB18_10 Depth=2
	incq	%r15
	cmpq	%r14, %r15
	jl	.LBB18_10
.LBB18_3:                               # %while.cond.loopexit
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	cmpq	%rcx, %rbx
	jb	.LBB18_4
.LBB18_18:                              # %while.end.39
	xorl	%ebx, %ebx
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_lib_device_list
	testl	%eax, %eax
	jle	.LBB18_20
# BB#19:                                # %if.end.i.30
	movq	32(%rsp), %rax
	movq	(%rax), %rbx
	jmp	.LBB18_20
.LBB18_12:                              # %if.then.36
	xorl	%ebx, %ebx
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_lib_device_list
	testl	%r15d, %r15d
	js	.LBB18_20
# BB#13:                                # %if.then.36
	cmpl	%r15d, %eax
	jle	.LBB18_20
# BB#14:                                # %if.end.i
	movq	32(%rsp), %rax
	movq	(%rax,%r15,8), %rbx
.LBB18_20:                              # %cleanup
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gs_getdefaultdevice, .Lfunc_end18-gs_getdefaultdevice
	.cfi_endproc

	.globl	gs_copydevice2
	.align	16, 0x90
	.type	gs_copydevice2,@function
gs_copydevice2:                         # @gs_copydevice2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 80
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rsi, %r13
	movq	32(%r13), %r12
	cmpl	$0, 40(%r13)
	je	.LBB19_3
# BB#1:                                 # %if.then
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	200(%r15), %rdi
	movl	$64, %esi
	movl	$.L.str.5, %edx
	callq	*8(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r14d
	testq	%rbp, %rbp
	je	.LBB19_20
# BB#2:                                 # %if.end
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movups	%xmm3, 48(%rbp)
	movups	%xmm2, 32(%rbp)
	movups	%xmm1, 16(%rbp)
	movups	%xmm0, (%rbp)
	jmp	.LBB19_12
.LBB19_3:                               # %if.else
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	testq	%r12, %r12
	je	.LBB19_5
# BB#4:                                 # %land.lhs.true
	movl	(%r12), %eax
	cmpl	(%r13), %eax
	movq	%r12, %rbp
	je	.LBB19_12
.LBB19_5:                               # %if.else.6
	movq	200(%r15), %rdi
	movl	$64, %esi
	movl	$.L.str.5, %edx
	callq	*8(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r14d
	testq	%rbp, %rbp
	je	.LBB19_20
# BB#6:                                 # %if.end.14
	movq	32(%r13), %rax
	testq	%rax, %rax
	je	.LBB19_8
# BB#7:                                 # %if.then.2.i
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movups	%xmm3, 48(%rbp)
	movups	%xmm2, 32(%rbp)
	movups	%xmm1, 16(%rbp)
	jmp	.LBB19_11
.LBB19_8:                               # %if.else.i
	movq	8(%r13), %rax
	leaq	1144(%r13), %rcx
	testq	%rax, %rax
	cmovneq	%rax, %rcx
	movl	$gx_forward_get_xfont_procs, %eax
	cmpq	%rax, 128(%rcx)
	je	.LBB19_9
# BB#10:                                # %if.else.6.i
	movups	st_device+48(%rip), %xmm0
	movups	%xmm0, 48(%rbp)
	movups	st_device+32(%rip), %xmm0
	movups	%xmm0, 32(%rbp)
	movups	st_device+16(%rip), %xmm0
	movups	%xmm0, 16(%rbp)
	movups	st_device(%rip), %xmm0
	jmp	.LBB19_11
.LBB19_9:                               # %if.then.5.i
	movups	st_device_forward+48(%rip), %xmm0
	movups	%xmm0, 48(%rbp)
	movups	st_device_forward+32(%rip), %xmm0
	movups	%xmm0, 32(%rbp)
	movups	st_device_forward+16(%rip), %xmm0
	movups	%xmm0, 16(%rbp)
	movups	st_device_forward(%rip), %xmm0
.LBB19_11:                              # %gx_device_make_struct_type.exit
	movups	%xmm0, (%rbp)
	movl	(%r13), %eax
	movl	%eax, (%rbp)
.LBB19_12:                              # %if.end.16
	movl	$.L.str.6, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*80(%r15)
	movq	%rax, %rbx
	movl	$-25, %r14d
	testq	%rbx, %rbx
	je	.LBB19_20
# BB#13:                                # %if.end.21
	movslq	(%r13), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movq	%r15, 24(%rbx)
	movl	$1, 80(%rbx)
	movq	$1, 56(%rbx)
	movq	%r15, 64(%rbx)
	movq	$rc_free_struct_only, 72(%rbx)
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB19_15
# BB#14:                                # %if.then.i
	movq	%rbx, %rdi
	addq	$1144, %rdi             # imm = 0x478
	movl	$584, %edx              # imm = 0x248
	callq	memcpy
	movq	$0, 8(%rbx)
.LBB19_15:                              # %gx_device_set_procs.exit
	movq	%rbp, 32(%rbx)
	cmpq	%r12, %rbp
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 40(%rbx)
	cmpl	$0, 84(%r13)
	setne	%al
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 84(%rbx)
	movq	1488(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.LBB19_17
# BB#16:                                # %if.then.31
	movq	$gx_default_finish_copydevice, 1488(%rbx)
	movl	$gx_default_finish_copydevice, %ecx
.LBB19_17:                              # %if.end.34
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*%rcx
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB19_18
# BB#19:                                # %if.end.42
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbx, (%rax)
	xorl	%r14d, %r14d
	jmp	.LBB19_20
.LBB19_18:                              # %if.then.40
	movl	$.L.str.6, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
.LBB19_20:                              # %cleanup
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gs_copydevice2, .Lfunc_end19-gs_copydevice2
	.cfi_endproc

	.globl	gx_device_init
	.align	16, 0x90
	.type	gx_device_init,@function
gx_device_init:                         # @gx_device_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 32
.Ltmp69:
	.cfi_offset %rbx, -32
.Ltmp70:
	.cfi_offset %r14, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rdi, %rbp
	movslq	(%rsi), %rdx
	callq	memcpy
	movq	%rbx, 24(%rbp)
	testl	%r14d, %r14d
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 80(%rbp)
	movq	%rax, 56(%rbp)
	movq	%rbx, 64(%rbp)
	movq	$rc_free_struct_only, 72(%rbp)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gx_device_init, .Lfunc_end20-gx_device_init
	.cfi_endproc

	.globl	gs_copydevice
	.align	16, 0x90
	.type	gs_copydevice,@function
gs_copydevice:                          # @gs_copydevice
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	xorl	%edx, %edx
	movq	%rax, %rcx
	jmp	gs_copydevice2          # TAILCALL
.Lfunc_end21:
	.size	gs_copydevice, .Lfunc_end21-gs_copydevice
	.cfi_endproc

	.globl	gs_opendevice
	.align	16, 0x90
	.type	gs_opendevice,@function
gs_opendevice:                          # @gs_opendevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 84(%rbx)
	jne	.LBB22_3
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	check_device_separable
	movq	%rbx, %rdi
	callq	gx_device_fill_in_procs
	movq	%rbx, %rdi
	callq	*1144(%rbx)
	testl	%eax, %eax
	js	.LBB22_3
# BB#2:                                 # %if.end.2
	movl	$1, 84(%rbx)
	movl	$1, %eax
.LBB22_3:                               # %return
	popq	%rbx
	retq
.Lfunc_end22:
	.size	gs_opendevice, .Lfunc_end22-gs_opendevice
	.cfi_endproc

	.globl	gs_imager_putdeviceparams
	.align	16, 0x90
	.type	gs_imager_putdeviceparams,@function
gs_imager_putdeviceparams:              # @gs_imager_putdeviceparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 32
.Ltmp77:
	.cfi_offset %rbx, -32
.Ltmp78:
	.cfi_offset %r14, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	callq	gs_putdeviceparams
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB23_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_set_cmap_procs
.LBB23_2:                               # %if.end
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gs_imager_putdeviceparams, .Lfunc_end23-gs_imager_putdeviceparams
	.cfi_endproc

	.globl	gs_state_putdeviceparams
	.align	16, 0x90
	.type	gs_state_putdeviceparams,@function
gs_state_putdeviceparams:               # @gs_state_putdeviceparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp82:
	.cfi_def_cfa_offset 32
.Ltmp83:
	.cfi_offset %rbx, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1872(%rbx), %rdi
	callq	gs_putdeviceparams
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_2
# BB#1:                                 # %if.then
	movq	1872(%rbx), %rsi
	movq	%rbx, %rdi
	callq	gx_set_cmap_procs
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB24_2:                               # %if.end
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gs_state_putdeviceparams, .Lfunc_end24-gs_state_putdeviceparams
	.cfi_endproc

	.globl	gs_setdevice
	.align	16, 0x90
	.type	gs_setdevice,@function
gs_setdevice:                           # @gs_setdevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_setdevice_no_erase
	cmpl	$1, %eax
	jne	.LBB25_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gs_erasepage            # TAILCALL
.LBB25_1:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end25:
	.size	gs_setdevice, .Lfunc_end25-gs_setdevice
	.cfi_endproc

	.globl	gs_setdevice_no_erase
	.align	16, 0x90
	.type	gs_setdevice_no_erase,@function
gs_setdevice_no_erase:                  # @gs_setdevice_no_erase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp92:
	.cfi_def_cfa_offset 64
.Ltmp93:
	.cfi_offset %rbx, -48
.Ltmp94:
	.cfi_offset %r12, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	%rax, %r15
	cmpq	$0, 136(%r15)
	je	.LBB26_9
# BB#1:                                 # %if.then
	movq	336(%r14), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB26_3
# BB#2:                                 # %if.then.2
	movq	%r14, %rdi
	callq	gsicc_init_iccmanager
.LBB26_3:                               # %if.end
	movq	1680(%r12), %rax
	testq	%rax, %rax
	je	.LBB26_9
# BB#4:                                 # %if.then.5
	leaq	8(%rsp), %rsi
	movq	%r12, %rdi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB26_29
# BB#5:                                 # %if.end.11
	movq	8(%rsp), %rax
	testq	%rax, %rax
	je	.LBB26_7
# BB#6:                                 # %lor.lhs.false
	cmpq	$0, (%rax)
	jne	.LBB26_9
.LBB26_7:                               # %if.then.14
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	gsicc_init_device_profile_struct
	testl	%eax, %eax
	js	.LBB26_29
# BB#8:                                 # %if.end.18
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	gsicc_set_device_profile_intent
	testl	%eax, %eax
	js	.LBB26_29
.LBB26_9:                               # %if.end.25
	xorl	%ebp, %ebp
	cmpl	$0, 84(%r12)
	jne	.LBB26_26
# BB#10:                                # %if.then.26
	movq	%r12, %rdi
	callq	gx_device_fill_in_procs
	cmpq	$0, 136(%r15)
	je	.LBB26_16
# BB#11:                                # %if.then.29
	movq	1680(%r12), %rax
	testq	%rax, %rax
	je	.LBB26_16
# BB#12:                                # %if.then.34
	leaq	8(%rsp), %rsi
	movq	%r12, %rdi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB26_29
# BB#13:                                # %if.end.40
	movq	8(%rsp), %rax
	testq	%rax, %rax
	je	.LBB26_15
# BB#14:                                # %lor.lhs.false.42
	cmpq	$0, (%rax)
	jne	.LBB26_16
.LBB26_15:                              # %if.then.46
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	gsicc_init_device_profile_struct
	testl	%eax, %eax
	js	.LBB26_29
.LBB26_16:                              # %if.end.56
	movq	%r12, %rdi
	callq	gs_device_is_memory
	testl	%eax, %eax
	je	.LBB26_23
# BB#17:                                # %if.then.59
	movq	1872(%r14), %rbx
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB26_22
# BB#18:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB26_19:                              # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	gs_device_is_memory
	testl	%eax, %eax
	je	.LBB26_20
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB26_19 Depth=1
	movq	1728(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB26_19
	jmp	.LBB26_22
.LBB26_20:
	movq	%rbx, %r15
.LBB26_22:                              # %while.end
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_device_set_target
.LBB26_23:                              # %if.end.63
	cmpl	$0, 84(%r12)
	jne	.LBB26_26
# BB#24:                                # %if.end.i
	movq	%r12, %rdi
	callq	check_device_separable
	movq	%r12, %rdi
	callq	gx_device_fill_in_procs
	movq	%r12, %rdi
	callq	*1144(%r12)
	testl	%eax, %eax
	js	.LBB26_29
# BB#25:                                # %if.end.2.i
	movl	$1, 84(%r12)
	movl	$1, %ebp
.LBB26_26:                              # %if.end.68
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gs_setdevice_no_init
	movl	$0, 1676(%r14)
	movq	%r14, %rdi
	callq	gs_initmatrix
	testl	%eax, %eax
	js	.LBB26_29
# BB#27:                                # %lor.lhs.false.72
	movq	%r14, %rdi
	callq	gs_initclip
	testl	%eax, %eax
	js	.LBB26_29
# BB#28:                                # %if.end.76
	movq	$0, 1848(%r14)
	movl	%ebp, %eax
.LBB26_29:                              # %cleanup.77
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gs_setdevice_no_erase, .Lfunc_end26-gs_setdevice_no_erase
	.cfi_endproc

	.globl	gs_setdevice_no_init
	.align	16, 0x90
	.type	gs_setdevice_no_init,@function
gs_setdevice_no_init:                   # @gs_setdevice_no_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 32
.Ltmp101:
	.cfi_offset %rbx, -32
.Ltmp102:
	.cfi_offset %r14, -24
.Ltmp103:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	1872(%r15), %rbx
	xorl	%esi, %esi
	testq	%rbx, %rbx
	je	.LBB27_9
# BB#1:                                 # %land.lhs.true
	cmpq	%r14, %rbx
	je	.LBB27_2
# BB#3:                                 # %land.lhs.true
	cmpq	$1, 56(%rbx)
	jne	.LBB27_4
# BB#5:                                 # %if.then
	cmpl	$0, 84(%rbx)
	je	.LBB27_6
# BB#7:                                 # %gs_closedevice.exit
	movq	%rbx, %rdi
	callq	*1176(%rbx)
	movl	$0, 84(%rbx)
	testl	%eax, %eax
	js	.LBB27_17
# BB#8:                                 # %gs_closedevice.exit.do.body_crit_edge
	movq	1872(%r15), %rsi
	jmp	.LBB27_9
.LBB27_2:
	movq	%rbx, %rsi
	jmp	.LBB27_9
.LBB27_4:
	movq	%rbx, %rsi
	jmp	.LBB27_9
.LBB27_6:
	movq	%rbx, %rsi
.LBB27_9:                               # %do.body
	cmpq	%r14, %rsi
	je	.LBB27_16
# BB#10:                                # %do.body.13
	testq	%r14, %r14
	je	.LBB27_12
# BB#11:                                # %do.body.15
	incq	56(%r14)
.LBB27_12:                              # %do.body.22
	testq	%rsi, %rsi
	je	.LBB27_15
# BB#13:                                # %do.end.28
	decq	56(%rsi)
	jne	.LBB27_15
# BB#14:                                # %do.end.40
	movq	64(%rsi), %rdi
	movl	$.L.str.7, %edx
	callq	*72(%rsi)
.LBB27_15:                              # %do.end.53
	movq	%r14, 1872(%r15)
.LBB27_16:                              # %do.end.56
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_set_cmap_procs
	movq	1760(%r15), %rax
	movq	$gx_dc_type_data_none, (%rax)
	xorl	%eax, %eax
	cmpl	$0, 272(%r15)
	je	.LBB27_17
# BB#18:                                # %cond.true
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_do_set_overprint     # TAILCALL
.LBB27_17:                              # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end27:
	.size	gs_setdevice_no_init, .Lfunc_end27-gs_setdevice_no_init
	.cfi_endproc

	.globl	gx_device_init_on_stack
	.align	16, 0x90
	.type	gx_device_init_on_stack,@function
gx_device_init_on_stack:                # @gx_device_init_on_stack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
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
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movslq	(%r15), %rdx
	callq	memcpy
	movq	%r14, 24(%rbx)
	movl	$0, 80(%rbx)
	movl	840(%r15), %eax
	movl	%eax, 840(%rbx)
	movl	844(%r15), %eax
	movl	%eax, 844(%rbx)
	movl	848(%r15), %eax
	movl	%eax, 848(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movq	$rc_free_struct_only, 72(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end28:
	.size	gx_device_init_on_stack, .Lfunc_end28-gx_device_init_on_stack
	.cfi_endproc

	.globl	gs_make_null_device
	.align	16, 0x90
	.type	gs_make_null_device,@function
gs_make_null_device:                    # @gs_make_null_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 32
.Ltmp113:
	.cfi_offset %rbx, -32
.Ltmp114:
	.cfi_offset %r14, -24
.Ltmp115:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movslq	gs_null_device(%rip), %rdx
	movl	$gs_null_device, %esi
	callq	memcpy
	movq	%r15, 24(%rbx)
	movl	$0, 80(%rbx)
	movq	$0, 56(%rbx)
	movq	%r15, 64(%rbx)
	movq	$rc_free_struct_only, 72(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_set_target
	testq	%r14, %r14
	je	.LBB29_14
# BB#1:                                 # %if.then
	movq	$gx_forward_get_color_mapping_procs, 1536(%rbx)
	movq	$gx_forward_get_color_comp_index, 1544(%rbx)
	movq	$gx_forward_encode_color, 1552(%rbx)
	movq	$gx_forward_decode_color, 1560(%rbx)
	movq	$gx_forward_get_profile, 1680(%rbx)
	movq	$gx_forward_set_graphics_type_tag, 1688(%rbx)
	movl	1112(%r14), %eax
	movl	%eax, 1112(%rbx)
	leaq	96(%rbx), %rdi
	leaq	96(%r14), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movups	816(%r14), %xmm0
	movups	%xmm0, 816(%rbx)
	movq	1264(%rbx), %rdx
	movq	1184(%rbx), %rcx
	movq	1192(%rbx), %rax
	movl	$cmyk_8bit_map_cmyk_color, %esi
	cmpq	%rsi, %rdx
	je	.LBB29_4
# BB#2:                                 # %if.then
	movl	$gx_forward_map_cmyk_color, %esi
	cmpq	%rsi, %rdx
	je	.LBB29_4
# BB#3:                                 # %if.then
	movl	$cmyk_1bit_map_cmyk_color, %esi
	cmpq	%rsi, %rdx
	jne	.LBB29_5
.LBB29_4:                               # %if.then.i.i
	movq	1264(%r14), %rdx
	movl	$cmyk_1bit_map_cmyk_color, %esi
	movl	$cmyk_8bit_map_cmyk_color, %edi
	cmpq	%rdi, %rdx
	movl	$gx_forward_map_cmyk_color, %edi
	cmoveq	%rdx, %rdi
	cmpq	%rsi, %rdx
	cmoveq	%rdx, %rdi
	movq	%rdi, 1264(%rbx)
.LBB29_5:                               # %if.end.i.i
	movl	$gx_forward_map_rgb_color, %edx
	cmpq	%rdx, %rcx
	je	.LBB29_7
# BB#6:                                 # %if.end.i.i
	movl	$gx_default_rgb_map_rgb_color, %edx
	cmpq	%rdx, %rcx
	jne	.LBB29_10
.LBB29_7:                               # %if.then.16.i.i
	movl	$gx_default_rgb_map_rgb_color, %ecx
	cmpq	%rcx, 1184(%r14)
	je	.LBB29_9
# BB#8:                                 # %select.mid
	movl	$gx_forward_map_rgb_color, %ecx
.LBB29_9:                               # %select.end
	movq	%rcx, 1184(%rbx)
.LBB29_10:                              # %if.end.26.i.i
	movl	$cmyk_8bit_map_color_rgb, %ecx
	cmpq	%rcx, %rax
	je	.LBB29_13
# BB#11:                                # %if.end.26.i.i
	movl	$gx_forward_map_color_rgb, %ecx
	cmpq	%rcx, %rax
	je	.LBB29_13
# BB#12:                                # %if.end.26.i.i
	movl	$cmyk_1bit_map_color_rgb, %ecx
	cmpq	%rcx, %rax
	jne	.LBB29_14
.LBB29_13:                              # %if.then.32.i.i
	movq	1192(%r14), %rax
	movl	$cmyk_1bit_map_color_rgb, %ecx
	movl	$cmyk_8bit_map_color_rgb, %edx
	cmpq	%rdx, %rax
	movl	$gx_forward_map_color_rgb, %edx
	cmoveq	%rax, %rdx
	cmpq	%rcx, %rax
	cmoveq	%rax, %rdx
	movq	%rdx, 1192(%rbx)
.LBB29_14:                              # %if.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end29:
	.size	gs_make_null_device, .Lfunc_end29-gs_make_null_device
	.cfi_endproc

	.globl	gx_device_copy_color_params
	.align	16, 0x90
	.type	gx_device_copy_color_params,@function
gx_device_copy_color_params:            # @gx_device_copy_color_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp118:
	.cfi_def_cfa_offset 32
.Ltmp119:
	.cfi_offset %rbx, -24
.Ltmp120:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	96(%rbx), %rdi
	leaq	96(%r14), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movups	816(%r14), %xmm0
	movups	%xmm0, 816(%rbx)
	movq	1264(%rbx), %rdx
	movq	1184(%rbx), %rcx
	movq	1192(%rbx), %rax
	movl	$cmyk_8bit_map_cmyk_color, %esi
	cmpq	%rsi, %rdx
	je	.LBB30_3
# BB#1:                                 # %entry
	movl	$gx_forward_map_cmyk_color, %esi
	cmpq	%rsi, %rdx
	je	.LBB30_3
# BB#2:                                 # %entry
	movl	$cmyk_1bit_map_cmyk_color, %esi
	cmpq	%rsi, %rdx
	jne	.LBB30_4
.LBB30_3:                               # %if.then.i
	movq	1264(%r14), %rdx
	movl	$cmyk_1bit_map_cmyk_color, %esi
	movl	$cmyk_8bit_map_cmyk_color, %edi
	cmpq	%rdi, %rdx
	movl	$gx_forward_map_cmyk_color, %edi
	cmoveq	%rdx, %rdi
	cmpq	%rsi, %rdx
	cmoveq	%rdx, %rdi
	movq	%rdi, 1264(%rbx)
.LBB30_4:                               # %if.end.i
	movl	$gx_forward_map_rgb_color, %edx
	cmpq	%rdx, %rcx
	je	.LBB30_6
# BB#5:                                 # %if.end.i
	movl	$gx_default_rgb_map_rgb_color, %edx
	cmpq	%rdx, %rcx
	jne	.LBB30_9
.LBB30_6:                               # %if.then.16.i
	movl	$gx_default_rgb_map_rgb_color, %ecx
	cmpq	%rcx, 1184(%r14)
	je	.LBB30_8
# BB#7:                                 # %select.mid
	movl	$gx_forward_map_rgb_color, %ecx
.LBB30_8:                               # %select.end
	movq	%rcx, 1184(%rbx)
.LBB30_9:                               # %if.end.26.i
	movl	$cmyk_8bit_map_color_rgb, %ecx
	cmpq	%rcx, %rax
	je	.LBB30_12
# BB#10:                                # %if.end.26.i
	movl	$gx_forward_map_color_rgb, %ecx
	cmpq	%rcx, %rax
	je	.LBB30_12
# BB#11:                                # %if.end.26.i
	movl	$cmyk_1bit_map_color_rgb, %ecx
	cmpq	%rcx, %rax
	jne	.LBB30_13
.LBB30_12:                              # %if.then.32.i
	movq	1192(%r14), %rax
	movl	$cmyk_1bit_map_color_rgb, %ecx
	movl	$cmyk_8bit_map_color_rgb, %edx
	cmpq	%rdx, %rax
	movl	$gx_forward_map_color_rgb, %edx
	cmoveq	%rax, %rdx
	cmpq	%rcx, %rax
	cmoveq	%rax, %rdx
	movq	%rdx, 1192(%rbx)
.LBB30_13:                              # %gx_device_copy_color_procs.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end30:
	.size	gx_device_copy_color_params, .Lfunc_end30-gx_device_copy_color_params
	.cfi_endproc

	.globl	gs_is_null_device
	.align	16, 0x90
	.type	gs_is_null_device,@function
gs_is_null_device:                      # @gs_is_null_device
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1336(%rdi), %rax
	cmpq	gs_null_device+1336(%rip), %rax
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end31:
	.size	gs_is_null_device, .Lfunc_end31-gs_is_null_device
	.cfi_endproc

	.globl	gx_device_retain
	.align	16, 0x90
	.type	gx_device_retain,@function
gx_device_retain:                       # @gx_device_retain
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	80(%rax), %ecx
	cmpl	%esi, %ecx
	je	.LBB32_2
# BB#1:                                 # %do.end
	movl	%esi, 80(%rax)
	subl	%ecx, %esi
	movslq	%esi, %rcx
	addq	56(%rax), %rcx
	movq	%rcx, 56(%rax)
	je	.LBB32_3
.LBB32_2:                               # %if.end.30
	retq
.LBB32_3:                               # %do.end.16
	movq	64(%rax), %rdi
	movq	72(%rax), %rcx
	movl	$.L.str.8, %edx
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end32:
	.size	gx_device_retain, .Lfunc_end32-gx_device_retain
	.cfi_endproc

	.globl	gs_nulldevice
	.align	16, 0x90
	.type	gs_nulldevice,@function
gs_nulldevice:                          # @gs_nulldevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp124:
	.cfi_def_cfa_offset 48
.Ltmp125:
	.cfi_offset %rbx, -32
.Ltmp126:
	.cfi_offset %r14, -24
.Ltmp127:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	1872(%r14), %rax
	testq	%rax, %rax
	je	.LBB33_2
# BB#1:                                 # %lor.lhs.false
	movq	16(%rax), %rcx
	xorl	%eax, %eax
	cmpq	gs_null_device+16(%rip), %rcx
	je	.LBB33_9
.LBB33_2:                               # %if.then
	movq	8(%r14), %rcx
	leaq	8(%rsp), %rdi
	movl	$gs_null_device, %esi
	xorl	%edx, %edx
	callq	gs_copydevice2
	testl	%eax, %eax
	js	.LBB33_9
# BB#3:                                 # %do.body
	movq	8(%rsp), %rbx
	movq	$0, 56(%rbx)
	movq	8(%r14), %rax
	movq	%rax, 64(%rbx)
	movq	$rc_free_struct_only, 72(%rbx)
	movq	1872(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB33_8
# BB#4:                                 # %if.then.14
	leaq	1104(%rbx), %r15
	movq	%r15, %rsi
	callq	*1680(%rdi)
	testl	%eax, %eax
	js	.LBB33_9
# BB#5:                                 # %do.body.21
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB33_7
# BB#6:                                 # %do.body.24
	incq	200(%rax)
.LBB33_7:                               # %do.end.35
	movq	$gx_default_get_profile, 1680(%rbx)
.LBB33_8:                               # %if.end.38
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_setdevice_no_erase
.LBB33_9:                               # %return
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end33:
	.size	gs_nulldevice, .Lfunc_end33-gs_nulldevice
	.cfi_endproc

	.globl	gx_set_device_only
	.align	16, 0x90
	.type	gx_set_device_only,@function
gx_set_device_only:                     # @gx_set_device_only
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp130:
	.cfi_def_cfa_offset 32
.Ltmp131:
	.cfi_offset %rbx, -24
.Ltmp132:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	1872(%r14), %rsi
	cmpq	%rbx, %rsi
	je	.LBB34_7
# BB#1:                                 # %do.body.1
	testq	%rbx, %rbx
	je	.LBB34_3
# BB#2:                                 # %do.body.3
	incq	56(%rbx)
.LBB34_3:                               # %do.body.7
	testq	%rsi, %rsi
	je	.LBB34_6
# BB#4:                                 # %do.end.13
	decq	56(%rsi)
	jne	.LBB34_6
# BB#5:                                 # %do.end.25
	movq	64(%rsi), %rdi
	movl	$.L.str.9, %edx
	callq	*72(%rsi)
.LBB34_6:                               # %do.end.38
	movq	%rbx, 1872(%r14)
.LBB34_7:                               # %do.end.41
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end34:
	.size	gx_set_device_only, .Lfunc_end34-gx_set_device_only
	.cfi_endproc

	.globl	gx_device_raster_chunky
	.align	16, 0x90
	.type	gx_device_raster_chunky,@function
gx_device_raster_chunky:                # @gx_device_raster_chunky
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	832(%rdi), %rcx
	movzwl	108(%rdi), %eax
	imulq	%rcx, %rax
	testl	%esi, %esi
	je	.LBB35_1
# BB#2:                                 # %if.end
	movl	844(%rdi), %ecx
	cmpl	$3, %ecx
	movl	$3, %edx
	cmovgel	%ecx, %edx
	movb	$3, %sil
	jl	.LBB35_4
# BB#3:                                 # %if.end
	movb	%cl, %sil
.LBB35_4:                               # %if.end
	movl	$8, %edi
	movb	%sil, %cl
	shll	%cl, %edi
	movslq	%edi, %rcx
	leaq	-1(%rax,%rcx), %rax
	addl	$3, %edx
	movb	%dl, %cl
	shrq	%cl, %rax
	movb	%sil, %cl
	shlq	%cl, %rax
	retq
.LBB35_1:                               # %if.then
	addq	$7, %rax
	shrq	$3, %rax
	retq
.Lfunc_end35:
	.size	gx_device_raster_chunky, .Lfunc_end35-gx_device_raster_chunky
	.cfi_endproc

	.globl	gx_device_raster_plane
	.align	16, 0x90
	.type	gx_device_raster_plane,@function
gx_device_raster_plane:                 # @gx_device_raster_plane
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB36_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 8(%rsi)
	js	.LBB36_3
# BB#2:                                 # %cond.true
	movl	(%rsi), %eax
	jmp	.LBB36_6
.LBB36_3:                               # %cond.false
	movzwl	108(%rdi), %eax
	movl	$1, %ecx
	cmpl	$0, 848(%rdi)
	je	.LBB36_5
# BB#4:                                 # %cond.true.3
	movl	100(%rdi), %ecx
.LBB36_5:                               # %cond.end
	xorl	%edx, %edx
	idivl	%ecx
.LBB36_6:                               # %cond.end.6
	movslq	%eax, %rcx
	movslq	832(%rdi), %rax
	imulq	%rcx, %rax
	movl	844(%rdi), %ecx
	cmpl	$3, %ecx
	movl	$3, %esi
	cmovgel	%ecx, %esi
	movb	$3, %dl
	jl	.LBB36_8
# BB#7:                                 # %cond.end.6
	movb	%cl, %dl
.LBB36_8:                               # %cond.end.6
	movl	$8, %edi
	movb	%dl, %cl
	shll	%cl, %edi
	movslq	%edi, %rcx
	leaq	-1(%rax,%rcx), %rax
	addl	$3, %esi
	movb	%sil, %cl
	shrq	%cl, %rax
	movb	%dl, %cl
	shlq	%cl, %rax
	retq
.Lfunc_end36:
	.size	gx_device_raster_plane, .Lfunc_end36-gx_device_raster_plane
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4634766966517661696     # double 72
	.text
	.globl	gx_device_adjust_resolution
	.align	16, 0x90
	.type	gx_device_adjust_resolution,@function
gx_device_adjust_resolution:            # @gx_device_adjust_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	832(%rdi), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	cvtsi2sdl	836(%rdi), %xmm4
	movapd	%xmm1, %xmm3
	divsd	%xmm4, %xmm3
	ucomisd	%xmm2, %xmm3
	seta	%r8b
	ucomisd	%xmm3, %xmm2
	seta	%al
	testl	%ecx, %ecx
	je	.LBB37_2
# BB#1:                                 # %entry
	movb	%r8b, %al
.LBB37_2:                               # %entry
	testb	%al, %al
	jne	.LBB37_4
# BB#3:                                 # %entry
	movapd	%xmm3, %xmm2
.LBB37_4:                               # %entry
	movss	884(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	movss	%xmm3, 884(%rdi)
	movss	888(%rdi), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	mulsd	%xmm2, %xmm4
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 888(%rdi)
	movl	%esi, 832(%rdi)
	movl	%edx, 836(%rdi)
	movl	852(%rdi), %eax
	movsd	.LCPI37_0(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm0
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm3, %xmm0
	mulsd	%xmm4, %xmm1
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm1
	andl	$1, %eax
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	je	.LBB37_6
# BB#5:                                 # %entry
	movaps	%xmm0, %xmm1
.LBB37_6:                               # %entry
	testl	%eax, %eax
	je	.LBB37_8
# BB#7:                                 # %entry
	movaps	%xmm2, %xmm0
.LBB37_8:                               # %entry
	movss	%xmm1, 856(%rdi)
	movss	%xmm0, 860(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end37:
	.size	gx_device_adjust_resolution, .Lfunc_end37-gx_device_adjust_resolution
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI38_0:
	.quad	4634766966517661696     # double 72
	.text
	.globl	gx_device_set_width_height
	.align	16, 0x90
	.type	gx_device_set_width_height,@function
gx_device_set_width_height:             # @gx_device_set_width_height
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 832(%rdi)
	movl	%edx, 836(%rdi)
	movl	852(%rdi), %eax
	cvtsi2sdl	%esi, %xmm0
	movsd	.LCPI38_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	884(%rdi), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm1, %xmm2
	movss	888(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm2
	andl	$1, %eax
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	je	.LBB38_2
# BB#1:                                 # %entry
	movaps	%xmm0, %xmm2
.LBB38_2:                               # %entry
	testl	%eax, %eax
	je	.LBB38_4
# BB#3:                                 # %entry
	movaps	%xmm1, %xmm0
.LBB38_4:                               # %entry
	movss	%xmm2, 856(%rdi)
	movss	%xmm0, 860(%rdi)
	retq
.Lfunc_end38:
	.size	gx_device_set_width_height, .Lfunc_end38-gx_device_set_width_height
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI39_0:
	.long	1116733440              # float 72
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI39_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	gx_device_set_margins
	.align	16, 0x90
	.type	gx_device_set_margins,@function
gx_device_set_margins:                  # @gx_device_set_margins
	.cfi_startproc
# BB#0:                                 # %entry
	movss	.LCPI39_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 908(%rdi)
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 912(%rdi)
	movss	8(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 916(%rdi)
	mulss	12(%rsi), %xmm0
	movss	%xmm0, 920(%rdi)
	testl	%edx, %edx
	je	.LBB39_2
# BB#1:                                 # %if.then
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	892(%rdi), %xmm0
	movaps	.LCPI39_1(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	movss	%xmm0, 900(%rdi)
	movss	12(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	896(%rdi), %xmm0
	xorps	%xmm1, %xmm0
	movss	%xmm0, 904(%rdi)
.LBB39_2:                               # %if.end
	retq
.Lfunc_end39:
	.size	gx_device_set_margins, .Lfunc_end39-gx_device_set_margins
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI40_0:
	.quad	4634766966517661696     # double 72
.LCPI40_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gx_device_set_resolution
	.align	16, 0x90
	.type	gx_device_set_resolution,@function
gx_device_set_resolution:               # @gx_device_set_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 884(%rdi)
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 888(%rdi)
	movl	852(%rdi), %eax
	leaq	856(%rdi), %rcx
	leaq	860(%rdi), %rdx
	andl	$1, %eax
	movq	%rcx, %rsi
	cmovneq	%rdx, %rsi
	movss	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	testb	%al, %al
	cmovneq	%rcx, %rdx
	movss	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LCPI40_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	.LCPI40_1(%rip), %xmm4  # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 832(%rdi)
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	addsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 836(%rdi)
	retq
.Lfunc_end40:
	.size	gx_device_set_resolution, .Lfunc_end40-gx_device_set_resolution
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI41_0:
	.quad	4634766966517661696     # double 72
.LCPI41_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gx_device_set_media_size
	.align	16, 0x90
	.type	gx_device_set_media_size,@function
gx_device_set_media_size:               # @gx_device_set_media_size
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 856(%rdi)
	cvtsd2ss	%xmm1, %xmm2
	movss	%xmm2, 860(%rdi)
	movl	852(%rdi), %eax
	andl	$1, %eax
	movaps	%xmm2, %xmm1
	jne	.LBB41_2
# BB#1:                                 # %entry
	movaps	%xmm0, %xmm1
.LBB41_2:                               # %entry
	cvtss2sd	%xmm1, %xmm1
	testb	%al, %al
	jne	.LBB41_4
# BB#3:                                 # %entry
	movaps	%xmm2, %xmm0
.LBB41_4:                               # %entry
	cvtss2sd	%xmm0, %xmm0
	movss	884(%rdi), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	.LCPI41_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	.LCPI41_1(%rip), %xmm3  # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 832(%rdi)
	movss	888(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 836(%rdi)
	retq
.Lfunc_end41:
	.size	gx_device_set_media_size, .Lfunc_end41-gx_device_set_media_size
	.cfi_endproc

	.globl	gx_device_copy_color_procs
	.align	16, 0x90
	.type	gx_device_copy_color_procs,@function
gx_device_copy_color_procs:             # @gx_device_copy_color_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1264(%rdi), %rdx
	movq	1184(%rdi), %rcx
	movq	1192(%rdi), %r8
	movl	$cmyk_8bit_map_cmyk_color, %eax
	cmpq	%rax, %rdx
	je	.LBB42_3
# BB#1:                                 # %entry
	movl	$gx_forward_map_cmyk_color, %eax
	cmpq	%rax, %rdx
	je	.LBB42_3
# BB#2:                                 # %entry
	movl	$cmyk_1bit_map_cmyk_color, %eax
	cmpq	%rax, %rdx
	jne	.LBB42_4
.LBB42_3:                               # %if.then
	movq	1264(%rsi), %rax
	movl	$cmyk_1bit_map_cmyk_color, %r9d
	movl	$cmyk_8bit_map_cmyk_color, %edx
	cmpq	%rdx, %rax
	movl	$gx_forward_map_cmyk_color, %edx
	cmoveq	%rax, %rdx
	cmpq	%r9, %rax
	cmoveq	%rax, %rdx
	movq	%rdx, 1264(%rdi)
.LBB42_4:                               # %if.end
	movl	$gx_forward_map_rgb_color, %eax
	cmpq	%rax, %rcx
	je	.LBB42_6
# BB#5:                                 # %if.end
	movl	$gx_default_rgb_map_rgb_color, %eax
	cmpq	%rax, %rcx
	jne	.LBB42_9
.LBB42_6:                               # %if.then.16
	movl	$gx_default_rgb_map_rgb_color, %ecx
	cmpq	%rcx, 1184(%rsi)
	je	.LBB42_8
# BB#7:                                 # %select.mid
	movl	$gx_forward_map_rgb_color, %ecx
.LBB42_8:                               # %select.end
	movq	%rcx, 1184(%rdi)
.LBB42_9:                               # %if.end.26
	movl	$cmyk_8bit_map_color_rgb, %eax
	cmpq	%rax, %r8
	je	.LBB42_12
# BB#10:                                # %if.end.26
	movl	$gx_forward_map_color_rgb, %eax
	cmpq	%rax, %r8
	je	.LBB42_12
# BB#11:                                # %if.end.26
	movl	$cmyk_1bit_map_color_rgb, %eax
	cmpq	%rax, %r8
	jne	.LBB42_13
.LBB42_12:                              # %if.then.32
	movq	1192(%rsi), %rax
	movl	$cmyk_1bit_map_color_rgb, %ecx
	movl	$cmyk_8bit_map_color_rgb, %edx
	cmpq	%rdx, %rax
	movl	$gx_forward_map_color_rgb, %edx
	cmoveq	%rax, %rdx
	cmpq	%rcx, %rax
	cmoveq	%rax, %rdx
	movq	%rdx, 1192(%rdi)
.LBB42_13:                              # %if.end.44
	retq
.Lfunc_end42:
	.size	gx_device_copy_color_procs, .Lfunc_end42-gx_device_copy_color_procs
	.cfi_endproc

	.globl	gx_device_copy_params
	.align	16, 0x90
	.type	gx_device_copy_params,@function
gx_device_copy_params:                  # @gx_device_copy_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp135:
	.cfi_def_cfa_offset 32
.Ltmp136:
	.cfi_offset %rbx, -24
.Ltmp137:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	832(%r14), %eax
	movl	%eax, 832(%rbx)
	movl	836(%r14), %eax
	movl	%eax, 836(%rbx)
	leaq	856(%rbx), %rdi
	leaq	856(%r14), %rsi
	movl	$8, %edx
	callq	memcpy
	leaq	864(%rbx), %rdi
	leaq	864(%r14), %rsi
	movl	$16, %edx
	callq	memcpy
	movl	880(%r14), %eax
	movl	%eax, 880(%rbx)
	leaq	884(%rbx), %rdi
	leaq	884(%r14), %rsi
	movl	$8, %edx
	callq	memcpy
	leaq	892(%rbx), %rdi
	leaq	892(%r14), %rsi
	movl	$8, %edx
	callq	memcpy
	leaq	900(%rbx), %rdi
	leaq	900(%r14), %rsi
	movl	$8, %edx
	callq	memcpy
	leaq	908(%rbx), %rdi
	leaq	908(%r14), %rsi
	movl	$16, %edx
	callq	memcpy
	movq	928(%r14), %rax
	movq	%rax, 928(%rbx)
	movl	1052(%r14), %eax
	movl	%eax, 1052(%rbx)
	leaq	96(%rbx), %rdi
	leaq	96(%r14), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movups	816(%r14), %xmm0
	movups	%xmm0, 816(%rbx)
	movq	1264(%rbx), %rdx
	movq	1184(%rbx), %rcx
	movq	1192(%rbx), %rax
	movl	$cmyk_8bit_map_cmyk_color, %esi
	cmpq	%rsi, %rdx
	je	.LBB43_3
# BB#1:                                 # %entry
	movl	$gx_forward_map_cmyk_color, %esi
	cmpq	%rsi, %rdx
	je	.LBB43_3
# BB#2:                                 # %entry
	movl	$cmyk_1bit_map_cmyk_color, %esi
	cmpq	%rsi, %rdx
	jne	.LBB43_4
.LBB43_3:                               # %if.then.i.i
	movq	1264(%r14), %rdx
	movl	$cmyk_1bit_map_cmyk_color, %esi
	movl	$cmyk_8bit_map_cmyk_color, %edi
	cmpq	%rdi, %rdx
	movl	$gx_forward_map_cmyk_color, %edi
	cmoveq	%rdx, %rdi
	cmpq	%rsi, %rdx
	cmoveq	%rdx, %rdi
	movq	%rdi, 1264(%rbx)
.LBB43_4:                               # %if.end.i.i
	movl	$gx_forward_map_rgb_color, %edx
	cmpq	%rdx, %rcx
	je	.LBB43_6
# BB#5:                                 # %if.end.i.i
	movl	$gx_default_rgb_map_rgb_color, %edx
	cmpq	%rdx, %rcx
	jne	.LBB43_9
.LBB43_6:                               # %if.then.16.i.i
	movl	$gx_default_rgb_map_rgb_color, %ecx
	cmpq	%rcx, 1184(%r14)
	je	.LBB43_8
# BB#7:                                 # %select.mid
	movl	$gx_forward_map_rgb_color, %ecx
.LBB43_8:                               # %select.end
	movq	%rcx, 1184(%rbx)
.LBB43_9:                               # %if.end.26.i.i
	movl	$cmyk_8bit_map_color_rgb, %ecx
	cmpq	%rcx, %rax
	je	.LBB43_12
# BB#10:                                # %if.end.26.i.i
	movl	$gx_forward_map_color_rgb, %ecx
	cmpq	%rcx, %rax
	je	.LBB43_12
# BB#11:                                # %if.end.26.i.i
	movl	$cmyk_1bit_map_color_rgb, %ecx
	cmpq	%rcx, %rax
	jne	.LBB43_13
.LBB43_12:                              # %if.then.32.i.i
	movq	1192(%r14), %rax
	movl	$cmyk_1bit_map_color_rgb, %ecx
	movl	$cmyk_8bit_map_color_rgb, %edx
	cmpq	%rdx, %rax
	movl	$gx_forward_map_color_rgb, %edx
	cmoveq	%rax, %rdx
	cmpq	%rcx, %rax
	cmoveq	%rax, %rdx
	movq	%rdx, 1192(%rbx)
.LBB43_13:                              # %gx_device_copy_color_params.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end43:
	.size	gx_device_copy_params, .Lfunc_end43-gx_device_copy_params
	.cfi_endproc

	.globl	gx_parse_output_file_name
	.align	16, 0x90
	.type	gx_parse_output_file_name,@function
gx_parse_output_file_name:              # @gx_parse_output_file_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp141:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp142:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp144:
	.cfi_def_cfa_offset 64
.Ltmp145:
	.cfi_offset %rbx, -56
.Ltmp146:
	.cfi_offset %r12, -48
.Ltmp147:
	.cfi_offset %r13, -40
.Ltmp148:
	.cfi_offset %r14, -32
.Ltmp149:
	.cfi_offset %r15, -24
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movl	%ecx, %r13d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, (%r14)
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movl	$0, 24(%rbx)
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	je	.LBB44_15
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	gs_parse_file_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB44_4
# BB#2:                                 # %if.then.4
	movzbl	(%r12), %eax
	cmpl	$37, %eax
	jne	.LBB44_15
# BB#3:                                 # %if.end.11
	movl	%r13d, 24(%rbx)
	movq	%r12, 16(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_parse_output_format
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB44_15
.LBB44_4:                               # %if.end.16
	cmpq	$0, 8(%rbx)
	jne	.LBB44_12
# BB#5:                                 # %if.then.18
	movq	16(%rbx), %rax
	movb	(%rax), %al
	cmpl	$1, 24(%rbx)
	jne	.LBB44_8
# BB#6:                                 # %if.then.18
	movzbl	%al, %ecx
	cmpl	$45, %ecx
	jne	.LBB44_8
# BB#7:                                 # %if.then.27
	movl	$.L.str.10, %esi
	movl	$7, %edx
	movq	%r15, %rdi
	callq	gs_findiodevice
	movq	%rax, 8(%rbx)
	movq	$0, 16(%rbx)
	jmp	.LBB44_11
.LBB44_8:                               # %if.else
	movzbl	%al, %eax
	cmpl	$124, %eax
	jne	.LBB44_10
# BB#9:                                 # %if.then.36
	movl	$.L.str.11, %esi
	movl	$5, %edx
	movq	%r15, %rdi
	callq	gs_findiodevice
	movq	%rax, 8(%rbx)
	incq	16(%rbx)
	decl	24(%rbx)
	jmp	.LBB44_11
.LBB44_10:                              # %if.else.41
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gs_getiodevice
	movq	%rax, 8(%rbx)
.LBB44_11:                              # %if.end.45
	movl	$-22, %ebp
	testq	%rax, %rax
	je	.LBB44_15
.LBB44_12:                              # %if.end.50
	cmpq	$0, 16(%rbx)
	movl	$0, %ebp
	je	.LBB44_15
# BB#13:                                # %if.end.54
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_parse_output_format
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB44_15
# BB#14:                                # %if.end.59
	movq	8(%rbx), %rax
	movq	(%rax), %rdi
	callq	strlen
	movl	24(%rbx), %ecx
	movslq	%ebp, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	xorl	%eax, %eax
	cmpq	$4095, %rdx             # imm = 0xFFF
	movl	$-22, %ebp
	cmovbel	%eax, %ebp
.LBB44_15:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gx_parse_output_file_name, .Lfunc_end44-gx_parse_output_file_name
	.cfi_endproc

	.align	16, 0x90
	.type	gx_parse_output_format,@function
gx_parse_output_format:                 # @gx_parse_output_format
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp152:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp153:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp154:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp157:
	.cfi_def_cfa_offset 80
.Ltmp158:
	.cfi_offset %rbx, -56
.Ltmp159:
	.cfi_offset %r12, -48
.Ltmp160:
	.cfi_offset %r13, -40
.Ltmp161:
	.cfi_offset %r14, -32
.Ltmp162:
	.cfi_offset %r15, -24
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	$0, 16(%rsp)
	movl	24(%r13), %eax
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB45_27
# BB#1:                                 # %for.body.lr.ph
	movl	$12, 12(%rsp)           # 4-byte Folded Spill
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	movl	$-22, %r12d
	jmp	.LBB45_2
	.align	16, 0x90
.LBB45_6:                               # %if.end
                                        #   in Loop: Header=BB45_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB45_27
# BB#7:                                 # %for.cond.18.outer.preheader
                                        #   in Loop: Header=BB45_2 Depth=1
	movq	%rsi, %r15
	incl	%ebp
	movl	$-1, %r14d
	cmpl	%eax, %ebp
	je	.LBB45_27
	.align	16, 0x90
.LBB45_8:                               # %if.else
                                        #   Parent Loop BB45_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$-1, %r14d
	jne	.LBB45_9
# BB#13:                                # %cond.false
                                        #   in Loop: Header=BB45_8 Depth=2
	movl	%ebp, %ebx
	movq	16(%r13), %rax
	movsbl	(%rax,%rbx), %esi
	movl	$.L.str.18, %edi
	callq	strchr
	movl	$-1, %ecx
	xorl	%r14d, %r14d
	testq	%rax, %rax
	jne	.LBB45_16
	jmp	.LBB45_14
.LBB45_9:                               # %if.else
                                        #   in Loop: Header=BB45_8 Depth=2
	cmpl	$2, %r14d
	jne	.LBB45_10
# BB#12:                                # %if.else.sw.bb.94_crit_edge
                                        #   in Loop: Header=BB45_8 Depth=2
	movl	%ebp, %ebx
.LBB45_19:                              # %sw.bb.94
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	16(%r13), %rax
	movzbl	(%rax,%rbx), %eax
	cmpl	$108, %eax
	jne	.LBB45_22
# BB#20:                                # %sw.bb.94.for.cond.18.outer_crit_edge
                                        #   in Loop: Header=BB45_8 Depth=2
	incl	%ebp
	movl	$3, %r14d
	movl	$24, 12(%rsp)           # 4-byte Folded Spill
	cmpl	24(%r13), %ebp
	jne	.LBB45_8
	jmp	.LBB45_27
.LBB45_10:                              # %if.else
                                        #   in Loop: Header=BB45_8 Depth=2
	cmpl	$3, %r14d
	je	.LBB45_21
# BB#11:                                # %if.else.cond.false.62_crit_edge
                                        #   in Loop: Header=BB45_8 Depth=2
	movl	%ebp, %ebx
	.align	16, 0x90
.LBB45_14:                              # %cond.false.62
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	16(%r13), %rax
	movsbl	(%rax,%rbx), %esi
	movl	$.L.str.19, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB45_17
# BB#15:                                # %if.then.69
                                        #   in Loop: Header=BB45_8 Depth=2
	movslq	%r14d, %rax
	movl	16(%rsp,%rax,4), %ecx
	leal	(%rcx,%rcx,4), %ecx
	movq	16(%r13), %rdx
	movsbl	(%rdx,%rbx), %edx
	leal	-48(%rdx,%rcx,2), %ecx
	movl	%ecx, 16(%rsp,%rax,4)
	movl	%r14d, %ecx
	jmp	.LBB45_16
.LBB45_17:                              # %if.else.79
                                        #   in Loop: Header=BB45_8 Depth=2
	testl	%r14d, %r14d
	jne	.LBB45_19
# BB#18:                                # %land.lhs.true.82
                                        #   in Loop: Header=BB45_8 Depth=2
	movq	16(%r13), %rax
	movzbl	(%rax,%rbx), %eax
	movl	$1, %ecx
	cmpl	$46, %eax
	jne	.LBB45_19
	.align	16, 0x90
.LBB45_16:                              # %for.cond.18.backedge
                                        #   in Loop: Header=BB45_8 Depth=2
	incl	%ebp
	cmpl	24(%r13), %ebp
	movl	%ecx, %r14d
	jne	.LBB45_8
	jmp	.LBB45_27
.LBB45_21:                              # %cond.false.120.loopexit
                                        #   in Loop: Header=BB45_2 Depth=1
	movq	16(%r13), %rax
	movl	%ebp, %ebx
	movb	(%rax,%rbx), %al
.LBB45_22:                              # %cond.false.120
                                        #   in Loop: Header=BB45_2 Depth=1
	movsbl	%al, %esi
	movl	$.L.str.20, %edi
	callq	strchr
	testq	%rax, %rax
	movq	%r15, %rsi
	je	.LBB45_27
# BB#23:                                # %if.then.127
                                        #   in Loop: Header=BB45_2 Depth=1
	addq	16(%r13), %rbx
	movq	%rbx, (%rsi)
	movl	24(%r13), %eax
	movl	$1, %ecx
	jmp	.LBB45_24
	.align	16, 0x90
.LBB45_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_8 Depth 2
	movl	%ebp, %edx
	movq	16(%r13), %rbx
	movzbl	(%rbx,%rdx), %edx
	cmpl	$37, %edx
	jne	.LBB45_24
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB45_2 Depth=1
	leal	1(%rbp), %edx
	cmpl	%eax, %edx
	jae	.LBB45_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_2 Depth=1
	movl	%edx, %edi
	movzbl	(%rbx,%rdi), %edi
	cmpl	$37, %edi
	jne	.LBB45_6
# BB#5:                                 #   in Loop: Header=BB45_2 Depth=1
	movl	%edx, %ebp
	.align	16, 0x90
.LBB45_24:                              # %for.inc
                                        #   in Loop: Header=BB45_2 Depth=1
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB45_2
# BB#25:                                # %for.end.134
	xorl	%r12d, %r12d
	testl	%ecx, %ecx
	je	.LBB45_27
# BB#26:                                # %if.then.136
	movl	16(%rsp), %eax
	movl	20(%rsp), %r12d
	cmpl	%r12d, %eax
	cmovgel	%eax, %r12d
	movl	12(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r12d
	cmovll	%eax, %r12d
	addl	$5, %r12d
.LBB45_27:                              # %cleanup
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gx_parse_output_format, .Lfunc_end45-gx_parse_output_format
	.cfi_endproc

	.globl	gx_outputfile_is_separate_pages
	.align	16, 0x90
	.type	gx_outputfile_is_separate_pages,@function
gx_outputfile_is_separate_pages:        # @gx_outputfile_is_separate_pages
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp166:
	.cfi_def_cfa_offset 64
.Ltmp167:
	.cfi_offset %rbx, -24
.Ltmp168:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	strlen
	leaq	(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	movq	%r14, %r8
	callq	gx_parse_output_file_name
	testl	%eax, %eax
	setns	%al
	cmpq	$0, 32(%rsp)
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end46:
	.size	gx_outputfile_is_separate_pages, .Lfunc_end46-gx_outputfile_is_separate_pages
	.cfi_endproc

	.globl	gx_device_delete_output_file
	.align	16, 0x90
	.type	gx_device_delete_output_file,@function
gx_device_delete_output_file:           # @gx_device_delete_output_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp170:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp171:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp173:
	.cfi_def_cfa_offset 80
.Ltmp174:
	.cfi_offset %rbx, -40
.Ltmp175:
	.cfi_offset %r14, -32
.Ltmp176:
	.cfi_offset %r15, -24
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	24(%r14), %rdi
	movl	$4096, %esi             # imm = 0x1000
	movl	$.L.str.12, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB47_30
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	strlen
	movq	24(%r14), %r8
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rsi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB47_29
# BB#2:                                 # %if.end.8
	movq	16(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB47_13
# BB#3:                                 # %land.lhs.true.9
	movl	$.L.str.13, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB47_11
# BB#4:                                 # %cond.true
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB47_12
# BB#5:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB47_12
# BB#6:                                 # %if.then.23
	movzbl	1(%rdi), %eax
	addl	$-115, %eax
	cmpq	$2, %rcx
	jb	.LBB47_12
# BB#7:                                 # %if.then.23
	testl	%eax, %eax
	jne	.LBB47_12
# BB#8:                                 # %if.then.33
	movzbl	2(%rdi), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB47_12
# BB#9:                                 # %if.then.33
	testl	%eax, %eax
	jne	.LBB47_12
# BB#10:                                # %if.then.43
	movzbl	3(%rdi), %eax
	addl	$-100, %eax
	jmp	.LBB47_12
.LBB47_11:                              # %cond.false
	movl	$.L.str.13, %esi
	callq	strcmp
.LBB47_12:                              # %cond.end
	testl	%eax, %eax
	je	.LBB47_29
.LBB47_13:                              # %if.end.57
	movq	(%rsp), %rax
	testq	%rax, %rax
	je	.LBB47_22
# BB#14:                                # %if.then.59
	movq	928(%r14), %rdx
	incq	%rdx
	movzbl	(%rax), %ecx
	cmpl	$108, %ecx
	setne	%bl
	cmpl	$37, %ecx
	je	.LBB47_20
# BB#15:                                # %if.then.59
	testb	%bl, %bl
	je	.LBB47_20
	.align	16, 0x90
.LBB47_16:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %ecx
	decq	%rax
	cmpl	$108, %ecx
	setne	%bl
	cmpl	$37, %ecx
	je	.LBB47_18
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB47_16 Depth=1
	testb	%bl, %bl
	jne	.LBB47_16
.LBB47_18:                              # %while.cond.while.end_crit_edge
	movzbl	%cl, %ecx
	cmpl	$108, %ecx
	movq	%rax, (%rsp)
	movq	24(%rsp), %rsi
	je	.LBB47_21
	jmp	.LBB47_19
.LBB47_22:                              # %if.else.77
	cmpl	$0, 32(%rsp)
	je	.LBB47_31
# BB#23:                                # %cond.false.84
	movq	24(%rsp), %rdi
	movl	$37, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB47_31
# BB#24:                                # %if.then.88
	movq	24(%rsp), %rsi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	jmp	.LBB47_25
.LBB47_20:                              # %while.end
	movq	24(%rsp), %rsi
	movzbl	%cl, %eax
	cmpl	$108, %eax
	jne	.LBB47_19
.LBB47_21:                              # %if.then.70
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	jmp	.LBB47_25
.LBB47_19:                              # %if.else
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
.LBB47_25:                              # %if.end.94
	cmpb	$0, (%r15)
	je	.LBB47_27
# BB#26:                                # %if.then.97
	movq	%r15, 24(%rsp)
	movq	%r15, %rdi
	callq	strlen
	movl	%eax, 32(%rsp)
	jmp	.LBB47_27
.LBB47_31:                              # %if.end.94.thread
	movb	$0, (%r15)
.LBB47_27:                              # %if.end.103
	movq	16(%rsp), %rax
	movl	$-9, %ebp
	testq	%rax, %rax
	je	.LBB47_29
# BB#28:                                # %if.then.106
	leaq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	callq	*56(%rax)
	movl	%eax, %ebp
.LBB47_29:                              # %if.then.116
	movq	24(%r14), %rdi
	movl	$.L.str.12, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB47_30:                              # %if.end.120
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gx_device_delete_output_file, .Lfunc_end47-gx_device_delete_output_file
	.cfi_endproc

	.globl	gx_device_open_output_file
	.align	16, 0x90
	.type	gx_device_open_output_file,@function
gx_device_open_output_file:             # @gx_device_open_output_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp179:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp180:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp181:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp182:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp183:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp184:
	.cfi_def_cfa_offset 112
.Ltmp185:
	.cfi_offset %rbx, -56
.Ltmp186:
	.cfi_offset %r12, -48
.Ltmp187:
	.cfi_offset %r13, -40
.Ltmp188:
	.cfi_offset %r14, -32
.Ltmp189:
	.cfi_offset %r15, -24
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	24(%r13), %rdi
	movl	$4096, %esi             # imm = 0x1000
	movl	$.L.str.14, %edx
	callq	*64(%rdi)
	movq	%rax, %r14
	movl	$-25, %r12d
	testq	%r14, %r14
	je	.LBB48_57
# BB#1:                                 # %if.end
	movq	%r15, %rdi
	callq	strlen
	movq	24(%r13), %r8
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	%r15, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB48_56
# BB#2:                                 # %if.end.8
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movq	32(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB48_26
# BB#3:                                 # %land.lhs.true.9
	movl	$.L.str.13, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	(%rbp), %rdi
	cmpq	$3, %rcx
	ja	.LBB48_11
# BB#4:                                 # %cond.true
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB48_12
# BB#5:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB48_12
# BB#6:                                 # %if.then.23
	movzbl	1(%rdi), %eax
	addl	$-115, %eax
	cmpq	$2, %rcx
	jb	.LBB48_12
# BB#7:                                 # %if.then.23
	testl	%eax, %eax
	jne	.LBB48_12
# BB#8:                                 # %if.then.33
	movzbl	2(%rdi), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB48_12
# BB#9:                                 # %if.then.33
	testl	%eax, %eax
	jne	.LBB48_12
# BB#10:                                # %if.then.43
	movzbl	3(%rdi), %eax
	addl	$-100, %eax
	jmp	.LBB48_12
.LBB48_11:                              # %cond.false
	movl	$.L.str.13, %esi
	callq	strcmp
.LBB48_12:                              # %cond.end
	testl	%eax, %eax
	je	.LBB48_13
# BB#15:                                # %if.else
	movq	32(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB48_26
# BB#16:                                # %land.lhs.true.71
	movl	$.L.str.15, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	(%rbp), %rdi
	cmpq	$3, %rcx
	ja	.LBB48_24
# BB#17:                                # %cond.true.75
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB48_25
# BB#18:                                # %cond.true.75
	testl	%eax, %eax
	jne	.LBB48_25
# BB#19:                                # %if.then.91
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB48_25
# BB#20:                                # %if.then.91
	testl	%eax, %eax
	jne	.LBB48_25
# BB#21:                                # %if.then.101
	movzbl	2(%rdi), %eax
	addl	$-105, %eax
	cmpq	$3, %rcx
	jb	.LBB48_25
# BB#22:                                # %if.then.101
	testl	%eax, %eax
	jne	.LBB48_25
# BB#23:                                # %if.then.111
	movzbl	3(%rdi), %eax
	addl	$-112, %eax
	jmp	.LBB48_25
.LBB48_13:                              # %if.then.56
	movl	$-22, %r12d
	cmpq	$0, 40(%rsp)
	jne	.LBB48_56
# BB#14:                                # %if.end.60
	movq	24(%r13), %rax
	movq	192(%rax), %rax
	movq	16(%rax), %rdi
	movq	%rdi, (%rbx)
	movl	$1, %esi
	callq	gp_setmode_binary
	movl	%eax, %r12d
	jmp	.LBB48_56
.LBB48_24:                              # %cond.false.120
	movl	$.L.str.15, %esi
	callq	strcmp
.LBB48_25:                              # %cond.end.124
	testl	%eax, %eax
	movl	8(%rsp), %ecx           # 4-byte Reload
	cmovel	%eax, %ecx
	movl	%ecx, 8(%rsp)           # 4-byte Spill
.LBB48_26:                              # %if.end.129
	movq	16(%rsp), %rax
	testq	%rax, %rax
	je	.LBB48_35
# BB#27:                                # %if.then.131
	movq	%rbx, %rdi
	movq	928(%r13), %rdx
	incq	%rdx
	movzbl	(%rax), %ecx
	cmpl	$108, %ecx
	setne	%bl
	cmpl	$37, %ecx
	je	.LBB48_32
# BB#28:                                # %if.then.131
	testb	%bl, %bl
	je	.LBB48_32
	.align	16, 0x90
.LBB48_29:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rax), %ecx
	decq	%rax
	cmpl	$108, %ecx
	setne	%bl
	cmpl	$37, %ecx
	je	.LBB48_31
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB48_29 Depth=1
	testb	%bl, %bl
	jne	.LBB48_29
.LBB48_31:                              # %while.cond.while.end_crit_edge
	movq	%r15, %rbp
	movzbl	%cl, %ecx
	cmpl	$108, %ecx
	movq	%rax, 16(%rsp)
	movq	40(%rsp), %rsi
	jmp	.LBB48_33
.LBB48_35:                              # %if.else.150
	cmpl	$0, 48(%rsp)
	je	.LBB48_38
# BB#36:                                # %cond.false.157
	movq	40(%rsp), %rdi
	movl	$37, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB48_38
# BB#37:                                # %if.then.161
	movq	%r15, %rbp
	movq	40(%rsp), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	jmp	.LBB48_40
.LBB48_32:                              # %while.end
	movq	%r15, %rbp
	movq	40(%rsp), %rsi
	movzbl	%cl, %eax
	cmpl	$108, %eax
.LBB48_33:                              # %while.end
	movq	%rdi, %rbx
	jne	.LBB48_39
# BB#34:                                # %if.then.142
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	jmp	.LBB48_40
.LBB48_39:                              # %if.else.145
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
.LBB48_40:                              # %if.end.167
	cmpb	$0, (%r14)
	je	.LBB48_42
# BB#41:                                # %if.then.170
	movq	%r14, 40(%rsp)
	movq	%r14, %rdi
	callq	strlen
	movl	%eax, 48(%rsp)
	jmp	.LBB48_42
.LBB48_38:                              # %if.end.167.thread
	movq	%r15, %rbp
	movb	$0, (%r14)
.LBB48_42:                              # %if.end.176
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	jne	.LBB48_45
# BB#43:                                # %lor.lhs.false
	movq	32(%rsp), %r15
	testq	%r15, %r15
	je	.LBB48_50
# BB#44:                                # %land.lhs.true.180
	movq	24(%r13), %rdi
	xorl	%esi, %esi
	callq	gs_getiodevice
	cmpq	%rax, %r15
	je	.LBB48_50
.LBB48_45:                              # %if.then.186
	movl	$-22, %r12d
	cmpq	$0, 40(%rsp)
	je	.LBB48_56
# BB#46:                                # %if.end.191
	leaq	12(%rsp), %rdi
	movl	$gp_fmode_wb, %esi
	callq	strcpy
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	je	.LBB48_48
# BB#47:                                # %if.then.194
	leaq	12(%rsp), %rdi
	movl	$.L.str.16, %esi
	callq	strcat
.LBB48_48:                              # %if.end.197
	movq	32(%rsp), %rdi
	movq	40(%rsp), %rsi
	xorl	%r12d, %r12d
	leaq	12(%rsp), %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	callq	*40(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB48_56
# BB#49:                                # %if.then.205
	movq	24(%r13), %r15
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movq	40(%rsp), %rdx
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	%ebp, %r12d
	jmp	.LBB48_56
.LBB48_50:                              # %if.else.213
	movq	24(%r13), %rdi
	cmpb	$0, (%r14)
	movq	%r14, %rsi
	movq	%rbp, %r15
	jne	.LBB48_52
# BB#51:                                # %select.mid
	movq	%r15, %rsi
.LBB48_52:                              # %select.end
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	gp_open_printer
	movq	%rax, (%rbx)
	testq	%rax, %rax
	jne	.LBB48_56
# BB#53:                                # %if.then.224
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	cmpb	$0, (%r14)
	movq	%r14, %rdx
	jne	.LBB48_55
# BB#54:                                # %select.mid118
	movq	%r15, %rdx
.LBB48_55:                              # %select.end117
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-9, %r12d
.LBB48_56:                              # %if.then.241
	movq	24(%r13), %rdi
	movl	$.L.str.14, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB48_57:                              # %cleanup.246
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gx_device_open_output_file, .Lfunc_end48-gx_device_open_output_file
	.cfi_endproc

	.globl	gx_device_close_output_file
	.align	16, 0x90
	.type	gx_device_close_output_file,@function
gx_device_close_output_file:            # @gx_device_close_output_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp191:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp192:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp193:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp194:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp195:
	.cfi_def_cfa_offset 80
.Ltmp196:
	.cfi_offset %rbx, -40
.Ltmp197:
	.cfi_offset %r12, -32
.Ltmp198:
	.cfi_offset %r14, -24
.Ltmp199:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	%r12, %rdi
	callq	strlen
	movq	24(%r15), %r8
	leaq	8(%rsp), %rdi
	leaq	(%rsp), %rsi
	movq	%r12, %rdx
	movl	%eax, %ecx
	callq	gx_parse_output_file_name
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB49_15
# BB#1:                                 # %if.end
	movq	16(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB49_14
# BB#2:                                 # %land.lhs.true
	movl	$.L.str.13, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB49_10
# BB#3:                                 # %cond.true
	movzbl	(%rdi), %eax
	addl	$-37, %eax
	testq	%rcx, %rcx
	je	.LBB49_11
# BB#4:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB49_11
# BB#5:                                 # %if.then.17
	movzbl	1(%rdi), %eax
	addl	$-115, %eax
	cmpq	$2, %rcx
	jb	.LBB49_11
# BB#6:                                 # %if.then.17
	testl	%eax, %eax
	jne	.LBB49_11
# BB#7:                                 # %if.then.27
	movzbl	2(%rdi), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB49_11
# BB#8:                                 # %if.then.27
	testl	%eax, %eax
	jne	.LBB49_11
# BB#9:                                 # %if.then.37
	movzbl	3(%rdi), %eax
	addl	$-100, %eax
	jmp	.LBB49_11
.LBB49_10:                              # %cond.false
	movl	$.L.str.13, %esi
	callq	strcmp
.LBB49_11:                              # %cond.end
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB49_15
# BB#12:                                # %if.end.51
	movq	16(%rsp), %rbx
	movq	24(%r15), %rdi
	xorl	%esi, %esi
	callq	gs_getiodevice
	cmpq	%rax, %rbx
	je	.LBB49_14
# BB#13:                                # %if.then.57
	movq	16(%rsp), %rdi
	movq	%r14, %rsi
	callq	*48(%rdi)
	movl	%eax, %ecx
	jmp	.LBB49_15
.LBB49_14:                              # %if.end.62
	movq	24(%r15), %rdi
	movq	24(%rsp), %rax
	testq	%rax, %rax
	cmovneq	%rax, %r12
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	gp_close_printer
	xorl	%ecx, %ecx
.LBB49_15:                              # %cleanup
	movl	%ecx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end49:
	.size	gx_device_close_output_file, .Lfunc_end49-gx_device_close_output_file
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_finalize(icc_profile)"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gx_device_finalize"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gx_device"
	.size	.L.str.2, 10

	.type	st_device,@object       # @st_device
	.section	.rodata,"a",@progbits
	.globl	st_device
	.align	8
st_device:
	.long	1728                    # 0x6c0
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gx_device_forward"
	.size	.L.str.3, 18

	.type	st_device_forward,@object # @st_device_forward
	.section	.rodata,"a",@progbits
	.globl	st_device_forward
	.align	8
st_device_forward:
	.long	1736                    # 0x6c8
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	device_forward_enum_ptrs
	.quad	device_forward_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_forward, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gx_device_null"
	.size	.L.str.4, 15

	.type	st_device_null,@object  # @st_device_null
	.section	.rodata,"a",@progbits
	.globl	st_device_null
	.align	8
st_device_null:
	.long	1736                    # 0x6c8
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	device_forward_enum_ptrs
	.quad	device_forward_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_null, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"gs_copydevice(stype)"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs_copydevice(device)"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gs_setdevice_no_init"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gx_device_retain"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gx_set_device_only"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%stdout"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%pipe"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gx_device_delete_output_file(pfname)"
	.size	.L.str.12, 37

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%stdout%"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gx_device_open_output_file(pfname)"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%pipe%"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"+"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"**** Could not open the file %s .\n"
	.size	.L.str.17, 35

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" #+-"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"0123456789"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"diuoxX"
	.size	.L.str.20, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
