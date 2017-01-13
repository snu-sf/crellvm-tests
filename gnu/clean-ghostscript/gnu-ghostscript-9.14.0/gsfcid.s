	.text
	.file	"gsfcid.bc"
	.align	16, 0x90
	.type	cid_si_elt_enum_ptrs,@function
cid_si_elt_enum_ptrs:                   # @cid_si_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r9d
	movl	$3435973837, %eax       # imm = 0xCCCCCCCD
	cmpl	$40, %edx
	jae	.LBB0_2
# BB#1:                                 # %cleanup
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.end
	imulq	%rax, %r9
	shrq	$37, %r9
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	leaq	(%rdx,%rdx,4), %rcx
	leaq	(%rsi,%rcx,8), %rsi
	movl	$40, %edx
	movl	$st_cid_system_info, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.Lfunc_end0:
	.size	cid_si_elt_enum_ptrs, .Lfunc_end0-cid_si_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cid_si_elt_reloc_ptrs,@function
cid_si_elt_reloc_ptrs:                  # @cid_si_elt_reloc_ptrs
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
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$40, %esi
	jb	.LBB1_3
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	movl	$3435973837, %r15d      # imm = 0xCCCCCCCD
	imulq	%rax, %r15
	shrq	$37, %r15
	negl	%r15d
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$40, %esi
	movl	$st_cid_system_info, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$40, %rbx
	incl	%r15d
	jne	.LBB1_2
.LBB1_3:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	cid_si_elt_reloc_ptrs, .Lfunc_end1-cid_si_elt_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_cid_data_enum_ptrs,@function
font_cid_data_enum_ptrs:                # @font_cid_data_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_cid_system_info, %r9d
	jmp	basic_enum_ptrs         # TAILCALL
.Lfunc_end2:
	.size	font_cid_data_enum_ptrs, .Lfunc_end2-font_cid_data_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_cid_data_reloc_ptrs,@function
font_cid_data_reloc_ptrs:               # @font_cid_data_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_cid_system_info, %edx
	jmp	basic_reloc_ptrs        # TAILCALL
.Lfunc_end3:
	.size	font_cid_data_reloc_ptrs, .Lfunc_end3-font_cid_data_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_cid0_enum_ptrs,@function
font_cid0_enum_ptrs:                    # @font_cid0_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jne	.LBB4_1
# BB#4:                                 # %sw.bb
	movq	512(%rsi), %rax
	jmp	.LBB4_6
.LBB4_1:                                # %entry
	cmpl	$1, %ecx
	jne	.LBB4_2
# BB#5:                                 # %sw.bb.4
	movq	536(%rsi), %rax
.LBB4_6:                                # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB4_2:                                # %sw.default
	leal	-2(%rcx), %eax
	cmpl	$1, %eax
	jg	.LBB4_3
# BB#7:                                 # %if.then
	addq	$448, %rsi              # imm = 0x1C0
	movl	$56, %edx
	movl	$st_cid_system_info, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.LBB4_3:                                # %if.end
	addl	$-4, %ecx
	movl	$st_gs_font_base, %r9d
	jmpq	*st_gs_font_base+32(%rip) # TAILCALL
.Lfunc_end4:
	.size	font_cid0_enum_ptrs, .Lfunc_end4-font_cid0_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_cid0_reloc_ptrs,@function
