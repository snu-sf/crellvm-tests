	.text
	.file	"gscolor.bc"
	.align	16, 0x90
	.type	transfer_map_enum_ptrs,@function
transfer_map_enum_ptrs:                 # @transfer_map_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB0_4
# BB#1:                                 # %sw.bb
	xorl	%eax, %eax
	cmpq	$0, 24(%rsi)
	jne	.LBB0_3
# BB#2:                                 # %cond.true
	movq	40(%rsi), %rax
.LBB0_3:                                # %cond.end
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB0_4:                                # %cleanup
	retq
.Lfunc_end0:
	.size	transfer_map_enum_ptrs, .Lfunc_end0-transfer_map_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	transfer_map_reloc_ptrs,@function
transfer_map_reloc_ptrs:                # @transfer_map_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpq	$0, 24(%rbx)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%rcx), %rax
	movq	40(%rbx), %rdi
	movq	%rcx, %rsi
	callq	*(%rax)
	movq	%rax, 40(%rbx)
.LBB1_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end1:
	.size	transfer_map_reloc_ptrs, .Lfunc_end1-transfer_map_reloc_ptrs
	.cfi_endproc

	.globl	gx_init_paint_1
	.align	16, 0x90
	.type	gx_init_paint_1,@function
gx_init_paint_1:                        # @gx_init_paint_1
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 8(%rdi)
	retq
.Lfunc_end2:
	.size	gx_init_paint_1, .Lfunc_end2-gx_init_paint_1
	.cfi_endproc

	.globl	gx_init_paint_3
	.align	16, 0x90
	.type	gx_init_paint_3,@function
gx_init_paint_3:                        # @gx_init_paint_3
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 16(%rdi)
	movl	$0, 12(%rdi)
	movl	$0, 8(%rdi)
	retq
.Lfunc_end3:
	.size	gx_init_paint_3, .Lfunc_end3-gx_init_paint_3
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.globl	gx_init_paint_4
	.align	16, 0x90
	.type	gx_init_paint_4,@function
