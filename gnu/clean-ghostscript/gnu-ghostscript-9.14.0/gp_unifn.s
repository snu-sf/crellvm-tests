	.text
	.file	"gp_unifn.bc"
	.globl	gp_file_name_root
	.align	16, 0x90
	.type	gp_file_name_root,@function
gp_file_name_root:                      # @gp_file_name_root
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	je	.LBB0_2
# BB#1:                                 # %land.lhs.true
	movzbl	(%rdi), %ecx
	movl	$1, %eax
	cmpl	$47, %ecx
	je	.LBB0_3
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
.LBB0_3:                                # %return
	retq
.Lfunc_end0:
	.size	gp_file_name_root, .Lfunc_end0-gp_file_name_root
	.cfi_endproc

	.globl	gs_file_name_check_separator
	.align	16, 0x90
	.type	gs_file_name_check_separator,@function
gs_file_name_check_separator:           # @gs_file_name_check_separator
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	jle	.LBB1_2
# BB#1:                                 # %if.then
	movzbl	(%rdi), %ecx
	jmp	.LBB1_4
.LBB1_2:                                # %if.else
	jns	.LBB1_5
# BB#3:                                 # %if.then.6
	movzbl	-1(%rdi), %ecx
.LBB1_4:                                # %if.then.6
	movl	$1, %eax
	cmpl	$47, %ecx
	je	.LBB1_6
.LBB1_5:                                # %if.end.14
	xorl	%eax, %eax
.LBB1_6:                                # %return
	retq
.Lfunc_end1:
	.size	gs_file_name_check_separator, .Lfunc_end1-gs_file_name_check_separator
	.cfi_endproc

	.globl	gp_file_name_is_parent
	.align	16, 0x90
	.type	gp_file_name_is_parent,@function
gp_file_name_is_parent:                 # @gp_file_name_is_parent
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$2, %esi
	jne	.LBB2_1
# BB#2:                                 # %land.lhs.true
	movzbl	(%rdi), %eax
	cmpl	$46, %eax
	jne	.LBB2_3
# BB#4:                                 # %land.rhs
	movzbl	1(%rdi), %eax
	cmpl	$46, %eax
	sete	%al
	movzbl	%al, %eax
	retq
.LBB2_1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB2_3:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end2:
	.size	gp_file_name_is_parent, .Lfunc_end2-gp_file_name_is_parent
	.cfi_endproc

	.globl	gp_file_name_is_current
	.align	16, 0x90
	.type	gp_file_name_is_current,@function
gp_file_name_is_current:                # @gp_file_name_is_current
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, %esi
	jne	.LBB3_1
# BB#2:                                 # %land.rhs
	movzbl	(%rdi), %eax
	cmpl	$46, %eax
	sete	%al
	movzbl	%al, %eax
	retq
.LBB3_1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end3:
	.size	gp_file_name_is_current, .Lfunc_end3-gp_file_name_is_current
	.cfi_endproc

	.globl	gp_file_name_separator
	.align	16, 0x90
	.type	gp_file_name_separator,@function
gp_file_name_separator:                 # @gp_file_name_separator
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str, %eax
	retq
.Lfunc_end4:
	.size	gp_file_name_separator, .Lfunc_end4-gp_file_name_separator
	.cfi_endproc

	.globl	gp_file_name_directory_separator
	.align	16, 0x90
	.type	gp_file_name_directory_separator,@function
gp_file_name_directory_separator:       # @gp_file_name_directory_separator
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str, %eax
	retq
.Lfunc_end5:
	.size	gp_file_name_directory_separator, .Lfunc_end5-gp_file_name_directory_separator
	.cfi_endproc

	.globl	gp_file_name_parent
	.align	16, 0x90
	.type	gp_file_name_parent,@function
gp_file_name_parent:                    # @gp_file_name_parent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.1, %eax
	retq
.Lfunc_end6:
	.size	gp_file_name_parent, .Lfunc_end6-gp_file_name_parent
	.cfi_endproc

	.globl	gp_file_name_current
	.align	16, 0x90
	.type	gp_file_name_current,@function
gp_file_name_current:                   # @gp_file_name_current
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.2, %eax
	retq
.Lfunc_end7:
	.size	gp_file_name_current, .Lfunc_end7-gp_file_name_current
	.cfi_endproc

	.globl	gp_file_name_is_parent_allowed
	.align	16, 0x90
	.type	gp_file_name_is_parent_allowed,@function
gp_file_name_is_parent_allowed:         # @gp_file_name_is_parent_allowed
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end8:
	.size	gp_file_name_is_parent_allowed, .Lfunc_end8-gp_file_name_is_parent_allowed
	.cfi_endproc

	.globl	gp_file_name_is_empty_item_meanful
	.align	16, 0x90
	.type	gp_file_name_is_empty_item_meanful,@function
gp_file_name_is_empty_item_meanful:     # @gp_file_name_is_empty_item_meanful
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	gp_file_name_is_empty_item_meanful, .Lfunc_end9-gp_file_name_is_empty_item_meanful
	.cfi_endproc

	.globl	gp_file_name_combine
	.align	16, 0x90
	.type	gp_file_name_combine,@function
gp_file_name_combine:                   # @gp_file_name_combine
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gp_file_name_combine_generic # TAILCALL
.Lfunc_end10:
	.size	gp_file_name_combine, .Lfunc_end10-gp_file_name_combine
	.cfi_endproc

	.globl	gp_file_name_good_char
	.align	16, 0x90
	.type	gp_file_name_good_char,@function
gp_file_name_good_char:                 # @gp_file_name_good_char
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movb	%dil, %cl
	addb	$-47, %cl
	movzbl	%cl, %ecx
	cmpl	$45, %ecx
	ja	.LBB11_1
# BB#3:                                 # %entry
	movabsq	$35184372090881, %rdx   # imm = 0x200000000801
	btq	%rcx, %rdx
	jb	.LBB11_4
.LBB11_1:                               # %entry
	testb	%dil, %dil
	je	.LBB11_4
# BB#2:                                 # %land.rhs
	movl	$1, %eax
	retq
.LBB11_4:                               # %land.end
	retq
.Lfunc_end11:
	.size	gp_file_name_good_char, .Lfunc_end11-gp_file_name_good_char
	.cfi_endproc

	.type	gp_file_name_list_separator,@object # @gp_file_name_list_separator
	.section	.rodata,"a",@progbits
	.globl	gp_file_name_list_separator
gp_file_name_list_separator:
	.byte	58                      # 0x3a
	.size	gp_file_name_list_separator, 1

	.type	gp_fmode_binary_suffix,@object # @gp_fmode_binary_suffix
	.globl	gp_fmode_binary_suffix
gp_fmode_binary_suffix:
	.zero	1
	.size	gp_fmode_binary_suffix, 1

	.type	gp_fmode_rb,@object     # @gp_fmode_rb
	.globl	gp_fmode_rb
gp_fmode_rb:
	.asciz	"r"
	.size	gp_fmode_rb, 2

	.type	gp_fmode_wb,@object     # @gp_fmode_wb
	.globl	gp_fmode_wb
gp_fmode_wb:
	.asciz	"w"
	.size	gp_fmode_wb, 2

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	".."
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"."
	.size	.L.str.2, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