font_cid0_reloc_ptrs:                   # @font_cid0_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movl	$st_gs_font_base, %edx
	callq	*st_gs_font_base+40(%rip)
	leaq	448(%r14), %rdi
	movl	$64, %esi
	movl	$st_cid_system_info, %edx
	movq	%rbx, %rcx
	callq	basic_reloc_ptrs
	movq	(%rbx), %rax
	movq	512(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 512(%r14)
	movq	(%rbx), %rax
	movq	536(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 536(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	font_cid0_reloc_ptrs, .Lfunc_end5-font_cid0_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_cid1_enum_ptrs,@function
font_cid1_enum_ptrs:                    # @font_cid1_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, %ecx
	jg	.LBB6_2
# BB#1:                                 # %if.then
	addq	$448, %rsi              # imm = 0x1C0
	movl	$64, %edx
	movl	$st_cid_system_info, %r9d
	jmp	basic_enum_ptrs         # TAILCALL
.LBB6_2:                                # %if.end
	addl	$-2, %ecx
	movl	$st_gs_font_base, %r9d
	jmpq	*st_gs_font_base+32(%rip) # TAILCALL
.Lfunc_end6:
	.size	font_cid1_enum_ptrs, .Lfunc_end6-font_cid1_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_cid1_reloc_ptrs,@function
font_cid1_reloc_ptrs:                   # @font_cid1_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$st_gs_font_base, %edx
	callq	*st_gs_font_base+40(%rip)
	addq	$448, %rbx              # imm = 0x1C0
	movl	$64, %esi
	movl	$st_cid_system_info, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	basic_reloc_ptrs        # TAILCALL
.Lfunc_end7:
	.size	font_cid1_reloc_ptrs, .Lfunc_end7-font_cid1_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_cid2_enum_ptrs,@function
font_cid2_enum_ptrs:                    # @font_cid2_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jle	.LBB8_3
# BB#1:                                 # %if.end
	cmpl	$2, %ecx
	jg	.LBB8_2
# BB#4:                                 # %if.then.2
	addq	$656, %rsi              # imm = 0x290
	decl	%ecx
	movl	$56, %edx
	movl	$st_cid_system_info, %r9d
	jmp	basic_enum_ptrs         # TAILCALL
.LBB8_3:                                # %cleanup
	movq	744(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB8_2:                                # %if.end.3
	addl	$-3, %ecx
	movl	$st_gs_font_type42, %r9d
	jmpq	*st_gs_font_type42+32(%rip) # TAILCALL
.Lfunc_end8:
	.size	font_cid2_enum_ptrs, .Lfunc_end8-font_cid2_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_cid2_reloc_ptrs,@function
font_cid2_reloc_ptrs:                   # @font_cid2_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movl	$st_gs_font_type42, %edx
	callq	*st_gs_font_type42+40(%rip)
	leaq	656(%r14), %rdi
	movl	$64, %esi
	movl	$st_cid_system_info, %edx
	movq	%rbx, %rcx
	callq	basic_reloc_ptrs
	movq	(%rbx), %rax
	movq	744(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 744(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	font_cid2_reloc_ptrs, .Lfunc_end9-font_cid2_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font1_ptr_element_enum_ptrs,@function
font1_ptr_element_enum_ptrs:            # @font1_ptr_element_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %edi
	xorl	%eax, %eax
	shrl	$3, %edi
	je	.LBB10_3
# BB#1:                                 # %if.end
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	.LBB10_3
# BB#2:                                 # %sw.bb.i
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movq	(%rsi,%rdx,8), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB10_3:                               # %cleanup
	retq
.Lfunc_end10:
	.size	font1_ptr_element_enum_ptrs, .Lfunc_end10-font1_ptr_element_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font1_ptr_element_reloc_ptrs,@function
font1_ptr_element_reloc_ptrs:           # @font1_ptr_element_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	$-8, %ebp
	je	.LBB11_3
# BB#1:                                 # %for.body.lr.ph
	shrl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	addq	$8, %rbx
	incl	%ebp
	jne	.LBB11_2
.LBB11_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	font1_ptr_element_reloc_ptrs, .Lfunc_end11-font1_ptr_element_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	subst_CID_on_WMode_enum_ptrs,@function
subst_CID_on_WMode_enum_ptrs:           # @subst_CID_on_WMode_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB12_5
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB12_2
# BB#4:                                 # %sw.bb.1
	movq	24(%rsi), %rax
	jmp	.LBB12_6
.LBB12_5:                               # %sw.bb.3
	movq	32(%rsi), %rax
	jmp	.LBB12_6
.LBB12_2:                               # %entry
	testl	%ecx, %ecx
	jne	.LBB12_7
# BB#3:                                 # %sw.bb
	movq	8(%rsi), %rax
.LBB12_6:                               # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB12_7:                               # %cleanup
	retq
.Lfunc_end12:
	.size	subst_CID_on_WMode_enum_ptrs, .Lfunc_end12-subst_CID_on_WMode_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	subst_CID_on_WMode_reloc_ptrs,@function
subst_CID_on_WMode_reloc_ptrs:          # @subst_CID_on_WMode_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 32
.Ltmp30:
	.cfi_offset %rbx, -24
.Ltmp31:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movq	24(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 24(%r14)
	movq	(%rbx), %rax
	movq	32(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 32(%r14)
	movq	(%rbx), %rax
	movq	8(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 8(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end13:
	.size	subst_CID_on_WMode_reloc_ptrs, .Lfunc_end13-subst_CID_on_WMode_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	subst_CID_on_WMode_finalize,@function
subst_CID_on_WMode_finalize:            # @subst_CID_on_WMode_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	8(%rbx), %rdi
	leaq	24(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	$0, 24(%rbx)
	movq	8(%rbx), %rdi
	leaq	32(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
	movq	$0, 32(%rbx)
	popq	%rbx
	retq
.Lfunc_end14:
	.size	subst_CID_on_WMode_finalize, .Lfunc_end14-subst_CID_on_WMode_finalize
	.cfi_endproc

	.globl	cid_system_info_set_null
	.align	16, 0x90
	.type	cid_system_info_set_null,@function
cid_system_info_set_null:               # @cid_system_info_set_null
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	movl	$40, %edx
	jmp	memset                  # TAILCALL
.Lfunc_end15:
	.size	cid_system_info_set_null, .Lfunc_end15-cid_system_info_set_null
	.cfi_endproc

	.globl	cid_system_info_is_null
	.align	16, 0x90
	.type	cid_system_info_is_null,@function
cid_system_info_is_null:                # @cid_system_info_is_null
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 8(%rdi)
	je	.LBB16_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB16_2:                               # %land.lhs.true
	cmpl	$0, 24(%rdi)
	je	.LBB16_4
# BB#3:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB16_4:                               # %land.rhs
	cmpl	$0, 32(%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end16:
	.size	cid_system_info_is_null, .Lfunc_end16-cid_system_info_is_null
	.cfi_endproc

	.globl	gs_font_cid_system_info
	.align	16, 0x90
	.type	gs_font_cid_system_info,@function
gs_font_cid_system_info:                # @gs_font_cid_system_info
	.cfi_startproc
# BB#0:                                 # %entry
	movl	128(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	$11, %ecx
	je	.LBB17_4
# BB#1:                                 # %entry
	cmpl	$10, %ecx
	je	.LBB17_3
# BB#2:                                 # %entry
	cmpl	$9, %ecx
	jne	.LBB17_6
.LBB17_3:                               # %sw.bb.1
	addq	$448, %rdi              # imm = 0x1C0
	jmp	.LBB17_5
.LBB17_4:                               # %sw.bb.4
	addq	$656, %rdi              # imm = 0x290
.LBB17_5:                               # %return
	movq	%rdi, %rax
.LBB17_6:                               # %return
	retq
.Lfunc_end17:
	.size	gs_font_cid_system_info, .Lfunc_end17-gs_font_cid_system_info
	.cfi_endproc

	.globl	gs_is_CIDSystemInfo_compatible
	.align	16, 0x90
	.type	gs_is_CIDSystemInfo_compatible,@function
gs_is_CIDSystemInfo_compatible:         # @gs_is_CIDSystemInfo_compatible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp38:
	.cfi_def_cfa_offset 48
.Ltmp39:
	.cfi_offset %rbx, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	xorl	%r14d, %r14d
	testq	%rbp, %rbp
	je	.LBB18_6
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB18_6
# BB#2:                                 # %if.end
	movl	8(%rbp), %edx
	cmpl	8(%rbx), %edx
	jne	.LBB18_6
# BB#3:                                 # %if.end.6
	movl	24(%rbp), %r15d
	cmpl	24(%rbx), %r15d
	jne	.LBB18_6
# BB#4:                                 # %if.end.12
	movq	(%rbp), %rdi
	movq	(%rbx), %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB18_6
# BB#5:                                 # %if.end.19
	movq	16(%rbp), %rdi
	movq	16(%rbx), %rsi
	movq	%r15, %rdx
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %r14d
.LBB18_6:                               # %return
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gs_is_CIDSystemInfo_compatible, .Lfunc_end18-gs_is_CIDSystemInfo_compatible
	.cfi_endproc

	.globl	gs_font_cid0_enumerate_glyph
	.align	16, 0x90
	.type	gs_font_cid0_enumerate_glyph,@function
gs_font_cid0_enumerate_glyph:           # @gs_font_cid0_enumerate_glyph
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
	subq	$56, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 112
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
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	(%r15), %eax
	cmpl	488(%rbx), %eax
	jge	.LBB19_6
# BB#1:                                 # %while.body.lr.ph
	leaq	8(%rsp), %r12
	leaq	4(%rsp), %r13
	.align	16, 0x90
.LBB19_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rax), %ecx
	movl	%ecx, (%r15)
	movslq	%eax, %rbp
	subq	$-2147483648, %rbp      # imm = 0xFFFFFFFF80000000
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	*528(%rbx)
	testl	%eax, %eax
	js	.LBB19_5
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	16(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB19_4
.LBB19_5:                               # %cleanup
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	(%r15), %eax
	cmpl	488(%rbx), %eax
	jl	.LBB19_2
.LBB19_6:                               # %while.end
	movl	$0, (%r15)
	jmp	.LBB19_7
.LBB19_4:                               # %if.end
	movq	%rbp, (%r14)
	leaq	8(%rsp), %rdi
	movl	$.L.str.8, %esi
	callq	gs_glyph_data_free
.LBB19_7:                               # %cleanup.10
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gs_font_cid0_enumerate_glyph, .Lfunc_end19-gs_font_cid0_enumerate_glyph
	.cfi_endproc

	.globl	gs_cid0_indexed_font
	.align	16, 0x90
	.type	gs_cid0_indexed_font,@function
gs_cid0_indexed_font:                   # @gs_cid0_indexed_font
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
	movq	%rdi, %rbx
	cmpl	$9, 128(%rbx)
	jne	.LBB20_1
# BB#2:                                 # %if.end
	movslq	%esi, %rax
	movq	512(%rbx), %rcx
	movq	(%rcx,%rax,8), %rbx
	jmp	.LBB20_3
.LBB20_1:                               # %if.then
	movq	16(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%rbx), %rdi
	movl	128(%rbx), %edx
	xorl	%ebx, %ebx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB20_3:                               # %cleanup
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	gs_cid0_indexed_font, .Lfunc_end20-gs_cid0_indexed_font
	.cfi_endproc

	.globl	gs_cid0_has_type2
	.align	16, 0x90
	.type	gs_cid0_has_type2,@function
gs_cid0_has_type2:                      # @gs_cid0_has_type2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$9, 128(%rbx)
	jne	.LBB21_3
# BB#1:                                 # %for.cond.preheader
	movl	520(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB21_6
# BB#2:                                 # %for.body.lr.ph
	movq	512(%rbx), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB21_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	movl	$1, %ebp
	cmpl	$2, 128(%rsi)
	je	.LBB21_6
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB21_5 Depth=1
	incq	%rdx
	xorl	%ebp, %ebp
	cmpl	%eax, %edx
	jb	.LBB21_5
	jmp	.LBB21_6
.LBB21_3:                               # %if.then
	movq	16(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%rbx), %rdi
	movl	128(%rbx), %edx
	xorl	%ebp, %ebp
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB21_6:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gs_cid0_has_type2, .Lfunc_end21-gs_cid0_has_type2
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_cid_system_info_t"
	.size	.L.str, 21

	.type	cid_si_reloc_ptrs,@object # @cid_si_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cid_si_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	cid_si_enum_ptrs
	.size	cid_si_reloc_ptrs, 24

	.type	st_cid_system_info,@object # @st_cid_system_info
	.globl	st_cid_system_info
	.align	8
st_cid_system_info:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cid_si_reloc_ptrs
	.size	st_cid_system_info, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_cid_system_info_t[]"
	.size	.L.str.1, 23

	.type	st_cid_system_info_element,@object # @st_cid_system_info_element
	.section	.rodata,"a",@progbits
	.globl	st_cid_system_info_element
	.align	8
st_cid_system_info_element:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	cid_si_elt_enum_ptrs
	.quad	cid_si_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_cid_system_info_element, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_font_cid_data"
	.size	.L.str.2, 17

	.type	st_gs_font_cid_data,@object # @st_gs_font_cid_data
	.section	.rodata,"a",@progbits
	.globl	st_gs_font_cid_data
	.align	8
st_gs_font_cid_data:
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	font_cid_data_enum_ptrs
	.quad	font_cid_data_reloc_ptrs
	.quad	gs_font_finalize
	.quad	0
	.size	st_gs_font_cid_data, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gs_font_cid0"
	.size	.L.str.3, 13

	.type	st_gs_font_cid0,@object # @st_gs_font_cid0
	.section	.rodata,"a",@progbits
	.globl	st_gs_font_cid0
	.align	8
st_gs_font_cid0:
	.long	544                     # 0x220
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	font_cid0_enum_ptrs
	.quad	font_cid0_reloc_ptrs
	.quad	gs_font_finalize
	.quad	0
	.size	st_gs_font_cid0, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_font_cid1"
	.size	.L.str.4, 13

	.type	st_gs_font_cid1,@object # @st_gs_font_cid1
	.section	.rodata,"a",@progbits
	.globl	st_gs_font_cid1
	.align	8
st_gs_font_cid1:
	.long	488                     # 0x1e8
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	font_cid1_enum_ptrs
	.quad	font_cid1_reloc_ptrs
	.quad	gs_font_finalize
	.quad	0
	.size	st_gs_font_cid1, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"gs_font_cid2"
	.size	.L.str.5, 13

	.type	st_gs_font_cid2,@object # @st_gs_font_cid2
	.section	.rodata,"a",@progbits
	.globl	st_gs_font_cid2
	.align	8
st_gs_font_cid2:
	.long	752                     # 0x2f0
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	font_cid2_enum_ptrs
	.quad	font_cid2_reloc_ptrs
	.quad	gs_font_finalize
	.quad	0
	.size	st_gs_font_cid2, 64

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"gs_font_type1 *[]"
	.size	.L.str.6, 18

	.type	st_gs_font_type1_ptr_element,@object # @st_gs_font_type1_ptr_element
	.section	.rodata,"a",@progbits
	.globl	st_gs_font_type1_ptr_element
	.align	8
st_gs_font_type1_ptr_element:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	font1_ptr_element_enum_ptrs
	.quad	font1_ptr_element_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_font_type1_ptr_element, 64

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gs_subst_CID_on_WMode"
	.size	.L.str.7, 22

	.type	st_subst_CID_on_WMode,@object # @st_subst_CID_on_WMode
	.section	.rodata,"a",@progbits
	.globl	st_subst_CID_on_WMode
	.align	8
st_subst_CID_on_WMode:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	subst_CID_on_WMode_enum_ptrs
	.quad	subst_CID_on_WMode_reloc_ptrs
	.quad	subst_CID_on_WMode_finalize
	.quad	0
	.size	st_subst_CID_on_WMode, 64

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gs_font_cid0_enumerate_glyphs"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Unexpected font type: %d\n"
	.size	.L.str.9, 26

	.type	cid_si_enum_ptrs,@object # @cid_si_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
cid_si_enum_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.short	2                       # 0x2
	.short	16                      # 0x10
	.size	cid_si_enum_ptrs, 8

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"subst_CID_on_WMode_finalize"
	.size	.L.str.11, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