gx_init_paint_4:                        # @gx_init_paint_4
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [0.000000e+00,0.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, 8(%rdi)
	retq
.Lfunc_end4:
	.size	gx_init_paint_4, .Lfunc_end4-gx_init_paint_4
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_restrict01_paint_1
	.align	16, 0x90
	.type	gx_restrict01_paint_1,@function
gx_restrict01_paint_1:                  # @gx_restrict01_paint_1
	.cfi_startproc
# BB#0:                                 # %entry
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB5_3
# BB#1:                                 # %cond.false
	movss	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jae	.LBB5_3
# BB#2:                                 # %cond.false.9
	movaps	%xmm0, %xmm1
.LBB5_3:                                # %cond.end.14
	movss	%xmm1, 8(%rdi)
	retq
.Lfunc_end5:
	.size	gx_restrict01_paint_1, .Lfunc_end5-gx_restrict01_paint_1
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_restrict01_paint_3
	.align	16, 0x90
	.type	gx_restrict01_paint_3,@function
gx_restrict01_paint_3:                  # @gx_restrict01_paint_3
	.cfi_startproc
# BB#0:                                 # %entry
	movss	16(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	jae	.LBB6_3
# BB#1:                                 # %cond.false
	movss	.LCPI6_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jae	.LBB6_3
# BB#2:                                 # %cond.false.9
	movaps	%xmm1, %xmm2
.LBB6_3:                                # %cond.end.14
	movss	%xmm2, 16(%rdi)
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jae	.LBB6_6
# BB#4:                                 # %cond.false.27
	movss	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB6_6
# BB#5:                                 # %cond.false.35
	movaps	%xmm1, %xmm0
.LBB6_6:                                # %cond.end.42
	movss	%xmm0, 12(%rdi)
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB6_9
# BB#7:                                 # %cond.false.55
	movss	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jae	.LBB6_9
# BB#8:                                 # %cond.false.63
	movaps	%xmm0, %xmm1
.LBB6_9:                                # %cond.end.70
	movss	%xmm1, 8(%rdi)
	retq
.Lfunc_end6:
	.size	gx_restrict01_paint_3, .Lfunc_end6-gx_restrict01_paint_3
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1065353216              # float 1
	.text
	.globl	gx_restrict01_paint_4
	.align	16, 0x90
	.type	gx_restrict01_paint_4,@function
gx_restrict01_paint_4:                  # @gx_restrict01_paint_4
	.cfi_startproc
# BB#0:                                 # %entry
	movss	20(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	jae	.LBB7_3
# BB#1:                                 # %cond.false
	movss	.LCPI7_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jae	.LBB7_3
# BB#2:                                 # %cond.false.9
	movaps	%xmm1, %xmm2
.LBB7_3:                                # %cond.end.14
	movss	%xmm2, 20(%rdi)
	movss	16(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jae	.LBB7_6
# BB#4:                                 # %cond.false.i
	movss	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB7_6
# BB#5:                                 # %cond.false.9.i
	movaps	%xmm1, %xmm0
.LBB7_6:                                # %cond.end.14.i
	movss	%xmm0, 16(%rdi)
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	jae	.LBB7_9
# BB#7:                                 # %cond.false.27.i
	movss	.LCPI7_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jae	.LBB7_9
# BB#8:                                 # %cond.false.35.i
	movaps	%xmm1, %xmm2
.LBB7_9:                                # %cond.end.42.i
	movss	%xmm2, 12(%rdi)
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jae	.LBB7_12
# BB#10:                                # %cond.false.55.i
	movss	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB7_12
# BB#11:                                # %cond.false.63.i
	movaps	%xmm1, %xmm0
.LBB7_12:                               # %gx_restrict01_paint_3.exit
	movss	%xmm0, 8(%rdi)
	retq
.Lfunc_end7:
	.size	gx_restrict01_paint_4, .Lfunc_end7-gx_restrict01_paint_4
	.cfi_endproc

	.globl	gx_no_adjust_color_count
	.align	16, 0x90
	.type	gx_no_adjust_color_count,@function
gx_no_adjust_color_count:               # @gx_no_adjust_color_count
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end8:
	.size	gx_no_adjust_color_count, .Lfunc_end8-gx_no_adjust_color_count
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_1:
	.long	1065353216              # float 1
	.text
	.globl	gs_setgray
	.align	16, 0x90
	.type	gs_setgray,@function
gs_setgray:                             # @gs_setgray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 48
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB9_8
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_7
# BB#2:                                 # %if.then.3
	movq	1744(%rbx), %rsi
	movq	1752(%rbx), %r15
	movq	(%rsi), %rax
	movl	$-1, %edx
	movq	%r15, %rdi
	callq	*104(%rax)
	xorpd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movapd	%xmm2, %xmm1
	jae	.LBB9_6
# BB#3:                                 # %cond.false
	ucomisd	.LCPI9_0(%rip), %xmm1
	jae	.LBB9_4
# BB#5:                                 # %cond.false
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	jmp	.LBB9_6
.LBB9_4:
	movss	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB9_6:                                # %cond.end.16
	movss	%xmm0, 8(%r15)
	movq	$0, (%r15)
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB9_7:                                # %if.end.22
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	rc_decrement_cs
.LBB9_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gs_setgray, .Lfunc_end9-gs_setgray
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_1:
	.long	1065353216              # float 1
	.text
	.globl	gs_setrgbcolor
	.align	16, 0x90
	.type	gs_setrgbcolor,@function
gs_setrgbcolor:                         # @gs_setrgbcolor
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
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 64
.Ltmp16:
	.cfi_offset %rbx, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	callq	gs_cspace_new_DeviceRGB
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB10_16
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_15
# BB#2:                                 # %if.then.3
	movq	1744(%rbx), %rsi
	movq	1752(%rbx), %r15
	movq	(%rsi), %rax
	movl	$-1, %edx
	movq	%r15, %rdi
	callq	*104(%rax)
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movsd	(%rsp), %xmm3           # 8-byte Reload
                                        # xmm3 = mem[0],zero
	ucomisd	%xmm3, %xmm1
	xorpd	%xmm2, %xmm2
	jae	.LBB10_6
# BB#3:                                 # %cond.false
	ucomisd	.LCPI10_0(%rip), %xmm3
	jae	.LBB10_4
# BB#5:                                 # %cond.false
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm3, %xmm2
	jmp	.LBB10_6
.LBB10_4:
	movss	.LCPI10_1(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
.LBB10_6:                               # %cond.end.16
	movss	%xmm2, 8(%r15)
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movapd	%xmm2, %xmm1
	jae	.LBB10_10
# BB#7:                                 # %cond.false.22
	ucomisd	.LCPI10_0(%rip), %xmm1
	jae	.LBB10_8
# BB#9:                                 # %cond.false.22
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	jmp	.LBB10_10
.LBB10_8:
	movss	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB10_10:                              # %cond.end.29
	movss	%xmm0, 12(%r15)
	xorps	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	jae	.LBB10_14
# BB#11:                                # %cond.false.38
	ucomisd	.LCPI10_0(%rip), %xmm2
	jae	.LBB10_12
# BB#13:                                # %cond.false.38
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	jmp	.LBB10_14
.LBB10_12:
	movss	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB10_14:                              # %cond.end.45
	movss	%xmm0, 16(%r15)
	movq	$0, (%r15)
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB10_15:                              # %if.end.54
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	rc_decrement_cs
.LBB10_16:                              # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_setrgbcolor, .Lfunc_end10-gs_setrgbcolor
	.cfi_endproc

	.globl	gs_setnullcolor
	.align	16, 0x90
	.type	gs_setnullcolor,@function
gs_setnullcolor:                        # @gs_setnullcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	$-21, %eax
	cmpl	$0, 1848(%rbx)
	jne	.LBB11_6
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB11_5
# BB#2:                                 # %if.end.i
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_setcolorspace
	testl	%eax, %eax
	js	.LBB11_4
# BB#3:                                 # %if.then.3.i
	movq	1744(%rbx), %rsi
	movq	1752(%rbx), %r15
	movq	(%rsi), %rax
	movl	$-1, %edx
	movq	%r15, %rdi
	callq	*104(%rax)
	movl	$0, 8(%r15)
	movq	$0, (%r15)
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB11_4:                               # %if.end.22.i
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	rc_decrement_cs
.LBB11_5:                               # %gs_setgray.exit
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_null, (%rax)
	xorl	%eax, %eax
.LBB11_6:                               # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	gs_setnullcolor, .Lfunc_end11-gs_setnullcolor
	.cfi_endproc

	.globl	gs_settransfer
	.align	16, 0x90
	.type	gs_settransfer,@function
gs_settransfer:                         # @gs_settransfer
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %edx
	jmp	gs_settransfer_remap    # TAILCALL
.Lfunc_end12:
	.size	gs_settransfer, .Lfunc_end12-gs_settransfer
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI13_0:
	.long	1132396544              # float 255
.LCPI13_1:
	.long	1065353216              # float 1
.LCPI13_4:
	.long	0                       # float 0
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_2:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI13_3:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gs_settransfer_remap
	.align	16, 0x90
	.type	gs_settransfer_remap,@function
gs_settransfer_remap:                   # @gs_settransfer_remap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -48
.Ltmp32:
	.cfi_offset %r12, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	440(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB13_3
# BB#1:                                 # %do.end
	decq	(%rsi)
	jne	.LBB13_3
# BB#2:                                 # %do.end.14
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, 440(%r15)
.LBB13_3:                               # %do.body.29
	movq	456(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB13_6
# BB#4:                                 # %do.end.35
	decq	(%rsi)
	jne	.LBB13_6
# BB#5:                                 # %do.end.50
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, 456(%r15)
.LBB13_6:                               # %do.body.69
	movq	472(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB13_9
# BB#7:                                 # %do.end.75
	decq	(%rsi)
	jne	.LBB13_9
# BB#8:                                 # %do.end.90
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, 472(%r15)
.LBB13_9:                               # %do.body.109
	movq	488(%r15), %rax
	testq	%rax, %rax
	je	.LBB13_12
# BB#10:                                # %lor.lhs.false
	cmpq	$1, (%rax)
	jg	.LBB13_12
# BB#11:                                # %lor.lhs.false.114
	movq	8(%rax), %rdi
	cmpq	8(%r15), %rdi
	je	.LBB13_16
.LBB13_12:                              # %if.then.120
	movq	8(%r15), %rdi
	movl	$st_transfer_map, %esi
	movl	$.L.str.4, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	je	.LBB13_27
# BB#13:                                # %do.body.127
	movq	$1, (%rax)
	movq	8(%r15), %rdi
	movq	%rdi, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	movq	488(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB13_15
# BB#14:                                # %do.end.149
	decq	(%rcx)
.LBB13_15:                              # %cleanup.thread
	movq	%rax, 488(%r15)
.LBB13_16:                              # %do.end.160
	movq	%rbp, 24(%rax)
	movl	$1, %esi
	callq	gs_next_ids
	movq	488(%r15), %rbp
	movq	%rax, 48(%rbp)
	movq	$0, 440(%r15)
	movq	$0, 456(%r15)
	movq	$0, 472(%r15)
	testl	%r14d, %r14d
	je	.LBB13_26
# BB#17:                                # %if.then.169
	movl	$transfer_use_proc, %r14d
	xorl	%r12d, %r12d
	cmpq	$0, 24(%rbp)
	jne	.LBB13_19
# BB#18:                                # %if.then.i
	movq	32(%rbp), %r14
	movq	40(%rbp), %r12
.LBB13_19:                              # %if.end.i
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB13_20:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	divss	.LCPI13_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*%r14
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB13_22
# BB#21:                                #   in Loop: Header=BB13_20 Depth=1
	xorl	%eax, %eax
	jmp	.LBB13_24
	.align	16, 0x90
.LBB13_22:                              # %cond.false.i
                                        #   in Loop: Header=BB13_20 Depth=1
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI13_1(%rip), %xmm0
	jae	.LBB13_24
# BB#23:                                # %cond.false.18.i
                                        #   in Loop: Header=BB13_20 Depth=1
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI13_2(%rip), %xmm0
	mulsd	.LCPI13_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB13_24:                              # %cond.end.24.i
                                        #   in Loop: Header=BB13_20 Depth=1
	movw	%ax, 56(%rbp,%rbx,2)
	incq	%rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB13_20
# BB#25:                                # %load_transfer_map.exit
	movq	%r15, %rdi
	callq	gx_set_effective_transfer
	movq	1760(%r15), %rax
	movq	$gx_dc_type_data_none, (%rax)
	xorl	%eax, %eax
	jmp	.LBB13_35
.LBB13_27:                              # %do.body.173
	movq	440(%r15), %rax
	testq	%rax, %rax
	je	.LBB13_29
# BB#28:                                # %do.body.177
	incq	(%rax)
.LBB13_29:                              # %do.body.189
	movq	456(%r15), %rax
	testq	%rax, %rax
	je	.LBB13_31
# BB#30:                                # %do.body.193
	incq	(%rax)
.LBB13_31:                              # %do.body.206
	movq	472(%r15), %rax
	testq	%rax, %rax
	je	.LBB13_33
# BB#32:                                # %do.body.210
	incq	(%rax)
.LBB13_33:                              # %do.body.223
	movq	488(%r15), %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB13_35
# BB#34:                                # %do.body.227
	incq	(%rcx)
	jmp	.LBB13_35
.LBB13_26:                              # %if.else.171
	movq	%r15, %rdi
	callq	gx_set_effective_transfer
	xorl	%eax, %eax
.LBB13_35:                              # %cleanup.240
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gs_settransfer_remap, .Lfunc_end13-gs_settransfer_remap
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI14_1:
	.quad	4674734214187319296     # double 32760
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI14_2:
	.long	1132396544              # float 255
.LCPI14_3:
	.long	1065353216              # float 1
	.text
	.globl	load_transfer_map
	.align	16, 0x90
	.type	load_transfer_map,@function
load_transfer_map:                      # @load_transfer_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 64
.Ltmp42:
	.cfi_offset %rbx, -48
.Ltmp43:
	.cfi_offset %r12, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	mulsd	.LCPI14_1(%rip), %xmm1
	cvttsd2si	%xmm1, %r15d
	movl	$transfer_use_proc, %r12d
	xorl	%r14d, %r14d
	cmpq	$0, 24(%rbx)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	32(%rbx), %r12
	movq	40(%rbx), %r14
.LBB14_2:                               # %if.end
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB14_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	divss	.LCPI14_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%r12
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movw	%r15w, %ax
	ja	.LBB14_6
# BB#4:                                 # %cond.false
                                        #   in Loop: Header=BB14_3 Depth=1
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI14_3(%rip), %xmm0
	jae	.LBB14_6
# BB#5:                                 # %cond.false.18
                                        #   in Loop: Header=BB14_3 Depth=1
	addsd	.LCPI14_0(%rip), %xmm1
	mulsd	.LCPI14_1(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
.LBB14_6:                               # %cond.end.24
                                        #   in Loop: Header=BB14_3 Depth=1
	movw	%ax, 56(%rbx,%rbp,2)
	incq	%rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB14_3
# BB#7:                                 # %for.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	load_transfer_map, .Lfunc_end14-load_transfer_map
	.cfi_endproc

	.globl	gs_currenttransfer
	.align	16, 0x90
	.type	gs_currenttransfer,@function
gs_currenttransfer:                     # @gs_currenttransfer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	488(%rdi), %rax
	movq	24(%rax), %rax
	retq
.Lfunc_end15:
	.size	gs_currenttransfer, .Lfunc_end15-gs_currenttransfer
	.cfi_endproc

	.globl	gx_set_device_color_1
	.align	16, 0x90
	.type	gx_set_device_color_1,@function
gx_set_device_color_1:                  # @gx_set_device_color_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %rbx, -24
.Ltmp51:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gs_setoverprint
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_setoverprintmode
	movq	8(%rbx), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB16_4
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_setcolorspace
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	rc_decrement_only_cs
	movq	1760(%rbx), %rax
	movq	$1, 8(%rax)
	movq	$gx_dc_type_data_pure, (%rax)
	movl	$0, 360(%rax)
	movl	$252, 212(%rbx)
	cmpl	$1, 280(%rbx)
	jne	.LBB16_3
# BB#2:                                 # %if.then.9
	movq	%rbx, %rdi
	callq	gs_do_set_overprint
.LBB16_3:                               # %cleanup
	xorl	%eax, %eax
.LBB16_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	gx_set_device_color_1, .Lfunc_end16-gx_set_device_color_1
	.cfi_endproc

	.align	16, 0x90
	.type	transfer_use_proc,@function
transfer_use_proc:                      # @transfer_use_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end17:
	.size	transfer_use_proc, .Lfunc_end17-transfer_use_proc
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_client_color"
	.size	.L.str, 16

	.type	client_color_reloc_ptrs,@object # @client_color_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
client_color_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	client_color_enum_ptrs
	.size	client_color_reloc_ptrs, 24

	.type	st_client_color,@object # @st_client_color
	.globl	st_client_color
	.align	8
st_client_color:
	.long	264                     # 0x108
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	client_color_reloc_ptrs
	.size	st_client_color, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_transfer_map"
	.size	.L.str.1, 16

	.type	st_transfer_map,@object # @st_transfer_map
	.section	.rodata,"a",@progbits
	.globl	st_transfer_map
	.align	8
st_transfer_map:
	.long	568                     # 0x238
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	transfer_map_enum_ptrs
	.quad	transfer_map_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_transfer_map, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_setgray"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_setrgbcolor"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_settransfer"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gx_set_device_color_1"
	.size	.L.str.5, 22

	.type	client_color_enum_ptrs,@object # @client_color_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
client_color_enum_ptrs:
	.zero	4
	.size	client_color_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
