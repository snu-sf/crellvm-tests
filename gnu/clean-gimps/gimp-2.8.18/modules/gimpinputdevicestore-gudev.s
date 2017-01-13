	.text
	.file	"gimpinputdevicestore-gudev.bc"
	.globl	gimp_input_device_store_register_types
	.align	16, 0x90
	.type	gimp_input_device_store_register_types,@function
gimp_input_device_store_register_types: # @gimp_input_device_store_register_types
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_input_device_store_register_types, .Lfunc_end0-gimp_input_device_store_register_types
	.cfi_endproc

	.globl	gimp_input_device_store_get_type
	.align	16, 0x90
	.type	gimp_input_device_store_get_type,@function
gimp_input_device_store_get_type:       # @gimp_input_device_store_get_type
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
	movl	$4, %eax
                                        # kill: RAX<def> EAX<kill>
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_input_device_store_get_type, .Lfunc_end1-gimp_input_device_store_get_type
	.cfi_endproc

	.globl	gimp_input_device_store_new
	.align	16, 0x90
	.type	gimp_input_device_store_new,@function
gimp_input_device_store_new:            # @gimp_input_device_store_new
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
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_input_device_store_new, .Lfunc_end2-gimp_input_device_store_new
	.cfi_endproc

	.globl	gimp_input_device_store_get_device_file
	.align	16, 0x90
	.type	gimp_input_device_store_get_device_file,@function
gimp_input_device_store_get_device_file: # @gimp_input_device_store_get_device_file
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
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_input_device_store_get_device_file, .Lfunc_end3-gimp_input_device_store_get_device_file
	.cfi_endproc

	.globl	gimp_input_device_store_get_error
	.align	16, 0x90
	.type	gimp_input_device_store_get_error,@function
gimp_input_device_store_get_error:      # @gimp_input_device_store_get_error
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
	.size	gimp_input_device_store_get_error, .Lfunc_end4-gimp_input_device_store_get_error
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
