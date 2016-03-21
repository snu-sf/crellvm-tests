; ModuleID = 'irs-onlybc/ossaudiodev.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.oss_audio_t = type { %struct._object, i8*, i32, i32, i32, i32, i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.audio_buf_info = type { i32, i32, i32, i32 }
%struct.count_info = type { i32, i32, i32 }
%struct.oss_mixer_t = type { %struct._object, i32 }

@OSSAudioType = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.115, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.oss_audio_t*)* @oss_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_getattro to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([22 x %struct.PyMethodDef], [22 x %struct.PyMethodDef]* @oss_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@OSSMixerType = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.154, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.oss_mixer_t*)* @oss_mixer_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([12 x %struct.PyMethodDef], [12 x %struct.PyMethodDef]* @oss_mixer_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@ossaudiodevmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @ossaudiodev_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [26 x i8] c"ossaudiodev.OSSAudioError\00", align 1
@OSSAudioError = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"OSSAudioError\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"AFMT_QUERY\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"AFMT_MU_LAW\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"AFMT_A_LAW\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"AFMT_IMA_ADPCM\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"AFMT_U8\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"AFMT_S16_LE\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"AFMT_S16_BE\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"AFMT_S8\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"AFMT_U16_LE\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"AFMT_U16_BE\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"AFMT_MPEG\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"AFMT_AC3\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"AFMT_S16_NE\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SOUND_MIXER_NRDEVICES\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"SOUND_MIXER_VOLUME\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"SOUND_MIXER_BASS\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"SOUND_MIXER_TREBLE\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"SOUND_MIXER_SYNTH\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SOUND_MIXER_PCM\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"SOUND_MIXER_SPEAKER\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"SOUND_MIXER_LINE\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"SOUND_MIXER_MIC\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"SOUND_MIXER_CD\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"SOUND_MIXER_IMIX\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"SOUND_MIXER_ALTPCM\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"SOUND_MIXER_RECLEV\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"SOUND_MIXER_IGAIN\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"SOUND_MIXER_OGAIN\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"SOUND_MIXER_LINE1\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"SOUND_MIXER_LINE2\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"SOUND_MIXER_LINE3\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"SOUND_MIXER_DIGITAL1\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"SOUND_MIXER_DIGITAL2\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"SOUND_MIXER_DIGITAL3\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"SOUND_MIXER_PHONEIN\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"SOUND_MIXER_PHONEOUT\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"SOUND_MIXER_VIDEO\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"SOUND_MIXER_RADIO\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"SOUND_MIXER_MONITOR\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"SNDCTL_COPR_HALT\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"SNDCTL_COPR_LOAD\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"SNDCTL_COPR_RCODE\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"SNDCTL_COPR_RCVMSG\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"SNDCTL_COPR_RDATA\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"SNDCTL_COPR_RESET\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"SNDCTL_COPR_RUN\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"SNDCTL_COPR_SENDMSG\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"SNDCTL_COPR_WCODE\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"SNDCTL_COPR_WDATA\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"SNDCTL_DSP_BIND_CHANNEL\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_CHANNELS\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"SNDCTL_DSP_GETBLKSIZE\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"SNDCTL_DSP_GETCAPS\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"SNDCTL_DSP_GETCHANNELMASK\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"SNDCTL_DSP_GETFMTS\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"SNDCTL_DSP_GETIPTR\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"SNDCTL_DSP_GETISPACE\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"SNDCTL_DSP_GETODELAY\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"SNDCTL_DSP_GETOPTR\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"SNDCTL_DSP_GETOSPACE\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_GETSPDIF\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"SNDCTL_DSP_GETTRIGGER\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_MAPINBUF\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"SNDCTL_DSP_MAPOUTBUF\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_NONBLOCK\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"SNDCTL_DSP_POST\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"SNDCTL_DSP_PROFILE\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"SNDCTL_DSP_RESET\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"SNDCTL_DSP_SAMPLESIZE\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"SNDCTL_DSP_SETDUPLEX\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"SNDCTL_DSP_SETFMT\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"SNDCTL_DSP_SETFRAGMENT\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_SETSPDIF\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"SNDCTL_DSP_SETSYNCRO\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"SNDCTL_DSP_SETTRIGGER\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"SNDCTL_DSP_SPEED\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"SNDCTL_DSP_STEREO\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"SNDCTL_DSP_SUBDIVIDE\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"SNDCTL_DSP_SYNC\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"SNDCTL_FM_4OP_ENABLE\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"SNDCTL_FM_LOAD_INSTR\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"SNDCTL_MIDI_INFO\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"SNDCTL_MIDI_MPUCMD\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"SNDCTL_MIDI_MPUMODE\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"SNDCTL_MIDI_PRETIME\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"SNDCTL_SEQ_CTRLRATE\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"SNDCTL_SEQ_GETINCOUNT\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"SNDCTL_SEQ_GETOUTCOUNT\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"SNDCTL_SEQ_GETTIME\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"SNDCTL_SEQ_NRMIDIS\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"SNDCTL_SEQ_NRSYNTHS\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"SNDCTL_SEQ_OUTOFBAND\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"SNDCTL_SEQ_PANIC\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"SNDCTL_SEQ_PERCMODE\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"SNDCTL_SEQ_RESET\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"SNDCTL_SEQ_RESETSAMPLES\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"SNDCTL_SEQ_SYNC\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"SNDCTL_SEQ_TESTMIDI\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"SNDCTL_SEQ_THRESHOLD\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"SNDCTL_SYNTH_CONTROL\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"SNDCTL_SYNTH_ID\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"SNDCTL_SYNTH_INFO\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"SNDCTL_SYNTH_MEMAVL\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"SNDCTL_SYNTH_REMOVESAMPLE\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"SNDCTL_TMR_CONTINUE\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"SNDCTL_TMR_METRONOME\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"SNDCTL_TMR_SELECT\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"SNDCTL_TMR_SOURCE\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"SNDCTL_TMR_START\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"SNDCTL_TMR_STOP\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"SNDCTL_TMR_TEMPO\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"SNDCTL_TMR_TIMEBASE\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.115 = private unnamed_addr constant [29 x i8] c"ossaudiodev.oss_audio_device\00", align 1
@oss_methods = internal global [22 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_read to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_write to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_writeall to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_nonblock to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_setfmt to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_getfmts to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_channels to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_speed to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_sync to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_reset to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_post to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.136, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_setparameters to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_bufsize to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_obufcount to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_obuffree to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_getptr to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_sync to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @oss_self, i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @oss_exit, i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.116 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.118 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"writeall\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"nonblock\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"setfmt\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"getfmts\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"setparameters\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"obufcount\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"obuffree\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"getptr\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"i:read\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.145 = private unnamed_addr constant [32 x i8] c"Operation on closed OSS device.\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"y#:write\00", align 1
@.str.147 = private unnamed_addr constant [40 x i8] c"file descriptor out of range for select\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_do_ioctl_0.argfmt = private unnamed_addr constant [32 x i8] c":\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.148 = private unnamed_addr constant [20 x i8] c"iii|i:setparameters\00", align 1
@.str.149 = private unnamed_addr constant [51 x i8] c"unable to set requested format (wanted %d, got %d)\00", align 1
@.str.150 = private unnamed_addr constant [53 x i8] c"unable to set requested channels (wanted %d, got %d)\00", align 1
@.str.151 = private unnamed_addr constant [49 x i8] c"unable to set requested rate (wanted %d, got %d)\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"(iii)\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"iii\00", align 1
@oss_exit.PyId_close = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), %struct._object* null }, align 8
@.str.154 = private unnamed_addr constant [29 x i8] c"ossaudiodev.oss_mixer_device\00", align 1
@oss_mixer_methods = internal global [12 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_fileno to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @oss_self, i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @oss_exit, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_controls to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.156, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_stereocontrols to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.157, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_reccontrols to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_get to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_set to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_get_recsrc to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.161, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_set_recsrc to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.155 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"stereocontrols\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"reccontrols\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"get_recsrc\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"set_recsrc\00", align 1
@_do_ioctl_1_internal.argfmt = private unnamed_addr constant [32 x i8] c":\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.162 = private unnamed_addr constant [6 x i8] c"i:get\00", align 1
@.str.163 = private unnamed_addr constant [33 x i8] c"Invalid mixer channel specified.\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"(ii)\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"i(ii):set\00", align 1
@.str.166 = private unnamed_addr constant [35 x i8] c"Volumes must be between 0 and 100.\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"ossaudiodev\00", align 1
@ossaudiodev_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ossopen, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ossopenmixer, i32 1, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.168 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"openmixer\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"s|s:open\00", align 1
@.str.171 = private unnamed_addr constant [31 x i8] c"mode must be 'r', 'w', or 'rw'\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"AUDIODEV\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"|s\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"MIXERDEV\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"/dev/mixer\00", align 1
@control_labels = internal global [25 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.203, i32 0, i32 0)], align 16
@control_names = internal global [25 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.228, i32 0, i32 0)], align 16
@.str.177 = private unnamed_addr constant [15 x i8] c"control_labels\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"control_names\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"Vol  \00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"Bass \00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"Trebl\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"Synth\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"Pcm  \00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"Spkr \00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"Line \00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"Mic  \00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"CD   \00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"Mix  \00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"Pcm2 \00", align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"Rec  \00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"IGain\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"OGain\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"Line1\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"Line2\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"Line3\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"Digital1\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"Digital2\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"Digital3\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"PhoneIn\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"PhoneOut\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"Monitor\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"vol\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"bass\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"treble\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"synth\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"speaker\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"mic\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"pcm2\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@.str.216 = private unnamed_addr constant [6 x i8] c"igain\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"ogain\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"line1\00", align 1
@.str.219 = private unnamed_addr constant [6 x i8] c"line2\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"line3\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"dig1\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"dig2\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"dig3\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"phin\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"phout\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_ossaudiodev() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !867
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !867
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !399, metadata !868), !dbg !869
  %call = call i32 @PyType_Ready(%struct._typeobject* @OSSAudioType), !dbg !870
  %cmp = icmp slt i32 %call, 0, !dbg !872
  br i1 %cmp, label %if.then, label %if.end, !dbg !873

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !874
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !874

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @OSSMixerType), !dbg !875
  %cmp2 = icmp slt i32 %call1, 0, !dbg !877
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !878

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !879
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !879

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @ossaudiodevmodule, i32 1013), !dbg !880
  store %struct._object* %call5, %struct._object** %m, align 8, !dbg !881, !tbaa !882
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !886, !tbaa !882
  %cmp6 = icmp eq %struct._object* %1, null, !dbg !888
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !889

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !890
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !890

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null), !dbg !891
  store %struct._object* %call9, %struct._object** @OSSAudioError, align 8, !dbg !892, !tbaa !882
  %2 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !893, !tbaa !882
  %tobool = icmp ne %struct._object* %2, null, !dbg !893
  br i1 %tobool, label %if.then.10, label %if.end.15, !dbg !895

if.then.10:                                       ; preds = %if.end.8
  %3 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !896, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !898
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !899, !tbaa !900
  %inc = add i64 %4, 1, !dbg !899
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !899, !tbaa !900
  %5 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !903, !tbaa !882
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !904
  %6 = load i64, i64* %ob_refcnt11, align 8, !dbg !905, !tbaa !900
  %inc12 = add i64 %6, 1, !dbg !905
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !905, !tbaa !900
  %7 = load %struct._object*, %struct._object** %m, align 8, !dbg !906, !tbaa !882
  %8 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !907, !tbaa !882
  %call13 = call i32 @PyModule_AddObject(%struct._object* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %8), !dbg !908
  %9 = load %struct._object*, %struct._object** %m, align 8, !dbg !909, !tbaa !882
  %10 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !910, !tbaa !882
  %call14 = call i32 @PyModule_AddObject(%struct._object* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), %struct._object* %10), !dbg !911
  br label %if.end.15, !dbg !912

if.end.15:                                        ; preds = %if.then.10, %if.end.8
  %11 = load %struct._object*, %struct._object** %m, align 8, !dbg !913, !tbaa !882
  %call16 = call i32 @build_namelists(%struct._object* %11), !dbg !915
  %cmp17 = icmp eq i32 %call16, -1, !dbg !916
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !917

if.then.18:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval, !dbg !918
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !918

if.end.19:                                        ; preds = %if.end.15
  %12 = load %struct._object*, %struct._object** %m, align 8, !dbg !919, !tbaa !882
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64 0), !dbg !921
  %cmp21 = icmp eq i32 %call20, -1, !dbg !922
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !923

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval, !dbg !924
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !926

if.end.23:                                        ; preds = %if.end.19
  %13 = load %struct._object*, %struct._object** %m, align 8, !dbg !927, !tbaa !882
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i64 1), !dbg !929
  %cmp25 = icmp eq i32 %call24, -1, !dbg !930
  br i1 %cmp25, label %if.then.26, label %if.end.27, !dbg !931

if.then.26:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval, !dbg !932
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !934

if.end.27:                                        ; preds = %if.end.23
  %14 = load %struct._object*, %struct._object** %m, align 8, !dbg !935, !tbaa !882
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 2), !dbg !937
  %cmp29 = icmp eq i32 %call28, -1, !dbg !938
  br i1 %cmp29, label %if.then.30, label %if.end.31, !dbg !939

if.then.30:                                       ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval, !dbg !940
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !942

if.end.31:                                        ; preds = %if.end.27
  %15 = load %struct._object*, %struct._object** %m, align 8, !dbg !943, !tbaa !882
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i64 4), !dbg !945
  %cmp33 = icmp eq i32 %call32, -1, !dbg !946
  br i1 %cmp33, label %if.then.34, label %if.end.35, !dbg !947

if.then.34:                                       ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval, !dbg !948
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !950

if.end.35:                                        ; preds = %if.end.31
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !951, !tbaa !882
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i64 8), !dbg !953
  %cmp37 = icmp eq i32 %call36, -1, !dbg !954
  br i1 %cmp37, label %if.then.38, label %if.end.39, !dbg !955

if.then.38:                                       ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval, !dbg !956
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !958

if.end.39:                                        ; preds = %if.end.35
  %17 = load %struct._object*, %struct._object** %m, align 8, !dbg !959, !tbaa !882
  %call40 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i64 16), !dbg !961
  %cmp41 = icmp eq i32 %call40, -1, !dbg !962
  br i1 %cmp41, label %if.then.42, label %if.end.43, !dbg !963

if.then.42:                                       ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval, !dbg !964
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !966

if.end.43:                                        ; preds = %if.end.39
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !967, !tbaa !882
  %call44 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i64 32), !dbg !969
  %cmp45 = icmp eq i32 %call44, -1, !dbg !970
  br i1 %cmp45, label %if.then.46, label %if.end.47, !dbg !971

if.then.46:                                       ; preds = %if.end.43
  store %struct._object* null, %struct._object** %retval, !dbg !972
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !974

if.end.47:                                        ; preds = %if.end.43
  %19 = load %struct._object*, %struct._object** %m, align 8, !dbg !975, !tbaa !882
  %call48 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i64 64), !dbg !977
  %cmp49 = icmp eq i32 %call48, -1, !dbg !978
  br i1 %cmp49, label %if.then.50, label %if.end.51, !dbg !979

if.then.50:                                       ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval, !dbg !980
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !982

if.end.51:                                        ; preds = %if.end.47
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !983, !tbaa !882
  %call52 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i64 128), !dbg !985
  %cmp53 = icmp eq i32 %call52, -1, !dbg !986
  br i1 %cmp53, label %if.then.54, label %if.end.55, !dbg !987

if.then.54:                                       ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval, !dbg !988
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !990

if.end.55:                                        ; preds = %if.end.51
  %21 = load %struct._object*, %struct._object** %m, align 8, !dbg !991, !tbaa !882
  %call56 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i64 256), !dbg !993
  %cmp57 = icmp eq i32 %call56, -1, !dbg !994
  br i1 %cmp57, label %if.then.58, label %if.end.59, !dbg !995

if.then.58:                                       ; preds = %if.end.55
  store %struct._object* null, %struct._object** %retval, !dbg !996
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !998

if.end.59:                                        ; preds = %if.end.55
  %22 = load %struct._object*, %struct._object** %m, align 8, !dbg !999, !tbaa !882
  %call60 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i64 512), !dbg !1001
  %cmp61 = icmp eq i32 %call60, -1, !dbg !1002
  br i1 %cmp61, label %if.then.62, label %if.end.63, !dbg !1003

if.then.62:                                       ; preds = %if.end.59
  store %struct._object* null, %struct._object** %retval, !dbg !1004
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1006

if.end.63:                                        ; preds = %if.end.59
  %23 = load %struct._object*, %struct._object** %m, align 8, !dbg !1007, !tbaa !882
  %call64 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64 1024), !dbg !1009
  %cmp65 = icmp eq i32 %call64, -1, !dbg !1010
  br i1 %cmp65, label %if.then.66, label %if.end.67, !dbg !1011

if.then.66:                                       ; preds = %if.end.63
  store %struct._object* null, %struct._object** %retval, !dbg !1012
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1014

if.end.67:                                        ; preds = %if.end.63
  %24 = load %struct._object*, %struct._object** %m, align 8, !dbg !1015, !tbaa !882
  %call68 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i64 16), !dbg !1017
  %cmp69 = icmp eq i32 %call68, -1, !dbg !1018
  br i1 %cmp69, label %if.then.70, label %if.end.71, !dbg !1019

if.then.70:                                       ; preds = %if.end.67
  store %struct._object* null, %struct._object** %retval, !dbg !1020
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1022

if.end.71:                                        ; preds = %if.end.67
  %25 = load %struct._object*, %struct._object** %m, align 8, !dbg !1023, !tbaa !882
  %call72 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i64 512), !dbg !1025
  %cmp73 = icmp eq i32 %call72, -1, !dbg !1026
  br i1 %cmp73, label %if.then.74, label %if.end.75, !dbg !1027

if.then.74:                                       ; preds = %if.end.71
  store %struct._object* null, %struct._object** %retval, !dbg !1028
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1030

if.end.75:                                        ; preds = %if.end.71
  %26 = load %struct._object*, %struct._object** %m, align 8, !dbg !1031, !tbaa !882
  %call76 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i64 25), !dbg !1033
  %cmp77 = icmp eq i32 %call76, -1, !dbg !1034
  br i1 %cmp77, label %if.then.78, label %if.end.79, !dbg !1035

if.then.78:                                       ; preds = %if.end.75
  store %struct._object* null, %struct._object** %retval, !dbg !1036
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1038

if.end.79:                                        ; preds = %if.end.75
  %27 = load %struct._object*, %struct._object** %m, align 8, !dbg !1039, !tbaa !882
  %call80 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i64 0), !dbg !1041
  %cmp81 = icmp eq i32 %call80, -1, !dbg !1042
  br i1 %cmp81, label %if.then.82, label %if.end.83, !dbg !1043

if.then.82:                                       ; preds = %if.end.79
  store %struct._object* null, %struct._object** %retval, !dbg !1044
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1046

if.end.83:                                        ; preds = %if.end.79
  %28 = load %struct._object*, %struct._object** %m, align 8, !dbg !1047, !tbaa !882
  %call84 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i64 1), !dbg !1049
  %cmp85 = icmp eq i32 %call84, -1, !dbg !1050
  br i1 %cmp85, label %if.then.86, label %if.end.87, !dbg !1051

if.then.86:                                       ; preds = %if.end.83
  store %struct._object* null, %struct._object** %retval, !dbg !1052
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1054

if.end.87:                                        ; preds = %if.end.83
  %29 = load %struct._object*, %struct._object** %m, align 8, !dbg !1055, !tbaa !882
  %call88 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i64 2), !dbg !1057
  %cmp89 = icmp eq i32 %call88, -1, !dbg !1058
  br i1 %cmp89, label %if.then.90, label %if.end.91, !dbg !1059

if.then.90:                                       ; preds = %if.end.87
  store %struct._object* null, %struct._object** %retval, !dbg !1060
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1062

if.end.91:                                        ; preds = %if.end.87
  %30 = load %struct._object*, %struct._object** %m, align 8, !dbg !1063, !tbaa !882
  %call92 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i64 3), !dbg !1065
  %cmp93 = icmp eq i32 %call92, -1, !dbg !1066
  br i1 %cmp93, label %if.then.94, label %if.end.95, !dbg !1067

if.then.94:                                       ; preds = %if.end.91
  store %struct._object* null, %struct._object** %retval, !dbg !1068
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1070

if.end.95:                                        ; preds = %if.end.91
  %31 = load %struct._object*, %struct._object** %m, align 8, !dbg !1071, !tbaa !882
  %call96 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i64 4), !dbg !1073
  %cmp97 = icmp eq i32 %call96, -1, !dbg !1074
  br i1 %cmp97, label %if.then.98, label %if.end.99, !dbg !1075

if.then.98:                                       ; preds = %if.end.95
  store %struct._object* null, %struct._object** %retval, !dbg !1076
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1078

if.end.99:                                        ; preds = %if.end.95
  %32 = load %struct._object*, %struct._object** %m, align 8, !dbg !1079, !tbaa !882
  %call100 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i64 5), !dbg !1081
  %cmp101 = icmp eq i32 %call100, -1, !dbg !1082
  br i1 %cmp101, label %if.then.102, label %if.end.103, !dbg !1083

if.then.102:                                      ; preds = %if.end.99
  store %struct._object* null, %struct._object** %retval, !dbg !1084
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1086

if.end.103:                                       ; preds = %if.end.99
  %33 = load %struct._object*, %struct._object** %m, align 8, !dbg !1087, !tbaa !882
  %call104 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i64 6), !dbg !1089
  %cmp105 = icmp eq i32 %call104, -1, !dbg !1090
  br i1 %cmp105, label %if.then.106, label %if.end.107, !dbg !1091

if.then.106:                                      ; preds = %if.end.103
  store %struct._object* null, %struct._object** %retval, !dbg !1092
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1094

if.end.107:                                       ; preds = %if.end.103
  %34 = load %struct._object*, %struct._object** %m, align 8, !dbg !1095, !tbaa !882
  %call108 = call i32 @PyModule_AddIntConstant(%struct._object* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i64 7), !dbg !1097
  %cmp109 = icmp eq i32 %call108, -1, !dbg !1098
  br i1 %cmp109, label %if.then.110, label %if.end.111, !dbg !1099

if.then.110:                                      ; preds = %if.end.107
  store %struct._object* null, %struct._object** %retval, !dbg !1100
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1102

if.end.111:                                       ; preds = %if.end.107
  %35 = load %struct._object*, %struct._object** %m, align 8, !dbg !1103, !tbaa !882
  %call112 = call i32 @PyModule_AddIntConstant(%struct._object* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i64 8), !dbg !1105
  %cmp113 = icmp eq i32 %call112, -1, !dbg !1106
  br i1 %cmp113, label %if.then.114, label %if.end.115, !dbg !1107

if.then.114:                                      ; preds = %if.end.111
  store %struct._object* null, %struct._object** %retval, !dbg !1108
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1110

if.end.115:                                       ; preds = %if.end.111
  %36 = load %struct._object*, %struct._object** %m, align 8, !dbg !1111, !tbaa !882
  %call116 = call i32 @PyModule_AddIntConstant(%struct._object* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i64 9), !dbg !1113
  %cmp117 = icmp eq i32 %call116, -1, !dbg !1114
  br i1 %cmp117, label %if.then.118, label %if.end.119, !dbg !1115

if.then.118:                                      ; preds = %if.end.115
  store %struct._object* null, %struct._object** %retval, !dbg !1116
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1118

if.end.119:                                       ; preds = %if.end.115
  %37 = load %struct._object*, %struct._object** %m, align 8, !dbg !1119, !tbaa !882
  %call120 = call i32 @PyModule_AddIntConstant(%struct._object* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i64 10), !dbg !1121
  %cmp121 = icmp eq i32 %call120, -1, !dbg !1122
  br i1 %cmp121, label %if.then.122, label %if.end.123, !dbg !1123

if.then.122:                                      ; preds = %if.end.119
  store %struct._object* null, %struct._object** %retval, !dbg !1124
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1126

if.end.123:                                       ; preds = %if.end.119
  %38 = load %struct._object*, %struct._object** %m, align 8, !dbg !1127, !tbaa !882
  %call124 = call i32 @PyModule_AddIntConstant(%struct._object* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i64 11), !dbg !1129
  %cmp125 = icmp eq i32 %call124, -1, !dbg !1130
  br i1 %cmp125, label %if.then.126, label %if.end.127, !dbg !1131

if.then.126:                                      ; preds = %if.end.123
  store %struct._object* null, %struct._object** %retval, !dbg !1132
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1134

if.end.127:                                       ; preds = %if.end.123
  %39 = load %struct._object*, %struct._object** %m, align 8, !dbg !1135, !tbaa !882
  %call128 = call i32 @PyModule_AddIntConstant(%struct._object* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i64 12), !dbg !1137
  %cmp129 = icmp eq i32 %call128, -1, !dbg !1138
  br i1 %cmp129, label %if.then.130, label %if.end.131, !dbg !1139

if.then.130:                                      ; preds = %if.end.127
  store %struct._object* null, %struct._object** %retval, !dbg !1140
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1142

if.end.131:                                       ; preds = %if.end.127
  %40 = load %struct._object*, %struct._object** %m, align 8, !dbg !1143, !tbaa !882
  %call132 = call i32 @PyModule_AddIntConstant(%struct._object* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i64 13), !dbg !1145
  %cmp133 = icmp eq i32 %call132, -1, !dbg !1146
  br i1 %cmp133, label %if.then.134, label %if.end.135, !dbg !1147

if.then.134:                                      ; preds = %if.end.131
  store %struct._object* null, %struct._object** %retval, !dbg !1148
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1150

if.end.135:                                       ; preds = %if.end.131
  %41 = load %struct._object*, %struct._object** %m, align 8, !dbg !1151, !tbaa !882
  %call136 = call i32 @PyModule_AddIntConstant(%struct._object* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i64 14), !dbg !1153
  %cmp137 = icmp eq i32 %call136, -1, !dbg !1154
  br i1 %cmp137, label %if.then.138, label %if.end.139, !dbg !1155

if.then.138:                                      ; preds = %if.end.135
  store %struct._object* null, %struct._object** %retval, !dbg !1156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1158

if.end.139:                                       ; preds = %if.end.135
  %42 = load %struct._object*, %struct._object** %m, align 8, !dbg !1159, !tbaa !882
  %call140 = call i32 @PyModule_AddIntConstant(%struct._object* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i64 15), !dbg !1161
  %cmp141 = icmp eq i32 %call140, -1, !dbg !1162
  br i1 %cmp141, label %if.then.142, label %if.end.143, !dbg !1163

if.then.142:                                      ; preds = %if.end.139
  store %struct._object* null, %struct._object** %retval, !dbg !1164
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1166

if.end.143:                                       ; preds = %if.end.139
  %43 = load %struct._object*, %struct._object** %m, align 8, !dbg !1167, !tbaa !882
  %call144 = call i32 @PyModule_AddIntConstant(%struct._object* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i64 16), !dbg !1169
  %cmp145 = icmp eq i32 %call144, -1, !dbg !1170
  br i1 %cmp145, label %if.then.146, label %if.end.147, !dbg !1171

if.then.146:                                      ; preds = %if.end.143
  store %struct._object* null, %struct._object** %retval, !dbg !1172
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1174

if.end.147:                                       ; preds = %if.end.143
  %44 = load %struct._object*, %struct._object** %m, align 8, !dbg !1175, !tbaa !882
  %call148 = call i32 @PyModule_AddIntConstant(%struct._object* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i64 17), !dbg !1177
  %cmp149 = icmp eq i32 %call148, -1, !dbg !1178
  br i1 %cmp149, label %if.then.150, label %if.end.151, !dbg !1179

if.then.150:                                      ; preds = %if.end.147
  store %struct._object* null, %struct._object** %retval, !dbg !1180
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1182

if.end.151:                                       ; preds = %if.end.147
  %45 = load %struct._object*, %struct._object** %m, align 8, !dbg !1183, !tbaa !882
  %call152 = call i32 @PyModule_AddIntConstant(%struct._object* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i64 18), !dbg !1185
  %cmp153 = icmp eq i32 %call152, -1, !dbg !1186
  br i1 %cmp153, label %if.then.154, label %if.end.155, !dbg !1187

if.then.154:                                      ; preds = %if.end.151
  store %struct._object* null, %struct._object** %retval, !dbg !1188
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1190

if.end.155:                                       ; preds = %if.end.151
  %46 = load %struct._object*, %struct._object** %m, align 8, !dbg !1191, !tbaa !882
  %call156 = call i32 @PyModule_AddIntConstant(%struct._object* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i64 19), !dbg !1193
  %cmp157 = icmp eq i32 %call156, -1, !dbg !1194
  br i1 %cmp157, label %if.then.158, label %if.end.159, !dbg !1195

if.then.158:                                      ; preds = %if.end.155
  store %struct._object* null, %struct._object** %retval, !dbg !1196
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1198

if.end.159:                                       ; preds = %if.end.155
  %47 = load %struct._object*, %struct._object** %m, align 8, !dbg !1199, !tbaa !882
  %call160 = call i32 @PyModule_AddIntConstant(%struct._object* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i64 20), !dbg !1201
  %cmp161 = icmp eq i32 %call160, -1, !dbg !1202
  br i1 %cmp161, label %if.then.162, label %if.end.163, !dbg !1203

if.then.162:                                      ; preds = %if.end.159
  store %struct._object* null, %struct._object** %retval, !dbg !1204
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1206

if.end.163:                                       ; preds = %if.end.159
  %48 = load %struct._object*, %struct._object** %m, align 8, !dbg !1207, !tbaa !882
  %call164 = call i32 @PyModule_AddIntConstant(%struct._object* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i64 21), !dbg !1209
  %cmp165 = icmp eq i32 %call164, -1, !dbg !1210
  br i1 %cmp165, label %if.then.166, label %if.end.167, !dbg !1211

if.then.166:                                      ; preds = %if.end.163
  store %struct._object* null, %struct._object** %retval, !dbg !1212
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1214

if.end.167:                                       ; preds = %if.end.163
  %49 = load %struct._object*, %struct._object** %m, align 8, !dbg !1215, !tbaa !882
  %call168 = call i32 @PyModule_AddIntConstant(%struct._object* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i64 22), !dbg !1217
  %cmp169 = icmp eq i32 %call168, -1, !dbg !1218
  br i1 %cmp169, label %if.then.170, label %if.end.171, !dbg !1219

if.then.170:                                      ; preds = %if.end.167
  store %struct._object* null, %struct._object** %retval, !dbg !1220
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1222

if.end.171:                                       ; preds = %if.end.167
  %50 = load %struct._object*, %struct._object** %m, align 8, !dbg !1223, !tbaa !882
  %call172 = call i32 @PyModule_AddIntConstant(%struct._object* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i64 23), !dbg !1225
  %cmp173 = icmp eq i32 %call172, -1, !dbg !1226
  br i1 %cmp173, label %if.then.174, label %if.end.175, !dbg !1227

if.then.174:                                      ; preds = %if.end.171
  store %struct._object* null, %struct._object** %retval, !dbg !1228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1230

if.end.175:                                       ; preds = %if.end.171
  %51 = load %struct._object*, %struct._object** %m, align 8, !dbg !1231, !tbaa !882
  %call176 = call i32 @PyModule_AddIntConstant(%struct._object* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i64 24), !dbg !1233
  %cmp177 = icmp eq i32 %call176, -1, !dbg !1234
  br i1 %cmp177, label %if.then.178, label %if.end.179, !dbg !1235

if.then.178:                                      ; preds = %if.end.175
  store %struct._object* null, %struct._object** %retval, !dbg !1236
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1238

if.end.179:                                       ; preds = %if.end.175
  %52 = load %struct._object*, %struct._object** %m, align 8, !dbg !1239, !tbaa !882
  %call180 = call i32 @PyModule_AddIntConstant(%struct._object* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i64 3222553351), !dbg !1241
  %cmp181 = icmp eq i32 %call180, -1, !dbg !1242
  br i1 %cmp181, label %if.then.182, label %if.end.183, !dbg !1243

if.then.182:                                      ; preds = %if.end.179
  store %struct._object* null, %struct._object** %retval, !dbg !1244
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1246

if.end.183:                                       ; preds = %if.end.179
  %53 = load %struct._object*, %struct._object** %m, align 8, !dbg !1247, !tbaa !882
  %call184 = call i32 @PyModule_AddIntConstant(%struct._object* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i64 3484435201), !dbg !1249
  %cmp185 = icmp eq i32 %call184, -1, !dbg !1250
  br i1 %cmp185, label %if.then.186, label %if.end.187, !dbg !1251

if.then.186:                                      ; preds = %if.end.183
  store %struct._object* null, %struct._object** %retval, !dbg !1252
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1254

if.end.187:                                       ; preds = %if.end.183
  %54 = load %struct._object*, %struct._object** %m, align 8, !dbg !1255, !tbaa !882
  %call188 = call i32 @PyModule_AddIntConstant(%struct._object* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i64 3222553347), !dbg !1257
  %cmp189 = icmp eq i32 %call188, -1, !dbg !1258
  br i1 %cmp189, label %if.then.190, label %if.end.191, !dbg !1259

if.then.190:                                      ; preds = %if.end.187
  store %struct._object* null, %struct._object** %retval, !dbg !1260
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1262

if.end.191:                                       ; preds = %if.end.187
  %55 = load %struct._object*, %struct._object** %m, align 8, !dbg !1263, !tbaa !882
  %call192 = call i32 @PyModule_AddIntConstant(%struct._object* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i64 2409906953), !dbg !1265
  %cmp193 = icmp eq i32 %call192, -1, !dbg !1266
  br i1 %cmp193, label %if.then.194, label %if.end.195, !dbg !1267

if.then.194:                                      ; preds = %if.end.191
  store %struct._object* null, %struct._object** %retval, !dbg !1268
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1270

if.end.195:                                       ; preds = %if.end.191
  %56 = load %struct._object*, %struct._object** %m, align 8, !dbg !1271, !tbaa !882
  %call196 = call i32 @PyModule_AddIntConstant(%struct._object* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i64 3222553346), !dbg !1273
  %cmp197 = icmp eq i32 %call196, -1, !dbg !1274
  br i1 %cmp197, label %if.then.198, label %if.end.199, !dbg !1275

if.then.198:                                      ; preds = %if.end.195
  store %struct._object* null, %struct._object** %retval, !dbg !1276
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1278

if.end.199:                                       ; preds = %if.end.195
  %57 = load %struct._object*, %struct._object** %m, align 8, !dbg !1279, !tbaa !882
  %call200 = call i32 @PyModule_AddIntConstant(%struct._object* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i64 17152), !dbg !1281
  %cmp201 = icmp eq i32 %call200, -1, !dbg !1282
  br i1 %cmp201, label %if.then.202, label %if.end.203, !dbg !1283

if.then.202:                                      ; preds = %if.end.199
  store %struct._object* null, %struct._object** %retval, !dbg !1284
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1286

if.end.203:                                       ; preds = %if.end.199
  %58 = load %struct._object*, %struct._object** %m, align 8, !dbg !1287, !tbaa !882
  %call204 = call i32 @PyModule_AddIntConstant(%struct._object* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i64 3222553350), !dbg !1289
  %cmp205 = icmp eq i32 %call204, -1, !dbg !1290
  br i1 %cmp205, label %if.then.206, label %if.end.207, !dbg !1291

if.then.206:                                      ; preds = %if.end.203
  store %struct._object* null, %struct._object** %retval, !dbg !1292
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1294

if.end.207:                                       ; preds = %if.end.203
  %59 = load %struct._object*, %struct._object** %m, align 8, !dbg !1295, !tbaa !882
  %call208 = call i32 @PyModule_AddIntConstant(%struct._object* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i64 3483648776), !dbg !1297
  %cmp209 = icmp eq i32 %call208, -1, !dbg !1298
  br i1 %cmp209, label %if.then.210, label %if.end.211, !dbg !1299

if.then.210:                                      ; preds = %if.end.207
  store %struct._object* null, %struct._object** %retval, !dbg !1300
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1302

if.end.211:                                       ; preds = %if.end.207
  %60 = load %struct._object*, %struct._object** %m, align 8, !dbg !1303, !tbaa !882
  %call212 = call i32 @PyModule_AddIntConstant(%struct._object* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i64 1075069701), !dbg !1305
  %cmp213 = icmp eq i32 %call212, -1, !dbg !1306
  br i1 %cmp213, label %if.then.214, label %if.end.215, !dbg !1307

if.then.214:                                      ; preds = %if.end.211
  store %struct._object* null, %struct._object** %retval, !dbg !1308
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1310

if.end.215:                                       ; preds = %if.end.211
  %61 = load %struct._object*, %struct._object** %m, align 8, !dbg !1311, !tbaa !882
  %call216 = call i32 @PyModule_AddIntConstant(%struct._object* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i64 1075069700), !dbg !1313
  %cmp217 = icmp eq i32 %call216, -1, !dbg !1314
  br i1 %cmp217, label %if.then.218, label %if.end.219, !dbg !1315

if.then.218:                                      ; preds = %if.end.215
  store %struct._object* null, %struct._object** %retval, !dbg !1316
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1318

if.end.219:                                       ; preds = %if.end.215
  %62 = load %struct._object*, %struct._object** %m, align 8, !dbg !1319, !tbaa !882
  %call220 = call i32 @PyModule_AddIntConstant(%struct._object* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i64 3221508161), !dbg !1321
  %cmp221 = icmp eq i32 %call220, -1, !dbg !1322
  br i1 %cmp221, label %if.then.222, label %if.end.223, !dbg !1323

if.then.222:                                      ; preds = %if.end.219
  store %struct._object* null, %struct._object** %retval, !dbg !1324
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1326

if.end.223:                                       ; preds = %if.end.219
  %63 = load %struct._object*, %struct._object** %m, align 8, !dbg !1327, !tbaa !882
  %call224 = call i32 @PyModule_AddIntConstant(%struct._object* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i64 3221508102), !dbg !1329
  %cmp225 = icmp eq i32 %call224, -1, !dbg !1330
  br i1 %cmp225, label %if.then.226, label %if.end.227, !dbg !1331

if.then.226:                                      ; preds = %if.end.223
  store %struct._object* null, %struct._object** %retval, !dbg !1332
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1334

if.end.227:                                       ; preds = %if.end.223
  %64 = load %struct._object*, %struct._object** %m, align 8, !dbg !1335, !tbaa !882
  %call228 = call i32 @PyModule_AddIntConstant(%struct._object* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i64 3221508100), !dbg !1337
  %cmp229 = icmp eq i32 %call228, -1, !dbg !1338
  br i1 %cmp229, label %if.then.230, label %if.end.231, !dbg !1339

if.then.230:                                      ; preds = %if.end.227
  store %struct._object* null, %struct._object** %retval, !dbg !1340
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1342

if.end.231:                                       ; preds = %if.end.227
  %65 = load %struct._object*, %struct._object** %m, align 8, !dbg !1343, !tbaa !882
  %call232 = call i32 @PyModule_AddIntConstant(%struct._object* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i64 2147766287), !dbg !1345
  %cmp233 = icmp eq i32 %call232, -1, !dbg !1346
  br i1 %cmp233, label %if.then.234, label %if.end.235, !dbg !1347

if.then.234:                                      ; preds = %if.end.231
  store %struct._object* null, %struct._object** %retval, !dbg !1348
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1350

if.end.235:                                       ; preds = %if.end.231
  %66 = load %struct._object*, %struct._object** %m, align 8, !dbg !1351, !tbaa !882
  %call236 = call i32 @PyModule_AddIntConstant(%struct._object* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0), i64 3221508160), !dbg !1353
  %cmp237 = icmp eq i32 %call236, -1, !dbg !1354
  br i1 %cmp237, label %if.then.238, label %if.end.239, !dbg !1355

if.then.238:                                      ; preds = %if.end.235
  store %struct._object* null, %struct._object** %retval, !dbg !1356
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1358

if.end.239:                                       ; preds = %if.end.235
  %67 = load %struct._object*, %struct._object** %m, align 8, !dbg !1359, !tbaa !882
  %call240 = call i32 @PyModule_AddIntConstant(%struct._object* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i64 2147766283), !dbg !1361
  %cmp241 = icmp eq i32 %call240, -1, !dbg !1362
  br i1 %cmp241, label %if.then.242, label %if.end.243, !dbg !1363

if.then.242:                                      ; preds = %if.end.239
  store %struct._object* null, %struct._object** %retval, !dbg !1364
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1366

if.end.243:                                       ; preds = %if.end.239
  %68 = load %struct._object*, %struct._object** %m, align 8, !dbg !1367, !tbaa !882
  %call244 = call i32 @PyModule_AddIntConstant(%struct._object* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i64 2148290577), !dbg !1369
  %cmp245 = icmp eq i32 %call244, -1, !dbg !1370
  br i1 %cmp245, label %if.then.246, label %if.end.247, !dbg !1371

if.then.246:                                      ; preds = %if.end.243
  store %struct._object* null, %struct._object** %retval, !dbg !1372
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1374

if.end.247:                                       ; preds = %if.end.243
  %69 = load %struct._object*, %struct._object** %m, align 8, !dbg !1375, !tbaa !882
  %call248 = call i32 @PyModule_AddIntConstant(%struct._object* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), i64 2148552717), !dbg !1377
  %cmp249 = icmp eq i32 %call248, -1, !dbg !1378
  br i1 %cmp249, label %if.then.250, label %if.end.251, !dbg !1379

if.then.250:                                      ; preds = %if.end.247
  store %struct._object* null, %struct._object** %retval, !dbg !1380
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1382

if.end.251:                                       ; preds = %if.end.247
  %70 = load %struct._object*, %struct._object** %m, align 8, !dbg !1383, !tbaa !882
  %call252 = call i32 @PyModule_AddIntConstant(%struct._object* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0), i64 2147766295), !dbg !1385
  %cmp253 = icmp eq i32 %call252, -1, !dbg !1386
  br i1 %cmp253, label %if.then.254, label %if.end.255, !dbg !1387

if.then.254:                                      ; preds = %if.end.251
  store %struct._object* null, %struct._object** %retval, !dbg !1388
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1390

if.end.255:                                       ; preds = %if.end.251
  %71 = load %struct._object*, %struct._object** %m, align 8, !dbg !1391, !tbaa !882
  %call256 = call i32 @PyModule_AddIntConstant(%struct._object* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), i64 2148290578), !dbg !1393
  %cmp257 = icmp eq i32 %call256, -1, !dbg !1394
  br i1 %cmp257, label %if.then.258, label %if.end.259, !dbg !1395

if.then.258:                                      ; preds = %if.end.255
  store %struct._object* null, %struct._object** %retval, !dbg !1396
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1398

if.end.259:                                       ; preds = %if.end.255
  %72 = load %struct._object*, %struct._object** %m, align 8, !dbg !1399, !tbaa !882
  %call260 = call i32 @PyModule_AddIntConstant(%struct._object* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0), i64 2148552716), !dbg !1401
  %cmp261 = icmp eq i32 %call260, -1, !dbg !1402
  br i1 %cmp261, label %if.then.262, label %if.end.263, !dbg !1403

if.then.262:                                      ; preds = %if.end.259
  store %struct._object* null, %struct._object** %retval, !dbg !1404
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1406

if.end.263:                                       ; preds = %if.end.259
  %73 = load %struct._object*, %struct._object** %m, align 8, !dbg !1407, !tbaa !882
  %call264 = call i32 @PyModule_AddIntConstant(%struct._object* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i64 2147766339), !dbg !1409
  %cmp265 = icmp eq i32 %call264, -1, !dbg !1410
  br i1 %cmp265, label %if.then.266, label %if.end.267, !dbg !1411

if.then.266:                                      ; preds = %if.end.263
  store %struct._object* null, %struct._object** %retval, !dbg !1412
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1414

if.end.267:                                       ; preds = %if.end.263
  %74 = load %struct._object*, %struct._object** %m, align 8, !dbg !1415, !tbaa !882
  %call268 = call i32 @PyModule_AddIntConstant(%struct._object* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i32 0, i32 0), i64 2147766288), !dbg !1417
  %cmp269 = icmp eq i32 %call268, -1, !dbg !1418
  br i1 %cmp269, label %if.then.270, label %if.end.271, !dbg !1419

if.then.270:                                      ; preds = %if.end.267
  store %struct._object* null, %struct._object** %retval, !dbg !1420
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1422

if.end.271:                                       ; preds = %if.end.267
  %75 = load %struct._object*, %struct._object** %m, align 8, !dbg !1423, !tbaa !882
  %call272 = call i32 @PyModule_AddIntConstant(%struct._object* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0), i64 2148552723), !dbg !1425
  %cmp273 = icmp eq i32 %call272, -1, !dbg !1426
  br i1 %cmp273, label %if.then.274, label %if.end.275, !dbg !1427

if.then.274:                                      ; preds = %if.end.271
  store %struct._object* null, %struct._object** %retval, !dbg !1428
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1430

if.end.275:                                       ; preds = %if.end.271
  %76 = load %struct._object*, %struct._object** %m, align 8, !dbg !1431, !tbaa !882
  %call276 = call i32 @PyModule_AddIntConstant(%struct._object* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i64 2148552724), !dbg !1433
  %cmp277 = icmp eq i32 %call276, -1, !dbg !1434
  br i1 %cmp277, label %if.then.278, label %if.end.279, !dbg !1435

if.then.278:                                      ; preds = %if.end.275
  store %struct._object* null, %struct._object** %retval, !dbg !1436
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1438

if.end.279:                                       ; preds = %if.end.275
  %77 = load %struct._object*, %struct._object** %m, align 8, !dbg !1439, !tbaa !882
  %call280 = call i32 @PyModule_AddIntConstant(%struct._object* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i64 20494), !dbg !1441
  %cmp281 = icmp eq i32 %call280, -1, !dbg !1442
  br i1 %cmp281, label %if.then.282, label %if.end.283, !dbg !1443

if.then.282:                                      ; preds = %if.end.279
  store %struct._object* null, %struct._object** %retval, !dbg !1444
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1446

if.end.283:                                       ; preds = %if.end.279
  %78 = load %struct._object*, %struct._object** %m, align 8, !dbg !1447, !tbaa !882
  %call284 = call i32 @PyModule_AddIntConstant(%struct._object* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i64 20488), !dbg !1449
  %cmp285 = icmp eq i32 %call284, -1, !dbg !1450
  br i1 %cmp285, label %if.then.286, label %if.end.287, !dbg !1451

if.then.286:                                      ; preds = %if.end.283
  store %struct._object* null, %struct._object** %retval, !dbg !1452
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1454

if.end.287:                                       ; preds = %if.end.283
  %79 = load %struct._object*, %struct._object** %m, align 8, !dbg !1455, !tbaa !882
  %call288 = call i32 @PyModule_AddIntConstant(%struct._object* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i64 1074024471), !dbg !1457
  %cmp289 = icmp eq i32 %call288, -1, !dbg !1458
  br i1 %cmp289, label %if.then.290, label %if.end.291, !dbg !1459

if.then.290:                                      ; preds = %if.end.287
  store %struct._object* null, %struct._object** %retval, !dbg !1460
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1462

if.end.291:                                       ; preds = %if.end.287
  %80 = load %struct._object*, %struct._object** %m, align 8, !dbg !1463, !tbaa !882
  %call292 = call i32 @PyModule_AddIntConstant(%struct._object* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i64 20480), !dbg !1465
  %cmp293 = icmp eq i32 %call292, -1, !dbg !1466
  br i1 %cmp293, label %if.then.294, label %if.end.295, !dbg !1467

if.then.294:                                      ; preds = %if.end.291
  store %struct._object* null, %struct._object** %retval, !dbg !1468
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1470

if.end.295:                                       ; preds = %if.end.291
  %81 = load %struct._object*, %struct._object** %m, align 8, !dbg !1471, !tbaa !882
  %call296 = call i32 @PyModule_AddIntConstant(%struct._object* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0), i64 3221508101), !dbg !1473
  %cmp297 = icmp eq i32 %call296, -1, !dbg !1474
  br i1 %cmp297, label %if.then.298, label %if.end.299, !dbg !1475

if.then.298:                                      ; preds = %if.end.295
  store %struct._object* null, %struct._object** %retval, !dbg !1476
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1478

if.end.299:                                       ; preds = %if.end.295
  %82 = load %struct._object*, %struct._object** %m, align 8, !dbg !1479, !tbaa !882
  %call300 = call i32 @PyModule_AddIntConstant(%struct._object* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i32 0, i32 0), i64 20502), !dbg !1481
  %cmp301 = icmp eq i32 %call300, -1, !dbg !1482
  br i1 %cmp301, label %if.then.302, label %if.end.303, !dbg !1483

if.then.302:                                      ; preds = %if.end.299
  store %struct._object* null, %struct._object** %retval, !dbg !1484
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1486

if.end.303:                                       ; preds = %if.end.299
  %83 = load %struct._object*, %struct._object** %m, align 8, !dbg !1487, !tbaa !882
  %call304 = call i32 @PyModule_AddIntConstant(%struct._object* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), i64 3221508101), !dbg !1489
  %cmp305 = icmp eq i32 %call304, -1, !dbg !1490
  br i1 %cmp305, label %if.then.306, label %if.end.307, !dbg !1491

if.then.306:                                      ; preds = %if.end.303
  store %struct._object* null, %struct._object** %retval, !dbg !1492
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1494

if.end.307:                                       ; preds = %if.end.303
  %84 = load %struct._object*, %struct._object** %m, align 8, !dbg !1495, !tbaa !882
  %call308 = call i32 @PyModule_AddIntConstant(%struct._object* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i64 3221508106), !dbg !1497
  %cmp309 = icmp eq i32 %call308, -1, !dbg !1498
  br i1 %cmp309, label %if.then.310, label %if.end.311, !dbg !1499

if.then.310:                                      ; preds = %if.end.307
  store %struct._object* null, %struct._object** %retval, !dbg !1500
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1502

if.end.311:                                       ; preds = %if.end.307
  %85 = load %struct._object*, %struct._object** %m, align 8, !dbg !1503, !tbaa !882
  %call312 = call i32 @PyModule_AddIntConstant(%struct._object* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i64 1074024514), !dbg !1505
  %cmp313 = icmp eq i32 %call312, -1, !dbg !1506
  br i1 %cmp313, label %if.then.314, label %if.end.315, !dbg !1507

if.then.314:                                      ; preds = %if.end.311
  store %struct._object* null, %struct._object** %retval, !dbg !1508
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1510

if.end.315:                                       ; preds = %if.end.311
  %86 = load %struct._object*, %struct._object** %m, align 8, !dbg !1511, !tbaa !882
  %call316 = call i32 @PyModule_AddIntConstant(%struct._object* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i64 20501), !dbg !1513
  %cmp317 = icmp eq i32 %call316, -1, !dbg !1514
  br i1 %cmp317, label %if.then.318, label %if.end.319, !dbg !1515

if.then.318:                                      ; preds = %if.end.315
  store %struct._object* null, %struct._object** %retval, !dbg !1516
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1518

if.end.319:                                       ; preds = %if.end.315
  %87 = load %struct._object*, %struct._object** %m, align 8, !dbg !1519, !tbaa !882
  %call320 = call i32 @PyModule_AddIntConstant(%struct._object* %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), i64 1074024464), !dbg !1521
  %cmp321 = icmp eq i32 %call320, -1, !dbg !1522
  br i1 %cmp321, label %if.then.322, label %if.end.323, !dbg !1523

if.then.322:                                      ; preds = %if.end.319
  store %struct._object* null, %struct._object** %retval, !dbg !1524
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1526

if.end.323:                                       ; preds = %if.end.319
  %88 = load %struct._object*, %struct._object** %m, align 8, !dbg !1527, !tbaa !882
  %call324 = call i32 @PyModule_AddIntConstant(%struct._object* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), i64 3221508098), !dbg !1529
  %cmp325 = icmp eq i32 %call324, -1, !dbg !1530
  br i1 %cmp325, label %if.then.326, label %if.end.327, !dbg !1531

if.then.326:                                      ; preds = %if.end.323
  store %struct._object* null, %struct._object** %retval, !dbg !1532
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1534

if.end.327:                                       ; preds = %if.end.323
  %89 = load %struct._object*, %struct._object** %m, align 8, !dbg !1535, !tbaa !882
  %call328 = call i32 @PyModule_AddIntConstant(%struct._object* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), i64 3221508099), !dbg !1537
  %cmp329 = icmp eq i32 %call328, -1, !dbg !1538
  br i1 %cmp329, label %if.then.330, label %if.end.331, !dbg !1539

if.then.330:                                      ; preds = %if.end.327
  store %struct._object* null, %struct._object** %retval, !dbg !1540
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1542

if.end.331:                                       ; preds = %if.end.327
  %90 = load %struct._object*, %struct._object** %m, align 8, !dbg !1543, !tbaa !882
  %call332 = call i32 @PyModule_AddIntConstant(%struct._object* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), i64 3221508105), !dbg !1545
  %cmp333 = icmp eq i32 %call332, -1, !dbg !1546
  br i1 %cmp333, label %if.then.334, label %if.end.335, !dbg !1547

if.then.334:                                      ; preds = %if.end.331
  store %struct._object* null, %struct._object** %retval, !dbg !1548
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1550

if.end.335:                                       ; preds = %if.end.331
  %91 = load %struct._object*, %struct._object** %m, align 8, !dbg !1551, !tbaa !882
  %call336 = call i32 @PyModule_AddIntConstant(%struct._object* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i64 20481), !dbg !1553
  %cmp337 = icmp eq i32 %call336, -1, !dbg !1554
  br i1 %cmp337, label %if.then.338, label %if.end.339, !dbg !1555

if.then.338:                                      ; preds = %if.end.335
  store %struct._object* null, %struct._object** %retval, !dbg !1556
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1558

if.end.339:                                       ; preds = %if.end.335
  %92 = load %struct._object*, %struct._object** %m, align 8, !dbg !1559, !tbaa !882
  %call340 = call i32 @PyModule_AddIntConstant(%struct._object* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i32 0, i32 0), i64 1074024719), !dbg !1561
  %cmp341 = icmp eq i32 %call340, -1, !dbg !1562
  br i1 %cmp341, label %if.then.342, label %if.end.343, !dbg !1563

if.then.342:                                      ; preds = %if.end.339
  store %struct._object* null, %struct._object** %retval, !dbg !1564
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1566

if.end.343:                                       ; preds = %if.end.339
  %93 = load %struct._object*, %struct._object** %m, align 8, !dbg !1567, !tbaa !882
  %call344 = call i32 @PyModule_AddIntConstant(%struct._object* %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0), i64 1076384007), !dbg !1569
  %cmp345 = icmp eq i32 %call344, -1, !dbg !1570
  br i1 %cmp345, label %if.then.346, label %if.end.347, !dbg !1571

if.then.346:                                      ; preds = %if.end.343
  store %struct._object* null, %struct._object** %retval, !dbg !1572
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1574

if.end.347:                                       ; preds = %if.end.343
  %94 = load %struct._object*, %struct._object** %m, align 8, !dbg !1575, !tbaa !882
  %call348 = call i32 @PyModule_AddIntConstant(%struct._object* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i64 3228848396), !dbg !1577
  %cmp349 = icmp eq i32 %call348, -1, !dbg !1578
  br i1 %cmp349, label %if.then.350, label %if.end.351, !dbg !1579

if.then.350:                                      ; preds = %if.end.347
  store %struct._object* null, %struct._object** %retval, !dbg !1580
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1582

if.end.351:                                       ; preds = %if.end.347
  %95 = load %struct._object*, %struct._object** %m, align 8, !dbg !1583, !tbaa !882
  %call352 = call i32 @PyModule_AddIntConstant(%struct._object* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i32 0, i32 0), i64 3223416066), !dbg !1585
  %cmp353 = icmp eq i32 %call352, -1, !dbg !1586
  br i1 %cmp353, label %if.then.354, label %if.end.355, !dbg !1587

if.then.354:                                      ; preds = %if.end.351
  store %struct._object* null, %struct._object** %retval, !dbg !1588
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1590

if.end.355:                                       ; preds = %if.end.351
  %96 = load %struct._object*, %struct._object** %m, align 8, !dbg !1591, !tbaa !882
  %call356 = call i32 @PyModule_AddIntConstant(%struct._object* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i32 0, i32 0), i64 3221515521), !dbg !1593
  %cmp357 = icmp eq i32 %call356, -1, !dbg !1594
  br i1 %cmp357, label %if.then.358, label %if.end.359, !dbg !1595

if.then.358:                                      ; preds = %if.end.355
  store %struct._object* null, %struct._object** %retval, !dbg !1596
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1598

if.end.359:                                       ; preds = %if.end.355
  %97 = load %struct._object*, %struct._object** %m, align 8, !dbg !1599, !tbaa !882
  %call360 = call i32 @PyModule_AddIntConstant(%struct._object* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i32 0, i32 0), i64 3221515520), !dbg !1601
  %cmp361 = icmp eq i32 %call360, -1, !dbg !1602
  br i1 %cmp361, label %if.then.362, label %if.end.363, !dbg !1603

if.then.362:                                      ; preds = %if.end.359
  store %struct._object* null, %struct._object** %retval, !dbg !1604
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1606

if.end.363:                                       ; preds = %if.end.359
  %98 = load %struct._object*, %struct._object** %m, align 8, !dbg !1607, !tbaa !882
  %call364 = call i32 @PyModule_AddIntConstant(%struct._object* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0), i64 3221508355), !dbg !1609
  %cmp365 = icmp eq i32 %call364, -1, !dbg !1610
  br i1 %cmp365, label %if.then.366, label %if.end.367, !dbg !1611

if.then.366:                                      ; preds = %if.end.363
  store %struct._object* null, %struct._object** %retval, !dbg !1612
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1614

if.end.367:                                       ; preds = %if.end.363
  %99 = load %struct._object*, %struct._object** %m, align 8, !dbg !1615, !tbaa !882
  %call368 = call i32 @PyModule_AddIntConstant(%struct._object* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i32 0, i32 0), i64 2147766533), !dbg !1617
  %cmp369 = icmp eq i32 %call368, -1, !dbg !1618
  br i1 %cmp369, label %if.then.370, label %if.end.371, !dbg !1619

if.then.370:                                      ; preds = %if.end.367
  store %struct._object* null, %struct._object** %retval, !dbg !1620
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1622

if.end.371:                                       ; preds = %if.end.367
  %100 = load %struct._object*, %struct._object** %m, align 8, !dbg !1623, !tbaa !882
  %call372 = call i32 @PyModule_AddIntConstant(%struct._object* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.90, i32 0, i32 0), i64 2147766532), !dbg !1625
  %cmp373 = icmp eq i32 %call372, -1, !dbg !1626
  br i1 %cmp373, label %if.then.374, label %if.end.375, !dbg !1627

if.then.374:                                      ; preds = %if.end.371
  store %struct._object* null, %struct._object** %retval, !dbg !1628
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1630

if.end.375:                                       ; preds = %if.end.371
  %101 = load %struct._object*, %struct._object** %m, align 8, !dbg !1631, !tbaa !882
  %call376 = call i32 @PyModule_AddIntConstant(%struct._object* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i64 2147766547), !dbg !1633
  %cmp377 = icmp eq i32 %call376, -1, !dbg !1634
  br i1 %cmp377, label %if.then.378, label %if.end.379, !dbg !1635

if.then.378:                                      ; preds = %if.end.375
  store %struct._object* null, %struct._object** %retval, !dbg !1636
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1638

if.end.379:                                       ; preds = %if.end.375
  %102 = load %struct._object*, %struct._object** %m, align 8, !dbg !1639, !tbaa !882
  %call380 = call i32 @PyModule_AddIntConstant(%struct._object* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i32 0, i32 0), i64 2147766539), !dbg !1641
  %cmp381 = icmp eq i32 %call380, -1, !dbg !1642
  br i1 %cmp381, label %if.then.382, label %if.end.383, !dbg !1643

if.then.382:                                      ; preds = %if.end.379
  store %struct._object* null, %struct._object** %retval, !dbg !1644
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1646

if.end.383:                                       ; preds = %if.end.379
  %103 = load %struct._object*, %struct._object** %m, align 8, !dbg !1647, !tbaa !882
  %call384 = call i32 @PyModule_AddIntConstant(%struct._object* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.93, i32 0, i32 0), i64 2147766538), !dbg !1649
  %cmp385 = icmp eq i32 %call384, -1, !dbg !1650
  br i1 %cmp385, label %if.then.386, label %if.end.387, !dbg !1651

if.then.386:                                      ; preds = %if.end.383
  store %struct._object* null, %struct._object** %retval, !dbg !1652
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1654

if.end.387:                                       ; preds = %if.end.383
  %104 = load %struct._object*, %struct._object** %m, align 8, !dbg !1655, !tbaa !882
  %call388 = call i32 @PyModule_AddIntConstant(%struct._object* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0), i64 1074286866), !dbg !1657
  %cmp389 = icmp eq i32 %call388, -1, !dbg !1658
  br i1 %cmp389, label %if.then.390, label %if.end.391, !dbg !1659

if.then.390:                                      ; preds = %if.end.387
  store %struct._object* null, %struct._object** %retval, !dbg !1660
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1662

if.end.391:                                       ; preds = %if.end.387
  %105 = load %struct._object*, %struct._object** %m, align 8, !dbg !1663, !tbaa !882
  %call392 = call i32 @PyModule_AddIntConstant(%struct._object* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0), i64 20753), !dbg !1665
  %cmp393 = icmp eq i32 %call392, -1, !dbg !1666
  br i1 %cmp393, label %if.then.394, label %if.end.395, !dbg !1667

if.then.394:                                      ; preds = %if.end.391
  store %struct._object* null, %struct._object** %retval, !dbg !1668
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1670

if.end.395:                                       ; preds = %if.end.391
  %106 = load %struct._object*, %struct._object** %m, align 8, !dbg !1671, !tbaa !882
  %call396 = call i32 @PyModule_AddIntConstant(%struct._object* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.96, i32 0, i32 0), i64 1074024710), !dbg !1673
  %cmp397 = icmp eq i32 %call396, -1, !dbg !1674
  br i1 %cmp397, label %if.then.398, label %if.end.399, !dbg !1675

if.then.398:                                      ; preds = %if.end.395
  store %struct._object* null, %struct._object** %retval, !dbg !1676
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1678

if.end.399:                                       ; preds = %if.end.395
  %107 = load %struct._object*, %struct._object** %m, align 8, !dbg !1679, !tbaa !882
  %call400 = call i32 @PyModule_AddIntConstant(%struct._object* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i64 20736), !dbg !1681
  %cmp401 = icmp eq i32 %call400, -1, !dbg !1682
  br i1 %cmp401, label %if.then.402, label %if.end.403, !dbg !1683

if.then.402:                                      ; preds = %if.end.399
  store %struct._object* null, %struct._object** %retval, !dbg !1684
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1686

if.end.403:                                       ; preds = %if.end.399
  %108 = load %struct._object*, %struct._object** %m, align 8, !dbg !1687, !tbaa !882
  %call404 = call i32 @PyModule_AddIntConstant(%struct._object* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i32 0, i32 0), i64 1074024713), !dbg !1689
  %cmp405 = icmp eq i32 %call404, -1, !dbg !1690
  br i1 %cmp405, label %if.then.406, label %if.end.407, !dbg !1691

if.then.406:                                      ; preds = %if.end.403
  store %struct._object* null, %struct._object** %retval, !dbg !1692
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1694

if.end.407:                                       ; preds = %if.end.403
  %109 = load %struct._object*, %struct._object** %m, align 8, !dbg !1695, !tbaa !882
  %call408 = call i32 @PyModule_AddIntConstant(%struct._object* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0), i64 20737), !dbg !1697
  %cmp409 = icmp eq i32 %call408, -1, !dbg !1698
  br i1 %cmp409, label %if.then.410, label %if.end.411, !dbg !1699

if.then.410:                                      ; preds = %if.end.407
  store %struct._object* null, %struct._object** %retval, !dbg !1700
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1702

if.end.411:                                       ; preds = %if.end.407
  %110 = load %struct._object*, %struct._object** %m, align 8, !dbg !1703, !tbaa !882
  %call412 = call i32 @PyModule_AddIntConstant(%struct._object* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i32 0, i32 0), i64 1074024712), !dbg !1705
  %cmp413 = icmp eq i32 %call412, -1, !dbg !1706
  br i1 %cmp413, label %if.then.414, label %if.end.415, !dbg !1707

if.then.414:                                      ; preds = %if.end.411
  store %struct._object* null, %struct._object** %retval, !dbg !1708
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1710

if.end.415:                                       ; preds = %if.end.411
  %111 = load %struct._object*, %struct._object** %m, align 8, !dbg !1711, !tbaa !882
  %call416 = call i32 @PyModule_AddIntConstant(%struct._object* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i32 0, i32 0), i64 1074024717), !dbg !1713
  %cmp417 = icmp eq i32 %call416, -1, !dbg !1714
  br i1 %cmp417, label %if.then.418, label %if.end.419, !dbg !1715

if.then.418:                                      ; preds = %if.end.415
  store %struct._object* null, %struct._object** %retval, !dbg !1716
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1718

if.end.419:                                       ; preds = %if.end.415
  %112 = load %struct._object*, %struct._object** %m, align 8, !dbg !1719, !tbaa !882
  %call420 = call i32 @PyModule_AddIntConstant(%struct._object* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i32 0, i32 0), i64 3483652373), !dbg !1721
  %cmp421 = icmp eq i32 %call420, -1, !dbg !1722
  br i1 %cmp421, label %if.then.422, label %if.end.423, !dbg !1723

if.then.422:                                      ; preds = %if.end.419
  store %struct._object* null, %struct._object** %retval, !dbg !1724
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1726

if.end.423:                                       ; preds = %if.end.419
  %113 = load %struct._object*, %struct._object** %m, align 8, !dbg !1727, !tbaa !882
  %call424 = call i32 @PyModule_AddIntConstant(%struct._object* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i64 3230421268), !dbg !1729
  %cmp425 = icmp eq i32 %call424, -1, !dbg !1730
  br i1 %cmp425, label %if.then.426, label %if.end.427, !dbg !1731

if.then.426:                                      ; preds = %if.end.423
  store %struct._object* null, %struct._object** %retval, !dbg !1732
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1734

if.end.427:                                       ; preds = %if.end.423
  %114 = load %struct._object*, %struct._object** %m, align 8, !dbg !1735, !tbaa !882
  %call428 = call i32 @PyModule_AddIntConstant(%struct._object* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0), i64 3230421250), !dbg !1737
  %cmp429 = icmp eq i32 %call428, -1, !dbg !1738
  br i1 %cmp429, label %if.then.430, label %if.end.431, !dbg !1739

if.then.430:                                      ; preds = %if.end.427
  store %struct._object* null, %struct._object** %retval, !dbg !1740
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1742

if.end.431:                                       ; preds = %if.end.427
  %115 = load %struct._object*, %struct._object** %m, align 8, !dbg !1743, !tbaa !882
  %call432 = call i32 @PyModule_AddIntConstant(%struct._object* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i32 0, i32 0), i64 3221508366), !dbg !1745
  %cmp433 = icmp eq i32 %call432, -1, !dbg !1746
  br i1 %cmp433, label %if.then.434, label %if.end.435, !dbg !1747

if.then.434:                                      ; preds = %if.end.431
  store %struct._object* null, %struct._object** %retval, !dbg !1748
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1750

if.end.435:                                       ; preds = %if.end.431
  %116 = load %struct._object*, %struct._object** %m, align 8, !dbg !1751, !tbaa !882
  %call436 = call i32 @PyModule_AddIntConstant(%struct._object* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.106, i32 0, i32 0), i64 3222032662), !dbg !1753
  %cmp437 = icmp eq i32 %call436, -1, !dbg !1754
  br i1 %cmp437, label %if.then.438, label %if.end.439, !dbg !1755

if.then.438:                                      ; preds = %if.end.435
  store %struct._object* null, %struct._object** %retval, !dbg !1756
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1758

if.end.439:                                       ; preds = %if.end.435
  %117 = load %struct._object*, %struct._object** %m, align 8, !dbg !1759, !tbaa !882
  %call440 = call i32 @PyModule_AddIntConstant(%struct._object* %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.107, i32 0, i32 0), i64 21508), !dbg !1761
  %cmp441 = icmp eq i32 %call440, -1, !dbg !1762
  br i1 %cmp441, label %if.then.442, label %if.end.443, !dbg !1763

if.then.442:                                      ; preds = %if.end.439
  store %struct._object* null, %struct._object** %retval, !dbg !1764
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1766

if.end.443:                                       ; preds = %if.end.439
  %118 = load %struct._object*, %struct._object** %m, align 8, !dbg !1767, !tbaa !882
  %call444 = call i32 @PyModule_AddIntConstant(%struct._object* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), i64 1074025479), !dbg !1769
  %cmp445 = icmp eq i32 %call444, -1, !dbg !1770
  br i1 %cmp445, label %if.then.446, label %if.end.447, !dbg !1771

if.then.446:                                      ; preds = %if.end.443
  store %struct._object* null, %struct._object** %retval, !dbg !1772
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1774

if.end.447:                                       ; preds = %if.end.443
  %119 = load %struct._object*, %struct._object** %m, align 8, !dbg !1775, !tbaa !882
  %call448 = call i32 @PyModule_AddIntConstant(%struct._object* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i32 0, i32 0), i64 1074025480), !dbg !1777
  %cmp449 = icmp eq i32 %call448, -1, !dbg !1778
  br i1 %cmp449, label %if.then.450, label %if.end.451, !dbg !1779

if.then.450:                                      ; preds = %if.end.447
  store %struct._object* null, %struct._object** %retval, !dbg !1780
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1782

if.end.451:                                       ; preds = %if.end.447
  %120 = load %struct._object*, %struct._object** %m, align 8, !dbg !1783, !tbaa !882
  %call452 = call i32 @PyModule_AddIntConstant(%struct._object* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0), i64 3221509126), !dbg !1785
  %cmp453 = icmp eq i32 %call452, -1, !dbg !1786
  br i1 %cmp453, label %if.then.454, label %if.end.455, !dbg !1787

if.then.454:                                      ; preds = %if.end.451
  store %struct._object* null, %struct._object** %retval, !dbg !1788
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1790

if.end.455:                                       ; preds = %if.end.451
  %121 = load %struct._object*, %struct._object** %m, align 8, !dbg !1791, !tbaa !882
  %call456 = call i32 @PyModule_AddIntConstant(%struct._object* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), i64 21506), !dbg !1793
  %cmp457 = icmp eq i32 %call456, -1, !dbg !1794
  br i1 %cmp457, label %if.then.458, label %if.end.459, !dbg !1795

if.then.458:                                      ; preds = %if.end.455
  store %struct._object* null, %struct._object** %retval, !dbg !1796
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1798

if.end.459:                                       ; preds = %if.end.455
  %122 = load %struct._object*, %struct._object** %m, align 8, !dbg !1799, !tbaa !882
  %call460 = call i32 @PyModule_AddIntConstant(%struct._object* %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), i64 21507), !dbg !1801
  %cmp461 = icmp eq i32 %call460, -1, !dbg !1802
  br i1 %cmp461, label %if.then.462, label %if.end.463, !dbg !1803

if.then.462:                                      ; preds = %if.end.459
  store %struct._object* null, %struct._object** %retval, !dbg !1804
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1806

if.end.463:                                       ; preds = %if.end.459
  %123 = load %struct._object*, %struct._object** %m, align 8, !dbg !1807, !tbaa !882
  %call464 = call i32 @PyModule_AddIntConstant(%struct._object* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.113, i32 0, i32 0), i64 3221509125), !dbg !1809
  %cmp465 = icmp eq i32 %call464, -1, !dbg !1810
  br i1 %cmp465, label %if.then.466, label %if.end.467, !dbg !1811

if.then.466:                                      ; preds = %if.end.463
  store %struct._object* null, %struct._object** %retval, !dbg !1812
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1814

if.end.467:                                       ; preds = %if.end.463
  %124 = load %struct._object*, %struct._object** %m, align 8, !dbg !1815, !tbaa !882
  %call468 = call i32 @PyModule_AddIntConstant(%struct._object* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0), i64 3221509121), !dbg !1817
  %cmp469 = icmp eq i32 %call468, -1, !dbg !1818
  br i1 %cmp469, label %if.then.470, label %if.end.471, !dbg !1819

if.then.470:                                      ; preds = %if.end.467
  store %struct._object* null, %struct._object** %retval, !dbg !1820
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1822

if.end.471:                                       ; preds = %if.end.467
  %125 = load %struct._object*, %struct._object** %m, align 8, !dbg !1823, !tbaa !882
  store %struct._object* %125, %struct._object** %retval, !dbg !1824
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1824

cleanup:                                          ; preds = %if.end.471, %if.then.470, %if.then.466, %if.then.462, %if.then.458, %if.then.454, %if.then.450, %if.then.446, %if.then.442, %if.then.438, %if.then.434, %if.then.430, %if.then.426, %if.then.422, %if.then.418, %if.then.414, %if.then.410, %if.then.406, %if.then.402, %if.then.398, %if.then.394, %if.then.390, %if.then.386, %if.then.382, %if.then.378, %if.then.374, %if.then.370, %if.then.366, %if.then.362, %if.then.358, %if.then.354, %if.then.350, %if.then.346, %if.then.342, %if.then.338, %if.then.334, %if.then.330, %if.then.326, %if.then.322, %if.then.318, %if.then.314, %if.then.310, %if.then.306, %if.then.302, %if.then.298, %if.then.294, %if.then.290, %if.then.286, %if.then.282, %if.then.278, %if.then.274, %if.then.270, %if.then.266, %if.then.262, %if.then.258, %if.then.254, %if.then.250, %if.then.246, %if.then.242, %if.then.238, %if.then.234, %if.then.230, %if.then.226, %if.then.222, %if.then.218, %if.then.214, %if.then.210, %if.then.206, %if.then.202, %if.then.198, %if.then.194, %if.then.190, %if.then.186, %if.then.182, %if.then.178, %if.then.174, %if.then.170, %if.then.166, %if.then.162, %if.then.158, %if.then.154, %if.then.150, %if.then.146, %if.then.142, %if.then.138, %if.then.134, %if.then.130, %if.then.126, %if.then.122, %if.then.118, %if.then.114, %if.then.110, %if.then.106, %if.then.102, %if.then.98, %if.then.94, %if.then.90, %if.then.86, %if.then.82, %if.then.78, %if.then.74, %if.then.70, %if.then.66, %if.then.62, %if.then.58, %if.then.54, %if.then.50, %if.then.46, %if.then.42, %if.then.38, %if.then.34, %if.then.30, %if.then.26, %if.then.22, %if.then.18, %if.then.7, %if.then.3, %if.then
  %126 = bitcast %struct._object** %m to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %126) #1, !dbg !1825
  %127 = load %struct._object*, %struct._object** %retval, !dbg !1825
  ret %struct._object* %127, !dbg !1825
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @build_namelists(%struct._object* %module) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca %struct._object*, align 8
  %labels = alloca %struct._object*, align 8
  %names = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %num_controls = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp47 = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !794, metadata !868), !dbg !1826
  %0 = bitcast %struct._object** %labels to i8*, !dbg !1827
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1827
  call void @llvm.dbg.declare(metadata %struct._object** %labels, metadata !795, metadata !868), !dbg !1828
  %1 = bitcast %struct._object** %names to i8*, !dbg !1829
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1829
  call void @llvm.dbg.declare(metadata %struct._object** %names, metadata !796, metadata !868), !dbg !1830
  %2 = bitcast %struct._object** %s to i8*, !dbg !1831
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1831
  call void @llvm.dbg.declare(metadata %struct._object** %s, metadata !797, metadata !868), !dbg !1832
  %3 = bitcast i32* %num_controls to i8*, !dbg !1833
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1833
  call void @llvm.dbg.declare(metadata i32* %num_controls, metadata !798, metadata !868), !dbg !1834
  %4 = bitcast i32* %i to i8*, !dbg !1835
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !1835
  call void @llvm.dbg.declare(metadata i32* %i, metadata !799, metadata !868), !dbg !1836
  store i32 25, i32* %num_controls, align 4, !dbg !1837, !tbaa !1838
  %5 = load i32, i32* %num_controls, align 4, !dbg !1840, !tbaa !1838
  %conv = sext i32 %5 to i64, !dbg !1840
  %call = call %struct._object* @PyList_New(i64 %conv), !dbg !1841
  store %struct._object* %call, %struct._object** %labels, align 8, !dbg !1842, !tbaa !882
  %6 = load i32, i32* %num_controls, align 4, !dbg !1843, !tbaa !1838
  %conv1 = sext i32 %6 to i64, !dbg !1843
  %call2 = call %struct._object* @PyList_New(i64 %conv1), !dbg !1844
  store %struct._object* %call2, %struct._object** %names, align 8, !dbg !1845, !tbaa !882
  %7 = load %struct._object*, %struct._object** %labels, align 8, !dbg !1846, !tbaa !882
  %cmp = icmp eq %struct._object* %7, null, !dbg !1848
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1849

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct._object*, %struct._object** %names, align 8, !dbg !1850, !tbaa !882
  %cmp4 = icmp eq %struct._object* %8, null, !dbg !1852
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1853

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %error2, !dbg !1854

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !1855, !tbaa !1838
  br label %for.cond, !dbg !1857

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !dbg !1858, !tbaa !1838
  %10 = load i32, i32* %num_controls, align 4, !dbg !1862, !tbaa !1838
  %cmp6 = icmp slt i32 %9, %10, !dbg !1863
  br i1 %cmp6, label %for.body, label %for.end, !dbg !1864

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !1865, !tbaa !1838
  %idxprom = sext i32 %11 to i64, !dbg !1867
  %arrayidx = getelementptr [25 x i8*], [25 x i8*]* @control_labels, i32 0, i64 %idxprom, !dbg !1867
  %12 = load i8*, i8** %arrayidx, align 8, !dbg !1867, !tbaa !882
  %call8 = call %struct._object* @PyUnicode_FromString(i8* %12), !dbg !1868
  store %struct._object* %call8, %struct._object** %s, align 8, !dbg !1869, !tbaa !882
  %13 = load %struct._object*, %struct._object** %s, align 8, !dbg !1870, !tbaa !882
  %cmp9 = icmp eq %struct._object* %13, null, !dbg !1872
  br i1 %cmp9, label %if.then.11, label %if.end.12, !dbg !1873

if.then.11:                                       ; preds = %for.body
  br label %error2, !dbg !1874

if.end.12:                                        ; preds = %for.body
  %14 = load %struct._object*, %struct._object** %s, align 8, !dbg !1875, !tbaa !882
  %15 = load i32, i32* %i, align 4, !dbg !1876, !tbaa !1838
  %idxprom13 = sext i32 %15 to i64, !dbg !1877
  %16 = load %struct._object*, %struct._object** %labels, align 8, !dbg !1878, !tbaa !882
  %17 = bitcast %struct._object* %16 to %struct.PyListObject*, !dbg !1879
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %17, i32 0, i32 1, !dbg !1880
  %18 = load %struct._object**, %struct._object*** %ob_item, align 8, !dbg !1880, !tbaa !1881
  %arrayidx14 = getelementptr %struct._object*, %struct._object** %18, i64 %idxprom13, !dbg !1877
  store %struct._object* %14, %struct._object** %arrayidx14, align 8, !dbg !1884, !tbaa !882
  %19 = load i32, i32* %i, align 4, !dbg !1885, !tbaa !1838
  %idxprom15 = sext i32 %19 to i64, !dbg !1886
  %arrayidx16 = getelementptr [25 x i8*], [25 x i8*]* @control_names, i32 0, i64 %idxprom15, !dbg !1886
  %20 = load i8*, i8** %arrayidx16, align 8, !dbg !1886, !tbaa !882
  %call17 = call %struct._object* @PyUnicode_FromString(i8* %20), !dbg !1887
  store %struct._object* %call17, %struct._object** %s, align 8, !dbg !1888, !tbaa !882
  %21 = load %struct._object*, %struct._object** %s, align 8, !dbg !1889, !tbaa !882
  %cmp18 = icmp eq %struct._object* %21, null, !dbg !1891
  br i1 %cmp18, label %if.then.20, label %if.end.21, !dbg !1892

if.then.20:                                       ; preds = %if.end.12
  br label %error2, !dbg !1893

if.end.21:                                        ; preds = %if.end.12
  %22 = load %struct._object*, %struct._object** %s, align 8, !dbg !1894, !tbaa !882
  %23 = load i32, i32* %i, align 4, !dbg !1895, !tbaa !1838
  %idxprom22 = sext i32 %23 to i64, !dbg !1896
  %24 = load %struct._object*, %struct._object** %names, align 8, !dbg !1897, !tbaa !882
  %25 = bitcast %struct._object* %24 to %struct.PyListObject*, !dbg !1898
  %ob_item23 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %25, i32 0, i32 1, !dbg !1899
  %26 = load %struct._object**, %struct._object*** %ob_item23, align 8, !dbg !1899, !tbaa !1881
  %arrayidx24 = getelementptr %struct._object*, %struct._object** %26, i64 %idxprom22, !dbg !1896
  store %struct._object* %22, %struct._object** %arrayidx24, align 8, !dbg !1900, !tbaa !882
  br label %for.inc, !dbg !1901

for.inc:                                          ; preds = %if.end.21
  %27 = load i32, i32* %i, align 4, !dbg !1902, !tbaa !1838
  %inc = add i32 %27, 1, !dbg !1902
  store i32 %inc, i32* %i, align 4, !dbg !1902, !tbaa !1838
  br label %for.cond, !dbg !1903

for.end:                                          ; preds = %for.cond
  %28 = load %struct._object*, %struct._object** %module.addr, align 8, !dbg !1904, !tbaa !882
  %29 = load %struct._object*, %struct._object** %labels, align 8, !dbg !1906, !tbaa !882
  %call25 = call i32 @PyModule_AddObject(%struct._object* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.177, i32 0, i32 0), %struct._object* %29), !dbg !1907
  %cmp26 = icmp eq i32 %call25, -1, !dbg !1908
  br i1 %cmp26, label %if.then.28, label %if.end.29, !dbg !1909

if.then.28:                                       ; preds = %for.end
  br label %error2, !dbg !1910

if.end.29:                                        ; preds = %for.end
  %30 = load %struct._object*, %struct._object** %module.addr, align 8, !dbg !1911, !tbaa !882
  %31 = load %struct._object*, %struct._object** %names, align 8, !dbg !1913, !tbaa !882
  %call30 = call i32 @PyModule_AddObject(%struct._object* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.178, i32 0, i32 0), %struct._object* %31), !dbg !1914
  %cmp31 = icmp eq i32 %call30, -1, !dbg !1915
  br i1 %cmp31, label %if.then.33, label %if.end.34, !dbg !1916

if.then.33:                                       ; preds = %if.end.29
  br label %error1, !dbg !1917

if.end.34:                                        ; preds = %if.end.29
  store i32 0, i32* %retval, !dbg !1918
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1918

error2:                                           ; preds = %if.then.28, %if.then.20, %if.then.11, %if.then
  br label %do.body, !dbg !1919

do.body:                                          ; preds = %error2
  %32 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1920
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !1920
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !800, metadata !868), !dbg !1922
  %33 = load %struct._object*, %struct._object** %labels, align 8, !dbg !1923, !tbaa !882
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1922, !tbaa !882
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1924, !tbaa !882
  %cmp35 = icmp ne %struct._object* %34, null, !dbg !1925
  br i1 %cmp35, label %if.then.37, label %if.end.43, !dbg !1926

if.then.37:                                       ; preds = %do.body
  br label %do.body.38, !dbg !1927

do.body.38:                                       ; preds = %if.then.37
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1929
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !1929
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !802, metadata !868), !dbg !1931
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1932, !tbaa !882
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8, !dbg !1931, !tbaa !882
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1933, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !1935
  %38 = load i64, i64* %ob_refcnt, align 8, !dbg !1936, !tbaa !900
  %dec = add i64 %38, -1, !dbg !1936
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1936, !tbaa !900
  %cmp39 = icmp ne i64 %dec, 0, !dbg !1937
  br i1 %cmp39, label %if.then.41, label %if.else, !dbg !1938

if.then.41:                                       ; preds = %do.body.38
  br label %if.end.42, !dbg !1939

if.else:                                          ; preds = %do.body.38
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1941, !tbaa !882
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1943
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1943, !tbaa !1944
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !1945
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1945, !tbaa !1946
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1948, !tbaa !882
  call void %41(%struct._object* %42), !dbg !1949
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  %43 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1950
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !1950
  br label %do.cond, !dbg !1952

do.cond:                                          ; preds = %if.end.42
  br label %do.end, !dbg !1953

do.end:                                           ; preds = %do.cond
  br label %if.end.43, !dbg !1955

if.end.43:                                        ; preds = %do.end, %do.body
  %44 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1957
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !1957
  br label %do.cond.44, !dbg !1960

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !1961

do.end.45:                                        ; preds = %do.cond.44
  br label %error1, !dbg !1963

error1:                                           ; preds = %do.end.45, %if.then.33
  br label %do.body.46, !dbg !1965

do.body.46:                                       ; preds = %error1
  %45 = bitcast %struct._object** %_py_xdecref_tmp47 to i8*, !dbg !1966
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !1966
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp47, metadata !805, metadata !868), !dbg !1968
  %46 = load %struct._object*, %struct._object** %names, align 8, !dbg !1969, !tbaa !882
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !1968, !tbaa !882
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !1970, !tbaa !882
  %cmp48 = icmp ne %struct._object* %47, null, !dbg !1971
  br i1 %cmp48, label %if.then.50, label %if.end.64, !dbg !1972

if.then.50:                                       ; preds = %do.body.46
  br label %do.body.51, !dbg !1973

do.body.51:                                       ; preds = %if.then.50
  %48 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !1975
  call void @llvm.lifetime.start(i64 8, i8* %48) #1, !dbg !1975
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp52, metadata !807, metadata !868), !dbg !1977
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8, !dbg !1978, !tbaa !882
  store %struct._object* %49, %struct._object** %_py_decref_tmp52, align 8, !dbg !1977, !tbaa !882
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !1979, !tbaa !882
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !1981
  %51 = load i64, i64* %ob_refcnt53, align 8, !dbg !1982, !tbaa !900
  %dec54 = add i64 %51, -1, !dbg !1982
  store i64 %dec54, i64* %ob_refcnt53, align 8, !dbg !1982, !tbaa !900
  %cmp55 = icmp ne i64 %dec54, 0, !dbg !1983
  br i1 %cmp55, label %if.then.57, label %if.else.58, !dbg !1984

if.then.57:                                       ; preds = %do.body.51
  br label %if.end.61, !dbg !1985

if.else.58:                                       ; preds = %do.body.51
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !1987, !tbaa !882
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !1989
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !1989, !tbaa !1944
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !1990
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8, !dbg !1990, !tbaa !1946
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !1991, !tbaa !882
  call void %54(%struct._object* %55), !dbg !1992
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  %56 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !1993
  br label %do.cond.62, !dbg !1995

do.cond.62:                                       ; preds = %if.end.61
  br label %do.end.63, !dbg !1996

do.end.63:                                        ; preds = %do.cond.62
  br label %if.end.64, !dbg !1998

if.end.64:                                        ; preds = %do.end.63, %do.body.46
  %57 = bitcast %struct._object** %_py_xdecref_tmp47 to i8*, !dbg !2000
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !2000
  br label %do.cond.65, !dbg !2001

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66, !dbg !2002

do.end.66:                                        ; preds = %do.cond.65
  store i32 -1, i32* %retval, !dbg !2004
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2004

cleanup:                                          ; preds = %do.end.66, %if.end.34
  %58 = bitcast i32* %i to i8*, !dbg !2005
  call void @llvm.lifetime.end(i64 4, i8* %58) #1, !dbg !2005
  %59 = bitcast i32* %num_controls to i8*, !dbg !2005
  call void @llvm.lifetime.end(i64 4, i8* %59) #1, !dbg !2005
  %60 = bitcast %struct._object** %s to i8*, !dbg !2005
  call void @llvm.lifetime.end(i64 8, i8* %60) #1, !dbg !2005
  %61 = bitcast %struct._object** %names to i8*, !dbg !2005
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !2005
  %62 = bitcast %struct._object** %labels to i8*, !dbg !2005
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !2005
  %63 = load i32, i32* %retval, !dbg !2005
  ret i32 %63, !dbg !2005
}

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @oss_dealloc(%struct.oss_audio_t* %self) #0 {
entry:
  %self.addr = alloca %struct.oss_audio_t*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !404, metadata !868), !dbg !2006
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2007, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2009
  %1 = load i32, i32* %fd, align 4, !dbg !2009, !tbaa !2010
  %cmp = icmp ne i32 %1, -1, !dbg !2012
  br i1 %cmp, label %if.then, label %if.end, !dbg !2013

if.then:                                          ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2014, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !2015
  %3 = load i32, i32* %fd1, align 4, !dbg !2015, !tbaa !2010
  %call = call i32 @close(i32 %3), !dbg !2016
  br label %if.end, !dbg !2016

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2017, !tbaa !882
  %5 = bitcast %struct.oss_audio_t* %4 to i8*, !dbg !2017
  call void @PyObject_Free(i8* %5), !dbg !2018
  ret void, !dbg !2019
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_getattro(%struct.oss_audio_t* %self, %struct._object* %nameobj) #0 {
entry:
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %nameobj.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %rval = alloca %struct._object*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %__s1_len47 = alloca i64, align 8
  %__s2_len49 = alloca i64, align 8
  %tmp50 = alloca i32, align 4
  %__s156 = alloca i8*, align 8
  %__result58 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  %__s1_len107 = alloca i64, align 8
  %__s2_len109 = alloca i64, align 8
  %tmp110 = alloca i32, align 4
  %__s1116 = alloca i8*, align 8
  %__result118 = alloca i32, align 4
  %tmp156 = alloca i32, align 4
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !409, metadata !868), !dbg !2020
  store %struct._object* %nameobj, %struct._object** %nameobj.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %nameobj.addr, metadata !410, metadata !868), !dbg !2021
  %0 = bitcast i8** %name to i8*, !dbg !2022
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2022
  call void @llvm.dbg.declare(metadata i8** %name, metadata !411, metadata !868), !dbg !2023
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.116, i32 0, i32 0), i8** %name, align 8, !dbg !2023, !tbaa !882
  %1 = bitcast %struct._object** %rval to i8*, !dbg !2024
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2024
  call void @llvm.dbg.declare(metadata %struct._object** %rval, metadata !412, metadata !868), !dbg !2025
  store %struct._object* null, %struct._object** %rval, align 8, !dbg !2025, !tbaa !882
  %2 = load %struct._object*, %struct._object** %nameobj.addr, align 8, !dbg !2026, !tbaa !882
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !2028
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2028, !tbaa !1944
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !2029
  %4 = load i64, i64* %tp_flags, align 8, !dbg !2029, !tbaa !2030
  %and = and i64 %4, 268435456, !dbg !2031
  %cmp = icmp ne i64 %and, 0, !dbg !2032
  br i1 %cmp, label %if.then, label %if.end, !dbg !2033

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %nameobj.addr, align 8, !dbg !2034, !tbaa !882
  %call = call i8* @PyUnicode_AsUTF8(%struct._object* %5), !dbg !2035
  store i8* %call, i8** %name, align 8, !dbg !2036, !tbaa !882
  br label %if.end, !dbg !2037

if.end:                                           ; preds = %if.then, %entry
  %6 = bitcast i64* %__s1_len to i8*, !dbg !2038
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2038
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !413, metadata !868), !dbg !2039
  %7 = bitcast i64* %__s2_len to i8*, !dbg !2038
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2038
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !416, metadata !868), !dbg !2040
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.117 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !2041

land.lhs.true:                                    ; preds = %if.end
  store i64 6, i64* %__s2_len, align 8, !dbg !2042, !tbaa !2044
  %8 = load i64, i64* %__s2_len, align 8, !dbg !2045, !tbaa !2044
  %cmp1 = icmp ult i64 %8, 4, !dbg !2046
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2047

cond.true:                                        ; preds = %land.lhs.true
  %9 = bitcast i8** %__s1 to i8*, !dbg !2048
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !2048
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !417, metadata !868), !dbg !2050
  %10 = load i8*, i8** %name, align 8, !dbg !2051, !tbaa !882
  store i8* %10, i8** %__s1, align 8, !dbg !2050, !tbaa !882
  %11 = bitcast i32* %__result to i8*, !dbg !2052
  call void @llvm.lifetime.start(i64 4, i8* %11) #1, !dbg !2052
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !419, metadata !868), !dbg !2053
  %12 = load i8*, i8** %__s1, align 8, !dbg !2054, !tbaa !882
  %arrayidx = getelementptr i8, i8* %12, i64 0, !dbg !2054
  %13 = load i8, i8* %arrayidx, align 1, !dbg !2054, !tbaa !2055
  %conv = zext i8 %13 to i32, !dbg !2054
  %14 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), align 1, !dbg !2056, !tbaa !2055
  %conv4 = zext i8 %14 to i32, !dbg !2056
  %sub = sub i32 %conv, %conv4, !dbg !2057
  store i32 %sub, i32* %__result, align 4, !dbg !2053, !tbaa !1838
  %15 = load i64, i64* %__s2_len, align 8, !dbg !2058, !tbaa !2044
  %cmp5 = icmp ugt i64 %15, 0, !dbg !2060
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.37, !dbg !2061

land.lhs.true.7:                                  ; preds = %cond.true
  %16 = load i32, i32* %__result, align 4, !dbg !2062, !tbaa !1838
  %cmp8 = icmp eq i32 %16, 0, !dbg !2064
  br i1 %cmp8, label %if.then.10, label %if.end.37, !dbg !2065

if.then.10:                                       ; preds = %land.lhs.true.7
  %17 = load i8*, i8** %__s1, align 8, !dbg !2066, !tbaa !882
  %arrayidx11 = getelementptr i8, i8* %17, i64 1, !dbg !2066
  %18 = load i8, i8* %arrayidx11, align 1, !dbg !2066, !tbaa !2055
  %conv12 = zext i8 %18 to i32, !dbg !2066
  %19 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i64 1), align 1, !dbg !2069, !tbaa !2055
  %conv13 = zext i8 %19 to i32, !dbg !2069
  %sub14 = sub i32 %conv12, %conv13, !dbg !2070
  store i32 %sub14, i32* %__result, align 4, !dbg !2071, !tbaa !1838
  %20 = load i64, i64* %__s2_len, align 8, !dbg !2072, !tbaa !2044
  %cmp15 = icmp ugt i64 %20, 1, !dbg !2074
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.36, !dbg !2075

land.lhs.true.17:                                 ; preds = %if.then.10
  %21 = load i32, i32* %__result, align 4, !dbg !2076, !tbaa !1838
  %cmp18 = icmp eq i32 %21, 0, !dbg !2078
  br i1 %cmp18, label %if.then.20, label %if.end.36, !dbg !2079

if.then.20:                                       ; preds = %land.lhs.true.17
  %22 = load i8*, i8** %__s1, align 8, !dbg !2080, !tbaa !882
  %arrayidx21 = getelementptr i8, i8* %22, i64 2, !dbg !2080
  %23 = load i8, i8* %arrayidx21, align 1, !dbg !2080, !tbaa !2055
  %conv22 = zext i8 %23 to i32, !dbg !2080
  %24 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i64 2), align 1, !dbg !2083, !tbaa !2055
  %conv23 = zext i8 %24 to i32, !dbg !2083
  %sub24 = sub i32 %conv22, %conv23, !dbg !2084
  store i32 %sub24, i32* %__result, align 4, !dbg !2085, !tbaa !1838
  %25 = load i64, i64* %__s2_len, align 8, !dbg !2086, !tbaa !2044
  %cmp25 = icmp ugt i64 %25, 2, !dbg !2088
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.35, !dbg !2089

land.lhs.true.27:                                 ; preds = %if.then.20
  %26 = load i32, i32* %__result, align 4, !dbg !2090, !tbaa !1838
  %cmp28 = icmp eq i32 %26, 0, !dbg !2092
  br i1 %cmp28, label %if.then.30, label %if.end.35, !dbg !2093

if.then.30:                                       ; preds = %land.lhs.true.27
  %27 = load i8*, i8** %__s1, align 8, !dbg !2094, !tbaa !882
  %arrayidx31 = getelementptr i8, i8* %27, i64 3, !dbg !2094
  %28 = load i8, i8* %arrayidx31, align 1, !dbg !2094, !tbaa !2055
  %conv32 = zext i8 %28 to i32, !dbg !2094
  %29 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i64 3), align 1, !dbg !2096, !tbaa !2055
  %conv33 = zext i8 %29 to i32, !dbg !2096
  %sub34 = sub i32 %conv32, %conv33, !dbg !2097
  store i32 %sub34, i32* %__result, align 4, !dbg !2098, !tbaa !1838
  br label %if.end.35, !dbg !2099

if.end.35:                                        ; preds = %if.then.30, %land.lhs.true.27, %if.then.20
  br label %if.end.36, !dbg !2100

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true.17, %if.then.10
  br label %if.end.37, !dbg !2104

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.7, %cond.true
  %30 = load i32, i32* %__result, align 4, !dbg !2108, !tbaa !1838
  store i32 %30, i32* %tmp38, !dbg !2112, !tbaa !1838
  %31 = bitcast i32* %__result to i8*, !dbg !2113
  call void @llvm.lifetime.end(i64 4, i8* %31) #1, !dbg !2113
  %32 = bitcast i8** %__s1 to i8*, !dbg !2113
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !2113
  %33 = load i32, i32* %tmp38, !dbg !2114, !tbaa !1838
  br label %cond.end, !dbg !2047

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %34 = load i8*, i8** %name, align 8, !dbg !2115, !tbaa !882
  %call39 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0)) #1, !dbg !2118
  br label %cond.end, !dbg !2047

cond.end:                                         ; preds = %cond.false, %if.end.37
  %cond = phi i32 [ %33, %if.end.37 ], [ %call39, %cond.false ], !dbg !2047
  store i32 %cond, i32* %tmp, !dbg !2119, !tbaa !1838
  %35 = bitcast i64* %__s2_len to i8*, !dbg !2122
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !2122
  %36 = bitcast i64* %__s1_len to i8*, !dbg !2122
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !2122
  %37 = load i32, i32* %tmp, !dbg !2123, !tbaa !1838
  %cmp40 = icmp eq i32 %37, 0, !dbg !2124
  br i1 %cmp40, label %if.then.42, label %if.else, !dbg !2125

if.then.42:                                       ; preds = %cond.end
  %38 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2126, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %38, i32 0, i32 2, !dbg !2128
  %39 = load i32, i32* %fd, align 4, !dbg !2128, !tbaa !2010
  %cmp43 = icmp eq i32 %39, -1, !dbg !2129
  %cond45 = select i1 %cmp43, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !2130
  store %struct._object* %cond45, %struct._object** %rval, align 8, !dbg !2131, !tbaa !882
  %40 = load %struct._object*, %struct._object** %rval, align 8, !dbg !2132, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !2133
  %41 = load i64, i64* %ob_refcnt, align 8, !dbg !2134, !tbaa !900
  %inc = add i64 %41, 1, !dbg !2134
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2134, !tbaa !900
  br label %if.end.173, !dbg !2135

if.else:                                          ; preds = %cond.end
  %42 = bitcast i64* %__s1_len47 to i8*, !dbg !2136
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !2136
  call void @llvm.dbg.declare(metadata i64* %__s1_len47, metadata !420, metadata !868), !dbg !2137
  %43 = bitcast i64* %__s2_len49 to i8*, !dbg !2136
  call void @llvm.lifetime.start(i64 8, i8* %43) #1, !dbg !2136
  call void @llvm.dbg.declare(metadata i64* %__s2_len49, metadata !423, metadata !868), !dbg !2138
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.118 to i64)), i64 1), label %land.lhs.true.51, label %cond.false.97, !dbg !2139

land.lhs.true.51:                                 ; preds = %if.else
  store i64 4, i64* %__s2_len49, align 8, !dbg !2140, !tbaa !2044
  %44 = load i64, i64* %__s2_len49, align 8, !dbg !2142, !tbaa !2044
  %cmp52 = icmp ult i64 %44, 4, !dbg !2143
  br i1 %cmp52, label %cond.true.54, label %cond.false.97, !dbg !2144

cond.true.54:                                     ; preds = %land.lhs.true.51
  %45 = bitcast i8** %__s156 to i8*, !dbg !2145
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !2145
  call void @llvm.dbg.declare(metadata i8** %__s156, metadata !424, metadata !868), !dbg !2147
  %46 = load i8*, i8** %name, align 8, !dbg !2148, !tbaa !882
  store i8* %46, i8** %__s156, align 8, !dbg !2147, !tbaa !882
  %47 = bitcast i32* %__result58 to i8*, !dbg !2149
  call void @llvm.lifetime.start(i64 4, i8* %47) #1, !dbg !2149
  call void @llvm.dbg.declare(metadata i32* %__result58, metadata !426, metadata !868), !dbg !2150
  %48 = load i8*, i8** %__s156, align 8, !dbg !2151, !tbaa !882
  %arrayidx59 = getelementptr i8, i8* %48, i64 0, !dbg !2151
  %49 = load i8, i8* %arrayidx59, align 1, !dbg !2151, !tbaa !2055
  %conv60 = zext i8 %49 to i32, !dbg !2151
  %50 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0), align 1, !dbg !2152, !tbaa !2055
  %conv61 = zext i8 %50 to i32, !dbg !2152
  %sub62 = sub i32 %conv60, %conv61, !dbg !2153
  store i32 %sub62, i32* %__result58, align 4, !dbg !2150, !tbaa !1838
  %51 = load i64, i64* %__s2_len49, align 8, !dbg !2154, !tbaa !2044
  %cmp63 = icmp ugt i64 %51, 0, !dbg !2156
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.95, !dbg !2157

land.lhs.true.65:                                 ; preds = %cond.true.54
  %52 = load i32, i32* %__result58, align 4, !dbg !2158, !tbaa !1838
  %cmp66 = icmp eq i32 %52, 0, !dbg !2160
  br i1 %cmp66, label %if.then.68, label %if.end.95, !dbg !2161

if.then.68:                                       ; preds = %land.lhs.true.65
  %53 = load i8*, i8** %__s156, align 8, !dbg !2162, !tbaa !882
  %arrayidx69 = getelementptr i8, i8* %53, i64 1, !dbg !2162
  %54 = load i8, i8* %arrayidx69, align 1, !dbg !2162, !tbaa !2055
  %conv70 = zext i8 %54 to i32, !dbg !2162
  %55 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i64 1), align 1, !dbg !2165, !tbaa !2055
  %conv71 = zext i8 %55 to i32, !dbg !2165
  %sub72 = sub i32 %conv70, %conv71, !dbg !2166
  store i32 %sub72, i32* %__result58, align 4, !dbg !2167, !tbaa !1838
  %56 = load i64, i64* %__s2_len49, align 8, !dbg !2168, !tbaa !2044
  %cmp73 = icmp ugt i64 %56, 1, !dbg !2170
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.94, !dbg !2171

land.lhs.true.75:                                 ; preds = %if.then.68
  %57 = load i32, i32* %__result58, align 4, !dbg !2172, !tbaa !1838
  %cmp76 = icmp eq i32 %57, 0, !dbg !2174
  br i1 %cmp76, label %if.then.78, label %if.end.94, !dbg !2175

if.then.78:                                       ; preds = %land.lhs.true.75
  %58 = load i8*, i8** %__s156, align 8, !dbg !2176, !tbaa !882
  %arrayidx79 = getelementptr i8, i8* %58, i64 2, !dbg !2176
  %59 = load i8, i8* %arrayidx79, align 1, !dbg !2176, !tbaa !2055
  %conv80 = zext i8 %59 to i32, !dbg !2176
  %60 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i64 2), align 1, !dbg !2179, !tbaa !2055
  %conv81 = zext i8 %60 to i32, !dbg !2179
  %sub82 = sub i32 %conv80, %conv81, !dbg !2180
  store i32 %sub82, i32* %__result58, align 4, !dbg !2181, !tbaa !1838
  %61 = load i64, i64* %__s2_len49, align 8, !dbg !2182, !tbaa !2044
  %cmp83 = icmp ugt i64 %61, 2, !dbg !2184
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.93, !dbg !2185

land.lhs.true.85:                                 ; preds = %if.then.78
  %62 = load i32, i32* %__result58, align 4, !dbg !2186, !tbaa !1838
  %cmp86 = icmp eq i32 %62, 0, !dbg !2188
  br i1 %cmp86, label %if.then.88, label %if.end.93, !dbg !2189

if.then.88:                                       ; preds = %land.lhs.true.85
  %63 = load i8*, i8** %__s156, align 8, !dbg !2190, !tbaa !882
  %arrayidx89 = getelementptr i8, i8* %63, i64 3, !dbg !2190
  %64 = load i8, i8* %arrayidx89, align 1, !dbg !2190, !tbaa !2055
  %conv90 = zext i8 %64 to i32, !dbg !2190
  %65 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i64 3), align 1, !dbg !2192, !tbaa !2055
  %conv91 = zext i8 %65 to i32, !dbg !2192
  %sub92 = sub i32 %conv90, %conv91, !dbg !2193
  store i32 %sub92, i32* %__result58, align 4, !dbg !2194, !tbaa !1838
  br label %if.end.93, !dbg !2195

if.end.93:                                        ; preds = %if.then.88, %land.lhs.true.85, %if.then.78
  br label %if.end.94, !dbg !2196

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.75, %if.then.68
  br label %if.end.95, !dbg !2200

if.end.95:                                        ; preds = %if.end.94, %land.lhs.true.65, %cond.true.54
  %66 = load i32, i32* %__result58, align 4, !dbg !2204, !tbaa !1838
  store i32 %66, i32* %tmp96, !dbg !2208, !tbaa !1838
  %67 = bitcast i32* %__result58 to i8*, !dbg !2209
  call void @llvm.lifetime.end(i64 4, i8* %67) #1, !dbg !2209
  %68 = bitcast i8** %__s156 to i8*, !dbg !2209
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !2209
  %69 = load i32, i32* %tmp96, !dbg !2210, !tbaa !1838
  br label %cond.end.99, !dbg !2144

cond.false.97:                                    ; preds = %land.lhs.true.51, %if.else
  %70 = load i8*, i8** %name, align 8, !dbg !2211, !tbaa !882
  %call98 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0)) #1, !dbg !2214
  br label %cond.end.99, !dbg !2144

cond.end.99:                                      ; preds = %cond.false.97, %if.end.95
  %cond100 = phi i32 [ %69, %if.end.95 ], [ %call98, %cond.false.97 ], !dbg !2144
  store i32 %cond100, i32* %tmp50, !dbg !2215, !tbaa !1838
  %71 = bitcast i64* %__s2_len49 to i8*, !dbg !2218
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !2218
  %72 = bitcast i64* %__s1_len47 to i8*, !dbg !2218
  call void @llvm.lifetime.end(i64 8, i8* %72) #1, !dbg !2218
  %73 = load i32, i32* %tmp50, !dbg !2219, !tbaa !1838
  %cmp101 = icmp eq i32 %73, 0, !dbg !2220
  br i1 %cmp101, label %if.then.103, label %if.else.105, !dbg !2221

if.then.103:                                      ; preds = %cond.end.99
  %74 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2222, !tbaa !882
  %devicename = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %74, i32 0, i32 1, !dbg !2224
  %75 = load i8*, i8** %devicename, align 8, !dbg !2224, !tbaa !2225
  %call104 = call %struct._object* @PyUnicode_FromString(i8* %75), !dbg !2226
  store %struct._object* %call104, %struct._object** %rval, align 8, !dbg !2227, !tbaa !882
  br label %if.end.172, !dbg !2228

if.else.105:                                      ; preds = %cond.end.99
  %76 = bitcast i64* %__s1_len107 to i8*, !dbg !2229
  call void @llvm.lifetime.start(i64 8, i8* %76) #1, !dbg !2229
  call void @llvm.dbg.declare(metadata i64* %__s1_len107, metadata !427, metadata !868), !dbg !2230
  %77 = bitcast i64* %__s2_len109 to i8*, !dbg !2229
  call void @llvm.lifetime.start(i64 8, i8* %77) #1, !dbg !2229
  call void @llvm.dbg.declare(metadata i64* %__s2_len109, metadata !430, metadata !868), !dbg !2231
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.119 to i64)), i64 1), label %land.lhs.true.111, label %cond.false.157, !dbg !2232

land.lhs.true.111:                                ; preds = %if.else.105
  store i64 4, i64* %__s2_len109, align 8, !dbg !2233, !tbaa !2044
  %78 = load i64, i64* %__s2_len109, align 8, !dbg !2235, !tbaa !2044
  %cmp112 = icmp ult i64 %78, 4, !dbg !2236
  br i1 %cmp112, label %cond.true.114, label %cond.false.157, !dbg !2237

cond.true.114:                                    ; preds = %land.lhs.true.111
  %79 = bitcast i8** %__s1116 to i8*, !dbg !2238
  call void @llvm.lifetime.start(i64 8, i8* %79) #1, !dbg !2238
  call void @llvm.dbg.declare(metadata i8** %__s1116, metadata !431, metadata !868), !dbg !2240
  %80 = load i8*, i8** %name, align 8, !dbg !2241, !tbaa !882
  store i8* %80, i8** %__s1116, align 8, !dbg !2240, !tbaa !882
  %81 = bitcast i32* %__result118 to i8*, !dbg !2242
  call void @llvm.lifetime.start(i64 4, i8* %81) #1, !dbg !2242
  call void @llvm.dbg.declare(metadata i32* %__result118, metadata !433, metadata !868), !dbg !2243
  %82 = load i8*, i8** %__s1116, align 8, !dbg !2244, !tbaa !882
  %arrayidx119 = getelementptr i8, i8* %82, i64 0, !dbg !2244
  %83 = load i8, i8* %arrayidx119, align 1, !dbg !2244, !tbaa !2055
  %conv120 = zext i8 %83 to i32, !dbg !2244
  %84 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), align 1, !dbg !2245, !tbaa !2055
  %conv121 = zext i8 %84 to i32, !dbg !2245
  %sub122 = sub i32 %conv120, %conv121, !dbg !2246
  store i32 %sub122, i32* %__result118, align 4, !dbg !2243, !tbaa !1838
  %85 = load i64, i64* %__s2_len109, align 8, !dbg !2247, !tbaa !2044
  %cmp123 = icmp ugt i64 %85, 0, !dbg !2249
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.155, !dbg !2250

land.lhs.true.125:                                ; preds = %cond.true.114
  %86 = load i32, i32* %__result118, align 4, !dbg !2251, !tbaa !1838
  %cmp126 = icmp eq i32 %86, 0, !dbg !2253
  br i1 %cmp126, label %if.then.128, label %if.end.155, !dbg !2254

if.then.128:                                      ; preds = %land.lhs.true.125
  %87 = load i8*, i8** %__s1116, align 8, !dbg !2255, !tbaa !882
  %arrayidx129 = getelementptr i8, i8* %87, i64 1, !dbg !2255
  %88 = load i8, i8* %arrayidx129, align 1, !dbg !2255, !tbaa !2055
  %conv130 = zext i8 %88 to i32, !dbg !2255
  %89 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i64 1), align 1, !dbg !2258, !tbaa !2055
  %conv131 = zext i8 %89 to i32, !dbg !2258
  %sub132 = sub i32 %conv130, %conv131, !dbg !2259
  store i32 %sub132, i32* %__result118, align 4, !dbg !2260, !tbaa !1838
  %90 = load i64, i64* %__s2_len109, align 8, !dbg !2261, !tbaa !2044
  %cmp133 = icmp ugt i64 %90, 1, !dbg !2263
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.154, !dbg !2264

land.lhs.true.135:                                ; preds = %if.then.128
  %91 = load i32, i32* %__result118, align 4, !dbg !2265, !tbaa !1838
  %cmp136 = icmp eq i32 %91, 0, !dbg !2267
  br i1 %cmp136, label %if.then.138, label %if.end.154, !dbg !2268

if.then.138:                                      ; preds = %land.lhs.true.135
  %92 = load i8*, i8** %__s1116, align 8, !dbg !2269, !tbaa !882
  %arrayidx139 = getelementptr i8, i8* %92, i64 2, !dbg !2269
  %93 = load i8, i8* %arrayidx139, align 1, !dbg !2269, !tbaa !2055
  %conv140 = zext i8 %93 to i32, !dbg !2269
  %94 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i64 2), align 1, !dbg !2272, !tbaa !2055
  %conv141 = zext i8 %94 to i32, !dbg !2272
  %sub142 = sub i32 %conv140, %conv141, !dbg !2273
  store i32 %sub142, i32* %__result118, align 4, !dbg !2274, !tbaa !1838
  %95 = load i64, i64* %__s2_len109, align 8, !dbg !2275, !tbaa !2044
  %cmp143 = icmp ugt i64 %95, 2, !dbg !2277
  br i1 %cmp143, label %land.lhs.true.145, label %if.end.153, !dbg !2278

land.lhs.true.145:                                ; preds = %if.then.138
  %96 = load i32, i32* %__result118, align 4, !dbg !2279, !tbaa !1838
  %cmp146 = icmp eq i32 %96, 0, !dbg !2281
  br i1 %cmp146, label %if.then.148, label %if.end.153, !dbg !2282

if.then.148:                                      ; preds = %land.lhs.true.145
  %97 = load i8*, i8** %__s1116, align 8, !dbg !2283, !tbaa !882
  %arrayidx149 = getelementptr i8, i8* %97, i64 3, !dbg !2283
  %98 = load i8, i8* %arrayidx149, align 1, !dbg !2283, !tbaa !2055
  %conv150 = zext i8 %98 to i32, !dbg !2283
  %99 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i64 3), align 1, !dbg !2285, !tbaa !2055
  %conv151 = zext i8 %99 to i32, !dbg !2285
  %sub152 = sub i32 %conv150, %conv151, !dbg !2286
  store i32 %sub152, i32* %__result118, align 4, !dbg !2287, !tbaa !1838
  br label %if.end.153, !dbg !2288

if.end.153:                                       ; preds = %if.then.148, %land.lhs.true.145, %if.then.138
  br label %if.end.154, !dbg !2289

if.end.154:                                       ; preds = %if.end.153, %land.lhs.true.135, %if.then.128
  br label %if.end.155, !dbg !2293

if.end.155:                                       ; preds = %if.end.154, %land.lhs.true.125, %cond.true.114
  %100 = load i32, i32* %__result118, align 4, !dbg !2297, !tbaa !1838
  store i32 %100, i32* %tmp156, !dbg !2301, !tbaa !1838
  %101 = bitcast i32* %__result118 to i8*, !dbg !2302
  call void @llvm.lifetime.end(i64 4, i8* %101) #1, !dbg !2302
  %102 = bitcast i8** %__s1116 to i8*, !dbg !2302
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !2302
  %103 = load i32, i32* %tmp156, !dbg !2303, !tbaa !1838
  br label %cond.end.159, !dbg !2237

cond.false.157:                                   ; preds = %land.lhs.true.111, %if.else.105
  %104 = load i8*, i8** %name, align 8, !dbg !2304, !tbaa !882
  %call158 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0)) #1, !dbg !2307
  br label %cond.end.159, !dbg !2237

cond.end.159:                                     ; preds = %cond.false.157, %if.end.155
  %cond160 = phi i32 [ %103, %if.end.155 ], [ %call158, %cond.false.157 ], !dbg !2237
  store i32 %cond160, i32* %tmp110, !dbg !2308, !tbaa !1838
  %105 = bitcast i64* %__s2_len109 to i8*, !dbg !2311
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !2311
  %106 = bitcast i64* %__s1_len107 to i8*, !dbg !2311
  call void @llvm.lifetime.end(i64 8, i8* %106) #1, !dbg !2311
  %107 = load i32, i32* %tmp110, !dbg !2312, !tbaa !1838
  %cmp161 = icmp eq i32 %107, 0, !dbg !2313
  br i1 %cmp161, label %if.then.163, label %if.else.169, !dbg !2314

if.then.163:                                      ; preds = %cond.end.159
  %108 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2315, !tbaa !882
  %mode = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %108, i32 0, i32 3, !dbg !2317
  %109 = load i32, i32* %mode, align 4, !dbg !2317, !tbaa !2318
  switch i32 %109, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.165
    i32 1, label %sw.bb.167
  ], !dbg !2319

sw.bb:                                            ; preds = %if.then.163
  %call164 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0)), !dbg !2320
  store %struct._object* %call164, %struct._object** %rval, align 8, !dbg !2322, !tbaa !882
  br label %sw.epilog, !dbg !2323

sw.bb.165:                                        ; preds = %if.then.163
  %call166 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0)), !dbg !2324
  store %struct._object* %call166, %struct._object** %rval, align 8, !dbg !2325, !tbaa !882
  br label %sw.epilog, !dbg !2326

sw.bb.167:                                        ; preds = %if.then.163
  %call168 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0)), !dbg !2327
  store %struct._object* %call168, %struct._object** %rval, align 8, !dbg !2328, !tbaa !882
  br label %sw.epilog, !dbg !2329

sw.epilog:                                        ; preds = %if.then.163, %sw.bb.167, %sw.bb.165, %sw.bb
  br label %if.end.171, !dbg !2330

if.else.169:                                      ; preds = %cond.end.159
  %110 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2331, !tbaa !882
  %111 = bitcast %struct.oss_audio_t* %110 to %struct._object*, !dbg !2333
  %112 = load %struct._object*, %struct._object** %nameobj.addr, align 8, !dbg !2334, !tbaa !882
  %call170 = call %struct._object* @PyObject_GenericGetAttr(%struct._object* %111, %struct._object* %112), !dbg !2335
  store %struct._object* %call170, %struct._object** %rval, align 8, !dbg !2336, !tbaa !882
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.169, %sw.epilog
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.103
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.42
  %113 = load %struct._object*, %struct._object** %rval, align 8, !dbg !2337, !tbaa !882
  %114 = bitcast %struct._object** %rval to i8*, !dbg !2338
  call void @llvm.lifetime.end(i64 8, i8* %114) #1, !dbg !2338
  %115 = bitcast i8** %name to i8*, !dbg !2338
  call void @llvm.lifetime.end(i64 8, i8* %115) #1, !dbg !2338
  ret %struct._object* %113, !dbg !2339
}

declare i32 @close(i32) #3

declare void @PyObject_Free(i8*) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_read(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  %size = alloca i32, align 4
  %count = alloca i32, align 4
  %cp = alloca i8*, align 8
  %rv = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !436, metadata !868), !dbg !2340
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !437, metadata !868), !dbg !2341
  %0 = bitcast i32* %size to i8*, !dbg !2342
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2342
  call void @llvm.dbg.declare(metadata i32* %size, metadata !438, metadata !868), !dbg !2343
  %1 = bitcast i32* %count to i8*, !dbg !2342
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2342
  call void @llvm.dbg.declare(metadata i32* %count, metadata !439, metadata !868), !dbg !2344
  %2 = bitcast i8** %cp to i8*, !dbg !2345
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2345
  call void @llvm.dbg.declare(metadata i8** %cp, metadata !440, metadata !868), !dbg !2346
  %3 = bitcast %struct._object** %rv to i8*, !dbg !2347
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2347
  call void @llvm.dbg.declare(metadata %struct._object** %rv, metadata !441, metadata !868), !dbg !2348
  %4 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2349, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %4, i32 0, i32 2, !dbg !2351
  %5 = load i32, i32* %fd, align 4, !dbg !2351, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %5), !dbg !2352
  %tobool = icmp ne i32 %call, 0, !dbg !2352
  br i1 %tobool, label %if.end, label %if.then, !dbg !2353

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2354
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2354

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2355, !tbaa !882
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i32 0, i32 0), i32* %size), !dbg !2357
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2357
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2358

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2359
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2359

if.end.4:                                         ; preds = %if.end
  %7 = load i32, i32* %size, align 4, !dbg !2360, !tbaa !1838
  %conv = sext i32 %7 to i64, !dbg !2360
  %call5 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv), !dbg !2361
  store %struct._object* %call5, %struct._object** %rv, align 8, !dbg !2362, !tbaa !882
  %8 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2363, !tbaa !882
  %cmp = icmp eq %struct._object* %8, null, !dbg !2365
  br i1 %cmp, label %if.then.7, label %if.end.8, !dbg !2366

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !2367
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2367

if.end.8:                                         ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2368, !tbaa !882
  %10 = bitcast %struct._object* %9 to %struct.PyBytesObject*, !dbg !2369
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %10, i32 0, i32 2, !dbg !2370
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2371
  store i8* %arraydecay, i8** %cp, align 8, !dbg !2372, !tbaa !882
  %11 = bitcast %struct._ts** %_save to i8*, !dbg !2373
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !2373
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !442, metadata !868), !dbg !2374
  %call9 = call %struct._ts* @PyEval_SaveThread(), !dbg !2375
  store %struct._ts* %call9, %struct._ts** %_save, align 8, !dbg !2376, !tbaa !882
  %12 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2377, !tbaa !882
  %fd10 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %12, i32 0, i32 2, !dbg !2378
  %13 = load i32, i32* %fd10, align 4, !dbg !2378, !tbaa !2010
  %14 = load i8*, i8** %cp, align 8, !dbg !2379, !tbaa !882
  %15 = load i32, i32* %size, align 4, !dbg !2380, !tbaa !1838
  %conv11 = sext i32 %15 to i64, !dbg !2380
  %call12 = call i64 @read(i32 %13, i8* %14, i64 %conv11), !dbg !2381
  %conv13 = trunc i64 %call12 to i32, !dbg !2381
  store i32 %conv13, i32* %count, align 4, !dbg !2382, !tbaa !1838
  %16 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2383, !tbaa !882
  call void @PyEval_RestoreThread(%struct._ts* %16), !dbg !2384
  %17 = bitcast %struct._ts** %_save to i8*, !dbg !2385
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !2385
  %18 = load i32, i32* %count, align 4, !dbg !2386, !tbaa !1838
  %cmp14 = icmp slt i32 %18, 0, !dbg !2387
  br i1 %cmp14, label %if.then.16, label %if.end.22, !dbg !2388

if.then.16:                                       ; preds = %if.end.8
  %19 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2389, !tbaa !882
  %call17 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %19), !dbg !2390
  br label %do.body, !dbg !2391

do.body:                                          ; preds = %if.then.16
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2392
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !2392
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !502, metadata !868), !dbg !2394
  %21 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2395, !tbaa !882
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !2394, !tbaa !882
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2396, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !2398
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !2399, !tbaa !900
  %dec = add i64 %23, -1, !dbg !2399
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2399, !tbaa !900
  %cmp18 = icmp ne i64 %dec, 0, !dbg !2400
  br i1 %cmp18, label %if.then.20, label %if.else, !dbg !2401

if.then.20:                                       ; preds = %do.body
  br label %if.end.21, !dbg !2402

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2404, !tbaa !882
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !2406
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2406, !tbaa !1944
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !2407
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2407, !tbaa !1946
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2408, !tbaa !882
  call void %26(%struct._object* %27), !dbg !2409
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2410
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !2410
  br label %do.cond, !dbg !2412

do.cond:                                          ; preds = %if.end.21
  br label %do.end, !dbg !2413

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2415
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2415

if.end.22:                                        ; preds = %if.end.8
  %29 = load i32, i32* %count, align 4, !dbg !2416, !tbaa !1838
  %30 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2417, !tbaa !882
  %icount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %30, i32 0, i32 4, !dbg !2418
  %31 = load i32, i32* %icount, align 4, !dbg !2419, !tbaa !2420
  %add = add i32 %31, %29, !dbg !2419
  store i32 %add, i32* %icount, align 4, !dbg !2419, !tbaa !2420
  %32 = load i32, i32* %count, align 4, !dbg !2421, !tbaa !1838
  %conv23 = sext i32 %32 to i64, !dbg !2421
  %call24 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %conv23), !dbg !2422
  %33 = load %struct._object*, %struct._object** %rv, align 8, !dbg !2423, !tbaa !882
  store %struct._object* %33, %struct._object** %retval, !dbg !2424
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2424

cleanup:                                          ; preds = %if.end.22, %do.end, %if.then.7, %if.then.3, %if.then
  %34 = bitcast %struct._object** %rv to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !2425
  %35 = bitcast i8** %cp to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !2425
  %36 = bitcast i32* %count to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 4, i8* %36) #1, !dbg !2425
  %37 = bitcast i32* %size to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 4, i8* %37) #1, !dbg !2425
  %38 = load %struct._object*, %struct._object** %retval, !dbg !2425
  ret %struct._object* %38, !dbg !2425
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_write(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  %cp = alloca i8*, align 8
  %rv = alloca i32, align 4
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !513, metadata !868), !dbg !2426
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !514, metadata !868), !dbg !2427
  %0 = bitcast i8** %cp to i8*, !dbg !2428
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2428
  call void @llvm.dbg.declare(metadata i8** %cp, metadata !515, metadata !868), !dbg !2429
  %1 = bitcast i32* %rv to i8*, !dbg !2430
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2430
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !516, metadata !868), !dbg !2431
  %2 = bitcast i32* %size to i8*, !dbg !2430
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2430
  call void @llvm.dbg.declare(metadata i32* %size, metadata !517, metadata !868), !dbg !2432
  %3 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2433, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %3, i32 0, i32 2, !dbg !2435
  %4 = load i32, i32* %fd, align 4, !dbg !2435, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %4), !dbg !2436
  %tobool = icmp ne i32 %call, 0, !dbg !2436
  br i1 %tobool, label %if.end, label %if.then, !dbg !2437

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2438
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2438

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2439, !tbaa !882
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.146, i32 0, i32 0), i8** %cp, i32* %size), !dbg !2441
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2441
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2442

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2443
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2443

if.end.4:                                         ; preds = %if.end
  %6 = bitcast %struct._ts** %_save to i8*, !dbg !2445
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2445
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !518, metadata !868), !dbg !2446
  %call5 = call %struct._ts* @PyEval_SaveThread(), !dbg !2447
  store %struct._ts* %call5, %struct._ts** %_save, align 8, !dbg !2448, !tbaa !882
  %7 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2449, !tbaa !882
  %fd6 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %7, i32 0, i32 2, !dbg !2450
  %8 = load i32, i32* %fd6, align 4, !dbg !2450, !tbaa !2010
  %9 = load i8*, i8** %cp, align 8, !dbg !2451, !tbaa !882
  %10 = load i32, i32* %size, align 4, !dbg !2452, !tbaa !1838
  %conv = sext i32 %10 to i64, !dbg !2452
  %call7 = call i64 @write(i32 %8, i8* %9, i64 %conv), !dbg !2453
  %conv8 = trunc i64 %call7 to i32, !dbg !2453
  store i32 %conv8, i32* %rv, align 4, !dbg !2454, !tbaa !1838
  %11 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2455, !tbaa !882
  call void @PyEval_RestoreThread(%struct._ts* %11), !dbg !2456
  %12 = bitcast %struct._ts** %_save to i8*, !dbg !2457
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !2457
  %13 = load i32, i32* %rv, align 4, !dbg !2458, !tbaa !1838
  %cmp = icmp eq i32 %13, -1, !dbg !2460
  br i1 %cmp, label %if.then.10, label %if.else, !dbg !2461

if.then.10:                                       ; preds = %if.end.4
  %14 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2462, !tbaa !882
  %call11 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %14), !dbg !2464
  store %struct._object* %call11, %struct._object** %retval, !dbg !2465
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2465

if.else:                                          ; preds = %if.end.4
  %15 = load i32, i32* %rv, align 4, !dbg !2466, !tbaa !1838
  %16 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2468, !tbaa !882
  %ocount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %16, i32 0, i32 5, !dbg !2469
  %17 = load i32, i32* %ocount, align 4, !dbg !2470, !tbaa !2471
  %add = add i32 %17, %15, !dbg !2470
  store i32 %add, i32* %ocount, align 4, !dbg !2470, !tbaa !2471
  br label %if.end.12

if.end.12:                                        ; preds = %if.else
  %18 = load i32, i32* %rv, align 4, !dbg !2472, !tbaa !1838
  %conv13 = sext i32 %18 to i64, !dbg !2472
  %call14 = call %struct._object* @PyLong_FromLong(i64 %conv13), !dbg !2473
  store %struct._object* %call14, %struct._object** %retval, !dbg !2474
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2474

cleanup:                                          ; preds = %if.end.12, %if.then.10, %if.then.3, %if.then
  %19 = bitcast i32* %size to i8*, !dbg !2475
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !2475
  %20 = bitcast i32* %rv to i8*, !dbg !2475
  call void @llvm.lifetime.end(i64 4, i8* %20) #1, !dbg !2475
  %21 = bitcast i8** %cp to i8*, !dbg !2475
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !2475
  %22 = load %struct._object*, %struct._object** %retval, !dbg !2475
  ret %struct._object* %22, !dbg !2475
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_writeall(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  %cp = alloca i8*, align 8
  %rv = alloca i32, align 4
  %size = alloca i32, align 4
  %write_set_fds = alloca %struct.fd_set, align 8
  %select_rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save23 = alloca %struct._ts*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !522, metadata !868), !dbg !2476
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !523, metadata !868), !dbg !2477
  %0 = bitcast i8** %cp to i8*, !dbg !2478
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2478
  call void @llvm.dbg.declare(metadata i8** %cp, metadata !524, metadata !868), !dbg !2479
  %1 = bitcast i32* %rv to i8*, !dbg !2480
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2480
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !525, metadata !868), !dbg !2481
  %2 = bitcast i32* %size to i8*, !dbg !2480
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2480
  call void @llvm.dbg.declare(metadata i32* %size, metadata !526, metadata !868), !dbg !2482
  %3 = bitcast %struct.fd_set* %write_set_fds to i8*, !dbg !2483
  call void @llvm.lifetime.start(i64 128, i8* %3) #1, !dbg !2483
  call void @llvm.dbg.declare(metadata %struct.fd_set* %write_set_fds, metadata !527, metadata !868), !dbg !2484
  %4 = bitcast i32* %select_rv to i8*, !dbg !2485
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2485
  call void @llvm.dbg.declare(metadata i32* %select_rv, metadata !535, metadata !868), !dbg !2486
  %5 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2487, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %5, i32 0, i32 2, !dbg !2489
  %6 = load i32, i32* %fd, align 4, !dbg !2489, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %6), !dbg !2490
  %tobool = icmp ne i32 %call, 0, !dbg !2490
  br i1 %tobool, label %if.end, label %if.then, !dbg !2491

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2492
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2492

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2493, !tbaa !882
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.146, i32 0, i32 0), i8** %cp, i32* %size), !dbg !2495
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2495
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2496

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2497
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2497

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2498, !tbaa !882
  %fd5 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %8, i32 0, i32 2, !dbg !2500
  %9 = load i32, i32* %fd5, align 4, !dbg !2500, !tbaa !2010
  %cmp = icmp sge i32 %9, 0, !dbg !2501
  br i1 %cmp, label %land.lhs.true, label %if.then.8, !dbg !2502

land.lhs.true:                                    ; preds = %if.end.4
  %10 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2503, !tbaa !882
  %fd6 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %10, i32 0, i32 2, !dbg !2505
  %11 = load i32, i32* %fd6, align 4, !dbg !2505, !tbaa !2010
  %cmp7 = icmp slt i32 %11, 1024, !dbg !2506
  br i1 %cmp7, label %if.end.9, label %if.then.8, !dbg !2507

if.then.8:                                        ; preds = %land.lhs.true, %if.end.4
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2508, !tbaa !882
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.147, i32 0, i32 0)), !dbg !2510
  store %struct._object* null, %struct._object** %retval, !dbg !2511
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2511

if.end.9:                                         ; preds = %land.lhs.true
  br label %do.body, !dbg !2512

do.body:                                          ; preds = %if.end.9
  %13 = bitcast i32* %__d0 to i8*, !dbg !2513
  call void @llvm.lifetime.start(i64 4, i8* %13) #1, !dbg !2513
  call void @llvm.dbg.declare(metadata i32* %__d0, metadata !536, metadata !868), !dbg !2515
  %14 = bitcast i32* %__d1 to i8*, !dbg !2516
  call void @llvm.lifetime.start(i64 4, i8* %14) #1, !dbg !2516
  call void @llvm.dbg.declare(metadata i32* %__d1, metadata !538, metadata !868), !dbg !2517
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %write_set_fds, i32 0, i32 0, !dbg !2518
  %arrayidx = getelementptr [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0, !dbg !2519
  %15 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #1, !dbg !2520, !srcloc !2521
  %asmresult = extractvalue { i64, i64* } %15, 0, !dbg !2520
  %asmresult10 = extractvalue { i64, i64* } %15, 1, !dbg !2520
  %16 = trunc i64 %asmresult to i32, !dbg !2520
  store i32 %16, i32* %__d0, align 4, !dbg !2520, !tbaa !1838
  %17 = ptrtoint i64* %asmresult10 to i64, !dbg !2520
  %18 = trunc i64 %17 to i32, !dbg !2520
  store i32 %18, i32* %__d1, align 4, !dbg !2520, !tbaa !1838
  %19 = bitcast i32* %__d1 to i8*, !dbg !2522
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !2522
  %20 = bitcast i32* %__d0 to i8*, !dbg !2522
  call void @llvm.lifetime.end(i64 4, i8* %20) #1, !dbg !2522
  br label %do.cond, !dbg !2523

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2524

do.end:                                           ; preds = %do.cond
  %21 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2526, !tbaa !882
  %fd11 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %21, i32 0, i32 2, !dbg !2527
  %22 = load i32, i32* %fd11, align 4, !dbg !2527, !tbaa !2010
  %rem = srem i32 %22, 64, !dbg !2528
  %sh_prom = zext i32 %rem to i64, !dbg !2529
  %shl = shl i64 1, %sh_prom, !dbg !2529
  %23 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2530, !tbaa !882
  %fd12 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %23, i32 0, i32 2, !dbg !2531
  %24 = load i32, i32* %fd12, align 4, !dbg !2531, !tbaa !2010
  %div = sdiv i32 %24, 64, !dbg !2532
  %idxprom = sext i32 %div to i64, !dbg !2533
  %fds_bits13 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %write_set_fds, i32 0, i32 0, !dbg !2534
  %arrayidx14 = getelementptr [16 x i64], [16 x i64]* %fds_bits13, i32 0, i64 %idxprom, !dbg !2533
  %25 = load i64, i64* %arrayidx14, align 8, !dbg !2535, !tbaa !2044
  %or = or i64 %25, %shl, !dbg !2535
  store i64 %or, i64* %arrayidx14, align 8, !dbg !2535, !tbaa !2044
  br label %while.cond, !dbg !2536

while.cond:                                       ; preds = %if.end.39, %if.then.34, %do.end
  %26 = load i32, i32* %size, align 4, !dbg !2537, !tbaa !1838
  %cmp15 = icmp sgt i32 %26, 0, !dbg !2540
  br i1 %cmp15, label %while.body, label %while.end, !dbg !2536

while.body:                                       ; preds = %while.cond
  %27 = bitcast %struct._ts** %_save to i8*, !dbg !2541
  call void @llvm.lifetime.start(i64 8, i8* %27) #1, !dbg !2541
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !539, metadata !868), !dbg !2542
  %call16 = call %struct._ts* @PyEval_SaveThread(), !dbg !2543
  store %struct._ts* %call16, %struct._ts** %_save, align 8, !dbg !2544, !tbaa !882
  %28 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2545, !tbaa !882
  %fd17 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %28, i32 0, i32 2, !dbg !2546
  %29 = load i32, i32* %fd17, align 4, !dbg !2546, !tbaa !2010
  %add = add i32 %29, 1, !dbg !2547
  %call18 = call i32 @select(i32 %add, %struct.fd_set* null, %struct.fd_set* %write_set_fds, %struct.fd_set* null, %struct.timeval* null), !dbg !2548
  store i32 %call18, i32* %select_rv, align 4, !dbg !2549, !tbaa !1838
  %30 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2550, !tbaa !882
  call void @PyEval_RestoreThread(%struct._ts* %30), !dbg !2551
  %31 = bitcast %struct._ts** %_save to i8*, !dbg !2552
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !2552
  %32 = load i32, i32* %select_rv, align 4, !dbg !2553, !tbaa !1838
  %cmp19 = icmp eq i32 %32, -1, !dbg !2555
  br i1 %cmp19, label %if.then.20, label %if.end.22, !dbg !2556

if.then.20:                                       ; preds = %while.body
  %33 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2557, !tbaa !882
  %call21 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %33), !dbg !2558
  store %struct._object* %call21, %struct._object** %retval, !dbg !2559
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2559

if.end.22:                                        ; preds = %while.body
  %34 = bitcast %struct._ts** %_save23 to i8*, !dbg !2560
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !2560
  call void @llvm.dbg.declare(metadata %struct._ts** %_save23, metadata !542, metadata !868), !dbg !2561
  %call24 = call %struct._ts* @PyEval_SaveThread(), !dbg !2562
  store %struct._ts* %call24, %struct._ts** %_save23, align 8, !dbg !2563, !tbaa !882
  %35 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2564, !tbaa !882
  %fd25 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %35, i32 0, i32 2, !dbg !2565
  %36 = load i32, i32* %fd25, align 4, !dbg !2565, !tbaa !2010
  %37 = load i8*, i8** %cp, align 8, !dbg !2566, !tbaa !882
  %38 = load i32, i32* %size, align 4, !dbg !2567, !tbaa !1838
  %conv = sext i32 %38 to i64, !dbg !2567
  %call26 = call i64 @write(i32 %36, i8* %37, i64 %conv), !dbg !2568
  %conv27 = trunc i64 %call26 to i32, !dbg !2568
  store i32 %conv27, i32* %rv, align 4, !dbg !2569, !tbaa !1838
  %39 = load %struct._ts*, %struct._ts** %_save23, align 8, !dbg !2570, !tbaa !882
  call void @PyEval_RestoreThread(%struct._ts* %39), !dbg !2571
  %40 = bitcast %struct._ts** %_save23 to i8*, !dbg !2572
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !2572
  %41 = load i32, i32* %rv, align 4, !dbg !2573, !tbaa !1838
  %cmp28 = icmp eq i32 %41, -1, !dbg !2575
  br i1 %cmp28, label %if.then.30, label %if.else.37, !dbg !2576

if.then.30:                                       ; preds = %if.end.22
  %call31 = call i32* @__errno_location() #2, !dbg !2577
  %42 = load i32, i32* %call31, align 4, !dbg !2580, !tbaa !1838
  %cmp32 = icmp eq i32 %42, 11, !dbg !2581
  br i1 %cmp32, label %if.then.34, label %if.else, !dbg !2582

if.then.34:                                       ; preds = %if.then.30
  %call35 = call i32* @__errno_location() #2, !dbg !2583
  store i32 0, i32* %call35, align 4, !dbg !2585, !tbaa !1838
  br label %while.cond, !dbg !2586

if.else:                                          ; preds = %if.then.30
  %43 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2587, !tbaa !882
  %call36 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %43), !dbg !2588
  store %struct._object* %call36, %struct._object** %retval, !dbg !2589
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2589

if.else.37:                                       ; preds = %if.end.22
  %44 = load i32, i32* %rv, align 4, !dbg !2590, !tbaa !1838
  %45 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2592, !tbaa !882
  %ocount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %45, i32 0, i32 5, !dbg !2593
  %46 = load i32, i32* %ocount, align 4, !dbg !2594, !tbaa !2471
  %add38 = add i32 %46, %44, !dbg !2594
  store i32 %add38, i32* %ocount, align 4, !dbg !2594, !tbaa !2471
  %47 = load i32, i32* %rv, align 4, !dbg !2595, !tbaa !1838
  %48 = load i32, i32* %size, align 4, !dbg !2596, !tbaa !1838
  %sub = sub i32 %48, %47, !dbg !2596
  store i32 %sub, i32* %size, align 4, !dbg !2596, !tbaa !1838
  %49 = load i32, i32* %rv, align 4, !dbg !2597, !tbaa !1838
  %50 = load i8*, i8** %cp, align 8, !dbg !2598, !tbaa !882
  %idx.ext = sext i32 %49 to i64, !dbg !2598
  %add.ptr = getelementptr i8, i8* %50, i64 %idx.ext, !dbg !2598
  store i8* %add.ptr, i8** %cp, align 8, !dbg !2598, !tbaa !882
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37
  br label %while.cond, !dbg !2536

while.end:                                        ; preds = %while.cond
  %51 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2599, !tbaa !900
  %inc = add i64 %51, 1, !dbg !2599
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2599, !tbaa !900
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2600
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2600

cleanup:                                          ; preds = %while.end, %if.else, %if.then.20, %if.then.8, %if.then.3, %if.then
  %52 = bitcast i32* %select_rv to i8*, !dbg !2601
  call void @llvm.lifetime.end(i64 4, i8* %52) #1, !dbg !2601
  %53 = bitcast %struct.fd_set* %write_set_fds to i8*, !dbg !2601
  call void @llvm.lifetime.end(i64 128, i8* %53) #1, !dbg !2601
  %54 = bitcast i32* %size to i8*, !dbg !2601
  call void @llvm.lifetime.end(i64 4, i8* %54) #1, !dbg !2601
  %55 = bitcast i32* %rv to i8*, !dbg !2601
  call void @llvm.lifetime.end(i64 4, i8* %55) #1, !dbg !2601
  %56 = bitcast i8** %cp to i8*, !dbg !2601
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !2601
  %57 = load %struct._object*, %struct._object** %retval, !dbg !2601
  ret %struct._object* %57, !dbg !2601
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_close(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !546, metadata !868), !dbg !2602
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !547, metadata !868), !dbg !2603
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2604, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2605
  %1 = load i32, i32* %fd, align 4, !dbg !2605, !tbaa !2010
  %cmp = icmp sge i32 %1, 0, !dbg !2606
  br i1 %cmp, label %if.then, label %if.end, !dbg !2607

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._ts** %_save to i8*, !dbg !2608
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2608
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !548, metadata !868), !dbg !2609
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !2610
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !2611, !tbaa !882
  %3 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2612, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %3, i32 0, i32 2, !dbg !2613
  %4 = load i32, i32* %fd1, align 4, !dbg !2613, !tbaa !2010
  %call2 = call i32 @close(i32 %4), !dbg !2614
  %5 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2615, !tbaa !882
  call void @PyEval_RestoreThread(%struct._ts* %5), !dbg !2616
  %6 = bitcast %struct._ts** %_save to i8*, !dbg !2617
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !2617
  %7 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2618, !tbaa !882
  %fd3 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %7, i32 0, i32 2, !dbg !2619
  store i32 -1, i32* %fd3, align 4, !dbg !2620, !tbaa !2010
  br label %if.end, !dbg !2621

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2622, !tbaa !900
  %inc = add i64 %8, 1, !dbg !2622
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2622, !tbaa !900
  ret %struct._object* @_Py_NoneStruct, !dbg !2623
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_fileno(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !554, metadata !868), !dbg !2624
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !555, metadata !868), !dbg !2625
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2626, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2628
  %1 = load i32, i32* %fd, align 4, !dbg !2628, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !2629
  %tobool = icmp ne i32 %call, 0, !dbg !2629
  br i1 %tobool, label %if.end, label %if.then, !dbg !2630

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2631
  br label %return, !dbg !2631

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2632, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !2633
  %3 = load i32, i32* %fd1, align 4, !dbg !2633, !tbaa !2010
  %conv = sext i32 %3 to i64, !dbg !2632
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2634
  store %struct._object* %call2, %struct._object** %retval, !dbg !2635
  br label %return, !dbg !2635

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !2636
  ret %struct._object* %4, !dbg !2636
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_nonblock(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !558, metadata !868), !dbg !2637
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !559, metadata !868), !dbg !2638
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2639, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2641
  %1 = load i32, i32* %fd, align 4, !dbg !2641, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !2642
  %tobool = icmp ne i32 %call, 0, !dbg !2642
  br i1 %tobool, label %if.end, label %if.then, !dbg !2643

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2644
  br label %return, !dbg !2644

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2645, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !2647
  %3 = load i32, i32* %fd1, align 4, !dbg !2647, !tbaa !2010
  %call2 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 20494, i8* null) #1, !dbg !2648
  %cmp = icmp eq i32 %call2, -1, !dbg !2649
  br i1 %cmp, label %if.then.3, label %if.end.5, !dbg !2650

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2651, !tbaa !882
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4), !dbg !2652
  store %struct._object* %call4, %struct._object** %retval, !dbg !2653
  br label %return, !dbg !2653

if.end.5:                                         ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2654, !tbaa !900
  %inc = add i64 %5, 1, !dbg !2654
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2654, !tbaa !900
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2655
  br label %return, !dbg !2655

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval, !dbg !2656
  ret %struct._object* %6, !dbg !2656
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_setfmt(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !562, metadata !868), !dbg !2657
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !563, metadata !868), !dbg !2658
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2659, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2661
  %1 = load i32, i32* %fd, align 4, !dbg !2661, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !2662
  %tobool = icmp ne i32 %call, 0, !dbg !2662
  br i1 %tobool, label %if.end, label %if.then, !dbg !2663

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2664
  br label %return, !dbg !2664

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2665, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !2666
  %3 = load i32, i32* %fd1, align 4, !dbg !2666, !tbaa !2010
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2667, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_1(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i32 -1073459195), !dbg !2668
  store %struct._object* %call2, %struct._object** %retval, !dbg !2669
  br label %return, !dbg !2669

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2670
  ret %struct._object* %5, !dbg !2670
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_getfmts(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !579, metadata !868), !dbg !2671
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !580, metadata !868), !dbg !2672
  %0 = bitcast i32* %mask to i8*, !dbg !2673
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2673
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !581, metadata !868), !dbg !2674
  %1 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2675, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %1, i32 0, i32 2, !dbg !2677
  %2 = load i32, i32* %fd, align 4, !dbg !2677, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %2), !dbg !2678
  %tobool = icmp ne i32 %call, 0, !dbg !2678
  br i1 %tobool, label %if.end, label %if.then, !dbg !2679

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2680
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2680

if.end:                                           ; preds = %entry
  %3 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2681, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %3, i32 0, i32 2, !dbg !2683
  %4 = load i32, i32* %fd1, align 4, !dbg !2683, !tbaa !2010
  %call2 = call i32 (i32, i64, ...) @ioctl(i32 %4, i64 2147766283, i32* %mask) #1, !dbg !2684
  %cmp = icmp eq i32 %call2, -1, !dbg !2685
  br i1 %cmp, label %if.then.3, label %if.end.5, !dbg !2686

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2687, !tbaa !882
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5), !dbg !2688
  store %struct._object* %call4, %struct._object** %retval, !dbg !2689
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2689

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* %mask, align 4, !dbg !2690, !tbaa !1838
  %conv = sext i32 %6 to i64, !dbg !2690
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2691
  store %struct._object* %call6, %struct._object** %retval, !dbg !2692
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2692

cleanup:                                          ; preds = %if.end.5, %if.then.3, %if.then
  %7 = bitcast i32* %mask to i8*, !dbg !2693
  call void @llvm.lifetime.end(i64 4, i8* %7) #1, !dbg !2693
  %8 = load %struct._object*, %struct._object** %retval, !dbg !2693
  ret %struct._object* %8, !dbg !2693
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_channels(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !584, metadata !868), !dbg !2694
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !585, metadata !868), !dbg !2695
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2696, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2698
  %1 = load i32, i32* %fd, align 4, !dbg !2698, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !2699
  %tobool = icmp ne i32 %call, 0, !dbg !2699
  br i1 %tobool, label %if.end, label %if.then, !dbg !2700

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2701
  br label %return, !dbg !2701

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2702, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !2703
  %3 = load i32, i32* %fd1, align 4, !dbg !2703, !tbaa !2010
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2704, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_1(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i32 0, i32 0), i32 -1073459194), !dbg !2705
  store %struct._object* %call2, %struct._object** %retval, !dbg !2706
  br label %return, !dbg !2706

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2707
  ret %struct._object* %5, !dbg !2707
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_speed(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !588, metadata !868), !dbg !2708
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !589, metadata !868), !dbg !2709
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2710, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2712
  %1 = load i32, i32* %fd, align 4, !dbg !2712, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !2713
  %tobool = icmp ne i32 %call, 0, !dbg !2713
  br i1 %tobool, label %if.end, label %if.then, !dbg !2714

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2715
  br label %return, !dbg !2715

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2716, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !2717
  %3 = load i32, i32* %fd1, align 4, !dbg !2717, !tbaa !2010
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2718, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_1(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i32 -1073459198), !dbg !2719
  store %struct._object* %call2, %struct._object** %retval, !dbg !2720
  br label %return, !dbg !2720

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2721
  ret %struct._object* %5, !dbg !2721
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_sync(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !592, metadata !868), !dbg !2722
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !593, metadata !868), !dbg !2723
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2724, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2726
  %1 = load i32, i32* %fd, align 4, !dbg !2726, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !2727
  %tobool = icmp ne i32 %call, 0, !dbg !2727
  br i1 %tobool, label %if.end, label %if.then, !dbg !2728

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2729
  br label %return, !dbg !2729

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2730, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !2731
  %3 = load i32, i32* %fd1, align 4, !dbg !2731, !tbaa !2010
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2732, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_0(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i32 20481), !dbg !2733
  store %struct._object* %call2, %struct._object** %retval, !dbg !2734
  br label %return, !dbg !2734

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2735
  ret %struct._object* %5, !dbg !2735
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_reset(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !609, metadata !868), !dbg !2736
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !610, metadata !868), !dbg !2737
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2738, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2740
  %1 = load i32, i32* %fd, align 4, !dbg !2740, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !2741
  %tobool = icmp ne i32 %call, 0, !dbg !2741
  br i1 %tobool, label %if.end, label %if.then, !dbg !2742

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2743
  br label %return, !dbg !2743

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2744, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !2745
  %3 = load i32, i32* %fd1, align 4, !dbg !2745, !tbaa !2010
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2746, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_0(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i32 20480), !dbg !2747
  store %struct._object* %call2, %struct._object** %retval, !dbg !2748
  br label %return, !dbg !2748

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2749
  ret %struct._object* %5, !dbg !2749
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_post(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !613, metadata !868), !dbg !2750
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !614, metadata !868), !dbg !2751
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2752, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2, !dbg !2754
  %1 = load i32, i32* %fd, align 4, !dbg !2754, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !2755
  %tobool = icmp ne i32 %call, 0, !dbg !2755
  br i1 %tobool, label %if.end, label %if.then, !dbg !2756

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2757
  br label %return, !dbg !2757

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2758, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !2759
  %3 = load i32, i32* %fd1, align 4, !dbg !2759, !tbaa !2010
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2760, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_0(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), i32 20488), !dbg !2761
  store %struct._object* %call2, %struct._object** %retval, !dbg !2762
  br label %return, !dbg !2762

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2763
  ret %struct._object* %5, !dbg !2763
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_setparameters(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  %wanted_fmt = alloca i32, align 4
  %wanted_channels = alloca i32, align 4
  %wanted_rate = alloca i32, align 4
  %strict = alloca i32, align 4
  %fmt = alloca i32, align 4
  %channels = alloca i32, align 4
  %rate = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !617, metadata !868), !dbg !2764
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !618, metadata !868), !dbg !2765
  %0 = bitcast i32* %wanted_fmt to i8*, !dbg !2766
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2766
  call void @llvm.dbg.declare(metadata i32* %wanted_fmt, metadata !619, metadata !868), !dbg !2767
  %1 = bitcast i32* %wanted_channels to i8*, !dbg !2766
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2766
  call void @llvm.dbg.declare(metadata i32* %wanted_channels, metadata !620, metadata !868), !dbg !2768
  %2 = bitcast i32* %wanted_rate to i8*, !dbg !2766
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2766
  call void @llvm.dbg.declare(metadata i32* %wanted_rate, metadata !621, metadata !868), !dbg !2769
  %3 = bitcast i32* %strict to i8*, !dbg !2766
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2766
  call void @llvm.dbg.declare(metadata i32* %strict, metadata !622, metadata !868), !dbg !2770
  store i32 0, i32* %strict, align 4, !dbg !2770, !tbaa !1838
  %4 = bitcast i32* %fmt to i8*, !dbg !2771
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2771
  call void @llvm.dbg.declare(metadata i32* %fmt, metadata !623, metadata !868), !dbg !2772
  %5 = bitcast i32* %channels to i8*, !dbg !2771
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2771
  call void @llvm.dbg.declare(metadata i32* %channels, metadata !624, metadata !868), !dbg !2773
  %6 = bitcast i32* %rate to i8*, !dbg !2771
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !2771
  call void @llvm.dbg.declare(metadata i32* %rate, metadata !625, metadata !868), !dbg !2774
  %7 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2775, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %7, i32 0, i32 2, !dbg !2777
  %8 = load i32, i32* %fd, align 4, !dbg !2777, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %8), !dbg !2778
  %tobool = icmp ne i32 %call, 0, !dbg !2778
  br i1 %tobool, label %if.end, label %if.then, !dbg !2779

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2780
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2780

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2781, !tbaa !882
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.148, i32 0, i32 0), i32* %wanted_fmt, i32* %wanted_channels, i32* %wanted_rate, i32* %strict), !dbg !2783
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2783
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2784

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2785
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2785

if.end.4:                                         ; preds = %if.end
  %10 = load i32, i32* %wanted_fmt, align 4, !dbg !2786, !tbaa !1838
  store i32 %10, i32* %fmt, align 4, !dbg !2787, !tbaa !1838
  %11 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2788, !tbaa !882
  %fd5 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %11, i32 0, i32 2, !dbg !2790
  %12 = load i32, i32* %fd5, align 4, !dbg !2790, !tbaa !2010
  %call6 = call i32 (i32, i64, ...) @ioctl(i32 %12, i64 3221508101, i32* %fmt) #1, !dbg !2791
  %cmp = icmp eq i32 %call6, -1, !dbg !2792
  br i1 %cmp, label %if.then.7, label %if.end.9, !dbg !2793

if.then.7:                                        ; preds = %if.end.4
  %13 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2794, !tbaa !882
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %13), !dbg !2796
  store %struct._object* %call8, %struct._object** %retval, !dbg !2797
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2797

if.end.9:                                         ; preds = %if.end.4
  %14 = load i32, i32* %strict, align 4, !dbg !2798, !tbaa !1838
  %tobool10 = icmp ne i32 %14, 0, !dbg !2798
  br i1 %tobool10, label %land.lhs.true, label %if.end.14, !dbg !2800

land.lhs.true:                                    ; preds = %if.end.9
  %15 = load i32, i32* %fmt, align 4, !dbg !2801, !tbaa !1838
  %16 = load i32, i32* %wanted_fmt, align 4, !dbg !2803, !tbaa !1838
  %cmp11 = icmp ne i32 %15, %16, !dbg !2804
  br i1 %cmp11, label %if.then.12, label %if.end.14, !dbg !2805

if.then.12:                                       ; preds = %land.lhs.true
  %17 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !2806, !tbaa !882
  %18 = load i32, i32* %wanted_fmt, align 4, !dbg !2808, !tbaa !1838
  %19 = load i32, i32* %fmt, align 4, !dbg !2809, !tbaa !1838
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.149, i32 0, i32 0), i32 %18, i32 %19), !dbg !2810
  store %struct._object* %call13, %struct._object** %retval, !dbg !2811
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2811

if.end.14:                                        ; preds = %land.lhs.true, %if.end.9
  %20 = load i32, i32* %wanted_channels, align 4, !dbg !2812, !tbaa !1838
  store i32 %20, i32* %channels, align 4, !dbg !2813, !tbaa !1838
  %21 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2814, !tbaa !882
  %fd15 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %21, i32 0, i32 2, !dbg !2816
  %22 = load i32, i32* %fd15, align 4, !dbg !2816, !tbaa !2010
  %call16 = call i32 (i32, i64, ...) @ioctl(i32 %22, i64 3221508102, i32* %channels) #1, !dbg !2817
  %cmp17 = icmp eq i32 %call16, -1, !dbg !2818
  br i1 %cmp17, label %if.then.18, label %if.end.20, !dbg !2819

if.then.18:                                       ; preds = %if.end.14
  %23 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2820, !tbaa !882
  %call19 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %23), !dbg !2822
  store %struct._object* %call19, %struct._object** %retval, !dbg !2823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2823

if.end.20:                                        ; preds = %if.end.14
  %24 = load i32, i32* %strict, align 4, !dbg !2824, !tbaa !1838
  %tobool21 = icmp ne i32 %24, 0, !dbg !2824
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.26, !dbg !2826

land.lhs.true.22:                                 ; preds = %if.end.20
  %25 = load i32, i32* %channels, align 4, !dbg !2827, !tbaa !1838
  %26 = load i32, i32* %wanted_channels, align 4, !dbg !2829, !tbaa !1838
  %cmp23 = icmp ne i32 %25, %26, !dbg !2830
  br i1 %cmp23, label %if.then.24, label %if.end.26, !dbg !2831

if.then.24:                                       ; preds = %land.lhs.true.22
  %27 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !2832, !tbaa !882
  %28 = load i32, i32* %wanted_channels, align 4, !dbg !2834, !tbaa !1838
  %29 = load i32, i32* %channels, align 4, !dbg !2835, !tbaa !1838
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.150, i32 0, i32 0), i32 %28, i32 %29), !dbg !2836
  store %struct._object* %call25, %struct._object** %retval, !dbg !2837
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2837

if.end.26:                                        ; preds = %land.lhs.true.22, %if.end.20
  %30 = load i32, i32* %wanted_rate, align 4, !dbg !2838, !tbaa !1838
  store i32 %30, i32* %rate, align 4, !dbg !2839, !tbaa !1838
  %31 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2840, !tbaa !882
  %fd27 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %31, i32 0, i32 2, !dbg !2842
  %32 = load i32, i32* %fd27, align 4, !dbg !2842, !tbaa !2010
  %call28 = call i32 (i32, i64, ...) @ioctl(i32 %32, i64 3221508098, i32* %rate) #1, !dbg !2843
  %cmp29 = icmp eq i32 %call28, -1, !dbg !2844
  br i1 %cmp29, label %if.then.30, label %if.end.32, !dbg !2845

if.then.30:                                       ; preds = %if.end.26
  %33 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2846, !tbaa !882
  %call31 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %33), !dbg !2848
  store %struct._object* %call31, %struct._object** %retval, !dbg !2849
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2849

if.end.32:                                        ; preds = %if.end.26
  %34 = load i32, i32* %strict, align 4, !dbg !2850, !tbaa !1838
  %tobool33 = icmp ne i32 %34, 0, !dbg !2850
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.38, !dbg !2852

land.lhs.true.34:                                 ; preds = %if.end.32
  %35 = load i32, i32* %rate, align 4, !dbg !2853, !tbaa !1838
  %36 = load i32, i32* %wanted_rate, align 4, !dbg !2855, !tbaa !1838
  %cmp35 = icmp ne i32 %35, %36, !dbg !2856
  br i1 %cmp35, label %if.then.36, label %if.end.38, !dbg !2857

if.then.36:                                       ; preds = %land.lhs.true.34
  %37 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !2858, !tbaa !882
  %38 = load i32, i32* %wanted_rate, align 4, !dbg !2860, !tbaa !1838
  %39 = load i32, i32* %rate, align 4, !dbg !2861, !tbaa !1838
  %call37 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.151, i32 0, i32 0), i32 %38, i32 %39), !dbg !2862
  store %struct._object* %call37, %struct._object** %retval, !dbg !2863
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2863

if.end.38:                                        ; preds = %land.lhs.true.34, %if.end.32
  %40 = load i32, i32* %fmt, align 4, !dbg !2864, !tbaa !1838
  %41 = load i32, i32* %channels, align 4, !dbg !2865, !tbaa !1838
  %42 = load i32, i32* %rate, align 4, !dbg !2866, !tbaa !1838
  %call39 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), i32 %40, i32 %41, i32 %42), !dbg !2867
  store %struct._object* %call39, %struct._object** %retval, !dbg !2868
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2868

cleanup:                                          ; preds = %if.end.38, %if.then.36, %if.then.30, %if.then.24, %if.then.18, %if.then.12, %if.then.7, %if.then.3, %if.then
  %43 = bitcast i32* %rate to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 4, i8* %43) #1, !dbg !2869
  %44 = bitcast i32* %channels to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 4, i8* %44) #1, !dbg !2869
  %45 = bitcast i32* %fmt to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 4, i8* %45) #1, !dbg !2869
  %46 = bitcast i32* %strict to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 4, i8* %46) #1, !dbg !2869
  %47 = bitcast i32* %wanted_rate to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 4, i8* %47) #1, !dbg !2869
  %48 = bitcast i32* %wanted_channels to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 4, i8* %48) #1, !dbg !2869
  %49 = bitcast i32* %wanted_fmt to i8*, !dbg !2869
  call void @llvm.lifetime.end(i64 4, i8* %49) #1, !dbg !2869
  %50 = load %struct._object*, %struct._object** %retval, !dbg !2869
  ret %struct._object* %50, !dbg !2869
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_bufsize(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %ai = alloca %struct.audio_buf_info, align 4
  %nchannels = alloca i32, align 4
  %ssize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !628, metadata !868), !dbg !2870
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !629, metadata !868), !dbg !2871
  %0 = bitcast %struct.audio_buf_info* %ai to i8*, !dbg !2872
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !2872
  call void @llvm.dbg.declare(metadata %struct.audio_buf_info* %ai, metadata !630, metadata !868), !dbg !2873
  %1 = bitcast i32* %nchannels to i8*, !dbg !2874
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2874
  call void @llvm.dbg.declare(metadata i32* %nchannels, metadata !639, metadata !868), !dbg !2875
  store i32 0, i32* %nchannels, align 4, !dbg !2875, !tbaa !1838
  %2 = bitcast i32* %ssize to i8*, !dbg !2874
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2874
  call void @llvm.dbg.declare(metadata i32* %ssize, metadata !640, metadata !868), !dbg !2876
  store i32 0, i32* %ssize, align 4, !dbg !2876, !tbaa !1838
  %3 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2877, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %3, i32 0, i32 2, !dbg !2879
  %4 = load i32, i32* %fd, align 4, !dbg !2879, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %4), !dbg !2880
  %tobool = icmp ne i32 %call, 0, !dbg !2880
  br i1 %tobool, label %if.end, label %if.then, !dbg !2881

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2882
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2882

if.end:                                           ; preds = %entry
  %5 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2883, !tbaa !882
  %call1 = call i32 @_ssize(%struct.oss_audio_t* %5, i32* %nchannels, i32* %ssize), !dbg !2885
  %cmp = icmp slt i32 %call1, 0, !dbg !2886
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !2887

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %nchannels, align 4, !dbg !2888, !tbaa !1838
  %tobool2 = icmp ne i32 %6, 0, !dbg !2888
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then.5, !dbg !2890

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %ssize, align 4, !dbg !2891, !tbaa !1838
  %tobool4 = icmp ne i32 %7, 0, !dbg !2891
  br i1 %tobool4, label %if.end.7, label %if.then.5, !dbg !2893

if.then.5:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2894, !tbaa !882
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8), !dbg !2896
  store %struct._object* null, %struct._object** %retval, !dbg !2897
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2897

if.end.7:                                         ; preds = %lor.lhs.false.3
  %9 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2898, !tbaa !882
  %fd8 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %9, i32 0, i32 2, !dbg !2900
  %10 = load i32, i32* %fd8, align 4, !dbg !2900, !tbaa !2010
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %10, i64 2148552716, %struct.audio_buf_info* %ai) #1, !dbg !2901
  %cmp10 = icmp slt i32 %call9, 0, !dbg !2902
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !2903

if.then.11:                                       ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2904, !tbaa !882
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %11), !dbg !2906
  store %struct._object* null, %struct._object** %retval, !dbg !2907
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2907

if.end.13:                                        ; preds = %if.end.7
  %fragstotal = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 1, !dbg !2908
  %12 = load i32, i32* %fragstotal, align 4, !dbg !2908, !tbaa !2909
  %fragsize = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 2, !dbg !2911
  %13 = load i32, i32* %fragsize, align 4, !dbg !2911, !tbaa !2912
  %mul = mul i32 %12, %13, !dbg !2913
  %14 = load i32, i32* %nchannels, align 4, !dbg !2914, !tbaa !1838
  %15 = load i32, i32* %ssize, align 4, !dbg !2915, !tbaa !1838
  %mul14 = mul i32 %14, %15, !dbg !2916
  %div = sdiv i32 %mul, %mul14, !dbg !2917
  %conv = sext i32 %div to i64, !dbg !2918
  %call15 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2919
  store %struct._object* %call15, %struct._object** %retval, !dbg !2920
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2920

cleanup:                                          ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %16 = bitcast i32* %ssize to i8*, !dbg !2921
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !2921
  %17 = bitcast i32* %nchannels to i8*, !dbg !2921
  call void @llvm.lifetime.end(i64 4, i8* %17) #1, !dbg !2921
  %18 = bitcast %struct.audio_buf_info* %ai to i8*, !dbg !2921
  call void @llvm.lifetime.end(i64 16, i8* %18) #1, !dbg !2921
  %19 = load %struct._object*, %struct._object** %retval, !dbg !2921
  ret %struct._object* %19, !dbg !2921
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_obufcount(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %ai = alloca %struct.audio_buf_info, align 4
  %nchannels = alloca i32, align 4
  %ssize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !652, metadata !868), !dbg !2922
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !653, metadata !868), !dbg !2923
  %0 = bitcast %struct.audio_buf_info* %ai to i8*, !dbg !2924
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !2924
  call void @llvm.dbg.declare(metadata %struct.audio_buf_info* %ai, metadata !654, metadata !868), !dbg !2925
  %1 = bitcast i32* %nchannels to i8*, !dbg !2926
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2926
  call void @llvm.dbg.declare(metadata i32* %nchannels, metadata !655, metadata !868), !dbg !2927
  store i32 0, i32* %nchannels, align 4, !dbg !2927, !tbaa !1838
  %2 = bitcast i32* %ssize to i8*, !dbg !2926
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2926
  call void @llvm.dbg.declare(metadata i32* %ssize, metadata !656, metadata !868), !dbg !2928
  store i32 0, i32* %ssize, align 4, !dbg !2928, !tbaa !1838
  %3 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2929, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %3, i32 0, i32 2, !dbg !2931
  %4 = load i32, i32* %fd, align 4, !dbg !2931, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %4), !dbg !2932
  %tobool = icmp ne i32 %call, 0, !dbg !2932
  br i1 %tobool, label %if.end, label %if.then, !dbg !2933

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2934
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2934

if.end:                                           ; preds = %entry
  %5 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2935, !tbaa !882
  %call1 = call i32 @_ssize(%struct.oss_audio_t* %5, i32* %nchannels, i32* %ssize), !dbg !2937
  %cmp = icmp slt i32 %call1, 0, !dbg !2938
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !2939

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %nchannels, align 4, !dbg !2940, !tbaa !1838
  %tobool2 = icmp ne i32 %6, 0, !dbg !2940
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then.5, !dbg !2942

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %ssize, align 4, !dbg !2943, !tbaa !1838
  %tobool4 = icmp ne i32 %7, 0, !dbg !2943
  br i1 %tobool4, label %if.end.7, label %if.then.5, !dbg !2945

if.then.5:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2946, !tbaa !882
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8), !dbg !2948
  store %struct._object* null, %struct._object** %retval, !dbg !2949
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2949

if.end.7:                                         ; preds = %lor.lhs.false.3
  %9 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2950, !tbaa !882
  %fd8 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %9, i32 0, i32 2, !dbg !2952
  %10 = load i32, i32* %fd8, align 4, !dbg !2952, !tbaa !2010
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %10, i64 2148552716, %struct.audio_buf_info* %ai) #1, !dbg !2953
  %cmp10 = icmp slt i32 %call9, 0, !dbg !2954
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !2955

if.then.11:                                       ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2956, !tbaa !882
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %11), !dbg !2958
  store %struct._object* null, %struct._object** %retval, !dbg !2959
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2959

if.end.13:                                        ; preds = %if.end.7
  %fragstotal = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 1, !dbg !2960
  %12 = load i32, i32* %fragstotal, align 4, !dbg !2960, !tbaa !2909
  %fragsize = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 2, !dbg !2961
  %13 = load i32, i32* %fragsize, align 4, !dbg !2961, !tbaa !2912
  %mul = mul i32 %12, %13, !dbg !2962
  %bytes = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 3, !dbg !2963
  %14 = load i32, i32* %bytes, align 4, !dbg !2963, !tbaa !2964
  %sub = sub i32 %mul, %14, !dbg !2965
  %15 = load i32, i32* %ssize, align 4, !dbg !2966, !tbaa !1838
  %16 = load i32, i32* %nchannels, align 4, !dbg !2967, !tbaa !1838
  %mul14 = mul i32 %15, %16, !dbg !2968
  %div = sdiv i32 %sub, %mul14, !dbg !2969
  %conv = sext i32 %div to i64, !dbg !2970
  %call15 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !2971
  store %struct._object* %call15, %struct._object** %retval, !dbg !2972
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2972

cleanup:                                          ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %17 = bitcast i32* %ssize to i8*, !dbg !2973
  call void @llvm.lifetime.end(i64 4, i8* %17) #1, !dbg !2973
  %18 = bitcast i32* %nchannels to i8*, !dbg !2973
  call void @llvm.lifetime.end(i64 4, i8* %18) #1, !dbg !2973
  %19 = bitcast %struct.audio_buf_info* %ai to i8*, !dbg !2973
  call void @llvm.lifetime.end(i64 16, i8* %19) #1, !dbg !2973
  %20 = load %struct._object*, %struct._object** %retval, !dbg !2973
  ret %struct._object* %20, !dbg !2973
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_obuffree(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %ai = alloca %struct.audio_buf_info, align 4
  %nchannels = alloca i32, align 4
  %ssize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !659, metadata !868), !dbg !2974
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !660, metadata !868), !dbg !2975
  %0 = bitcast %struct.audio_buf_info* %ai to i8*, !dbg !2976
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !2976
  call void @llvm.dbg.declare(metadata %struct.audio_buf_info* %ai, metadata !661, metadata !868), !dbg !2977
  %1 = bitcast i32* %nchannels to i8*, !dbg !2978
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2978
  call void @llvm.dbg.declare(metadata i32* %nchannels, metadata !662, metadata !868), !dbg !2979
  store i32 0, i32* %nchannels, align 4, !dbg !2979, !tbaa !1838
  %2 = bitcast i32* %ssize to i8*, !dbg !2978
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2978
  call void @llvm.dbg.declare(metadata i32* %ssize, metadata !663, metadata !868), !dbg !2980
  store i32 0, i32* %ssize, align 4, !dbg !2980, !tbaa !1838
  %3 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2981, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %3, i32 0, i32 2, !dbg !2983
  %4 = load i32, i32* %fd, align 4, !dbg !2983, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %4), !dbg !2984
  %tobool = icmp ne i32 %call, 0, !dbg !2984
  br i1 %tobool, label %if.end, label %if.then, !dbg !2985

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2986
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2986

if.end:                                           ; preds = %entry
  %5 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !2987, !tbaa !882
  %call1 = call i32 @_ssize(%struct.oss_audio_t* %5, i32* %nchannels, i32* %ssize), !dbg !2989
  %cmp = icmp slt i32 %call1, 0, !dbg !2990
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !2991

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %nchannels, align 4, !dbg !2992, !tbaa !1838
  %tobool2 = icmp ne i32 %6, 0, !dbg !2992
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then.5, !dbg !2994

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %ssize, align 4, !dbg !2995, !tbaa !1838
  %tobool4 = icmp ne i32 %7, 0, !dbg !2995
  br i1 %tobool4, label %if.end.7, label %if.then.5, !dbg !2997

if.then.5:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2998, !tbaa !882
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8), !dbg !3000
  store %struct._object* null, %struct._object** %retval, !dbg !3001
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3001

if.end.7:                                         ; preds = %lor.lhs.false.3
  %9 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !3002, !tbaa !882
  %fd8 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %9, i32 0, i32 2, !dbg !3004
  %10 = load i32, i32* %fd8, align 4, !dbg !3004, !tbaa !2010
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %10, i64 2148552716, %struct.audio_buf_info* %ai) #1, !dbg !3005
  %cmp10 = icmp slt i32 %call9, 0, !dbg !3006
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !3007

if.then.11:                                       ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3008, !tbaa !882
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %11), !dbg !3010
  store %struct._object* null, %struct._object** %retval, !dbg !3011
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3011

if.end.13:                                        ; preds = %if.end.7
  %bytes = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 3, !dbg !3012
  %12 = load i32, i32* %bytes, align 4, !dbg !3012, !tbaa !2964
  %13 = load i32, i32* %ssize, align 4, !dbg !3013, !tbaa !1838
  %14 = load i32, i32* %nchannels, align 4, !dbg !3014, !tbaa !1838
  %mul = mul i32 %13, %14, !dbg !3015
  %div = sdiv i32 %12, %mul, !dbg !3016
  %conv = sext i32 %div to i64, !dbg !3017
  %call14 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !3018
  store %struct._object* %call14, %struct._object** %retval, !dbg !3019
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3019

cleanup:                                          ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %15 = bitcast i32* %ssize to i8*, !dbg !3020
  call void @llvm.lifetime.end(i64 4, i8* %15) #1, !dbg !3020
  %16 = bitcast i32* %nchannels to i8*, !dbg !3020
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !3020
  %17 = bitcast %struct.audio_buf_info* %ai to i8*, !dbg !3020
  call void @llvm.lifetime.end(i64 16, i8* %17) #1, !dbg !3020
  %18 = load %struct._object*, %struct._object** %retval, !dbg !3020
  ret %struct._object* %18, !dbg !3020
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_getptr(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %info = alloca %struct.count_info, align 4
  %req = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !666, metadata !868), !dbg !3021
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !667, metadata !868), !dbg !3022
  %0 = bitcast %struct.count_info* %info to i8*, !dbg !3023
  call void @llvm.lifetime.start(i64 12, i8* %0) #1, !dbg !3023
  call void @llvm.dbg.declare(metadata %struct.count_info* %info, metadata !668, metadata !868), !dbg !3024
  %1 = bitcast i32* %req to i8*, !dbg !3025
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3025
  call void @llvm.dbg.declare(metadata i32* %req, metadata !675, metadata !868), !dbg !3026
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !3027, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2, !dbg !3029
  %3 = load i32, i32* %fd, align 4, !dbg !3029, !tbaa !2010
  %call = call i32 @_is_fd_valid(i32 %3), !dbg !3030
  %tobool = icmp ne i32 %call, 0, !dbg !3030
  br i1 %tobool, label %if.end, label %if.then, !dbg !3031

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3032
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3032

if.end:                                           ; preds = %entry
  %4 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !3033, !tbaa !882
  %mode = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %4, i32 0, i32 3, !dbg !3035
  %5 = load i32, i32* %mode, align 4, !dbg !3035, !tbaa !2318
  %cmp = icmp eq i32 %5, 0, !dbg !3036
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !3037

if.then.1:                                        ; preds = %if.end
  store i32 -2146676719, i32* %req, align 4, !dbg !3038, !tbaa !1838
  br label %if.end.2, !dbg !3039

if.else:                                          ; preds = %if.end
  store i32 -2146676718, i32* %req, align 4, !dbg !3040, !tbaa !1838
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %6 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !3041, !tbaa !882
  %fd3 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %6, i32 0, i32 2, !dbg !3043
  %7 = load i32, i32* %fd3, align 4, !dbg !3043, !tbaa !2010
  %8 = load i32, i32* %req, align 4, !dbg !3044, !tbaa !1838
  %conv = sext i32 %8 to i64, !dbg !3044
  %call4 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 %conv, %struct.count_info* %info) #1, !dbg !3045
  %cmp5 = icmp eq i32 %call4, -1, !dbg !3046
  br i1 %cmp5, label %if.then.7, label %if.end.9, !dbg !3047

if.then.7:                                        ; preds = %if.end.2
  %9 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3048, !tbaa !882
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %9), !dbg !3050
  store %struct._object* null, %struct._object** %retval, !dbg !3051
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3051

if.end.9:                                         ; preds = %if.end.2
  %bytes = getelementptr inbounds %struct.count_info, %struct.count_info* %info, i32 0, i32 0, !dbg !3052
  %10 = load i32, i32* %bytes, align 4, !dbg !3052, !tbaa !3053
  %blocks = getelementptr inbounds %struct.count_info, %struct.count_info* %info, i32 0, i32 1, !dbg !3055
  %11 = load i32, i32* %blocks, align 4, !dbg !3055, !tbaa !3056
  %ptr = getelementptr inbounds %struct.count_info, %struct.count_info* %info, i32 0, i32 2, !dbg !3057
  %12 = load i32, i32* %ptr, align 4, !dbg !3057, !tbaa !3058
  %call10 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0), i32 %10, i32 %11, i32 %12), !dbg !3059
  store %struct._object* %call10, %struct._object** %retval, !dbg !3060
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3060

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then
  %13 = bitcast i32* %req to i8*, !dbg !3061
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !3061
  %14 = bitcast %struct.count_info* %info to i8*, !dbg !3061
  call void @llvm.lifetime.end(i64 12, i8* %14) #1, !dbg !3061
  %15 = load %struct._object*, %struct._object** %retval, !dbg !3061
  ret %struct._object* %15, !dbg !3061
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_self(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !678, metadata !868), !dbg !3062
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !679, metadata !868), !dbg !3063
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3064, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0, !dbg !3065
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !3066, !tbaa !900
  %inc = add i64 %1, 1, !dbg !3066
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3066, !tbaa !900
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3067, !tbaa !882
  ret %struct._object* %2, !dbg !3068
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_exit(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !682, metadata !868), !dbg !3069
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !683, metadata !868), !dbg !3070
  %0 = bitcast %struct._object** %ret to i8*, !dbg !3071
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3071
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !684, metadata !868), !dbg !3072
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !3073, !tbaa !882
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @oss_exit.PyId_close, i8* null), !dbg !3074
  store %struct._object* %call, %struct._object** %ret, align 8, !dbg !3072, !tbaa !882
  %2 = load %struct._object*, %struct._object** %ret, align 8, !dbg !3075, !tbaa !882
  %tobool = icmp ne %struct._object* %2, null, !dbg !3075
  br i1 %tobool, label %if.end, label %if.then, !dbg !3077

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3078
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3078

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3079

do.body:                                          ; preds = %if.end
  %3 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3080
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3080
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !685, metadata !868), !dbg !3082
  %4 = load %struct._object*, %struct._object** %ret, align 8, !dbg !3083, !tbaa !882
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8, !dbg !3082, !tbaa !882
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3084, !tbaa !882
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !3086
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !3087, !tbaa !900
  %dec = add i64 %6, -1, !dbg !3087
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3087, !tbaa !900
  %cmp = icmp ne i64 %dec, 0, !dbg !3088
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !3089

if.then.1:                                        ; preds = %do.body
  br label %if.end.2, !dbg !3090

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3092, !tbaa !882
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !3094
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3094, !tbaa !1944
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4, !dbg !3095
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3095, !tbaa !1946
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3096, !tbaa !882
  call void %9(%struct._object* %10), !dbg !3097
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3098
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !3098
  br label %do.cond, !dbg !3100

do.cond:                                          ; preds = %if.end.2
  br label %do.end, !dbg !3101

do.end:                                           ; preds = %do.cond
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3103, !tbaa !900
  %inc = add i64 %12, 1, !dbg !3103
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3103, !tbaa !900
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3104
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3104

cleanup:                                          ; preds = %do.end, %if.then
  %13 = bitcast %struct._object** %ret to i8*, !dbg !3105
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !3105
  %14 = load %struct._object*, %struct._object** %retval, !dbg !3105
  ret %struct._object* %14, !dbg !3105
}

; Function Attrs: nounwind uwtable
define internal i32 @_is_fd_valid(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1838
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !510, metadata !868), !dbg !3106
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3107, !tbaa !1838
  %cmp = icmp sge i32 %0, 0, !dbg !3109
  br i1 %cmp, label %if.then, label %if.else, !dbg !3110

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !3111
  br label %return, !dbg !3111

if.else:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3113, !tbaa !882
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i32 0, i32 0)), !dbg !3115
  store i32 0, i32* %retval, !dbg !3116
  br label %return, !dbg !3116

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, !dbg !3117
  ret i32 %2, !dbg !3117
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare %struct._ts* @PyEval_SaveThread() #3

declare i64 @read(i32, i8*, i64) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

declare i32 @_PyBytes_Resize(%struct._object**, i64) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i64 @write(i32, i8*, i64) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @_do_ioctl_1(i32 %fd, %struct._object* %args, i8* %fname, i32 %cmd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %fname.addr = alloca i8*, align 8
  %cmd.addr = alloca i32, align 4
  %argfmt = alloca [33 x i8], align 16
  %arg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1838
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !568, metadata !868), !dbg !3118
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !569, metadata !868), !dbg !3119
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata i8** %fname.addr, metadata !570, metadata !868), !dbg !3120
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !1838
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !571, metadata !868), !dbg !3121
  %0 = bitcast [33 x i8]* %argfmt to i8*, !dbg !3122
  call void @llvm.lifetime.start(i64 33, i8* %0) #1, !dbg !3122
  call void @llvm.dbg.declare(metadata [33 x i8]* %argfmt, metadata !572, metadata !868), !dbg !3123
  %1 = bitcast [33 x i8]* %argfmt to i8*, !dbg !3123
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 33, i32 16, i1 false), !dbg !3123
  %2 = bitcast i8* %1 to [33 x i8]*, !dbg !3123
  %3 = getelementptr [33 x i8], [33 x i8]* %2, i32 0, i32 0, !dbg !3123
  store i8 105, i8* %3, !dbg !3123
  %4 = getelementptr [33 x i8], [33 x i8]* %2, i32 0, i32 1, !dbg !3123
  store i8 58, i8* %4, !dbg !3123
  %5 = bitcast i32* %arg to i8*, !dbg !3124
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !3124
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !576, metadata !868), !dbg !3125
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %argfmt, i32 0, i32 0, !dbg !3126
  %6 = load i8*, i8** %fname.addr, align 8, !dbg !3127, !tbaa !882
  %call = call i8* @strncat(i8* %arraydecay, i8* %6, i64 30) #1, !dbg !3128
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3129, !tbaa !882
  %arraydecay1 = getelementptr inbounds [33 x i8], [33 x i8]* %argfmt, i32 0, i32 0, !dbg !3131
  %call2 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* %arraydecay1, i32* %arg), !dbg !3132
  %tobool = icmp ne i32 %call2, 0, !dbg !3132
  br i1 %tobool, label %if.end, label %if.then, !dbg !3133

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3134
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3134

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %fd.addr, align 4, !dbg !3135, !tbaa !1838
  %9 = load i32, i32* %cmd.addr, align 4, !dbg !3137, !tbaa !1838
  %conv = sext i32 %9 to i64, !dbg !3137
  %call3 = call i32 (i32, i64, ...) @ioctl(i32 %8, i64 %conv, i32* %arg) #1, !dbg !3138
  %cmp = icmp eq i32 %call3, -1, !dbg !3139
  br i1 %cmp, label %if.then.5, label %if.end.7, !dbg !3140

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3141, !tbaa !882
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %10), !dbg !3142
  store %struct._object* %call6, %struct._object** %retval, !dbg !3143
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3143

if.end.7:                                         ; preds = %if.end
  %11 = load i32, i32* %arg, align 4, !dbg !3144, !tbaa !1838
  %conv8 = sext i32 %11 to i64, !dbg !3144
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv8), !dbg !3145
  store %struct._object* %call9, %struct._object** %retval, !dbg !3146
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3146

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then
  %12 = bitcast i32* %arg to i8*, !dbg !3147
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !3147
  %13 = bitcast [33 x i8]* %argfmt to i8*, !dbg !3147
  call void @llvm.lifetime.end(i64 33, i8* %13) #1, !dbg !3147
  %14 = load %struct._object*, %struct._object** %retval, !dbg !3147
  ret %struct._object* %14, !dbg !3147
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @_do_ioctl_0(i32 %fd, %struct._object* %args, i8* %fname, i32 %cmd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %fname.addr = alloca i8*, align 8
  %cmd.addr = alloca i32, align 4
  %argfmt = alloca [32 x i8], align 16
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1838
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !596, metadata !868), !dbg !3148
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !597, metadata !868), !dbg !3149
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata i8** %fname.addr, metadata !598, metadata !868), !dbg !3150
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !1838
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !599, metadata !868), !dbg !3151
  %0 = bitcast [32 x i8]* %argfmt to i8*, !dbg !3152
  call void @llvm.lifetime.start(i64 32, i8* %0) #1, !dbg !3152
  call void @llvm.dbg.declare(metadata [32 x i8]* %argfmt, metadata !600, metadata !868), !dbg !3153
  %1 = bitcast [32 x i8]* %argfmt to i8*, !dbg !3153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_do_ioctl_0.argfmt, i32 0, i32 0), i64 32, i32 16, i1 false), !dbg !3153
  %2 = bitcast i32* %rv to i8*, !dbg !3154
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !3154
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !604, metadata !868), !dbg !3155
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %argfmt, i32 0, i32 0, !dbg !3156
  %3 = load i8*, i8** %fname.addr, align 8, !dbg !3157, !tbaa !882
  %call = call i8* @strncat(i8* %arraydecay, i8* %3, i64 30) #1, !dbg !3158
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3159, !tbaa !882
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %argfmt, i32 0, i32 0, !dbg !3161
  %call2 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* %arraydecay1), !dbg !3162
  %tobool = icmp ne i32 %call2, 0, !dbg !3162
  br i1 %tobool, label %if.end, label %if.then, !dbg !3163

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3164
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3164

if.end:                                           ; preds = %entry
  %5 = bitcast %struct._ts** %_save to i8*, !dbg !3165
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3165
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !605, metadata !868), !dbg !3166
  %call3 = call %struct._ts* @PyEval_SaveThread(), !dbg !3167
  store %struct._ts* %call3, %struct._ts** %_save, align 8, !dbg !3168, !tbaa !882
  %6 = load i32, i32* %fd.addr, align 4, !dbg !3169, !tbaa !1838
  %7 = load i32, i32* %cmd.addr, align 4, !dbg !3170, !tbaa !1838
  %conv = sext i32 %7 to i64, !dbg !3170
  %call4 = call i32 (i32, i64, ...) @ioctl(i32 %6, i64 %conv, i32 0) #1, !dbg !3171
  store i32 %call4, i32* %rv, align 4, !dbg !3172, !tbaa !1838
  %8 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !3173, !tbaa !882
  call void @PyEval_RestoreThread(%struct._ts* %8), !dbg !3174
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !3175
  %10 = load i32, i32* %rv, align 4, !dbg !3176, !tbaa !1838
  %cmp = icmp eq i32 %10, -1, !dbg !3178
  br i1 %cmp, label %if.then.6, label %if.end.8, !dbg !3179

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3180, !tbaa !882
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %11), !dbg !3181
  store %struct._object* %call7, %struct._object** %retval, !dbg !3182
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3182

if.end.8:                                         ; preds = %if.end
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3183, !tbaa !900
  %inc = add i64 %12, 1, !dbg !3183
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3183, !tbaa !900
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3184
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3184

cleanup:                                          ; preds = %if.end.8, %if.then.6, %if.then
  %13 = bitcast i32* %rv to i8*, !dbg !3185
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !3185
  %14 = bitcast [32 x i8]* %argfmt to i8*, !dbg !3185
  call void @llvm.lifetime.end(i64 32, i8* %14) #1, !dbg !3185
  %15 = load %struct._object*, %struct._object** %retval, !dbg !3185
  ret %struct._object* %15, !dbg !3185
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @_ssize(%struct.oss_audio_t* %self, i32* %nchannels, i32* %ssize) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %nchannels.addr = alloca i32*, align 8
  %ssize.addr = alloca i32*, align 8
  %fmt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self.addr, metadata !646, metadata !868), !dbg !3186
  store i32* %nchannels, i32** %nchannels.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata i32** %nchannels.addr, metadata !647, metadata !868), !dbg !3187
  store i32* %ssize, i32** %ssize.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata i32** %ssize.addr, metadata !648, metadata !868), !dbg !3188
  %0 = bitcast i32* %fmt to i8*, !dbg !3189
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !3189
  call void @llvm.dbg.declare(metadata i32* %fmt, metadata !649, metadata !868), !dbg !3190
  store i32 0, i32* %fmt, align 4, !dbg !3191, !tbaa !1838
  %1 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !3192, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %1, i32 0, i32 2, !dbg !3194
  %2 = load i32, i32* %fd, align 4, !dbg !3194, !tbaa !2010
  %call = call i32 (i32, i64, ...) @ioctl(i32 %2, i64 3221508101, i32* %fmt) #1, !dbg !3195
  %cmp = icmp slt i32 %call, 0, !dbg !3196
  br i1 %cmp, label %if.then, label %if.end, !dbg !3197

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #2, !dbg !3198
  %3 = load i32, i32* %call1, align 4, !dbg !3199, !tbaa !1838
  %sub = sub i32 0, %3, !dbg !3200
  store i32 %sub, i32* %retval, !dbg !3201
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3201

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %fmt, align 4, !dbg !3202, !tbaa !1838
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 8, label %sw.bb
    i32 64, label %sw.bb
    i32 16, label %sw.bb.2
    i32 32, label %sw.bb.2
    i32 128, label %sw.bb.2
    i32 256, label %sw.bb.2
    i32 512, label %sw.bb.3
    i32 4, label %sw.bb.3
  ], !dbg !3203

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  %5 = load i32*, i32** %ssize.addr, align 8, !dbg !3204, !tbaa !882
  store i32 1, i32* %5, align 4, !dbg !3206, !tbaa !1838
  br label %sw.epilog, !dbg !3207

sw.bb.2:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  %6 = load i32*, i32** %ssize.addr, align 8, !dbg !3208, !tbaa !882
  store i32 2, i32* %6, align 4, !dbg !3209, !tbaa !1838
  br label %sw.epilog, !dbg !3210

sw.bb.3:                                          ; preds = %if.end, %if.end
  br label %sw.default, !dbg !3210

sw.default:                                       ; preds = %if.end, %sw.bb.3
  store i32 -95, i32* %retval, !dbg !3211
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3211

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  %7 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8, !dbg !3212, !tbaa !882
  %fd4 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %7, i32 0, i32 2, !dbg !3214
  %8 = load i32, i32* %fd4, align 4, !dbg !3214, !tbaa !2010
  %9 = load i32*, i32** %nchannels.addr, align 8, !dbg !3215, !tbaa !882
  %call5 = call i32 (i32, i64, ...) @ioctl(i32 %8, i64 3221508102, i32* %9) #1, !dbg !3216
  %cmp6 = icmp slt i32 %call5, 0, !dbg !3217
  br i1 %cmp6, label %if.then.7, label %if.end.10, !dbg !3218

if.then.7:                                        ; preds = %sw.epilog
  %call8 = call i32* @__errno_location() #2, !dbg !3219
  %10 = load i32, i32* %call8, align 4, !dbg !3220, !tbaa !1838
  %sub9 = sub i32 0, %10, !dbg !3221
  store i32 %sub9, i32* %retval, !dbg !3222
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3222

if.end.10:                                        ; preds = %sw.epilog
  store i32 0, i32* %retval, !dbg !3223
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3223

cleanup:                                          ; preds = %if.end.10, %if.then.7, %sw.default, %if.then
  %11 = bitcast i32* %fmt to i8*, !dbg !3224
  call void @llvm.lifetime.end(i64 4, i8* %11) #1, !dbg !3224
  %12 = load i32, i32* %retval, !dbg !3224
  ret i32 %12, !dbg !3224
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @oss_mixer_dealloc(%struct.oss_mixer_t* %self) #0 {
entry:
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !691, metadata !868), !dbg !3225
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3226, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1, !dbg !3228
  %1 = load i32, i32* %fd, align 4, !dbg !3228, !tbaa !3229
  %cmp = icmp ne i32 %1, -1, !dbg !3231
  br i1 %cmp, label %if.then, label %if.end, !dbg !3232

if.then:                                          ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3233, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1, !dbg !3234
  %3 = load i32, i32* %fd1, align 4, !dbg !3234, !tbaa !3229
  %call = call i32 @close(i32 %3), !dbg !3235
  br label %if.end, !dbg !3235

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3236, !tbaa !882
  %5 = bitcast %struct.oss_mixer_t* %4 to i8*, !dbg !3236
  call void @PyObject_Free(i8* %5), !dbg !3237
  ret void, !dbg !3238
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_close(%struct.oss_mixer_t* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !696, metadata !868), !dbg !3239
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !697, metadata !868), !dbg !3240
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3241, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1, !dbg !3243
  %1 = load i32, i32* %fd, align 4, !dbg !3243, !tbaa !3229
  %cmp = icmp sge i32 %1, 0, !dbg !3244
  br i1 %cmp, label %if.then, label %if.end, !dbg !3245

if.then:                                          ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3246, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1, !dbg !3248
  %3 = load i32, i32* %fd1, align 4, !dbg !3248, !tbaa !3229
  %call = call i32 @close(i32 %3), !dbg !3249
  %4 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3250, !tbaa !882
  %fd2 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %4, i32 0, i32 1, !dbg !3251
  store i32 -1, i32* %fd2, align 4, !dbg !3252, !tbaa !3229
  br label %if.end, !dbg !3253

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3254, !tbaa !900
  %inc = add i64 %5, 1, !dbg !3254
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3254, !tbaa !900
  ret %struct._object* @_Py_NoneStruct, !dbg !3255
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_fileno(%struct.oss_mixer_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !700, metadata !868), !dbg !3256
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !701, metadata !868), !dbg !3257
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3258, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1, !dbg !3260
  %1 = load i32, i32* %fd, align 4, !dbg !3260, !tbaa !3229
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !3261
  %tobool = icmp ne i32 %call, 0, !dbg !3261
  br i1 %tobool, label %if.end, label %if.then, !dbg !3262

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3263
  br label %return, !dbg !3263

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3264, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1, !dbg !3265
  %3 = load i32, i32* %fd1, align 4, !dbg !3265, !tbaa !3229
  %conv = sext i32 %3 to i64, !dbg !3264
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !3266
  store %struct._object* %call2, %struct._object** %retval, !dbg !3267
  br label %return, !dbg !3267

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval, !dbg !3268
  ret %struct._object* %4, !dbg !3268
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_controls(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !704, metadata !868), !dbg !3269
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !705, metadata !868), !dbg !3270
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3271, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1, !dbg !3273
  %1 = load i32, i32* %fd, align 4, !dbg !3273, !tbaa !3229
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !3274
  %tobool = icmp ne i32 %call, 0, !dbg !3274
  br i1 %tobool, label %if.end, label %if.then, !dbg !3275

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3276
  br label %return, !dbg !3276

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3277, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1, !dbg !3278
  %3 = load i32, i32* %fd1, align 4, !dbg !3278, !tbaa !3229
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3279, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_1_internal(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), i32 -2147201538), !dbg !3280
  store %struct._object* %call2, %struct._object** %retval, !dbg !3281
  br label %return, !dbg !3281

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !3282
  ret %struct._object* %5, !dbg !3282
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_stereocontrols(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !716, metadata !868), !dbg !3283
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !717, metadata !868), !dbg !3284
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3285, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1, !dbg !3287
  %1 = load i32, i32* %fd, align 4, !dbg !3287, !tbaa !3229
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !3288
  %tobool = icmp ne i32 %call, 0, !dbg !3288
  br i1 %tobool, label %if.end, label %if.then, !dbg !3289

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3290
  br label %return, !dbg !3290

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3291, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1, !dbg !3292
  %3 = load i32, i32* %fd1, align 4, !dbg !3292, !tbaa !3229
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3293, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_1_internal(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.156, i32 0, i32 0), i32 -2147201541), !dbg !3294
  store %struct._object* %call2, %struct._object** %retval, !dbg !3295
  br label %return, !dbg !3295

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !3296
  ret %struct._object* %5, !dbg !3296
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_reccontrols(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !720, metadata !868), !dbg !3297
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !721, metadata !868), !dbg !3298
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3299, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1, !dbg !3301
  %1 = load i32, i32* %fd, align 4, !dbg !3301, !tbaa !3229
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !3302
  %tobool = icmp ne i32 %call, 0, !dbg !3302
  br i1 %tobool, label %if.end, label %if.then, !dbg !3303

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3304
  br label %return, !dbg !3304

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3305, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1, !dbg !3306
  %3 = load i32, i32* %fd1, align 4, !dbg !3306, !tbaa !3229
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3307, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_1_internal(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.157, i32 0, i32 0), i32 -2147201539), !dbg !3308
  store %struct._object* %call2, %struct._object** %retval, !dbg !3309
  br label %return, !dbg !3309

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !3310
  ret %struct._object* %5, !dbg !3310
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_get(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  %channel = alloca i32, align 4
  %volume = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !724, metadata !868), !dbg !3311
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !725, metadata !868), !dbg !3312
  %0 = bitcast i32* %channel to i8*, !dbg !3313
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !3313
  call void @llvm.dbg.declare(metadata i32* %channel, metadata !726, metadata !868), !dbg !3314
  %1 = bitcast i32* %volume to i8*, !dbg !3313
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3313
  call void @llvm.dbg.declare(metadata i32* %volume, metadata !727, metadata !868), !dbg !3315
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3316, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1, !dbg !3318
  %3 = load i32, i32* %fd, align 4, !dbg !3318, !tbaa !3229
  %call = call i32 @_is_fd_valid(i32 %3), !dbg !3319
  %tobool = icmp ne i32 %call, 0, !dbg !3319
  br i1 %tobool, label %if.end, label %if.then, !dbg !3320

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3321
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3321

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3322, !tbaa !882
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i32 0, i32 0), i32* %channel), !dbg !3324
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3324
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !3325

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3326
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3326

if.end.4:                                         ; preds = %if.end
  %5 = load i32, i32* %channel, align 4, !dbg !3327, !tbaa !1838
  %cmp = icmp slt i32 %5, 0, !dbg !3329
  br i1 %cmp, label %if.then.6, label %lor.lhs.false, !dbg !3330

lor.lhs.false:                                    ; preds = %if.end.4
  %6 = load i32, i32* %channel, align 4, !dbg !3331, !tbaa !1838
  %cmp5 = icmp sgt i32 %6, 25, !dbg !3333
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !3334

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.4
  %7 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !3335, !tbaa !882
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.163, i32 0, i32 0)), !dbg !3337
  store %struct._object* null, %struct._object** %retval, !dbg !3338
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3338

if.end.7:                                         ; preds = %lor.lhs.false
  %8 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3339, !tbaa !882
  %fd8 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %8, i32 0, i32 1, !dbg !3341
  %9 = load i32, i32* %fd8, align 4, !dbg !3341, !tbaa !3229
  %10 = load i32, i32* %channel, align 4, !dbg !3342, !tbaa !1838
  %shl = shl i32 %10, 0, !dbg !3343
  %or = or i32 -2147463936, %shl, !dbg !3344
  %conv = zext i32 %or to i64, !dbg !3345
  %or9 = or i64 %conv, 262144, !dbg !3346
  %call10 = call i32 (i32, i64, ...) @ioctl(i32 %9, i64 %or9, i32* %volume) #1, !dbg !3347
  %cmp11 = icmp eq i32 %call10, -1, !dbg !3348
  br i1 %cmp11, label %if.then.13, label %if.end.15, !dbg !3349

if.then.13:                                       ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3350, !tbaa !882
  %call14 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %11), !dbg !3351
  store %struct._object* %call14, %struct._object** %retval, !dbg !3352
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3352

if.end.15:                                        ; preds = %if.end.7
  %12 = load i32, i32* %volume, align 4, !dbg !3353, !tbaa !1838
  %and = and i32 %12, 255, !dbg !3354
  %13 = load i32, i32* %volume, align 4, !dbg !3355, !tbaa !1838
  %and16 = and i32 %13, 65280, !dbg !3356
  %shr = ashr i32 %and16, 8, !dbg !3357
  %call17 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i32 %and, i32 %shr), !dbg !3358
  store %struct._object* %call17, %struct._object** %retval, !dbg !3359
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3359

cleanup:                                          ; preds = %if.end.15, %if.then.13, %if.then.6, %if.then.3, %if.then
  %14 = bitcast i32* %volume to i8*, !dbg !3360
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !3360
  %15 = bitcast i32* %channel to i8*, !dbg !3360
  call void @llvm.lifetime.end(i64 4, i8* %15) #1, !dbg !3360
  %16 = load %struct._object*, %struct._object** %retval, !dbg !3360
  ret %struct._object* %16, !dbg !3360
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_set(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  %channel = alloca i32, align 4
  %volume = alloca i32, align 4
  %leftVol = alloca i32, align 4
  %rightVol = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !730, metadata !868), !dbg !3361
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !731, metadata !868), !dbg !3362
  %0 = bitcast i32* %channel to i8*, !dbg !3363
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !3363
  call void @llvm.dbg.declare(metadata i32* %channel, metadata !732, metadata !868), !dbg !3364
  %1 = bitcast i32* %volume to i8*, !dbg !3363
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3363
  call void @llvm.dbg.declare(metadata i32* %volume, metadata !733, metadata !868), !dbg !3365
  %2 = bitcast i32* %leftVol to i8*, !dbg !3363
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !3363
  call void @llvm.dbg.declare(metadata i32* %leftVol, metadata !734, metadata !868), !dbg !3366
  %3 = bitcast i32* %rightVol to i8*, !dbg !3363
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !3363
  call void @llvm.dbg.declare(metadata i32* %rightVol, metadata !735, metadata !868), !dbg !3367
  %4 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3368, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %4, i32 0, i32 1, !dbg !3370
  %5 = load i32, i32* %fd, align 4, !dbg !3370, !tbaa !3229
  %call = call i32 @_is_fd_valid(i32 %5), !dbg !3371
  %tobool = icmp ne i32 %call, 0, !dbg !3371
  br i1 %tobool, label %if.end, label %if.then, !dbg !3372

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3373
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3373

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3374, !tbaa !882
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32* %channel, i32* %leftVol, i32* %rightVol), !dbg !3376
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3376
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !3377

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3378
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3378

if.end.4:                                         ; preds = %if.end
  %7 = load i32, i32* %channel, align 4, !dbg !3379, !tbaa !1838
  %cmp = icmp slt i32 %7, 0, !dbg !3381
  br i1 %cmp, label %if.then.6, label %lor.lhs.false, !dbg !3382

lor.lhs.false:                                    ; preds = %if.end.4
  %8 = load i32, i32* %channel, align 4, !dbg !3383, !tbaa !1838
  %cmp5 = icmp sgt i32 %8, 25, !dbg !3385
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !3386

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.4
  %9 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !3387, !tbaa !882
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.163, i32 0, i32 0)), !dbg !3389
  store %struct._object* null, %struct._object** %retval, !dbg !3390
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3390

if.end.7:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %leftVol, align 4, !dbg !3391, !tbaa !1838
  %cmp8 = icmp slt i32 %10, 0, !dbg !3393
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false.9, !dbg !3394

lor.lhs.false.9:                                  ; preds = %if.end.7
  %11 = load i32, i32* %rightVol, align 4, !dbg !3395, !tbaa !1838
  %cmp10 = icmp slt i32 %11, 0, !dbg !3397
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11, !dbg !3398

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %12 = load i32, i32* %leftVol, align 4, !dbg !3399, !tbaa !1838
  %cmp12 = icmp sgt i32 %12, 100, !dbg !3401
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13, !dbg !3402

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %13 = load i32, i32* %rightVol, align 4, !dbg !3403, !tbaa !1838
  %cmp14 = icmp sgt i32 %13, 100, !dbg !3405
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !3406

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.11, %lor.lhs.false.9, %if.end.7
  %14 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !3407, !tbaa !882
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.166, i32 0, i32 0)), !dbg !3409
  store %struct._object* null, %struct._object** %retval, !dbg !3410
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3410

if.end.16:                                        ; preds = %lor.lhs.false.13
  %15 = load i32, i32* %rightVol, align 4, !dbg !3411, !tbaa !1838
  %shl = shl i32 %15, 8, !dbg !3412
  %16 = load i32, i32* %leftVol, align 4, !dbg !3413, !tbaa !1838
  %or = or i32 %shl, %16, !dbg !3414
  store i32 %or, i32* %volume, align 4, !dbg !3415, !tbaa !1838
  %17 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3416, !tbaa !882
  %fd17 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %17, i32 0, i32 1, !dbg !3418
  %18 = load i32, i32* %fd17, align 4, !dbg !3418, !tbaa !3229
  %19 = load i32, i32* %channel, align 4, !dbg !3419, !tbaa !1838
  %shl18 = shl i32 %19, 0, !dbg !3420
  %or19 = or i32 -1073722112, %shl18, !dbg !3421
  %conv = zext i32 %or19 to i64, !dbg !3422
  %or20 = or i64 %conv, 262144, !dbg !3423
  %call21 = call i32 (i32, i64, ...) @ioctl(i32 %18, i64 %or20, i32* %volume) #1, !dbg !3424
  %cmp22 = icmp eq i32 %call21, -1, !dbg !3425
  br i1 %cmp22, label %if.then.24, label %if.end.26, !dbg !3426

if.then.24:                                       ; preds = %if.end.16
  %20 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3427, !tbaa !882
  %call25 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %20), !dbg !3428
  store %struct._object* %call25, %struct._object** %retval, !dbg !3429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3429

if.end.26:                                        ; preds = %if.end.16
  %21 = load i32, i32* %volume, align 4, !dbg !3430, !tbaa !1838
  %and = and i32 %21, 255, !dbg !3431
  %22 = load i32, i32* %volume, align 4, !dbg !3432, !tbaa !1838
  %and27 = and i32 %22, 65280, !dbg !3433
  %shr = ashr i32 %and27, 8, !dbg !3434
  %call28 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i32 %and, i32 %shr), !dbg !3435
  store %struct._object* %call28, %struct._object** %retval, !dbg !3436
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3436

cleanup:                                          ; preds = %if.end.26, %if.then.24, %if.then.15, %if.then.6, %if.then.3, %if.then
  %23 = bitcast i32* %rightVol to i8*, !dbg !3437
  call void @llvm.lifetime.end(i64 4, i8* %23) #1, !dbg !3437
  %24 = bitcast i32* %leftVol to i8*, !dbg !3437
  call void @llvm.lifetime.end(i64 4, i8* %24) #1, !dbg !3437
  %25 = bitcast i32* %volume to i8*, !dbg !3437
  call void @llvm.lifetime.end(i64 4, i8* %25) #1, !dbg !3437
  %26 = bitcast i32* %channel to i8*, !dbg !3437
  call void @llvm.lifetime.end(i64 4, i8* %26) #1, !dbg !3437
  %27 = load %struct._object*, %struct._object** %retval, !dbg !3437
  ret %struct._object* %27, !dbg !3437
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_get_recsrc(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !738, metadata !868), !dbg !3438
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !739, metadata !868), !dbg !3439
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3440, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1, !dbg !3442
  %1 = load i32, i32* %fd, align 4, !dbg !3442, !tbaa !3229
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !3443
  %tobool = icmp ne i32 %call, 0, !dbg !3443
  br i1 %tobool, label %if.end, label %if.then, !dbg !3444

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3445
  br label %return, !dbg !3445

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3446, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1, !dbg !3447
  %3 = load i32, i32* %fd1, align 4, !dbg !3447, !tbaa !3229
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3448, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_1_internal(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i32 0, i32 0), i32 -2147201537), !dbg !3449
  store %struct._object* %call2, %struct._object** %retval, !dbg !3450
  br label %return, !dbg !3450

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !3451
  ret %struct._object* %5, !dbg !3451
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_set_recsrc(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self.addr, metadata !742, metadata !868), !dbg !3452
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !743, metadata !868), !dbg !3453
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3454, !tbaa !882
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1, !dbg !3456
  %1 = load i32, i32* %fd, align 4, !dbg !3456, !tbaa !3229
  %call = call i32 @_is_fd_valid(i32 %1), !dbg !3457
  %tobool = icmp ne i32 %call, 0, !dbg !3457
  br i1 %tobool, label %if.end, label %if.then, !dbg !3458

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3459
  br label %return, !dbg !3459

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8, !dbg !3460, !tbaa !882
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1, !dbg !3461
  %3 = load i32, i32* %fd1, align 4, !dbg !3461, !tbaa !3229
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3462, !tbaa !882
  %call2 = call %struct._object* @_do_ioctl_1(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.161, i32 0, i32 0), i32 -1073459713), !dbg !3463
  store %struct._object* %call2, %struct._object** %retval, !dbg !3464
  br label %return, !dbg !3464

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval, !dbg !3465
  ret %struct._object* %5, !dbg !3465
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_do_ioctl_1_internal(i32 %fd, %struct._object* %args, i8* %fname, i32 %cmd) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fd.addr = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %fname.addr = alloca i8*, align 8
  %cmd.addr = alloca i32, align 4
  %argfmt = alloca [32 x i8], align 16
  %arg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !1838
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !708, metadata !868), !dbg !3466
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !709, metadata !868), !dbg !3467
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata i8** %fname.addr, metadata !710, metadata !868), !dbg !3468
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !1838
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !711, metadata !868), !dbg !3469
  %0 = bitcast [32 x i8]* %argfmt to i8*, !dbg !3470
  call void @llvm.lifetime.start(i64 32, i8* %0) #1, !dbg !3470
  call void @llvm.dbg.declare(metadata [32 x i8]* %argfmt, metadata !712, metadata !868), !dbg !3471
  %1 = bitcast [32 x i8]* %argfmt to i8*, !dbg !3471
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_do_ioctl_1_internal.argfmt, i32 0, i32 0), i64 32, i32 16, i1 false), !dbg !3471
  %2 = bitcast i32* %arg to i8*, !dbg !3472
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !3472
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !713, metadata !868), !dbg !3473
  store i32 0, i32* %arg, align 4, !dbg !3473, !tbaa !1838
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %argfmt, i32 0, i32 0, !dbg !3474
  %3 = load i8*, i8** %fname.addr, align 8, !dbg !3475, !tbaa !882
  %call = call i8* @strncat(i8* %arraydecay, i8* %3, i64 30) #1, !dbg !3476
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3477, !tbaa !882
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %argfmt, i32 0, i32 0, !dbg !3479
  %call2 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* %arraydecay1, i32* %arg), !dbg !3480
  %tobool = icmp ne i32 %call2, 0, !dbg !3480
  br i1 %tobool, label %if.end, label %if.then, !dbg !3481

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3482
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3482

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %fd.addr, align 4, !dbg !3483, !tbaa !1838
  %6 = load i32, i32* %cmd.addr, align 4, !dbg !3485, !tbaa !1838
  %conv = sext i32 %6 to i64, !dbg !3485
  %call3 = call i32 (i32, i64, ...) @ioctl(i32 %5, i64 %conv, i32* %arg) #1, !dbg !3486
  %cmp = icmp eq i32 %call3, -1, !dbg !3487
  br i1 %cmp, label %if.then.5, label %if.end.7, !dbg !3488

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3489, !tbaa !882
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %7), !dbg !3490
  store %struct._object* %call6, %struct._object** %retval, !dbg !3491
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3491

if.end.7:                                         ; preds = %if.end
  %8 = load i32, i32* %arg, align 4, !dbg !3492, !tbaa !1838
  %conv8 = sext i32 %8 to i64, !dbg !3492
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv8), !dbg !3493
  store %struct._object* %call9, %struct._object** %retval, !dbg !3494
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3494

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then
  %9 = bitcast i32* %arg to i8*, !dbg !3495
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !3495
  %10 = bitcast [32 x i8]* %argfmt to i8*, !dbg !3495
  call void @llvm.lifetime.end(i64 32, i8* %10) #1, !dbg !3495
  %11 = load %struct._object*, %struct._object** %retval, !dbg !3495
  ret %struct._object* %11, !dbg !3495
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ossopen(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !746, metadata !868), !dbg !3496
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !747, metadata !868), !dbg !3497
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3498, !tbaa !882
  %call = call %struct.oss_audio_t* @newossobject(%struct._object* %0), !dbg !3499
  %1 = bitcast %struct.oss_audio_t* %call to %struct._object*, !dbg !3500
  ret %struct._object* %1, !dbg !3501
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ossopenmixer(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !782, metadata !868), !dbg !3502
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !783, metadata !868), !dbg !3503
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3504, !tbaa !882
  %call = call %struct.oss_mixer_t* @newossmixerobject(%struct._object* %0), !dbg !3505
  %1 = bitcast %struct.oss_mixer_t* %call to %struct._object*, !dbg !3506
  ret %struct._object* %1, !dbg !3507
}

; Function Attrs: nounwind uwtable
define internal %struct.oss_audio_t* @newossobject(%struct._object* %arg) #0 {
entry:
  %retval = alloca %struct.oss_audio_t*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %self = alloca %struct.oss_audio_t*, align 8
  %fd = alloca i32, align 4
  %afmts = alloca i32, align 4
  %imode = alloca i32, align 4
  %devicename = alloca i8*, align 8
  %mode = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %__s1_len46 = alloca i64, align 8
  %__s2_len48 = alloca i64, align 8
  %tmp49 = alloca i32, align 4
  %__s155 = alloca i8*, align 8
  %__result57 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %__s1_len105 = alloca i64, align 8
  %__s2_len107 = alloca i64, align 8
  %tmp108 = alloca i32, align 4
  %__s1114 = alloca i8*, align 8
  %__result116 = alloca i32, align 4
  %tmp154 = alloca i32, align 4
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !752, metadata !868), !dbg !3508
  %0 = bitcast %struct.oss_audio_t** %self to i8*, !dbg !3509
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3509
  call void @llvm.dbg.declare(metadata %struct.oss_audio_t** %self, metadata !753, metadata !868), !dbg !3510
  %1 = bitcast i32* %fd to i8*, !dbg !3511
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3511
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !754, metadata !868), !dbg !3512
  %2 = bitcast i32* %afmts to i8*, !dbg !3511
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !3511
  call void @llvm.dbg.declare(metadata i32* %afmts, metadata !755, metadata !868), !dbg !3513
  %3 = bitcast i32* %imode to i8*, !dbg !3511
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !3511
  call void @llvm.dbg.declare(metadata i32* %imode, metadata !756, metadata !868), !dbg !3514
  %4 = bitcast i8** %devicename to i8*, !dbg !3515
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3515
  call void @llvm.dbg.declare(metadata i8** %devicename, metadata !757, metadata !868), !dbg !3516
  store i8* null, i8** %devicename, align 8, !dbg !3516, !tbaa !882
  %5 = bitcast i8** %mode to i8*, !dbg !3517
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3517
  call void @llvm.dbg.declare(metadata i8** %mode, metadata !758, metadata !868), !dbg !3518
  store i8* null, i8** %mode, align 8, !dbg !3518, !tbaa !882
  %6 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3519, !tbaa !882
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i8** %devicename, i8** %mode), !dbg !3521
  %tobool = icmp ne i32 %call, 0, !dbg !3521
  br i1 %tobool, label %if.end, label %if.then, !dbg !3522

if.then:                                          ; preds = %entry
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval, !dbg !3523
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3523

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %mode, align 8, !dbg !3524, !tbaa !882
  %cmp = icmp eq i8* %7, null, !dbg !3526
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !3527

if.then.1:                                        ; preds = %if.end
  %8 = load i8*, i8** %devicename, align 8, !dbg !3528, !tbaa !882
  store i8* %8, i8** %mode, align 8, !dbg !3530, !tbaa !882
  store i8* null, i8** %devicename, align 8, !dbg !3531, !tbaa !882
  br label %if.end.2, !dbg !3532

if.end.2:                                         ; preds = %if.then.1, %if.end
  %9 = bitcast i64* %__s1_len to i8*, !dbg !3533
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !3533
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !759, metadata !868), !dbg !3534
  %10 = bitcast i64* %__s2_len to i8*, !dbg !3533
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !3533
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !762, metadata !868), !dbg !3535
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.120 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !3536

land.lhs.true:                                    ; preds = %if.end.2
  store i64 1, i64* %__s2_len, align 8, !dbg !3537, !tbaa !2044
  %11 = load i64, i64* %__s2_len, align 8, !dbg !3539, !tbaa !2044
  %cmp3 = icmp ult i64 %11, 4, !dbg !3540
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !3541

cond.true:                                        ; preds = %land.lhs.true
  %12 = bitcast i8** %__s1 to i8*, !dbg !3542
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !3542
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !763, metadata !868), !dbg !3544
  %13 = load i8*, i8** %mode, align 8, !dbg !3545, !tbaa !882
  store i8* %13, i8** %__s1, align 8, !dbg !3544, !tbaa !882
  %14 = bitcast i32* %__result to i8*, !dbg !3546
  call void @llvm.lifetime.start(i64 4, i8* %14) #1, !dbg !3546
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !765, metadata !868), !dbg !3547
  %15 = load i8*, i8** %__s1, align 8, !dbg !3548, !tbaa !882
  %arrayidx = getelementptr i8, i8* %15, i64 0, !dbg !3548
  %16 = load i8, i8* %arrayidx, align 1, !dbg !3548, !tbaa !2055
  %conv = zext i8 %16 to i32, !dbg !3548
  %17 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0), align 1, !dbg !3549, !tbaa !2055
  %conv6 = zext i8 %17 to i32, !dbg !3549
  %sub = sub i32 %conv, %conv6, !dbg !3550
  store i32 %sub, i32* %__result, align 4, !dbg !3547, !tbaa !1838
  %18 = load i64, i64* %__s2_len, align 8, !dbg !3551, !tbaa !2044
  %cmp7 = icmp ugt i64 %18, 0, !dbg !3553
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.39, !dbg !3554

land.lhs.true.9:                                  ; preds = %cond.true
  %19 = load i32, i32* %__result, align 4, !dbg !3555, !tbaa !1838
  %cmp10 = icmp eq i32 %19, 0, !dbg !3557
  br i1 %cmp10, label %if.then.12, label %if.end.39, !dbg !3558

if.then.12:                                       ; preds = %land.lhs.true.9
  %20 = load i8*, i8** %__s1, align 8, !dbg !3559, !tbaa !882
  %arrayidx13 = getelementptr i8, i8* %20, i64 1, !dbg !3559
  %21 = load i8, i8* %arrayidx13, align 1, !dbg !3559, !tbaa !2055
  %conv14 = zext i8 %21 to i32, !dbg !3559
  %22 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i64 1), align 1, !dbg !3562, !tbaa !2055
  %conv15 = zext i8 %22 to i32, !dbg !3562
  %sub16 = sub i32 %conv14, %conv15, !dbg !3563
  store i32 %sub16, i32* %__result, align 4, !dbg !3564, !tbaa !1838
  %23 = load i64, i64* %__s2_len, align 8, !dbg !3565, !tbaa !2044
  %cmp17 = icmp ugt i64 %23, 1, !dbg !3567
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.38, !dbg !3568

land.lhs.true.19:                                 ; preds = %if.then.12
  %24 = load i32, i32* %__result, align 4, !dbg !3569, !tbaa !1838
  %cmp20 = icmp eq i32 %24, 0, !dbg !3571
  br i1 %cmp20, label %if.then.22, label %if.end.38, !dbg !3572

if.then.22:                                       ; preds = %land.lhs.true.19
  %25 = load i8*, i8** %__s1, align 8, !dbg !3573, !tbaa !882
  %arrayidx23 = getelementptr i8, i8* %25, i64 2, !dbg !3573
  %26 = load i8, i8* %arrayidx23, align 1, !dbg !3573, !tbaa !2055
  %conv24 = zext i8 %26 to i32, !dbg !3573
  %27 = load i8, i8* getelementptr (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0), i64 2), align 1, !dbg !3576, !tbaa !2055
  %conv25 = zext i8 %27 to i32, !dbg !3576
  %sub26 = sub i32 %conv24, %conv25, !dbg !3577
  store i32 %sub26, i32* %__result, align 4, !dbg !3578, !tbaa !1838
  %28 = load i64, i64* %__s2_len, align 8, !dbg !3579, !tbaa !2044
  %cmp27 = icmp ugt i64 %28, 2, !dbg !3581
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.37, !dbg !3582

land.lhs.true.29:                                 ; preds = %if.then.22
  %29 = load i32, i32* %__result, align 4, !dbg !3583, !tbaa !1838
  %cmp30 = icmp eq i32 %29, 0, !dbg !3585
  br i1 %cmp30, label %if.then.32, label %if.end.37, !dbg !3586

if.then.32:                                       ; preds = %land.lhs.true.29
  %30 = load i8*, i8** %__s1, align 8, !dbg !3587, !tbaa !882
  %arrayidx33 = getelementptr i8, i8* %30, i64 3, !dbg !3587
  %31 = load i8, i8* %arrayidx33, align 1, !dbg !3587, !tbaa !2055
  %conv34 = zext i8 %31 to i32, !dbg !3587
  %32 = load i8, i8* getelementptr (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0), i64 3), align 1, !dbg !3589, !tbaa !2055
  %conv35 = zext i8 %32 to i32, !dbg !3589
  %sub36 = sub i32 %conv34, %conv35, !dbg !3590
  store i32 %sub36, i32* %__result, align 4, !dbg !3591, !tbaa !1838
  br label %if.end.37, !dbg !3592

if.end.37:                                        ; preds = %if.then.32, %land.lhs.true.29, %if.then.22
  br label %if.end.38, !dbg !3593

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true.19, %if.then.12
  br label %if.end.39, !dbg !3597

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.9, %cond.true
  %33 = load i32, i32* %__result, align 4, !dbg !3601, !tbaa !1838
  store i32 %33, i32* %tmp40, !dbg !3605, !tbaa !1838
  %34 = bitcast i32* %__result to i8*, !dbg !3606
  call void @llvm.lifetime.end(i64 4, i8* %34) #1, !dbg !3606
  %35 = bitcast i8** %__s1 to i8*, !dbg !3606
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !3606
  %36 = load i32, i32* %tmp40, !dbg !3607, !tbaa !1838
  br label %cond.end, !dbg !3541

cond.false:                                       ; preds = %land.lhs.true, %if.end.2
  %37 = load i8*, i8** %mode, align 8, !dbg !3608, !tbaa !882
  %call41 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0)) #1, !dbg !3611
  br label %cond.end, !dbg !3541

cond.end:                                         ; preds = %cond.false, %if.end.39
  %cond = phi i32 [ %36, %if.end.39 ], [ %call41, %cond.false ], !dbg !3541
  store i32 %cond, i32* %tmp, !dbg !3612, !tbaa !1838
  %38 = bitcast i64* %__s2_len to i8*, !dbg !3615
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !3615
  %39 = bitcast i64* %__s1_len to i8*, !dbg !3615
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !3615
  %40 = load i32, i32* %tmp, !dbg !3616, !tbaa !1838
  %cmp42 = icmp eq i32 %40, 0, !dbg !3617
  br i1 %cmp42, label %if.then.44, label %if.else, !dbg !3618

if.then.44:                                       ; preds = %cond.end
  store i32 0, i32* %imode, align 4, !dbg !3619, !tbaa !1838
  br label %if.end.165, !dbg !3620

if.else:                                          ; preds = %cond.end
  %41 = bitcast i64* %__s1_len46 to i8*, !dbg !3621
  call void @llvm.lifetime.start(i64 8, i8* %41) #1, !dbg !3621
  call void @llvm.dbg.declare(metadata i64* %__s1_len46, metadata !766, metadata !868), !dbg !3622
  %42 = bitcast i64* %__s2_len48 to i8*, !dbg !3621
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !3621
  call void @llvm.dbg.declare(metadata i64* %__s2_len48, metadata !769, metadata !868), !dbg !3623
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.122 to i64)), i64 1), label %land.lhs.true.50, label %cond.false.96, !dbg !3624

land.lhs.true.50:                                 ; preds = %if.else
  store i64 1, i64* %__s2_len48, align 8, !dbg !3625, !tbaa !2044
  %43 = load i64, i64* %__s2_len48, align 8, !dbg !3627, !tbaa !2044
  %cmp51 = icmp ult i64 %43, 4, !dbg !3628
  br i1 %cmp51, label %cond.true.53, label %cond.false.96, !dbg !3629

cond.true.53:                                     ; preds = %land.lhs.true.50
  %44 = bitcast i8** %__s155 to i8*, !dbg !3630
  call void @llvm.lifetime.start(i64 8, i8* %44) #1, !dbg !3630
  call void @llvm.dbg.declare(metadata i8** %__s155, metadata !770, metadata !868), !dbg !3632
  %45 = load i8*, i8** %mode, align 8, !dbg !3633, !tbaa !882
  store i8* %45, i8** %__s155, align 8, !dbg !3632, !tbaa !882
  %46 = bitcast i32* %__result57 to i8*, !dbg !3634
  call void @llvm.lifetime.start(i64 4, i8* %46) #1, !dbg !3634
  call void @llvm.dbg.declare(metadata i32* %__result57, metadata !772, metadata !868), !dbg !3635
  %47 = load i8*, i8** %__s155, align 8, !dbg !3636, !tbaa !882
  %arrayidx58 = getelementptr i8, i8* %47, i64 0, !dbg !3636
  %48 = load i8, i8* %arrayidx58, align 1, !dbg !3636, !tbaa !2055
  %conv59 = zext i8 %48 to i32, !dbg !3636
  %49 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), align 1, !dbg !3637, !tbaa !2055
  %conv60 = zext i8 %49 to i32, !dbg !3637
  %sub61 = sub i32 %conv59, %conv60, !dbg !3638
  store i32 %sub61, i32* %__result57, align 4, !dbg !3635, !tbaa !1838
  %50 = load i64, i64* %__s2_len48, align 8, !dbg !3639, !tbaa !2044
  %cmp62 = icmp ugt i64 %50, 0, !dbg !3641
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.94, !dbg !3642

land.lhs.true.64:                                 ; preds = %cond.true.53
  %51 = load i32, i32* %__result57, align 4, !dbg !3643, !tbaa !1838
  %cmp65 = icmp eq i32 %51, 0, !dbg !3645
  br i1 %cmp65, label %if.then.67, label %if.end.94, !dbg !3646

if.then.67:                                       ; preds = %land.lhs.true.64
  %52 = load i8*, i8** %__s155, align 8, !dbg !3647, !tbaa !882
  %arrayidx68 = getelementptr i8, i8* %52, i64 1, !dbg !3647
  %53 = load i8, i8* %arrayidx68, align 1, !dbg !3647, !tbaa !2055
  %conv69 = zext i8 %53 to i32, !dbg !3647
  %54 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i64 1), align 1, !dbg !3650, !tbaa !2055
  %conv70 = zext i8 %54 to i32, !dbg !3650
  %sub71 = sub i32 %conv69, %conv70, !dbg !3651
  store i32 %sub71, i32* %__result57, align 4, !dbg !3652, !tbaa !1838
  %55 = load i64, i64* %__s2_len48, align 8, !dbg !3653, !tbaa !2044
  %cmp72 = icmp ugt i64 %55, 1, !dbg !3655
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.93, !dbg !3656

land.lhs.true.74:                                 ; preds = %if.then.67
  %56 = load i32, i32* %__result57, align 4, !dbg !3657, !tbaa !1838
  %cmp75 = icmp eq i32 %56, 0, !dbg !3659
  br i1 %cmp75, label %if.then.77, label %if.end.93, !dbg !3660

if.then.77:                                       ; preds = %land.lhs.true.74
  %57 = load i8*, i8** %__s155, align 8, !dbg !3661, !tbaa !882
  %arrayidx78 = getelementptr i8, i8* %57, i64 2, !dbg !3661
  %58 = load i8, i8* %arrayidx78, align 1, !dbg !3661, !tbaa !2055
  %conv79 = zext i8 %58 to i32, !dbg !3661
  %59 = load i8, i8* getelementptr (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i64 2), align 1, !dbg !3664, !tbaa !2055
  %conv80 = zext i8 %59 to i32, !dbg !3664
  %sub81 = sub i32 %conv79, %conv80, !dbg !3665
  store i32 %sub81, i32* %__result57, align 4, !dbg !3666, !tbaa !1838
  %60 = load i64, i64* %__s2_len48, align 8, !dbg !3667, !tbaa !2044
  %cmp82 = icmp ugt i64 %60, 2, !dbg !3669
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.92, !dbg !3670

land.lhs.true.84:                                 ; preds = %if.then.77
  %61 = load i32, i32* %__result57, align 4, !dbg !3671, !tbaa !1838
  %cmp85 = icmp eq i32 %61, 0, !dbg !3673
  br i1 %cmp85, label %if.then.87, label %if.end.92, !dbg !3674

if.then.87:                                       ; preds = %land.lhs.true.84
  %62 = load i8*, i8** %__s155, align 8, !dbg !3675, !tbaa !882
  %arrayidx88 = getelementptr i8, i8* %62, i64 3, !dbg !3675
  %63 = load i8, i8* %arrayidx88, align 1, !dbg !3675, !tbaa !2055
  %conv89 = zext i8 %63 to i32, !dbg !3675
  %64 = load i8, i8* getelementptr (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i64 3), align 1, !dbg !3677, !tbaa !2055
  %conv90 = zext i8 %64 to i32, !dbg !3677
  %sub91 = sub i32 %conv89, %conv90, !dbg !3678
  store i32 %sub91, i32* %__result57, align 4, !dbg !3679, !tbaa !1838
  br label %if.end.92, !dbg !3680

if.end.92:                                        ; preds = %if.then.87, %land.lhs.true.84, %if.then.77
  br label %if.end.93, !dbg !3681

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.74, %if.then.67
  br label %if.end.94, !dbg !3685

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.64, %cond.true.53
  %65 = load i32, i32* %__result57, align 4, !dbg !3689, !tbaa !1838
  store i32 %65, i32* %tmp95, !dbg !3693, !tbaa !1838
  %66 = bitcast i32* %__result57 to i8*, !dbg !3694
  call void @llvm.lifetime.end(i64 4, i8* %66) #1, !dbg !3694
  %67 = bitcast i8** %__s155 to i8*, !dbg !3694
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !3694
  %68 = load i32, i32* %tmp95, !dbg !3695, !tbaa !1838
  br label %cond.end.98, !dbg !3629

cond.false.96:                                    ; preds = %land.lhs.true.50, %if.else
  %69 = load i8*, i8** %mode, align 8, !dbg !3696, !tbaa !882
  %call97 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0)) #1, !dbg !3699
  br label %cond.end.98, !dbg !3629

cond.end.98:                                      ; preds = %cond.false.96, %if.end.94
  %cond99 = phi i32 [ %68, %if.end.94 ], [ %call97, %cond.false.96 ], !dbg !3629
  store i32 %cond99, i32* %tmp49, !dbg !3700, !tbaa !1838
  %70 = bitcast i64* %__s2_len48 to i8*, !dbg !3703
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !3703
  %71 = bitcast i64* %__s1_len46 to i8*, !dbg !3703
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !3703
  %72 = load i32, i32* %tmp49, !dbg !3704, !tbaa !1838
  %cmp100 = icmp eq i32 %72, 0, !dbg !3705
  br i1 %cmp100, label %if.then.102, label %if.else.103, !dbg !3706

if.then.102:                                      ; preds = %cond.end.98
  store i32 1, i32* %imode, align 4, !dbg !3707, !tbaa !1838
  br label %if.end.164, !dbg !3708

if.else.103:                                      ; preds = %cond.end.98
  %73 = bitcast i64* %__s1_len105 to i8*, !dbg !3709
  call void @llvm.lifetime.start(i64 8, i8* %73) #1, !dbg !3709
  call void @llvm.dbg.declare(metadata i64* %__s1_len105, metadata !773, metadata !868), !dbg !3710
  %74 = bitcast i64* %__s2_len107 to i8*, !dbg !3709
  call void @llvm.lifetime.start(i64 8, i8* %74) #1, !dbg !3709
  call void @llvm.dbg.declare(metadata i64* %__s2_len107, metadata !776, metadata !868), !dbg !3711
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.121 to i64)), i64 1), label %land.lhs.true.109, label %cond.false.155, !dbg !3712

land.lhs.true.109:                                ; preds = %if.else.103
  store i64 2, i64* %__s2_len107, align 8, !dbg !3713, !tbaa !2044
  %75 = load i64, i64* %__s2_len107, align 8, !dbg !3715, !tbaa !2044
  %cmp110 = icmp ult i64 %75, 4, !dbg !3716
  br i1 %cmp110, label %cond.true.112, label %cond.false.155, !dbg !3717

cond.true.112:                                    ; preds = %land.lhs.true.109
  %76 = bitcast i8** %__s1114 to i8*, !dbg !3718
  call void @llvm.lifetime.start(i64 8, i8* %76) #1, !dbg !3718
  call void @llvm.dbg.declare(metadata i8** %__s1114, metadata !777, metadata !868), !dbg !3720
  %77 = load i8*, i8** %mode, align 8, !dbg !3721, !tbaa !882
  store i8* %77, i8** %__s1114, align 8, !dbg !3720, !tbaa !882
  %78 = bitcast i32* %__result116 to i8*, !dbg !3722
  call void @llvm.lifetime.start(i64 4, i8* %78) #1, !dbg !3722
  call void @llvm.dbg.declare(metadata i32* %__result116, metadata !779, metadata !868), !dbg !3723
  %79 = load i8*, i8** %__s1114, align 8, !dbg !3724, !tbaa !882
  %arrayidx117 = getelementptr i8, i8* %79, i64 0, !dbg !3724
  %80 = load i8, i8* %arrayidx117, align 1, !dbg !3724, !tbaa !2055
  %conv118 = zext i8 %80 to i32, !dbg !3724
  %81 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), align 1, !dbg !3725, !tbaa !2055
  %conv119 = zext i8 %81 to i32, !dbg !3725
  %sub120 = sub i32 %conv118, %conv119, !dbg !3726
  store i32 %sub120, i32* %__result116, align 4, !dbg !3723, !tbaa !1838
  %82 = load i64, i64* %__s2_len107, align 8, !dbg !3727, !tbaa !2044
  %cmp121 = icmp ugt i64 %82, 0, !dbg !3729
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.153, !dbg !3730

land.lhs.true.123:                                ; preds = %cond.true.112
  %83 = load i32, i32* %__result116, align 4, !dbg !3731, !tbaa !1838
  %cmp124 = icmp eq i32 %83, 0, !dbg !3733
  br i1 %cmp124, label %if.then.126, label %if.end.153, !dbg !3734

if.then.126:                                      ; preds = %land.lhs.true.123
  %84 = load i8*, i8** %__s1114, align 8, !dbg !3735, !tbaa !882
  %arrayidx127 = getelementptr i8, i8* %84, i64 1, !dbg !3735
  %85 = load i8, i8* %arrayidx127, align 1, !dbg !3735, !tbaa !2055
  %conv128 = zext i8 %85 to i32, !dbg !3735
  %86 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i64 1), align 1, !dbg !3738, !tbaa !2055
  %conv129 = zext i8 %86 to i32, !dbg !3738
  %sub130 = sub i32 %conv128, %conv129, !dbg !3739
  store i32 %sub130, i32* %__result116, align 4, !dbg !3740, !tbaa !1838
  %87 = load i64, i64* %__s2_len107, align 8, !dbg !3741, !tbaa !2044
  %cmp131 = icmp ugt i64 %87, 1, !dbg !3743
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.152, !dbg !3744

land.lhs.true.133:                                ; preds = %if.then.126
  %88 = load i32, i32* %__result116, align 4, !dbg !3745, !tbaa !1838
  %cmp134 = icmp eq i32 %88, 0, !dbg !3747
  br i1 %cmp134, label %if.then.136, label %if.end.152, !dbg !3748

if.then.136:                                      ; preds = %land.lhs.true.133
  %89 = load i8*, i8** %__s1114, align 8, !dbg !3749, !tbaa !882
  %arrayidx137 = getelementptr i8, i8* %89, i64 2, !dbg !3749
  %90 = load i8, i8* %arrayidx137, align 1, !dbg !3749, !tbaa !2055
  %conv138 = zext i8 %90 to i32, !dbg !3749
  %91 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i64 2), align 1, !dbg !3752, !tbaa !2055
  %conv139 = zext i8 %91 to i32, !dbg !3752
  %sub140 = sub i32 %conv138, %conv139, !dbg !3753
  store i32 %sub140, i32* %__result116, align 4, !dbg !3754, !tbaa !1838
  %92 = load i64, i64* %__s2_len107, align 8, !dbg !3755, !tbaa !2044
  %cmp141 = icmp ugt i64 %92, 2, !dbg !3757
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.151, !dbg !3758

land.lhs.true.143:                                ; preds = %if.then.136
  %93 = load i32, i32* %__result116, align 4, !dbg !3759, !tbaa !1838
  %cmp144 = icmp eq i32 %93, 0, !dbg !3761
  br i1 %cmp144, label %if.then.146, label %if.end.151, !dbg !3762

if.then.146:                                      ; preds = %land.lhs.true.143
  %94 = load i8*, i8** %__s1114, align 8, !dbg !3763, !tbaa !882
  %arrayidx147 = getelementptr i8, i8* %94, i64 3, !dbg !3763
  %95 = load i8, i8* %arrayidx147, align 1, !dbg !3763, !tbaa !2055
  %conv148 = zext i8 %95 to i32, !dbg !3763
  %96 = load i8, i8* getelementptr (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i64 3), align 1, !dbg !3765, !tbaa !2055
  %conv149 = zext i8 %96 to i32, !dbg !3765
  %sub150 = sub i32 %conv148, %conv149, !dbg !3766
  store i32 %sub150, i32* %__result116, align 4, !dbg !3767, !tbaa !1838
  br label %if.end.151, !dbg !3768

if.end.151:                                       ; preds = %if.then.146, %land.lhs.true.143, %if.then.136
  br label %if.end.152, !dbg !3769

if.end.152:                                       ; preds = %if.end.151, %land.lhs.true.133, %if.then.126
  br label %if.end.153, !dbg !3773

if.end.153:                                       ; preds = %if.end.152, %land.lhs.true.123, %cond.true.112
  %97 = load i32, i32* %__result116, align 4, !dbg !3777, !tbaa !1838
  store i32 %97, i32* %tmp154, !dbg !3781, !tbaa !1838
  %98 = bitcast i32* %__result116 to i8*, !dbg !3782
  call void @llvm.lifetime.end(i64 4, i8* %98) #1, !dbg !3782
  %99 = bitcast i8** %__s1114 to i8*, !dbg !3782
  call void @llvm.lifetime.end(i64 8, i8* %99) #1, !dbg !3782
  %100 = load i32, i32* %tmp154, !dbg !3783, !tbaa !1838
  br label %cond.end.157, !dbg !3717

cond.false.155:                                   ; preds = %land.lhs.true.109, %if.else.103
  %101 = load i8*, i8** %mode, align 8, !dbg !3784, !tbaa !882
  %call156 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0)) #1, !dbg !3787
  br label %cond.end.157, !dbg !3717

cond.end.157:                                     ; preds = %cond.false.155, %if.end.153
  %cond158 = phi i32 [ %100, %if.end.153 ], [ %call156, %cond.false.155 ], !dbg !3717
  store i32 %cond158, i32* %tmp108, !dbg !3788, !tbaa !1838
  %102 = bitcast i64* %__s2_len107 to i8*, !dbg !3791
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !3791
  %103 = bitcast i64* %__s1_len105 to i8*, !dbg !3791
  call void @llvm.lifetime.end(i64 8, i8* %103) #1, !dbg !3791
  %104 = load i32, i32* %tmp108, !dbg !3792, !tbaa !1838
  %cmp159 = icmp eq i32 %104, 0, !dbg !3793
  br i1 %cmp159, label %if.then.161, label %if.else.162, !dbg !3794

if.then.161:                                      ; preds = %cond.end.157
  store i32 2, i32* %imode, align 4, !dbg !3795, !tbaa !1838
  br label %if.end.163, !dbg !3796

if.else.162:                                      ; preds = %cond.end.157
  %105 = load %struct._object*, %struct._object** @OSSAudioError, align 8, !dbg !3797, !tbaa !882
  call void @PyErr_SetString(%struct._object* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.171, i32 0, i32 0)), !dbg !3799
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval, !dbg !3800
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3800

if.end.163:                                       ; preds = %if.then.161
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.102
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.44
  %106 = load i8*, i8** %devicename, align 8, !dbg !3801, !tbaa !882
  %cmp166 = icmp eq i8* %106, null, !dbg !3803
  br i1 %cmp166, label %if.then.168, label %if.end.174, !dbg !3804

if.then.168:                                      ; preds = %if.end.165
  %call169 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0)) #1, !dbg !3805
  store i8* %call169, i8** %devicename, align 8, !dbg !3807, !tbaa !882
  %107 = load i8*, i8** %devicename, align 8, !dbg !3808, !tbaa !882
  %cmp170 = icmp eq i8* %107, null, !dbg !3810
  br i1 %cmp170, label %if.then.172, label %if.end.173, !dbg !3811

if.then.172:                                      ; preds = %if.then.168
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0), i8** %devicename, align 8, !dbg !3812, !tbaa !882
  br label %if.end.173, !dbg !3813

if.end.173:                                       ; preds = %if.then.172, %if.then.168
  br label %if.end.174, !dbg !3814

if.end.174:                                       ; preds = %if.end.173, %if.end.165
  %108 = load i8*, i8** %devicename, align 8, !dbg !3815, !tbaa !882
  %109 = load i32, i32* %imode, align 4, !dbg !3816, !tbaa !1838
  %or = or i32 %109, 2048, !dbg !3817
  %call175 = call i32 @_Py_open(i8* %108, i32 %or), !dbg !3818
  store i32 %call175, i32* %fd, align 4, !dbg !3819, !tbaa !1838
  %110 = load i32, i32* %fd, align 4, !dbg !3820, !tbaa !1838
  %cmp176 = icmp eq i32 %110, -1, !dbg !3822
  br i1 %cmp176, label %if.then.178, label %if.end.180, !dbg !3823

if.then.178:                                      ; preds = %if.end.174
  %111 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3824, !tbaa !882
  %112 = load i8*, i8** %devicename, align 8, !dbg !3826, !tbaa !882
  %call179 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %111, i8* %112), !dbg !3827
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval, !dbg !3828
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3828

if.end.180:                                       ; preds = %if.end.174
  %113 = load i32, i32* %fd, align 4, !dbg !3829, !tbaa !1838
  %call181 = call i32 (i32, i32, ...) @fcntl(i32 %113, i32 4, i32 0), !dbg !3831
  %cmp182 = icmp eq i32 %call181, -1, !dbg !3832
  br i1 %cmp182, label %if.then.184, label %if.end.187, !dbg !3833

if.then.184:                                      ; preds = %if.end.180
  %114 = load i32, i32* %fd, align 4, !dbg !3834, !tbaa !1838
  %call185 = call i32 @close(i32 %114), !dbg !3836
  %115 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3837, !tbaa !882
  %116 = load i8*, i8** %devicename, align 8, !dbg !3838, !tbaa !882
  %call186 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %115, i8* %116), !dbg !3839
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval, !dbg !3840
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3840

if.end.187:                                       ; preds = %if.end.180
  %117 = load i32, i32* %fd, align 4, !dbg !3841, !tbaa !1838
  %call188 = call i32 (i32, i64, ...) @ioctl(i32 %117, i64 2147766283, i32* %afmts) #1, !dbg !3843
  %cmp189 = icmp eq i32 %call188, -1, !dbg !3844
  br i1 %cmp189, label %if.then.191, label %if.end.194, !dbg !3845

if.then.191:                                      ; preds = %if.end.187
  %118 = load i32, i32* %fd, align 4, !dbg !3846, !tbaa !1838
  %call192 = call i32 @close(i32 %118), !dbg !3848
  %119 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3849, !tbaa !882
  %120 = load i8*, i8** %devicename, align 8, !dbg !3850, !tbaa !882
  %call193 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %119, i8* %120), !dbg !3851
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval, !dbg !3852
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3852

if.end.194:                                       ; preds = %if.end.187
  %call195 = call %struct._object* @_PyObject_New(%struct._typeobject* @OSSAudioType), !dbg !3853
  %121 = bitcast %struct._object* %call195 to %struct.oss_audio_t*, !dbg !3855
  store %struct.oss_audio_t* %121, %struct.oss_audio_t** %self, align 8, !dbg !3856, !tbaa !882
  %cmp196 = icmp eq %struct.oss_audio_t* %121, null, !dbg !3857
  br i1 %cmp196, label %if.then.198, label %if.end.200, !dbg !3858

if.then.198:                                      ; preds = %if.end.194
  %122 = load i32, i32* %fd, align 4, !dbg !3859, !tbaa !1838
  %call199 = call i32 @close(i32 %122), !dbg !3861
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval, !dbg !3862
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3862

if.end.200:                                       ; preds = %if.end.194
  %123 = load i8*, i8** %devicename, align 8, !dbg !3863, !tbaa !882
  %124 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8, !dbg !3864, !tbaa !882
  %devicename201 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %124, i32 0, i32 1, !dbg !3865
  store i8* %123, i8** %devicename201, align 8, !dbg !3866, !tbaa !2225
  %125 = load i32, i32* %fd, align 4, !dbg !3867, !tbaa !1838
  %126 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8, !dbg !3868, !tbaa !882
  %fd202 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %126, i32 0, i32 2, !dbg !3869
  store i32 %125, i32* %fd202, align 4, !dbg !3870, !tbaa !2010
  %127 = load i32, i32* %imode, align 4, !dbg !3871, !tbaa !1838
  %128 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8, !dbg !3872, !tbaa !882
  %mode203 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %128, i32 0, i32 3, !dbg !3873
  store i32 %127, i32* %mode203, align 4, !dbg !3874, !tbaa !2318
  %129 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8, !dbg !3875, !tbaa !882
  %ocount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %129, i32 0, i32 5, !dbg !3876
  store i32 0, i32* %ocount, align 4, !dbg !3877, !tbaa !2471
  %130 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8, !dbg !3878, !tbaa !882
  %icount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %130, i32 0, i32 4, !dbg !3879
  store i32 0, i32* %icount, align 4, !dbg !3880, !tbaa !2420
  %131 = load i32, i32* %afmts, align 4, !dbg !3881, !tbaa !1838
  %132 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8, !dbg !3882, !tbaa !882
  %afmts204 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %132, i32 0, i32 6, !dbg !3883
  store i32 %131, i32* %afmts204, align 4, !dbg !3884, !tbaa !3885
  %133 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8, !dbg !3886, !tbaa !882
  store %struct.oss_audio_t* %133, %struct.oss_audio_t** %retval, !dbg !3887
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3887

cleanup:                                          ; preds = %if.end.200, %if.then.198, %if.then.191, %if.then.184, %if.then.178, %if.else.162, %if.then
  %134 = bitcast i8** %mode to i8*, !dbg !3888
  call void @llvm.lifetime.end(i64 8, i8* %134) #1, !dbg !3888
  %135 = bitcast i8** %devicename to i8*, !dbg !3888
  call void @llvm.lifetime.end(i64 8, i8* %135) #1, !dbg !3888
  %136 = bitcast i32* %imode to i8*, !dbg !3888
  call void @llvm.lifetime.end(i64 4, i8* %136) #1, !dbg !3888
  %137 = bitcast i32* %afmts to i8*, !dbg !3888
  call void @llvm.lifetime.end(i64 4, i8* %137) #1, !dbg !3888
  %138 = bitcast i32* %fd to i8*, !dbg !3888
  call void @llvm.lifetime.end(i64 4, i8* %138) #1, !dbg !3888
  %139 = bitcast %struct.oss_audio_t** %self to i8*, !dbg !3888
  call void @llvm.lifetime.end(i64 8, i8* %139) #1, !dbg !3888
  %140 = load %struct.oss_audio_t*, %struct.oss_audio_t** %retval, !dbg !3888
  ret %struct.oss_audio_t* %140, !dbg !3888
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare i32 @_Py_open(i8*, i32) #3

declare %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object*, i8*) #3

declare i32 @fcntl(i32, i32, ...) #3

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

; Function Attrs: nounwind uwtable
define internal %struct.oss_mixer_t* @newossmixerobject(%struct._object* %arg) #0 {
entry:
  %retval = alloca %struct.oss_mixer_t*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %devicename = alloca i8*, align 8
  %fd = alloca i32, align 4
  %self = alloca %struct.oss_mixer_t*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !882
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !788, metadata !868), !dbg !3889
  %0 = bitcast i8** %devicename to i8*, !dbg !3890
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3890
  call void @llvm.dbg.declare(metadata i8** %devicename, metadata !789, metadata !868), !dbg !3891
  store i8* null, i8** %devicename, align 8, !dbg !3891, !tbaa !882
  %1 = bitcast i32* %fd to i8*, !dbg !3892
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3892
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !790, metadata !868), !dbg !3893
  %2 = bitcast %struct.oss_mixer_t** %self to i8*, !dbg !3894
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3894
  call void @llvm.dbg.declare(metadata %struct.oss_mixer_t** %self, metadata !791, metadata !868), !dbg !3895
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3896, !tbaa !882
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8** %devicename), !dbg !3898
  %tobool = icmp ne i32 %call, 0, !dbg !3898
  br i1 %tobool, label %if.end, label %if.then, !dbg !3899

if.then:                                          ; preds = %entry
  store %struct.oss_mixer_t* null, %struct.oss_mixer_t** %retval, !dbg !3900
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3900

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %devicename, align 8, !dbg !3902, !tbaa !882
  %cmp = icmp eq i8* %4, null, !dbg !3904
  br i1 %cmp, label %if.then.1, label %if.end.6, !dbg !3905

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0)) #1, !dbg !3906
  store i8* %call2, i8** %devicename, align 8, !dbg !3908, !tbaa !882
  %5 = load i8*, i8** %devicename, align 8, !dbg !3909, !tbaa !882
  %cmp3 = icmp eq i8* %5, null, !dbg !3911
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !3912

if.then.4:                                        ; preds = %if.then.1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i32 0, i32 0), i8** %devicename, align 8, !dbg !3913, !tbaa !882
  br label %if.end.5, !dbg !3914

if.end.5:                                         ; preds = %if.then.4, %if.then.1
  br label %if.end.6, !dbg !3915

if.end.6:                                         ; preds = %if.end.5, %if.end
  %6 = load i8*, i8** %devicename, align 8, !dbg !3916, !tbaa !882
  %call7 = call i32 @_Py_open(i8* %6, i32 2), !dbg !3917
  store i32 %call7, i32* %fd, align 4, !dbg !3918, !tbaa !1838
  %7 = load i32, i32* %fd, align 4, !dbg !3919, !tbaa !1838
  %cmp8 = icmp eq i32 %7, -1, !dbg !3921
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !3922

if.then.9:                                        ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3923, !tbaa !882
  %9 = load i8*, i8** %devicename, align 8, !dbg !3925, !tbaa !882
  %call10 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %8, i8* %9), !dbg !3926
  store %struct.oss_mixer_t* null, %struct.oss_mixer_t** %retval, !dbg !3927
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3927

if.end.11:                                        ; preds = %if.end.6
  %call12 = call %struct._object* @_PyObject_New(%struct._typeobject* @OSSMixerType), !dbg !3928
  %10 = bitcast %struct._object* %call12 to %struct.oss_mixer_t*, !dbg !3930
  store %struct.oss_mixer_t* %10, %struct.oss_mixer_t** %self, align 8, !dbg !3931, !tbaa !882
  %cmp13 = icmp eq %struct.oss_mixer_t* %10, null, !dbg !3932
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !3933

if.then.14:                                       ; preds = %if.end.11
  %11 = load i32, i32* %fd, align 4, !dbg !3934, !tbaa !1838
  %call15 = call i32 @close(i32 %11), !dbg !3936
  store %struct.oss_mixer_t* null, %struct.oss_mixer_t** %retval, !dbg !3937
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3937

if.end.16:                                        ; preds = %if.end.11
  %12 = load i32, i32* %fd, align 4, !dbg !3938, !tbaa !1838
  %13 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self, align 8, !dbg !3939, !tbaa !882
  %fd17 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %13, i32 0, i32 1, !dbg !3940
  store i32 %12, i32* %fd17, align 4, !dbg !3941, !tbaa !3229
  %14 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self, align 8, !dbg !3942, !tbaa !882
  store %struct.oss_mixer_t* %14, %struct.oss_mixer_t** %retval, !dbg !3943
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3943

cleanup:                                          ; preds = %if.end.16, %if.then.14, %if.then.9, %if.then
  %15 = bitcast %struct.oss_mixer_t** %self to i8*, !dbg !3944
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3944
  %16 = bitcast i32* %fd to i8*, !dbg !3944
  call void @llvm.lifetime.end(i64 4, i8* %16) #1, !dbg !3944
  %17 = bitcast i8** %devicename to i8*, !dbg !3944
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !3944
  %18 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %retval, !dbg !3944
  ret %struct.oss_mixer_t* %18, !dbg !3944
}

declare %struct._object* @PyList_New(i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!863, !864, !865}
!llvm.ident = !{!866}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !394, globals: !810)
!1 = !DIFile(filename: "ossaudiodev.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !17, !94, !350, !352, !29, !355, !363, !44, !365, !379, !385}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !52, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!5, !5, !4}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!44, !5, !5, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!5, !19, !11}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!5, !19, !5, !5}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !4}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !357, line: 41, baseType: !358)
!357 = !DIFile(filename: "./Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!358 = !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 31, size: 320, align: 64, elements: !359)
!359 = !{!360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !358, file: !357, line: 32, baseType: !23, size: 192, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !358, file: !357, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !358, file: !357, line: 34, baseType: !81, size: 8, align: 8, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !364, line: 54, baseType: !17)
!364 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "oss_audio_t", file: !367, line: 57, baseType: !368)
!367 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/ossaudiodev.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!368 = !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 49, size: 384, align: 64, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !368, file: !367, line: 50, baseType: !6, size: 128, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "devicename", scope: !368, file: !367, line: 51, baseType: !52, size: 64, align: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !368, file: !367, line: 52, baseType: !44, size: 32, align: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !368, file: !367, line: 53, baseType: !44, size: 32, align: 32, offset: 224)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "icount", scope: !368, file: !367, line: 54, baseType: !44, size: 32, align: 32, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ocount", scope: !368, file: !367, line: 55, baseType: !44, size: 32, align: 32, offset: 288)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "afmts", scope: !368, file: !367, line: 56, baseType: !377, size: 32, align: 32, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !378, line: 51, baseType: !348)
!378 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "oss_mixer_t", file: !367, line: 62, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 59, size: 192, align: 64, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !381, file: !367, line: 60, baseType: !6, size: 128, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !381, file: !367, line: 61, baseType: !44, size: 32, align: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !387, line: 40, baseType: !388)
!387 = !DIFile(filename: "./Include/listobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!388 = !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 23, size: 320, align: 64, elements: !389)
!389 = !{!390, !391, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !388, file: !387, line: 24, baseType: !23, size: 192, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !388, file: !387, line: 26, baseType: !392, size: 64, align: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !388, file: !387, line: 39, baseType: !11, size: 64, align: 64, offset: 256)
!394 = !{!395, !400, !405, !434, !506, !511, !520, !544, !552, !556, !560, !564, !577, !582, !586, !590, !594, !607, !611, !615, !626, !641, !650, !657, !664, !676, !680, !687, !692, !698, !702, !706, !714, !718, !722, !728, !736, !740, !744, !748, !780, !784, !792}
!395 = !DISubprogram(name: "PyInit_ossaudiodev", scope: !367, file: !367, line: 1110, type: !396, isLocal: false, isDefinition: true, scopeLine: 1111, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_ossaudiodev, variables: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!5}
!398 = !{!399}
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !395, file: !367, line: 1112, type: !5)
!400 = !DISubprogram(name: "oss_dealloc", scope: !367, file: !367, line: 152, type: !401, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.oss_audio_t*)* @oss_dealloc, variables: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !365}
!403 = !{!404}
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !400, file: !367, line: 152, type: !365)
!405 = !DISubprogram(name: "oss_getattro", scope: !367, file: !367, line: 926, type: !406, isLocal: true, isDefinition: true, scopeLine: 927, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_getattro, variables: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!5, !365, !5}
!408 = !{!409, !410, !411, !412, !413, !416, !417, !419, !420, !423, !424, !426, !427, !430, !431, !433}
!409 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !405, file: !367, line: 926, type: !365)
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nameobj", arg: 2, scope: !405, file: !367, line: 926, type: !5)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !405, file: !367, line: 928, type: !52)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rval", scope: !405, file: !367, line: 929, type: !5)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !414, file: !367, line: 934, type: !94)
!414 = distinct !DILexicalBlock(scope: !415, file: !367, line: 934, column: 24)
!415 = distinct !DILexicalBlock(scope: !405, file: !367, line: 934, column: 9)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !414, file: !367, line: 934, type: !94)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !418, file: !367, line: 934, type: !352)
!418 = distinct !DILexicalBlock(scope: !414, file: !367, line: 934, column: 1585)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !418, file: !367, line: 934, type: !44)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !421, file: !367, line: 938, type: !94)
!421 = distinct !DILexicalBlock(scope: !422, file: !367, line: 938, column: 29)
!422 = distinct !DILexicalBlock(scope: !415, file: !367, line: 938, column: 14)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !421, file: !367, line: 938, type: !94)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !425, file: !367, line: 938, type: !352)
!425 = distinct !DILexicalBlock(scope: !421, file: !367, line: 938, column: 1560)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !425, file: !367, line: 938, type: !44)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !428, file: !367, line: 941, type: !94)
!428 = distinct !DILexicalBlock(scope: !429, file: !367, line: 941, column: 29)
!429 = distinct !DILexicalBlock(scope: !422, file: !367, line: 941, column: 14)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !428, file: !367, line: 941, type: !94)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !432, file: !367, line: 941, type: !352)
!432 = distinct !DILexicalBlock(scope: !428, file: !367, line: 941, column: 1560)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !432, file: !367, line: 941, type: !44)
!434 = !DISubprogram(name: "oss_read", scope: !367, file: !367, line: 405, type: !406, isLocal: true, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_read, variables: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !502}
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !434, file: !367, line: 405, type: !365)
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !434, file: !367, line: 405, type: !5)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !434, file: !367, line: 407, type: !44)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !434, file: !367, line: 407, type: !44)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cp", scope: !434, file: !367, line: 408, type: !52)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !434, file: !367, line: 409, type: !5)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !443, file: !367, line: 421, type: !444)
!443 = distinct !DILexicalBlock(scope: !434, file: !367, line: 421, column: 5)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !446, line: 139, baseType: !447)
!446 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !446, line: 69, size: 1536, align: 64, elements: !448)
!448 = !{!449, !451, !452, !472, !475, !476, !477, !478, !479, !480, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !447, file: !446, line: 72, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !446, line: 73, baseType: !450, size: 64, align: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !447, file: !446, line: 74, baseType: !453, size: 64, align: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !446, line: 44, baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !446, line: 19, size: 832, align: 64, elements: !456)
!456 = !{!457, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !446, line: 21, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !455, file: !446, line: 22, baseType: !450, size: 64, align: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !455, file: !446, line: 24, baseType: !5, size: 64, align: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !455, file: !446, line: 25, baseType: !5, size: 64, align: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !455, file: !446, line: 26, baseType: !5, size: 64, align: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !455, file: !446, line: 27, baseType: !5, size: 64, align: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !455, file: !446, line: 28, baseType: !5, size: 64, align: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !455, file: !446, line: 30, baseType: !5, size: 64, align: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !455, file: !446, line: 31, baseType: !5, size: 64, align: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !455, file: !446, line: 32, baseType: !5, size: 64, align: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !455, file: !446, line: 33, baseType: !44, size: 32, align: 32, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !455, file: !446, line: 34, baseType: !44, size: 32, align: 32, offset: 672)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !455, file: !446, line: 37, baseType: !44, size: 32, align: 32, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !455, file: !446, line: 43, baseType: !5, size: 64, align: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !447, file: !446, line: 76, baseType: !473, size: 64, align: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !446, line: 50, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !447, file: !446, line: 77, baseType: !44, size: 32, align: 32, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !447, file: !446, line: 78, baseType: !31, size: 8, align: 8, offset: 288)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !447, file: !446, line: 80, baseType: !31, size: 8, align: 8, offset: 296)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !447, file: !446, line: 85, baseType: !44, size: 32, align: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !447, file: !446, line: 86, baseType: !44, size: 32, align: 32, offset: 352)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !447, file: !446, line: 88, baseType: !481, size: 64, align: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !446, line: 54, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!44, !5, !473, !44, !5}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !447, file: !446, line: 89, baseType: !481, size: 64, align: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !447, file: !446, line: 90, baseType: !5, size: 64, align: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !447, file: !446, line: 91, baseType: !5, size: 64, align: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !447, file: !446, line: 93, baseType: !5, size: 64, align: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !447, file: !446, line: 94, baseType: !5, size: 64, align: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !447, file: !446, line: 95, baseType: !5, size: 64, align: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !447, file: !446, line: 97, baseType: !5, size: 64, align: 64, offset: 832)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !447, file: !446, line: 98, baseType: !5, size: 64, align: 64, offset: 896)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !447, file: !446, line: 99, baseType: !5, size: 64, align: 64, offset: 960)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !447, file: !446, line: 101, baseType: !5, size: 64, align: 64, offset: 1024)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !447, file: !446, line: 103, baseType: !44, size: 32, align: 32, offset: 1088)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !447, file: !446, line: 105, baseType: !5, size: 64, align: 64, offset: 1152)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !447, file: !446, line: 106, baseType: !17, size: 64, align: 64, offset: 1216)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !447, file: !446, line: 108, baseType: !44, size: 32, align: 32, offset: 1280)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !447, file: !446, line: 109, baseType: !5, size: 64, align: 64, offset: 1344)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !447, file: !446, line: 134, baseType: !337, size: 64, align: 64, offset: 1408)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !447, file: !446, line: 135, baseType: !4, size: 64, align: 64, offset: 1472)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !503, file: !367, line: 427, type: !5)
!503 = distinct !DILexicalBlock(scope: !504, file: !367, line: 427, column: 12)
!504 = distinct !DILexicalBlock(scope: !505, file: !367, line: 425, column: 20)
!505 = distinct !DILexicalBlock(scope: !434, file: !367, line: 425, column: 9)
!506 = !DISubprogram(name: "_is_fd_valid", scope: !367, file: !367, line: 223, type: !507, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @_is_fd_valid, variables: !509)
!507 = !DISubroutineType(types: !508)
!508 = !{!44, !44}
!509 = !{!510}
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !506, file: !367, line: 223, type: !44)
!511 = !DISubprogram(name: "oss_write", scope: !367, file: !367, line: 436, type: !406, isLocal: true, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_write, variables: !512)
!512 = !{!513, !514, !515, !516, !517, !518}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !511, file: !367, line: 436, type: !365)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !511, file: !367, line: 436, type: !5)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cp", scope: !511, file: !367, line: 438, type: !52)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !511, file: !367, line: 439, type: !44)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !511, file: !367, line: 439, type: !44)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !519, file: !367, line: 448, type: !444)
!519 = distinct !DILexicalBlock(scope: !511, file: !367, line: 448, column: 5)
!520 = !DISubprogram(name: "oss_writeall", scope: !367, file: !367, line: 461, type: !406, isLocal: true, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_writeall, variables: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !535, !536, !538, !539, !542}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !520, file: !367, line: 461, type: !365)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !520, file: !367, line: 461, type: !5)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cp", scope: !520, file: !367, line: 463, type: !52)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !520, file: !367, line: 464, type: !44)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !520, file: !367, line: 464, type: !44)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "write_set_fds", scope: !520, file: !367, line: 465, type: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !364, line: 75, baseType: !529)
!529 = !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 64, size: 1024, align: 64, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !529, file: !364, line: 69, baseType: !532, size: 1024, align: 64)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 1024, align: 64, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 16)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "select_rv", scope: !520, file: !367, line: 466, type: !44)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__d0", scope: !537, file: !367, line: 487, type: !44)
!537 = distinct !DILexicalBlock(scope: !520, file: !367, line: 487, column: 8)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__d1", scope: !537, file: !367, line: 487, type: !44)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !540, file: !367, line: 491, type: !444)
!540 = distinct !DILexicalBlock(scope: !541, file: !367, line: 491, column: 9)
!541 = distinct !DILexicalBlock(scope: !520, file: !367, line: 490, column: 22)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !543, file: !367, line: 498, type: !444)
!543 = distinct !DILexicalBlock(scope: !541, file: !367, line: 498, column: 9)
!544 = !DISubprogram(name: "oss_close", scope: !367, file: !367, line: 518, type: !406, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_close, variables: !545)
!545 = !{!546, !547, !548}
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !544, file: !367, line: 518, type: !365)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !544, file: !367, line: 518, type: !5)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !549, file: !367, line: 521, type: !444)
!549 = distinct !DILexicalBlock(scope: !550, file: !367, line: 521, column: 9)
!550 = distinct !DILexicalBlock(scope: !551, file: !367, line: 520, column: 24)
!551 = distinct !DILexicalBlock(scope: !544, file: !367, line: 520, column: 9)
!552 = !DISubprogram(name: "oss_fileno", scope: !367, file: !367, line: 550, type: !406, isLocal: true, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_fileno, variables: !553)
!553 = !{!554, !555}
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !552, file: !367, line: 550, type: !365)
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !552, file: !367, line: 550, type: !5)
!556 = !DISubprogram(name: "oss_nonblock", scope: !367, file: !367, line: 320, type: !406, isLocal: true, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_nonblock, variables: !557)
!557 = !{!558, !559}
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !556, file: !367, line: 320, type: !365)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !556, file: !367, line: 320, type: !5)
!560 = !DISubprogram(name: "oss_setfmt", scope: !367, file: !367, line: 334, type: !406, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_setfmt, variables: !561)
!561 = !{!562, !563}
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !560, file: !367, line: 334, type: !365)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !560, file: !367, line: 334, type: !5)
!564 = !DISubprogram(name: "_do_ioctl_1", scope: !367, file: !367, line: 245, type: !565, isLocal: true, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32, %struct._object*, i8*, i32)* @_do_ioctl_1, variables: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{!5, !44, !5, !52, !44}
!567 = !{!568, !569, !570, !571, !572, !576}
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !564, file: !367, line: 245, type: !44)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !564, file: !367, line: 245, type: !5)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fname", arg: 3, scope: !564, file: !367, line: 245, type: !52)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cmd", arg: 4, scope: !564, file: !367, line: 245, type: !44)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argfmt", scope: !564, file: !367, line: 247, type: !573)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 264, align: 8, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 33)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !564, file: !367, line: 248, type: !44)
!577 = !DISubprogram(name: "oss_getfmts", scope: !367, file: !367, line: 343, type: !406, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_getfmts, variables: !578)
!578 = !{!579, !580, !581}
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !577, file: !367, line: 343, type: !365)
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !577, file: !367, line: 343, type: !5)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !577, file: !367, line: 345, type: !44)
!582 = !DISubprogram(name: "oss_channels", scope: !367, file: !367, line: 356, type: !406, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_channels, variables: !583)
!583 = !{!584, !585}
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !582, file: !367, line: 356, type: !365)
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !582, file: !367, line: 356, type: !5)
!586 = !DISubprogram(name: "oss_speed", scope: !367, file: !367, line: 365, type: !406, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_speed, variables: !587)
!587 = !{!588, !589}
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !586, file: !367, line: 365, type: !365)
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !586, file: !367, line: 365, type: !5)
!590 = !DISubprogram(name: "oss_sync", scope: !367, file: !367, line: 374, type: !406, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_sync, variables: !591)
!591 = !{!592, !593}
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !590, file: !367, line: 374, type: !365)
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !590, file: !367, line: 374, type: !5)
!594 = !DISubprogram(name: "_do_ioctl_0", scope: !367, file: !367, line: 290, type: !565, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32, %struct._object*, i8*, i32)* @_do_ioctl_0, variables: !595)
!595 = !{!596, !597, !598, !599, !600, !604, !605}
!596 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !594, file: !367, line: 290, type: !44)
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !594, file: !367, line: 290, type: !5)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fname", arg: 3, scope: !594, file: !367, line: 290, type: !52)
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cmd", arg: 4, scope: !594, file: !367, line: 290, type: !44)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argfmt", scope: !594, file: !367, line: 292, type: !601)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, align: 8, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 32)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !594, file: !367, line: 293, type: !44)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !606, file: !367, line: 304, type: !444)
!606 = distinct !DILexicalBlock(scope: !594, file: !367, line: 304, column: 5)
!607 = !DISubprogram(name: "oss_reset", scope: !367, file: !367, line: 383, type: !406, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_reset, variables: !608)
!608 = !{!609, !610}
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !607, file: !367, line: 383, type: !365)
!610 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !607, file: !367, line: 383, type: !5)
!611 = !DISubprogram(name: "oss_post", scope: !367, file: !367, line: 392, type: !406, isLocal: true, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_post, variables: !612)
!612 = !{!613, !614}
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !611, file: !367, line: 392, type: !365)
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !611, file: !367, line: 392, type: !5)
!615 = !DISubprogram(name: "oss_setparameters", scope: !367, file: !367, line: 563, type: !406, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_setparameters, variables: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625}
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !615, file: !367, line: 563, type: !365)
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !615, file: !367, line: 563, type: !5)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wanted_fmt", scope: !615, file: !367, line: 565, type: !44)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wanted_channels", scope: !615, file: !367, line: 565, type: !44)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wanted_rate", scope: !615, file: !367, line: 565, type: !44)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "strict", scope: !615, file: !367, line: 565, type: !44)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !615, file: !367, line: 566, type: !44)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "channels", scope: !615, file: !367, line: 566, type: !44)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rate", scope: !615, file: !367, line: 566, type: !44)
!626 = !DISubprogram(name: "oss_bufsize", scope: !367, file: !367, line: 650, type: !406, isLocal: true, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_bufsize, variables: !627)
!627 = !{!628, !629, !630, !639, !640}
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !626, file: !367, line: 650, type: !365)
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !626, file: !367, line: 650, type: !5)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ai", scope: !626, file: !367, line: 652, type: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "audio_buf_info", file: !632, line: 575, baseType: !633)
!632 = !DIFile(filename: "/usr/include/linux/soundcard.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "audio_buf_info", file: !632, line: 568, size: 128, align: 32, elements: !634)
!634 = !{!635, !636, !637, !638}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fragments", scope: !633, file: !632, line: 569, baseType: !44, size: 32, align: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fragstotal", scope: !633, file: !632, line: 570, baseType: !44, size: 32, align: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fragsize", scope: !633, file: !632, line: 571, baseType: !44, size: 32, align: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !633, file: !632, line: 573, baseType: !44, size: 32, align: 32, offset: 96)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nchannels", scope: !626, file: !367, line: 653, type: !44)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ssize", scope: !626, file: !367, line: 653, type: !44)
!641 = !DISubprogram(name: "_ssize", scope: !367, file: !367, line: 615, type: !642, isLocal: true, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.oss_audio_t*, i32*, i32*)* @_ssize, variables: !645)
!642 = !DISubroutineType(types: !643)
!643 = !{!44, !365, !644, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!645 = !{!646, !647, !648, !649}
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !641, file: !367, line: 615, type: !365)
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nchannels", arg: 2, scope: !641, file: !367, line: 615, type: !644)
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ssize", arg: 3, scope: !641, file: !367, line: 615, type: !644)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !641, file: !367, line: 617, type: !44)
!650 = !DISubprogram(name: "oss_obufcount", scope: !367, file: !367, line: 672, type: !406, isLocal: true, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_obufcount, variables: !651)
!651 = !{!652, !653, !654, !655, !656}
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !650, file: !367, line: 672, type: !365)
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !650, file: !367, line: 672, type: !5)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ai", scope: !650, file: !367, line: 674, type: !631)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nchannels", scope: !650, file: !367, line: 675, type: !44)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ssize", scope: !650, file: !367, line: 675, type: !44)
!657 = !DISubprogram(name: "oss_obuffree", scope: !367, file: !367, line: 695, type: !406, isLocal: true, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_obuffree, variables: !658)
!658 = !{!659, !660, !661, !662, !663}
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !657, file: !367, line: 695, type: !365)
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !657, file: !367, line: 695, type: !5)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ai", scope: !657, file: !367, line: 697, type: !631)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nchannels", scope: !657, file: !367, line: 698, type: !44)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ssize", scope: !657, file: !367, line: 698, type: !44)
!664 = !DISubprogram(name: "oss_getptr", scope: !367, file: !367, line: 715, type: !406, isLocal: true, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_audio_t*, %struct._object*)* @oss_getptr, variables: !665)
!665 = !{!666, !667, !668, !675}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !664, file: !367, line: 715, type: !365)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !664, file: !367, line: 715, type: !5)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !664, file: !367, line: 717, type: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "count_info", file: !632, line: 606, baseType: !670)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "count_info", file: !632, line: 602, size: 96, align: 32, elements: !671)
!671 = !{!672, !673, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !670, file: !632, line: 603, baseType: !44, size: 32, align: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !670, file: !632, line: 604, baseType: !44, size: 32, align: 32, offset: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !670, file: !632, line: 605, baseType: !44, size: 32, align: 32, offset: 64)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "req", scope: !664, file: !367, line: 718, type: !44)
!676 = !DISubprogram(name: "oss_self", scope: !367, file: !367, line: 531, type: !126, isLocal: true, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @oss_self, variables: !677)
!677 = !{!678, !679}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !676, file: !367, line: 531, type: !5)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !676, file: !367, line: 531, type: !5)
!680 = !DISubprogram(name: "oss_exit", scope: !367, file: !367, line: 538, type: !126, isLocal: true, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @oss_exit, variables: !681)
!681 = !{!682, !683, !684, !685}
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !680, file: !367, line: 538, type: !5)
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !680, file: !367, line: 538, type: !5)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !680, file: !367, line: 542, type: !5)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !686, file: !367, line: 545, type: !5)
!686 = distinct !DILexicalBlock(scope: !680, file: !367, line: 545, column: 8)
!687 = !DISubprogram(name: "oss_mixer_dealloc", scope: !367, file: !367, line: 199, type: !688, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.oss_mixer_t*)* @oss_mixer_dealloc, variables: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !379}
!690 = !{!691}
!691 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !687, file: !367, line: 199, type: !379)
!692 = !DISubprogram(name: "oss_mixer_close", scope: !367, file: !367, line: 740, type: !693, isLocal: true, isDefinition: true, scopeLine: 741, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_close, variables: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{!5, !379, !5}
!695 = !{!696, !697}
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !692, file: !367, line: 740, type: !379)
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !692, file: !367, line: 740, type: !5)
!698 = !DISubprogram(name: "oss_mixer_fileno", scope: !367, file: !367, line: 751, type: !693, isLocal: true, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_fileno, variables: !699)
!699 = !{!700, !701}
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !698, file: !367, line: 751, type: !379)
!701 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !698, file: !367, line: 751, type: !5)
!702 = !DISubprogram(name: "oss_mixer_controls", scope: !367, file: !367, line: 762, type: !693, isLocal: true, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_controls, variables: !703)
!703 = !{!704, !705}
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !702, file: !367, line: 762, type: !379)
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !702, file: !367, line: 762, type: !5)
!706 = !DISubprogram(name: "_do_ioctl_1_internal", scope: !367, file: !367, line: 270, type: !565, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i32, %struct._object*, i8*, i32)* @_do_ioctl_1_internal, variables: !707)
!707 = !{!708, !709, !710, !711, !712, !713}
!708 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fd", arg: 1, scope: !706, file: !367, line: 270, type: !44)
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !706, file: !367, line: 270, type: !5)
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fname", arg: 3, scope: !706, file: !367, line: 270, type: !52)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cmd", arg: 4, scope: !706, file: !367, line: 270, type: !44)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argfmt", scope: !706, file: !367, line: 272, type: !601)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !706, file: !367, line: 273, type: !44)
!714 = !DISubprogram(name: "oss_mixer_stereocontrols", scope: !367, file: !367, line: 772, type: !693, isLocal: true, isDefinition: true, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_stereocontrols, variables: !715)
!715 = !{!716, !717}
!716 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !714, file: !367, line: 772, type: !379)
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !714, file: !367, line: 772, type: !5)
!718 = !DISubprogram(name: "oss_mixer_reccontrols", scope: !367, file: !367, line: 782, type: !693, isLocal: true, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_reccontrols, variables: !719)
!719 = !{!720, !721}
!720 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !718, file: !367, line: 782, type: !379)
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !718, file: !367, line: 782, type: !5)
!722 = !DISubprogram(name: "oss_mixer_get", scope: !367, file: !367, line: 792, type: !693, isLocal: true, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_get, variables: !723)
!723 = !{!724, !725, !726, !727}
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !722, file: !367, line: 792, type: !379)
!725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !722, file: !367, line: 792, type: !5)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "channel", scope: !722, file: !367, line: 794, type: !44)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volume", scope: !722, file: !367, line: 794, type: !44)
!728 = !DISubprogram(name: "oss_mixer_set", scope: !367, file: !367, line: 815, type: !693, isLocal: true, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_set, variables: !729)
!729 = !{!730, !731, !732, !733, !734, !735}
!730 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !728, file: !367, line: 815, type: !379)
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !728, file: !367, line: 815, type: !5)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "channel", scope: !728, file: !367, line: 817, type: !44)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volume", scope: !728, file: !367, line: 817, type: !44)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "leftVol", scope: !728, file: !367, line: 817, type: !44)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rightVol", scope: !728, file: !367, line: 817, type: !44)
!736 = !DISubprogram(name: "oss_mixer_get_recsrc", scope: !367, file: !367, line: 845, type: !693, isLocal: true, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_get_recsrc, variables: !737)
!737 = !{!738, !739}
!738 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !736, file: !367, line: 845, type: !379)
!739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !736, file: !367, line: 845, type: !5)
!740 = !DISubprogram(name: "oss_mixer_set_recsrc", scope: !367, file: !367, line: 855, type: !693, isLocal: true, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.oss_mixer_t*, %struct._object*)* @oss_mixer_set_recsrc, variables: !741)
!741 = !{!742, !743}
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !740, file: !367, line: 855, type: !379)
!743 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !740, file: !367, line: 855, type: !5)
!744 = !DISubprogram(name: "ossopen", scope: !367, file: !367, line: 1028, type: !126, isLocal: true, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @ossopen, variables: !745)
!745 = !{!746, !747}
!746 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !744, file: !367, line: 1028, type: !5)
!747 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !744, file: !367, line: 1028, type: !5)
!748 = !DISubprogram(name: "newossobject", scope: !367, file: !367, line: 76, type: !749, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct.oss_audio_t* (%struct._object*)* @newossobject, variables: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{!365, !5}
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !762, !763, !765, !766, !769, !770, !772, !773, !776, !777, !779}
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !748, file: !367, line: 76, type: !5)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !748, file: !367, line: 78, type: !365)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !748, file: !367, line: 79, type: !44)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "afmts", scope: !748, file: !367, line: 79, type: !44)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imode", scope: !748, file: !367, line: 79, type: !44)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devicename", scope: !748, file: !367, line: 80, type: !52)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !748, file: !367, line: 81, type: !52)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !760, file: !367, line: 95, type: !94)
!760 = distinct !DILexicalBlock(scope: !761, file: !367, line: 95, column: 24)
!761 = distinct !DILexicalBlock(scope: !748, file: !367, line: 95, column: 9)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !760, file: !367, line: 95, type: !94)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !764, file: !367, line: 95, type: !352)
!764 = distinct !DILexicalBlock(scope: !760, file: !367, line: 95, column: 1510)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !764, file: !367, line: 95, type: !44)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !767, file: !367, line: 97, type: !94)
!767 = distinct !DILexicalBlock(scope: !768, file: !367, line: 97, column: 29)
!768 = distinct !DILexicalBlock(scope: !761, file: !367, line: 97, column: 14)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !767, file: !367, line: 97, type: !94)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !771, file: !367, line: 97, type: !352)
!771 = distinct !DILexicalBlock(scope: !767, file: !367, line: 97, column: 1515)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !771, file: !367, line: 97, type: !44)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !774, file: !367, line: 99, type: !94)
!774 = distinct !DILexicalBlock(scope: !775, file: !367, line: 99, column: 29)
!775 = distinct !DILexicalBlock(scope: !768, file: !367, line: 99, column: 14)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !774, file: !367, line: 99, type: !94)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !778, file: !367, line: 99, type: !352)
!778 = distinct !DILexicalBlock(scope: !774, file: !367, line: 99, column: 1530)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !778, file: !367, line: 99, type: !44)
!780 = !DISubprogram(name: "ossopenmixer", scope: !367, file: !367, line: 1034, type: !126, isLocal: true, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @ossopenmixer, variables: !781)
!781 = !{!782, !783}
!782 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !780, file: !367, line: 1034, type: !5)
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !780, file: !367, line: 1034, type: !5)
!784 = !DISubprogram(name: "newossmixerobject", scope: !367, file: !367, line: 166, type: !785, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, function: %struct.oss_mixer_t* (%struct._object*)* @newossmixerobject, variables: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!379, !5}
!787 = !{!788, !789, !790, !791}
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !784, file: !367, line: 166, type: !5)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "devicename", scope: !784, file: !367, line: 168, type: !52)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fd", scope: !784, file: !367, line: 169, type: !44)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !784, file: !367, line: 170, type: !379)
!792 = !DISubprogram(name: "build_namelists", scope: !367, file: !367, line: 1055, type: !144, isLocal: true, isDefinition: true, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @build_namelists, variables: !793)
!793 = !{!794, !795, !796, !797, !798, !799, !800, !802, !805, !807}
!794 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !792, file: !367, line: 1055, type: !5)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "labels", scope: !792, file: !367, line: 1057, type: !5)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "names", scope: !792, file: !367, line: 1058, type: !5)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !792, file: !367, line: 1059, type: !5)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_controls", scope: !792, file: !367, line: 1060, type: !44)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !792, file: !367, line: 1061, type: !44)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !801, file: !367, line: 1090, type: !5)
!801 = distinct !DILexicalBlock(scope: !792, file: !367, line: 1090, column: 8)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !803, file: !367, line: 1090, type: !5)
!803 = distinct !DILexicalBlock(scope: !804, file: !367, line: 1090, column: 98)
!804 = distinct !DILexicalBlock(scope: !801, file: !367, line: 1090, column: 64)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !806, file: !367, line: 1092, type: !5)
!806 = distinct !DILexicalBlock(scope: !792, file: !367, line: 1092, column: 8)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !808, file: !367, line: 1092, type: !5)
!808 = distinct !DILexicalBlock(scope: !809, file: !367, line: 1092, column: 97)
!809 = distinct !DILexicalBlock(scope: !806, file: !367, line: 1092, column: 63)
!810 = !{!811, !812, !814, !819, !827, !828, !832, !854, !858, !862}
!811 = !DIGlobalVariable(name: "OSSAudioError", scope: !0, file: !367, line: 68, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @OSSAudioError)
!812 = !DIGlobalVariable(name: "OSSAudioType", scope: !0, file: !367, line: 962, type: !813, isLocal: true, isDefinition: true, variable: %struct._typeobject* @OSSAudioType)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!814 = !DIGlobalVariable(name: "oss_methods", scope: !0, file: !367, line: 869, type: !815, isLocal: true, isDefinition: true, variable: [22 x %struct.PyMethodDef]* @oss_methods)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 5632, align: 64, elements: !817)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!817 = !{!818}
!818 = !DISubrange(count: 22)
!819 = !DIGlobalVariable(name: "PyId_close", scope: !680, file: !367, line: 540, type: !820, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @oss_exit.PyId_close)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !7, line: 144, baseType: !821)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !7, line: 140, size: 192, align: 64, elements: !822)
!822 = !{!823, !825, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !821, file: !7, line: 141, baseType: !824, size: 64, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64, align: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !821, file: !7, line: 142, baseType: !29, size: 64, align: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !821, file: !7, line: 143, baseType: !5, size: 64, align: 64, offset: 128)
!827 = !DIGlobalVariable(name: "OSSMixerType", scope: !0, file: !367, line: 994, type: !813, isLocal: true, isDefinition: true, variable: %struct._typeobject* @OSSMixerType)
!828 = !DIGlobalVariable(name: "oss_mixer_methods", scope: !0, file: !367, line: 904, type: !829, isLocal: true, isDefinition: true, variable: [12 x %struct.PyMethodDef]* @oss_mixer_methods)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 3072, align: 64, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 12)
!832 = !DIGlobalVariable(name: "ossaudiodevmodule", scope: !0, file: !367, line: 1097, type: !833, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @ossaudiodevmodule)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !834, line: 47, size: 832, align: 64, elements: !835)
!834 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!835 = !{!836, !845, !846, !847, !848, !850, !851, !852, !853}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !833, file: !834, line: 48, baseType: !837, size: 320, align: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !834, line: 38, baseType: !838)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !834, line: 33, size: 320, align: 64, elements: !839)
!839 = !{!840, !841, !843, !844}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !838, file: !834, line: 34, baseType: !6, size: 128, align: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !838, file: !834, line: 35, baseType: !842, size: 64, align: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !838, file: !834, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !838, file: !834, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !833, file: !834, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !833, file: !834, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !833, file: !834, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !833, file: !834, line: 52, baseType: !849, size: 64, align: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64, align: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !833, file: !834, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !833, file: !834, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !833, file: !834, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !833, file: !834, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!854 = !DIGlobalVariable(name: "ossaudiodev_methods", scope: !0, file: !367, line: 1039, type: !855, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @ossaudiodev_methods)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 768, align: 64, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 3)
!858 = !DIGlobalVariable(name: "control_labels", scope: !0, file: !367, line: 1050, type: !859, isLocal: true, isDefinition: true, variable: [25 x i8*]* @control_labels)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1600, align: 64, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 25)
!862 = !DIGlobalVariable(name: "control_names", scope: !0, file: !367, line: 1051, type: !859, isLocal: true, isDefinition: true, variable: [25 x i8*]* @control_names)
!863 = !{i32 2, !"Dwarf Version", i32 4}
!864 = !{i32 2, !"Debug Info Version", i32 3}
!865 = !{i32 1, !"PIC Level", i32 2}
!866 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!867 = !DILocation(line: 1112, column: 5, scope: !395)
!868 = !DIExpression()
!869 = !DILocation(line: 1112, column: 15, scope: !395)
!870 = !DILocation(line: 1114, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1114, column: 9)
!872 = !DILocation(line: 1114, column: 37, scope: !871)
!873 = !DILocation(line: 1114, column: 9, scope: !395)
!874 = !DILocation(line: 1115, column: 9, scope: !871)
!875 = !DILocation(line: 1117, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1117, column: 9)
!877 = !DILocation(line: 1117, column: 37, scope: !876)
!878 = !DILocation(line: 1117, column: 9, scope: !395)
!879 = !DILocation(line: 1118, column: 9, scope: !876)
!880 = !DILocation(line: 1120, column: 9, scope: !395)
!881 = !DILocation(line: 1120, column: 7, scope: !395)
!882 = !{!883, !883, i64 0}
!883 = !{!"any pointer", !884, i64 0}
!884 = !{!"omnipotent char", !885, i64 0}
!885 = !{!"Simple C/C++ TBAA"}
!886 = !DILocation(line: 1121, column: 9, scope: !887)
!887 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1121, column: 9)
!888 = !DILocation(line: 1121, column: 11, scope: !887)
!889 = !DILocation(line: 1121, column: 9, scope: !395)
!890 = !DILocation(line: 1122, column: 9, scope: !887)
!891 = !DILocation(line: 1124, column: 21, scope: !395)
!892 = !DILocation(line: 1124, column: 19, scope: !395)
!893 = !DILocation(line: 1126, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1126, column: 9)
!895 = !DILocation(line: 1126, column: 9, scope: !395)
!896 = !DILocation(line: 1128, column: 25, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !367, line: 1126, column: 24)
!898 = !DILocation(line: 1128, column: 42, scope: !897)
!899 = !DILocation(line: 1128, column: 51, scope: !897)
!900 = !{!901, !902, i64 0}
!901 = !{!"_object", !902, i64 0, !883, i64 8}
!902 = !{!"long", !884, i64 0}
!903 = !DILocation(line: 1129, column: 25, scope: !897)
!904 = !DILocation(line: 1129, column: 42, scope: !897)
!905 = !DILocation(line: 1129, column: 51, scope: !897)
!906 = !DILocation(line: 1130, column: 28, scope: !897)
!907 = !DILocation(line: 1130, column: 40, scope: !897)
!908 = !DILocation(line: 1130, column: 9, scope: !897)
!909 = !DILocation(line: 1131, column: 28, scope: !897)
!910 = !DILocation(line: 1131, column: 48, scope: !897)
!911 = !DILocation(line: 1131, column: 9, scope: !897)
!912 = !DILocation(line: 1132, column: 5, scope: !897)
!913 = !DILocation(line: 1136, column: 25, scope: !914)
!914 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1136, column: 9)
!915 = !DILocation(line: 1136, column: 9, scope: !914)
!916 = !DILocation(line: 1136, column: 28, scope: !914)
!917 = !DILocation(line: 1136, column: 9, scope: !395)
!918 = !DILocation(line: 1137, column: 9, scope: !914)
!919 = !DILocation(line: 1140, column: 33, scope: !920)
!920 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1140, column: 9)
!921 = !DILocation(line: 1140, column: 9, scope: !920)
!922 = !DILocation(line: 1140, column: 71, scope: !920)
!923 = !DILocation(line: 1140, column: 9, scope: !395)
!924 = !DILocation(line: 1140, column: 78, scope: !925)
!925 = !DILexicalBlockFile(scope: !920, file: !367, discriminator: 1)
!926 = !DILocation(line: 1140, column: 78, scope: !920)
!927 = !DILocation(line: 1141, column: 33, scope: !928)
!928 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1141, column: 9)
!929 = !DILocation(line: 1141, column: 9, scope: !928)
!930 = !DILocation(line: 1141, column: 72, scope: !928)
!931 = !DILocation(line: 1141, column: 9, scope: !395)
!932 = !DILocation(line: 1141, column: 79, scope: !933)
!933 = !DILexicalBlockFile(scope: !928, file: !367, discriminator: 1)
!934 = !DILocation(line: 1141, column: 79, scope: !928)
!935 = !DILocation(line: 1142, column: 33, scope: !936)
!936 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1142, column: 9)
!937 = !DILocation(line: 1142, column: 9, scope: !936)
!938 = !DILocation(line: 1142, column: 71, scope: !936)
!939 = !DILocation(line: 1142, column: 9, scope: !395)
!940 = !DILocation(line: 1142, column: 78, scope: !941)
!941 = !DILexicalBlockFile(scope: !936, file: !367, discriminator: 1)
!942 = !DILocation(line: 1142, column: 78, scope: !936)
!943 = !DILocation(line: 1143, column: 33, scope: !944)
!944 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1143, column: 9)
!945 = !DILocation(line: 1143, column: 9, scope: !944)
!946 = !DILocation(line: 1143, column: 75, scope: !944)
!947 = !DILocation(line: 1143, column: 9, scope: !395)
!948 = !DILocation(line: 1143, column: 82, scope: !949)
!949 = !DILexicalBlockFile(scope: !944, file: !367, discriminator: 1)
!950 = !DILocation(line: 1143, column: 82, scope: !944)
!951 = !DILocation(line: 1144, column: 33, scope: !952)
!952 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1144, column: 9)
!953 = !DILocation(line: 1144, column: 9, scope: !952)
!954 = !DILocation(line: 1144, column: 68, scope: !952)
!955 = !DILocation(line: 1144, column: 9, scope: !395)
!956 = !DILocation(line: 1144, column: 75, scope: !957)
!957 = !DILexicalBlockFile(scope: !952, file: !367, discriminator: 1)
!958 = !DILocation(line: 1144, column: 75, scope: !952)
!959 = !DILocation(line: 1145, column: 33, scope: !960)
!960 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1145, column: 9)
!961 = !DILocation(line: 1145, column: 9, scope: !960)
!962 = !DILocation(line: 1145, column: 72, scope: !960)
!963 = !DILocation(line: 1145, column: 9, scope: !395)
!964 = !DILocation(line: 1145, column: 79, scope: !965)
!965 = !DILexicalBlockFile(scope: !960, file: !367, discriminator: 1)
!966 = !DILocation(line: 1145, column: 79, scope: !960)
!967 = !DILocation(line: 1146, column: 33, scope: !968)
!968 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1146, column: 9)
!969 = !DILocation(line: 1146, column: 9, scope: !968)
!970 = !DILocation(line: 1146, column: 72, scope: !968)
!971 = !DILocation(line: 1146, column: 9, scope: !395)
!972 = !DILocation(line: 1146, column: 79, scope: !973)
!973 = !DILexicalBlockFile(scope: !968, file: !367, discriminator: 1)
!974 = !DILocation(line: 1146, column: 79, scope: !968)
!975 = !DILocation(line: 1147, column: 33, scope: !976)
!976 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1147, column: 9)
!977 = !DILocation(line: 1147, column: 9, scope: !976)
!978 = !DILocation(line: 1147, column: 68, scope: !976)
!979 = !DILocation(line: 1147, column: 9, scope: !395)
!980 = !DILocation(line: 1147, column: 75, scope: !981)
!981 = !DILexicalBlockFile(scope: !976, file: !367, discriminator: 1)
!982 = !DILocation(line: 1147, column: 75, scope: !976)
!983 = !DILocation(line: 1148, column: 33, scope: !984)
!984 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1148, column: 9)
!985 = !DILocation(line: 1148, column: 9, scope: !984)
!986 = !DILocation(line: 1148, column: 72, scope: !984)
!987 = !DILocation(line: 1148, column: 9, scope: !395)
!988 = !DILocation(line: 1148, column: 79, scope: !989)
!989 = !DILexicalBlockFile(scope: !984, file: !367, discriminator: 1)
!990 = !DILocation(line: 1148, column: 79, scope: !984)
!991 = !DILocation(line: 1149, column: 33, scope: !992)
!992 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1149, column: 9)
!993 = !DILocation(line: 1149, column: 9, scope: !992)
!994 = !DILocation(line: 1149, column: 72, scope: !992)
!995 = !DILocation(line: 1149, column: 9, scope: !395)
!996 = !DILocation(line: 1149, column: 79, scope: !997)
!997 = !DILexicalBlockFile(scope: !992, file: !367, discriminator: 1)
!998 = !DILocation(line: 1149, column: 79, scope: !992)
!999 = !DILocation(line: 1150, column: 33, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1150, column: 9)
!1001 = !DILocation(line: 1150, column: 9, scope: !1000)
!1002 = !DILocation(line: 1150, column: 70, scope: !1000)
!1003 = !DILocation(line: 1150, column: 9, scope: !395)
!1004 = !DILocation(line: 1150, column: 77, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1000, file: !367, discriminator: 1)
!1006 = !DILocation(line: 1150, column: 77, scope: !1000)
!1007 = !DILocation(line: 1152, column: 33, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1152, column: 9)
!1009 = !DILocation(line: 1152, column: 9, scope: !1008)
!1010 = !DILocation(line: 1152, column: 69, scope: !1008)
!1011 = !DILocation(line: 1152, column: 9, scope: !395)
!1012 = !DILocation(line: 1152, column: 76, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1008, file: !367, discriminator: 1)
!1014 = !DILocation(line: 1152, column: 76, scope: !1008)
!1015 = !DILocation(line: 1155, column: 33, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1155, column: 9)
!1017 = !DILocation(line: 1155, column: 9, scope: !1016)
!1018 = !DILocation(line: 1155, column: 72, scope: !1016)
!1019 = !DILocation(line: 1155, column: 9, scope: !395)
!1020 = !DILocation(line: 1155, column: 79, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1016, file: !367, discriminator: 1)
!1022 = !DILocation(line: 1155, column: 79, scope: !1016)
!1023 = !DILocation(line: 1167, column: 33, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1167, column: 9)
!1025 = !DILocation(line: 1167, column: 9, scope: !1024)
!1026 = !DILocation(line: 1167, column: 70, scope: !1024)
!1027 = !DILocation(line: 1167, column: 9, scope: !395)
!1028 = !DILocation(line: 1167, column: 77, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1024, file: !367, discriminator: 1)
!1030 = !DILocation(line: 1167, column: 77, scope: !1024)
!1031 = !DILocation(line: 1171, column: 33, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1171, column: 9)
!1033 = !DILocation(line: 1171, column: 9, scope: !1032)
!1034 = !DILocation(line: 1171, column: 74, scope: !1032)
!1035 = !DILocation(line: 1171, column: 9, scope: !395)
!1036 = !DILocation(line: 1171, column: 81, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1032, file: !367, discriminator: 1)
!1038 = !DILocation(line: 1171, column: 81, scope: !1032)
!1039 = !DILocation(line: 1172, column: 33, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1172, column: 9)
!1041 = !DILocation(line: 1172, column: 9, scope: !1040)
!1042 = !DILocation(line: 1172, column: 70, scope: !1040)
!1043 = !DILocation(line: 1172, column: 9, scope: !395)
!1044 = !DILocation(line: 1172, column: 77, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1040, file: !367, discriminator: 1)
!1046 = !DILocation(line: 1172, column: 77, scope: !1040)
!1047 = !DILocation(line: 1173, column: 33, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1173, column: 9)
!1049 = !DILocation(line: 1173, column: 9, scope: !1048)
!1050 = !DILocation(line: 1173, column: 68, scope: !1048)
!1051 = !DILocation(line: 1173, column: 9, scope: !395)
!1052 = !DILocation(line: 1173, column: 75, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1048, file: !367, discriminator: 1)
!1054 = !DILocation(line: 1173, column: 75, scope: !1048)
!1055 = !DILocation(line: 1174, column: 33, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1174, column: 9)
!1057 = !DILocation(line: 1174, column: 9, scope: !1056)
!1058 = !DILocation(line: 1174, column: 70, scope: !1056)
!1059 = !DILocation(line: 1174, column: 9, scope: !395)
!1060 = !DILocation(line: 1174, column: 77, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1056, file: !367, discriminator: 1)
!1062 = !DILocation(line: 1174, column: 77, scope: !1056)
!1063 = !DILocation(line: 1175, column: 33, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1175, column: 9)
!1065 = !DILocation(line: 1175, column: 9, scope: !1064)
!1066 = !DILocation(line: 1175, column: 69, scope: !1064)
!1067 = !DILocation(line: 1175, column: 9, scope: !395)
!1068 = !DILocation(line: 1175, column: 76, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1064, file: !367, discriminator: 1)
!1070 = !DILocation(line: 1175, column: 76, scope: !1064)
!1071 = !DILocation(line: 1176, column: 33, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1176, column: 9)
!1073 = !DILocation(line: 1176, column: 9, scope: !1072)
!1074 = !DILocation(line: 1176, column: 67, scope: !1072)
!1075 = !DILocation(line: 1176, column: 9, scope: !395)
!1076 = !DILocation(line: 1176, column: 74, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1072, file: !367, discriminator: 1)
!1078 = !DILocation(line: 1176, column: 74, scope: !1072)
!1079 = !DILocation(line: 1177, column: 33, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1177, column: 9)
!1081 = !DILocation(line: 1177, column: 9, scope: !1080)
!1082 = !DILocation(line: 1177, column: 71, scope: !1080)
!1083 = !DILocation(line: 1177, column: 9, scope: !395)
!1084 = !DILocation(line: 1177, column: 78, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1080, file: !367, discriminator: 1)
!1086 = !DILocation(line: 1177, column: 78, scope: !1080)
!1087 = !DILocation(line: 1178, column: 33, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1178, column: 9)
!1089 = !DILocation(line: 1178, column: 9, scope: !1088)
!1090 = !DILocation(line: 1178, column: 68, scope: !1088)
!1091 = !DILocation(line: 1178, column: 9, scope: !395)
!1092 = !DILocation(line: 1178, column: 75, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1088, file: !367, discriminator: 1)
!1094 = !DILocation(line: 1178, column: 75, scope: !1088)
!1095 = !DILocation(line: 1179, column: 33, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1179, column: 9)
!1097 = !DILocation(line: 1179, column: 9, scope: !1096)
!1098 = !DILocation(line: 1179, column: 67, scope: !1096)
!1099 = !DILocation(line: 1179, column: 9, scope: !395)
!1100 = !DILocation(line: 1179, column: 74, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1096, file: !367, discriminator: 1)
!1102 = !DILocation(line: 1179, column: 74, scope: !1096)
!1103 = !DILocation(line: 1180, column: 33, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1180, column: 9)
!1105 = !DILocation(line: 1180, column: 9, scope: !1104)
!1106 = !DILocation(line: 1180, column: 66, scope: !1104)
!1107 = !DILocation(line: 1180, column: 9, scope: !395)
!1108 = !DILocation(line: 1180, column: 73, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1104, file: !367, discriminator: 1)
!1110 = !DILocation(line: 1180, column: 73, scope: !1104)
!1111 = !DILocation(line: 1181, column: 33, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1181, column: 9)
!1113 = !DILocation(line: 1181, column: 9, scope: !1112)
!1114 = !DILocation(line: 1181, column: 68, scope: !1112)
!1115 = !DILocation(line: 1181, column: 9, scope: !395)
!1116 = !DILocation(line: 1181, column: 75, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1112, file: !367, discriminator: 1)
!1118 = !DILocation(line: 1181, column: 75, scope: !1112)
!1119 = !DILocation(line: 1182, column: 33, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1182, column: 9)
!1121 = !DILocation(line: 1182, column: 9, scope: !1120)
!1122 = !DILocation(line: 1182, column: 71, scope: !1120)
!1123 = !DILocation(line: 1182, column: 9, scope: !395)
!1124 = !DILocation(line: 1182, column: 78, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1120, file: !367, discriminator: 1)
!1126 = !DILocation(line: 1182, column: 78, scope: !1120)
!1127 = !DILocation(line: 1183, column: 33, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1183, column: 9)
!1129 = !DILocation(line: 1183, column: 9, scope: !1128)
!1130 = !DILocation(line: 1183, column: 71, scope: !1128)
!1131 = !DILocation(line: 1183, column: 9, scope: !395)
!1132 = !DILocation(line: 1183, column: 78, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1128, file: !367, discriminator: 1)
!1134 = !DILocation(line: 1183, column: 78, scope: !1128)
!1135 = !DILocation(line: 1184, column: 33, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1184, column: 9)
!1137 = !DILocation(line: 1184, column: 9, scope: !1136)
!1138 = !DILocation(line: 1184, column: 70, scope: !1136)
!1139 = !DILocation(line: 1184, column: 9, scope: !395)
!1140 = !DILocation(line: 1184, column: 77, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1136, file: !367, discriminator: 1)
!1142 = !DILocation(line: 1184, column: 77, scope: !1136)
!1143 = !DILocation(line: 1185, column: 33, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1185, column: 9)
!1145 = !DILocation(line: 1185, column: 9, scope: !1144)
!1146 = !DILocation(line: 1185, column: 70, scope: !1144)
!1147 = !DILocation(line: 1185, column: 9, scope: !395)
!1148 = !DILocation(line: 1185, column: 77, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1144, file: !367, discriminator: 1)
!1150 = !DILocation(line: 1185, column: 77, scope: !1144)
!1151 = !DILocation(line: 1186, column: 33, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1186, column: 9)
!1153 = !DILocation(line: 1186, column: 9, scope: !1152)
!1154 = !DILocation(line: 1186, column: 70, scope: !1152)
!1155 = !DILocation(line: 1186, column: 9, scope: !395)
!1156 = !DILocation(line: 1186, column: 77, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1152, file: !367, discriminator: 1)
!1158 = !DILocation(line: 1186, column: 77, scope: !1152)
!1159 = !DILocation(line: 1187, column: 33, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1187, column: 9)
!1161 = !DILocation(line: 1187, column: 9, scope: !1160)
!1162 = !DILocation(line: 1187, column: 70, scope: !1160)
!1163 = !DILocation(line: 1187, column: 9, scope: !395)
!1164 = !DILocation(line: 1187, column: 77, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1160, file: !367, discriminator: 1)
!1166 = !DILocation(line: 1187, column: 77, scope: !1160)
!1167 = !DILocation(line: 1188, column: 33, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1188, column: 9)
!1169 = !DILocation(line: 1188, column: 9, scope: !1168)
!1170 = !DILocation(line: 1188, column: 70, scope: !1168)
!1171 = !DILocation(line: 1188, column: 9, scope: !395)
!1172 = !DILocation(line: 1188, column: 77, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1168, file: !367, discriminator: 1)
!1174 = !DILocation(line: 1188, column: 77, scope: !1168)
!1175 = !DILocation(line: 1190, column: 33, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1190, column: 9)
!1177 = !DILocation(line: 1190, column: 9, scope: !1176)
!1178 = !DILocation(line: 1190, column: 73, scope: !1176)
!1179 = !DILocation(line: 1190, column: 9, scope: !395)
!1180 = !DILocation(line: 1190, column: 80, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1176, file: !367, discriminator: 1)
!1182 = !DILocation(line: 1190, column: 80, scope: !1176)
!1183 = !DILocation(line: 1193, column: 33, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1193, column: 9)
!1185 = !DILocation(line: 1193, column: 9, scope: !1184)
!1186 = !DILocation(line: 1193, column: 73, scope: !1184)
!1187 = !DILocation(line: 1193, column: 9, scope: !395)
!1188 = !DILocation(line: 1193, column: 80, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1184, file: !367, discriminator: 1)
!1190 = !DILocation(line: 1193, column: 80, scope: !1184)
!1191 = !DILocation(line: 1196, column: 33, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1196, column: 9)
!1193 = !DILocation(line: 1196, column: 9, scope: !1192)
!1194 = !DILocation(line: 1196, column: 73, scope: !1192)
!1195 = !DILocation(line: 1196, column: 9, scope: !395)
!1196 = !DILocation(line: 1196, column: 80, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1192, file: !367, discriminator: 1)
!1198 = !DILocation(line: 1196, column: 80, scope: !1192)
!1199 = !DILocation(line: 1199, column: 33, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1199, column: 9)
!1201 = !DILocation(line: 1199, column: 9, scope: !1200)
!1202 = !DILocation(line: 1199, column: 72, scope: !1200)
!1203 = !DILocation(line: 1199, column: 9, scope: !395)
!1204 = !DILocation(line: 1199, column: 79, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1200, file: !367, discriminator: 1)
!1206 = !DILocation(line: 1199, column: 79, scope: !1200)
!1207 = !DILocation(line: 1202, column: 33, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1202, column: 9)
!1209 = !DILocation(line: 1202, column: 9, scope: !1208)
!1210 = !DILocation(line: 1202, column: 73, scope: !1208)
!1211 = !DILocation(line: 1202, column: 9, scope: !395)
!1212 = !DILocation(line: 1202, column: 80, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1208, file: !367, discriminator: 1)
!1214 = !DILocation(line: 1202, column: 80, scope: !1208)
!1215 = !DILocation(line: 1205, column: 33, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1205, column: 9)
!1217 = !DILocation(line: 1205, column: 9, scope: !1216)
!1218 = !DILocation(line: 1205, column: 70, scope: !1216)
!1219 = !DILocation(line: 1205, column: 9, scope: !395)
!1220 = !DILocation(line: 1205, column: 77, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1216, file: !367, discriminator: 1)
!1222 = !DILocation(line: 1205, column: 77, scope: !1216)
!1223 = !DILocation(line: 1208, column: 33, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1208, column: 9)
!1225 = !DILocation(line: 1208, column: 9, scope: !1224)
!1226 = !DILocation(line: 1208, column: 70, scope: !1224)
!1227 = !DILocation(line: 1208, column: 9, scope: !395)
!1228 = !DILocation(line: 1208, column: 77, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1224, file: !367, discriminator: 1)
!1230 = !DILocation(line: 1208, column: 77, scope: !1224)
!1231 = !DILocation(line: 1211, column: 33, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1211, column: 9)
!1233 = !DILocation(line: 1211, column: 9, scope: !1232)
!1234 = !DILocation(line: 1211, column: 72, scope: !1232)
!1235 = !DILocation(line: 1211, column: 9, scope: !395)
!1236 = !DILocation(line: 1211, column: 79, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1232, file: !367, discriminator: 1)
!1238 = !DILocation(line: 1211, column: 79, scope: !1232)
!1239 = !DILocation(line: 1216, column: 33, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1216, column: 9)
!1241 = !DILocation(line: 1216, column: 9, scope: !1240)
!1242 = !DILocation(line: 1216, column: 181, scope: !1240)
!1243 = !DILocation(line: 1216, column: 9, scope: !395)
!1244 = !DILocation(line: 1216, column: 188, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1240, file: !367, discriminator: 1)
!1246 = !DILocation(line: 1216, column: 188, scope: !1240)
!1247 = !DILocation(line: 1217, column: 33, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1217, column: 9)
!1249 = !DILocation(line: 1217, column: 9, scope: !1248)
!1250 = !DILocation(line: 1217, column: 178, scope: !1248)
!1251 = !DILocation(line: 1217, column: 9, scope: !395)
!1252 = !DILocation(line: 1217, column: 185, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1248, file: !367, discriminator: 1)
!1254 = !DILocation(line: 1217, column: 185, scope: !1248)
!1255 = !DILocation(line: 1218, column: 33, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1218, column: 9)
!1257 = !DILocation(line: 1218, column: 9, scope: !1256)
!1258 = !DILocation(line: 1218, column: 182, scope: !1256)
!1259 = !DILocation(line: 1218, column: 9, scope: !395)
!1260 = !DILocation(line: 1218, column: 189, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1256, file: !367, discriminator: 1)
!1262 = !DILocation(line: 1218, column: 189, scope: !1256)
!1263 = !DILocation(line: 1219, column: 33, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1219, column: 9)
!1265 = !DILocation(line: 1219, column: 9, scope: !1264)
!1266 = !DILocation(line: 1219, column: 174, scope: !1264)
!1267 = !DILocation(line: 1219, column: 9, scope: !395)
!1268 = !DILocation(line: 1219, column: 181, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1264, file: !367, discriminator: 1)
!1270 = !DILocation(line: 1219, column: 181, scope: !1264)
!1271 = !DILocation(line: 1220, column: 33, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1220, column: 9)
!1273 = !DILocation(line: 1220, column: 9, scope: !1272)
!1274 = !DILocation(line: 1220, column: 182, scope: !1272)
!1275 = !DILocation(line: 1220, column: 9, scope: !395)
!1276 = !DILocation(line: 1220, column: 189, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1272, file: !367, discriminator: 1)
!1278 = !DILocation(line: 1220, column: 189, scope: !1272)
!1279 = !DILocation(line: 1221, column: 33, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1221, column: 9)
!1281 = !DILocation(line: 1221, column: 9, scope: !1280)
!1282 = !DILocation(line: 1221, column: 154, scope: !1280)
!1283 = !DILocation(line: 1221, column: 9, scope: !395)
!1284 = !DILocation(line: 1221, column: 161, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1280, file: !367, discriminator: 1)
!1286 = !DILocation(line: 1221, column: 161, scope: !1280)
!1287 = !DILocation(line: 1222, column: 33, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1222, column: 9)
!1289 = !DILocation(line: 1222, column: 9, scope: !1288)
!1290 = !DILocation(line: 1222, column: 180, scope: !1288)
!1291 = !DILocation(line: 1222, column: 9, scope: !395)
!1292 = !DILocation(line: 1222, column: 187, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1288, file: !367, discriminator: 1)
!1294 = !DILocation(line: 1222, column: 187, scope: !1288)
!1295 = !DILocation(line: 1223, column: 33, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1223, column: 9)
!1297 = !DILocation(line: 1223, column: 9, scope: !1296)
!1298 = !DILocation(line: 1223, column: 178, scope: !1296)
!1299 = !DILocation(line: 1223, column: 9, scope: !395)
!1300 = !DILocation(line: 1223, column: 185, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1296, file: !367, discriminator: 1)
!1302 = !DILocation(line: 1223, column: 185, scope: !1296)
!1303 = !DILocation(line: 1224, column: 33, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1224, column: 9)
!1305 = !DILocation(line: 1224, column: 9, scope: !1304)
!1306 = !DILocation(line: 1224, column: 179, scope: !1304)
!1307 = !DILocation(line: 1224, column: 9, scope: !395)
!1308 = !DILocation(line: 1224, column: 186, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1304, file: !367, discriminator: 1)
!1310 = !DILocation(line: 1224, column: 186, scope: !1304)
!1311 = !DILocation(line: 1225, column: 33, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1225, column: 9)
!1313 = !DILocation(line: 1225, column: 9, scope: !1312)
!1314 = !DILocation(line: 1225, column: 179, scope: !1312)
!1315 = !DILocation(line: 1225, column: 9, scope: !395)
!1316 = !DILocation(line: 1225, column: 186, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1312, file: !367, discriminator: 1)
!1318 = !DILocation(line: 1225, column: 186, scope: !1312)
!1319 = !DILocation(line: 1227, column: 33, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1227, column: 9)
!1321 = !DILocation(line: 1227, column: 9, scope: !1320)
!1322 = !DILocation(line: 1227, column: 178, scope: !1320)
!1323 = !DILocation(line: 1227, column: 9, scope: !395)
!1324 = !DILocation(line: 1227, column: 185, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1320, file: !367, discriminator: 1)
!1326 = !DILocation(line: 1227, column: 185, scope: !1320)
!1327 = !DILocation(line: 1229, column: 33, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1229, column: 9)
!1329 = !DILocation(line: 1229, column: 9, scope: !1328)
!1330 = !DILocation(line: 1229, column: 173, scope: !1328)
!1331 = !DILocation(line: 1229, column: 9, scope: !395)
!1332 = !DILocation(line: 1229, column: 180, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1328, file: !367, discriminator: 1)
!1334 = !DILocation(line: 1229, column: 180, scope: !1328)
!1335 = !DILocation(line: 1230, column: 33, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1230, column: 9)
!1337 = !DILocation(line: 1230, column: 9, scope: !1336)
!1338 = !DILocation(line: 1230, column: 175, scope: !1336)
!1339 = !DILocation(line: 1230, column: 9, scope: !395)
!1340 = !DILocation(line: 1230, column: 182, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1336, file: !367, discriminator: 1)
!1342 = !DILocation(line: 1230, column: 182, scope: !1336)
!1343 = !DILocation(line: 1231, column: 33, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1231, column: 9)
!1345 = !DILocation(line: 1231, column: 9, scope: !1344)
!1346 = !DILocation(line: 1231, column: 170, scope: !1344)
!1347 = !DILocation(line: 1231, column: 9, scope: !395)
!1348 = !DILocation(line: 1231, column: 177, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1344, file: !367, discriminator: 1)
!1350 = !DILocation(line: 1231, column: 177, scope: !1344)
!1351 = !DILocation(line: 1233, column: 33, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1233, column: 9)
!1353 = !DILocation(line: 1233, column: 9, scope: !1352)
!1354 = !DILocation(line: 1233, column: 180, scope: !1352)
!1355 = !DILocation(line: 1233, column: 9, scope: !395)
!1356 = !DILocation(line: 1233, column: 187, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1352, file: !367, discriminator: 1)
!1358 = !DILocation(line: 1233, column: 187, scope: !1352)
!1359 = !DILocation(line: 1235, column: 33, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1235, column: 9)
!1361 = !DILocation(line: 1235, column: 9, scope: !1360)
!1362 = !DILocation(line: 1235, column: 170, scope: !1360)
!1363 = !DILocation(line: 1235, column: 9, scope: !395)
!1364 = !DILocation(line: 1235, column: 177, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1360, file: !367, discriminator: 1)
!1366 = !DILocation(line: 1235, column: 177, scope: !1360)
!1367 = !DILocation(line: 1236, column: 33, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1236, column: 9)
!1369 = !DILocation(line: 1236, column: 9, scope: !1368)
!1370 = !DILocation(line: 1236, column: 177, scope: !1368)
!1371 = !DILocation(line: 1236, column: 9, scope: !395)
!1372 = !DILocation(line: 1236, column: 184, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1368, file: !367, discriminator: 1)
!1374 = !DILocation(line: 1236, column: 184, scope: !1368)
!1375 = !DILocation(line: 1237, column: 33, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1237, column: 9)
!1377 = !DILocation(line: 1237, column: 9, scope: !1376)
!1378 = !DILocation(line: 1237, column: 183, scope: !1376)
!1379 = !DILocation(line: 1237, column: 9, scope: !395)
!1380 = !DILocation(line: 1237, column: 190, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1376, file: !367, discriminator: 1)
!1382 = !DILocation(line: 1237, column: 190, scope: !1376)
!1383 = !DILocation(line: 1239, column: 33, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1239, column: 9)
!1385 = !DILocation(line: 1239, column: 9, scope: !1384)
!1386 = !DILocation(line: 1239, column: 172, scope: !1384)
!1387 = !DILocation(line: 1239, column: 9, scope: !395)
!1388 = !DILocation(line: 1239, column: 179, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1384, file: !367, discriminator: 1)
!1390 = !DILocation(line: 1239, column: 179, scope: !1384)
!1391 = !DILocation(line: 1241, column: 33, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1241, column: 9)
!1393 = !DILocation(line: 1241, column: 9, scope: !1392)
!1394 = !DILocation(line: 1241, column: 177, scope: !1392)
!1395 = !DILocation(line: 1241, column: 9, scope: !395)
!1396 = !DILocation(line: 1241, column: 184, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1392, file: !367, discriminator: 1)
!1398 = !DILocation(line: 1241, column: 184, scope: !1392)
!1399 = !DILocation(line: 1242, column: 33, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1242, column: 9)
!1401 = !DILocation(line: 1242, column: 9, scope: !1400)
!1402 = !DILocation(line: 1242, column: 183, scope: !1400)
!1403 = !DILocation(line: 1242, column: 9, scope: !395)
!1404 = !DILocation(line: 1242, column: 190, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1400, file: !367, discriminator: 1)
!1406 = !DILocation(line: 1242, column: 190, scope: !1400)
!1407 = !DILocation(line: 1244, column: 33, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1244, column: 9)
!1409 = !DILocation(line: 1244, column: 9, scope: !1408)
!1410 = !DILocation(line: 1244, column: 171, scope: !1408)
!1411 = !DILocation(line: 1244, column: 9, scope: !395)
!1412 = !DILocation(line: 1244, column: 178, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1408, file: !367, discriminator: 1)
!1414 = !DILocation(line: 1244, column: 178, scope: !1408)
!1415 = !DILocation(line: 1246, column: 33, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1246, column: 9)
!1417 = !DILocation(line: 1246, column: 9, scope: !1416)
!1418 = !DILocation(line: 1246, column: 173, scope: !1416)
!1419 = !DILocation(line: 1246, column: 9, scope: !395)
!1420 = !DILocation(line: 1246, column: 180, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1416, file: !367, discriminator: 1)
!1422 = !DILocation(line: 1246, column: 180, scope: !1416)
!1423 = !DILocation(line: 1247, column: 33, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1247, column: 9)
!1425 = !DILocation(line: 1247, column: 9, scope: !1424)
!1426 = !DILocation(line: 1247, column: 180, scope: !1424)
!1427 = !DILocation(line: 1247, column: 9, scope: !395)
!1428 = !DILocation(line: 1247, column: 187, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1424, file: !367, discriminator: 1)
!1430 = !DILocation(line: 1247, column: 187, scope: !1424)
!1431 = !DILocation(line: 1248, column: 33, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1248, column: 9)
!1433 = !DILocation(line: 1248, column: 9, scope: !1432)
!1434 = !DILocation(line: 1248, column: 181, scope: !1432)
!1435 = !DILocation(line: 1248, column: 9, scope: !395)
!1436 = !DILocation(line: 1248, column: 188, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1432, file: !367, discriminator: 1)
!1438 = !DILocation(line: 1248, column: 188, scope: !1432)
!1439 = !DILocation(line: 1249, column: 33, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1249, column: 9)
!1441 = !DILocation(line: 1249, column: 9, scope: !1440)
!1442 = !DILocation(line: 1249, column: 157, scope: !1440)
!1443 = !DILocation(line: 1249, column: 9, scope: !395)
!1444 = !DILocation(line: 1249, column: 164, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1440, file: !367, discriminator: 1)
!1446 = !DILocation(line: 1249, column: 164, scope: !1440)
!1447 = !DILocation(line: 1250, column: 33, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1250, column: 9)
!1449 = !DILocation(line: 1250, column: 9, scope: !1448)
!1450 = !DILocation(line: 1250, column: 152, scope: !1448)
!1451 = !DILocation(line: 1250, column: 9, scope: !395)
!1452 = !DILocation(line: 1250, column: 159, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1448, file: !367, discriminator: 1)
!1454 = !DILocation(line: 1250, column: 159, scope: !1448)
!1455 = !DILocation(line: 1252, column: 33, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1252, column: 9)
!1457 = !DILocation(line: 1252, column: 9, scope: !1456)
!1458 = !DILocation(line: 1252, column: 170, scope: !1456)
!1459 = !DILocation(line: 1252, column: 9, scope: !395)
!1460 = !DILocation(line: 1252, column: 177, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1456, file: !367, discriminator: 1)
!1462 = !DILocation(line: 1252, column: 177, scope: !1456)
!1463 = !DILocation(line: 1254, column: 33, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1254, column: 9)
!1465 = !DILocation(line: 1254, column: 9, scope: !1464)
!1466 = !DILocation(line: 1254, column: 153, scope: !1464)
!1467 = !DILocation(line: 1254, column: 9, scope: !395)
!1468 = !DILocation(line: 1254, column: 160, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1464, file: !367, discriminator: 1)
!1470 = !DILocation(line: 1254, column: 160, scope: !1464)
!1471 = !DILocation(line: 1255, column: 33, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1255, column: 9)
!1473 = !DILocation(line: 1255, column: 9, scope: !1472)
!1474 = !DILocation(line: 1255, column: 175, scope: !1472)
!1475 = !DILocation(line: 1255, column: 9, scope: !395)
!1476 = !DILocation(line: 1255, column: 182, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1472, file: !367, discriminator: 1)
!1478 = !DILocation(line: 1255, column: 182, scope: !1472)
!1479 = !DILocation(line: 1256, column: 33, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1256, column: 9)
!1481 = !DILocation(line: 1256, column: 9, scope: !1480)
!1482 = !DILocation(line: 1256, column: 158, scope: !1480)
!1483 = !DILocation(line: 1256, column: 9, scope: !395)
!1484 = !DILocation(line: 1256, column: 165, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1480, file: !367, discriminator: 1)
!1486 = !DILocation(line: 1256, column: 165, scope: !1480)
!1487 = !DILocation(line: 1257, column: 33, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1257, column: 9)
!1489 = !DILocation(line: 1257, column: 9, scope: !1488)
!1490 = !DILocation(line: 1257, column: 171, scope: !1488)
!1491 = !DILocation(line: 1257, column: 9, scope: !395)
!1492 = !DILocation(line: 1257, column: 178, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1488, file: !367, discriminator: 1)
!1494 = !DILocation(line: 1257, column: 178, scope: !1488)
!1495 = !DILocation(line: 1258, column: 33, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1258, column: 9)
!1497 = !DILocation(line: 1258, column: 9, scope: !1496)
!1498 = !DILocation(line: 1258, column: 177, scope: !1496)
!1499 = !DILocation(line: 1258, column: 9, scope: !395)
!1500 = !DILocation(line: 1258, column: 184, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1496, file: !367, discriminator: 1)
!1502 = !DILocation(line: 1258, column: 184, scope: !1496)
!1503 = !DILocation(line: 1260, column: 33, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1260, column: 9)
!1505 = !DILocation(line: 1260, column: 9, scope: !1504)
!1506 = !DILocation(line: 1260, column: 171, scope: !1504)
!1507 = !DILocation(line: 1260, column: 9, scope: !395)
!1508 = !DILocation(line: 1260, column: 178, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1504, file: !367, discriminator: 1)
!1510 = !DILocation(line: 1260, column: 178, scope: !1504)
!1511 = !DILocation(line: 1262, column: 33, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1262, column: 9)
!1513 = !DILocation(line: 1262, column: 9, scope: !1512)
!1514 = !DILocation(line: 1262, column: 158, scope: !1512)
!1515 = !DILocation(line: 1262, column: 9, scope: !395)
!1516 = !DILocation(line: 1262, column: 165, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1512, file: !367, discriminator: 1)
!1518 = !DILocation(line: 1262, column: 165, scope: !1512)
!1519 = !DILocation(line: 1263, column: 33, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1263, column: 9)
!1521 = !DILocation(line: 1263, column: 9, scope: !1520)
!1522 = !DILocation(line: 1263, column: 173, scope: !1520)
!1523 = !DILocation(line: 1263, column: 9, scope: !395)
!1524 = !DILocation(line: 1263, column: 180, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1520, file: !367, discriminator: 1)
!1526 = !DILocation(line: 1263, column: 180, scope: !1520)
!1527 = !DILocation(line: 1264, column: 33, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1264, column: 9)
!1529 = !DILocation(line: 1264, column: 9, scope: !1528)
!1530 = !DILocation(line: 1264, column: 170, scope: !1528)
!1531 = !DILocation(line: 1264, column: 9, scope: !395)
!1532 = !DILocation(line: 1264, column: 177, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1528, file: !367, discriminator: 1)
!1534 = !DILocation(line: 1264, column: 177, scope: !1528)
!1535 = !DILocation(line: 1265, column: 33, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1265, column: 9)
!1537 = !DILocation(line: 1265, column: 9, scope: !1536)
!1538 = !DILocation(line: 1265, column: 171, scope: !1536)
!1539 = !DILocation(line: 1265, column: 9, scope: !395)
!1540 = !DILocation(line: 1265, column: 178, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1536, file: !367, discriminator: 1)
!1542 = !DILocation(line: 1265, column: 178, scope: !1536)
!1543 = !DILocation(line: 1266, column: 33, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1266, column: 9)
!1545 = !DILocation(line: 1266, column: 9, scope: !1544)
!1546 = !DILocation(line: 1266, column: 174, scope: !1544)
!1547 = !DILocation(line: 1266, column: 9, scope: !395)
!1548 = !DILocation(line: 1266, column: 181, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1544, file: !367, discriminator: 1)
!1550 = !DILocation(line: 1266, column: 181, scope: !1544)
!1551 = !DILocation(line: 1267, column: 33, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1267, column: 9)
!1553 = !DILocation(line: 1267, column: 9, scope: !1552)
!1554 = !DILocation(line: 1267, column: 152, scope: !1552)
!1555 = !DILocation(line: 1267, column: 9, scope: !395)
!1556 = !DILocation(line: 1267, column: 159, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1552, file: !367, discriminator: 1)
!1558 = !DILocation(line: 1267, column: 159, scope: !1552)
!1559 = !DILocation(line: 1268, column: 33, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1268, column: 9)
!1561 = !DILocation(line: 1268, column: 9, scope: !1560)
!1562 = !DILocation(line: 1268, column: 172, scope: !1560)
!1563 = !DILocation(line: 1268, column: 9, scope: !395)
!1564 = !DILocation(line: 1268, column: 179, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1560, file: !367, discriminator: 1)
!1566 = !DILocation(line: 1268, column: 179, scope: !1560)
!1567 = !DILocation(line: 1269, column: 33, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1269, column: 9)
!1569 = !DILocation(line: 1269, column: 9, scope: !1568)
!1570 = !DILocation(line: 1269, column: 189, scope: !1568)
!1571 = !DILocation(line: 1269, column: 9, scope: !395)
!1572 = !DILocation(line: 1269, column: 196, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1568, file: !367, discriminator: 1)
!1574 = !DILocation(line: 1269, column: 196, scope: !1568)
!1575 = !DILocation(line: 1270, column: 33, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1270, column: 9)
!1577 = !DILocation(line: 1270, column: 9, scope: !1576)
!1578 = !DILocation(line: 1270, column: 184, scope: !1576)
!1579 = !DILocation(line: 1270, column: 9, scope: !395)
!1580 = !DILocation(line: 1270, column: 191, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1576, file: !367, discriminator: 1)
!1582 = !DILocation(line: 1270, column: 191, scope: !1576)
!1583 = !DILocation(line: 1271, column: 33, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1271, column: 9)
!1585 = !DILocation(line: 1271, column: 9, scope: !1584)
!1586 = !DILocation(line: 1271, column: 184, scope: !1584)
!1587 = !DILocation(line: 1271, column: 9, scope: !395)
!1588 = !DILocation(line: 1271, column: 191, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1584, file: !367, discriminator: 1)
!1590 = !DILocation(line: 1271, column: 191, scope: !1584)
!1591 = !DILocation(line: 1272, column: 33, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1272, column: 9)
!1593 = !DILocation(line: 1272, column: 9, scope: !1592)
!1594 = !DILocation(line: 1272, column: 173, scope: !1592)
!1595 = !DILocation(line: 1272, column: 9, scope: !395)
!1596 = !DILocation(line: 1272, column: 180, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1592, file: !367, discriminator: 1)
!1598 = !DILocation(line: 1272, column: 180, scope: !1592)
!1599 = !DILocation(line: 1273, column: 33, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1273, column: 9)
!1601 = !DILocation(line: 1273, column: 9, scope: !1600)
!1602 = !DILocation(line: 1273, column: 173, scope: !1600)
!1603 = !DILocation(line: 1273, column: 9, scope: !395)
!1604 = !DILocation(line: 1273, column: 180, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1600, file: !367, discriminator: 1)
!1606 = !DILocation(line: 1273, column: 180, scope: !1600)
!1607 = !DILocation(line: 1274, column: 33, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1274, column: 9)
!1609 = !DILocation(line: 1274, column: 9, scope: !1608)
!1610 = !DILocation(line: 1274, column: 173, scope: !1608)
!1611 = !DILocation(line: 1274, column: 9, scope: !395)
!1612 = !DILocation(line: 1274, column: 180, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1608, file: !367, discriminator: 1)
!1614 = !DILocation(line: 1274, column: 180, scope: !1608)
!1615 = !DILocation(line: 1275, column: 33, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1275, column: 9)
!1617 = !DILocation(line: 1275, column: 9, scope: !1616)
!1618 = !DILocation(line: 1275, column: 172, scope: !1616)
!1619 = !DILocation(line: 1275, column: 9, scope: !395)
!1620 = !DILocation(line: 1275, column: 179, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1616, file: !367, discriminator: 1)
!1622 = !DILocation(line: 1275, column: 179, scope: !1616)
!1623 = !DILocation(line: 1276, column: 33, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1276, column: 9)
!1625 = !DILocation(line: 1276, column: 9, scope: !1624)
!1626 = !DILocation(line: 1276, column: 173, scope: !1624)
!1627 = !DILocation(line: 1276, column: 9, scope: !395)
!1628 = !DILocation(line: 1276, column: 180, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1624, file: !367, discriminator: 1)
!1630 = !DILocation(line: 1276, column: 180, scope: !1624)
!1631 = !DILocation(line: 1278, column: 33, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1278, column: 9)
!1633 = !DILocation(line: 1278, column: 9, scope: !1632)
!1634 = !DILocation(line: 1278, column: 170, scope: !1632)
!1635 = !DILocation(line: 1278, column: 9, scope: !395)
!1636 = !DILocation(line: 1278, column: 177, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1632, file: !367, discriminator: 1)
!1638 = !DILocation(line: 1278, column: 177, scope: !1632)
!1639 = !DILocation(line: 1280, column: 33, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1280, column: 9)
!1641 = !DILocation(line: 1280, column: 9, scope: !1640)
!1642 = !DILocation(line: 1280, column: 170, scope: !1640)
!1643 = !DILocation(line: 1280, column: 9, scope: !395)
!1644 = !DILocation(line: 1280, column: 177, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1640, file: !367, discriminator: 1)
!1646 = !DILocation(line: 1280, column: 177, scope: !1640)
!1647 = !DILocation(line: 1281, column: 33, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1281, column: 9)
!1649 = !DILocation(line: 1281, column: 9, scope: !1648)
!1650 = !DILocation(line: 1281, column: 171, scope: !1648)
!1651 = !DILocation(line: 1281, column: 9, scope: !395)
!1652 = !DILocation(line: 1281, column: 178, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1648, file: !367, discriminator: 1)
!1654 = !DILocation(line: 1281, column: 178, scope: !1648)
!1655 = !DILocation(line: 1282, column: 33, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1282, column: 9)
!1657 = !DILocation(line: 1282, column: 9, scope: !1656)
!1658 = !DILocation(line: 1282, column: 189, scope: !1656)
!1659 = !DILocation(line: 1282, column: 9, scope: !395)
!1660 = !DILocation(line: 1282, column: 196, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1656, file: !367, discriminator: 1)
!1662 = !DILocation(line: 1282, column: 196, scope: !1656)
!1663 = !DILocation(line: 1283, column: 33, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1283, column: 9)
!1665 = !DILocation(line: 1283, column: 9, scope: !1664)
!1666 = !DILocation(line: 1283, column: 154, scope: !1664)
!1667 = !DILocation(line: 1283, column: 9, scope: !395)
!1668 = !DILocation(line: 1283, column: 161, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1664, file: !367, discriminator: 1)
!1670 = !DILocation(line: 1283, column: 161, scope: !1664)
!1671 = !DILocation(line: 1284, column: 33, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1284, column: 9)
!1673 = !DILocation(line: 1284, column: 9, scope: !1672)
!1674 = !DILocation(line: 1284, column: 170, scope: !1672)
!1675 = !DILocation(line: 1284, column: 9, scope: !395)
!1676 = !DILocation(line: 1284, column: 177, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1672, file: !367, discriminator: 1)
!1678 = !DILocation(line: 1284, column: 177, scope: !1672)
!1679 = !DILocation(line: 1285, column: 33, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1285, column: 9)
!1681 = !DILocation(line: 1285, column: 9, scope: !1680)
!1682 = !DILocation(line: 1285, column: 153, scope: !1680)
!1683 = !DILocation(line: 1285, column: 9, scope: !395)
!1684 = !DILocation(line: 1285, column: 160, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1680, file: !367, discriminator: 1)
!1686 = !DILocation(line: 1285, column: 160, scope: !1680)
!1687 = !DILocation(line: 1286, column: 33, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1286, column: 9)
!1689 = !DILocation(line: 1286, column: 9, scope: !1688)
!1690 = !DILocation(line: 1286, column: 174, scope: !1688)
!1691 = !DILocation(line: 1286, column: 9, scope: !395)
!1692 = !DILocation(line: 1286, column: 181, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1688, file: !367, discriminator: 1)
!1694 = !DILocation(line: 1286, column: 181, scope: !1688)
!1695 = !DILocation(line: 1287, column: 33, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1287, column: 9)
!1697 = !DILocation(line: 1287, column: 9, scope: !1696)
!1698 = !DILocation(line: 1287, column: 152, scope: !1696)
!1699 = !DILocation(line: 1287, column: 9, scope: !395)
!1700 = !DILocation(line: 1287, column: 159, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1696, file: !367, discriminator: 1)
!1702 = !DILocation(line: 1287, column: 159, scope: !1696)
!1703 = !DILocation(line: 1288, column: 33, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1288, column: 9)
!1705 = !DILocation(line: 1288, column: 9, scope: !1704)
!1706 = !DILocation(line: 1288, column: 170, scope: !1704)
!1707 = !DILocation(line: 1288, column: 9, scope: !395)
!1708 = !DILocation(line: 1288, column: 177, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1704, file: !367, discriminator: 1)
!1710 = !DILocation(line: 1288, column: 177, scope: !1704)
!1711 = !DILocation(line: 1289, column: 33, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1289, column: 9)
!1713 = !DILocation(line: 1289, column: 9, scope: !1712)
!1714 = !DILocation(line: 1289, column: 172, scope: !1712)
!1715 = !DILocation(line: 1289, column: 9, scope: !395)
!1716 = !DILocation(line: 1289, column: 179, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1712, file: !367, discriminator: 1)
!1718 = !DILocation(line: 1289, column: 179, scope: !1712)
!1719 = !DILocation(line: 1291, column: 33, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1291, column: 9)
!1721 = !DILocation(line: 1291, column: 9, scope: !1720)
!1722 = !DILocation(line: 1291, column: 192, scope: !1720)
!1723 = !DILocation(line: 1291, column: 9, scope: !395)
!1724 = !DILocation(line: 1291, column: 199, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1720, file: !367, discriminator: 1)
!1726 = !DILocation(line: 1291, column: 199, scope: !1720)
!1727 = !DILocation(line: 1294, column: 33, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1294, column: 9)
!1729 = !DILocation(line: 1294, column: 9, scope: !1728)
!1730 = !DILocation(line: 1294, column: 184, scope: !1728)
!1731 = !DILocation(line: 1294, column: 9, scope: !395)
!1732 = !DILocation(line: 1294, column: 191, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1728, file: !367, discriminator: 1)
!1734 = !DILocation(line: 1294, column: 191, scope: !1728)
!1735 = !DILocation(line: 1296, column: 33, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1296, column: 9)
!1737 = !DILocation(line: 1296, column: 9, scope: !1736)
!1738 = !DILocation(line: 1296, column: 185, scope: !1736)
!1739 = !DILocation(line: 1296, column: 9, scope: !395)
!1740 = !DILocation(line: 1296, column: 192, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1736, file: !367, discriminator: 1)
!1742 = !DILocation(line: 1296, column: 192, scope: !1736)
!1743 = !DILocation(line: 1297, column: 33, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1297, column: 9)
!1745 = !DILocation(line: 1297, column: 9, scope: !1744)
!1746 = !DILocation(line: 1297, column: 174, scope: !1744)
!1747 = !DILocation(line: 1297, column: 9, scope: !395)
!1748 = !DILocation(line: 1297, column: 181, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1744, file: !367, discriminator: 1)
!1750 = !DILocation(line: 1297, column: 181, scope: !1744)
!1751 = !DILocation(line: 1299, column: 33, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1299, column: 9)
!1753 = !DILocation(line: 1299, column: 9, scope: !1752)
!1754 = !DILocation(line: 1299, column: 197, scope: !1752)
!1755 = !DILocation(line: 1299, column: 9, scope: !395)
!1756 = !DILocation(line: 1299, column: 204, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1752, file: !367, discriminator: 1)
!1758 = !DILocation(line: 1299, column: 204, scope: !1752)
!1759 = !DILocation(line: 1301, column: 33, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1301, column: 9)
!1761 = !DILocation(line: 1301, column: 9, scope: !1760)
!1762 = !DILocation(line: 1301, column: 156, scope: !1760)
!1763 = !DILocation(line: 1301, column: 9, scope: !395)
!1764 = !DILocation(line: 1301, column: 163, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1760, file: !367, discriminator: 1)
!1766 = !DILocation(line: 1301, column: 163, scope: !1760)
!1767 = !DILocation(line: 1302, column: 33, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1302, column: 9)
!1769 = !DILocation(line: 1302, column: 9, scope: !1768)
!1770 = !DILocation(line: 1302, column: 171, scope: !1768)
!1771 = !DILocation(line: 1302, column: 9, scope: !395)
!1772 = !DILocation(line: 1302, column: 178, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1768, file: !367, discriminator: 1)
!1774 = !DILocation(line: 1302, column: 178, scope: !1768)
!1775 = !DILocation(line: 1303, column: 33, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1303, column: 9)
!1777 = !DILocation(line: 1303, column: 9, scope: !1776)
!1778 = !DILocation(line: 1303, column: 168, scope: !1776)
!1779 = !DILocation(line: 1303, column: 9, scope: !395)
!1780 = !DILocation(line: 1303, column: 175, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1776, file: !367, discriminator: 1)
!1782 = !DILocation(line: 1303, column: 175, scope: !1776)
!1783 = !DILocation(line: 1304, column: 33, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1304, column: 9)
!1785 = !DILocation(line: 1304, column: 9, scope: !1784)
!1786 = !DILocation(line: 1304, column: 171, scope: !1784)
!1787 = !DILocation(line: 1304, column: 9, scope: !395)
!1788 = !DILocation(line: 1304, column: 178, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1784, file: !367, discriminator: 1)
!1790 = !DILocation(line: 1304, column: 178, scope: !1784)
!1791 = !DILocation(line: 1305, column: 33, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1305, column: 9)
!1793 = !DILocation(line: 1305, column: 9, scope: !1792)
!1794 = !DILocation(line: 1305, column: 153, scope: !1792)
!1795 = !DILocation(line: 1305, column: 9, scope: !395)
!1796 = !DILocation(line: 1305, column: 160, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1792, file: !367, discriminator: 1)
!1798 = !DILocation(line: 1305, column: 160, scope: !1792)
!1799 = !DILocation(line: 1306, column: 33, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1306, column: 9)
!1801 = !DILocation(line: 1306, column: 9, scope: !1800)
!1802 = !DILocation(line: 1306, column: 152, scope: !1800)
!1803 = !DILocation(line: 1306, column: 9, scope: !395)
!1804 = !DILocation(line: 1306, column: 159, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1800, file: !367, discriminator: 1)
!1806 = !DILocation(line: 1306, column: 159, scope: !1800)
!1807 = !DILocation(line: 1307, column: 33, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1307, column: 9)
!1809 = !DILocation(line: 1307, column: 9, scope: !1808)
!1810 = !DILocation(line: 1307, column: 170, scope: !1808)
!1811 = !DILocation(line: 1307, column: 9, scope: !395)
!1812 = !DILocation(line: 1307, column: 177, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1808, file: !367, discriminator: 1)
!1814 = !DILocation(line: 1307, column: 177, scope: !1808)
!1815 = !DILocation(line: 1308, column: 33, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !395, file: !367, line: 1308, column: 9)
!1817 = !DILocation(line: 1308, column: 9, scope: !1816)
!1818 = !DILocation(line: 1308, column: 173, scope: !1816)
!1819 = !DILocation(line: 1308, column: 9, scope: !395)
!1820 = !DILocation(line: 1308, column: 180, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1816, file: !367, discriminator: 1)
!1822 = !DILocation(line: 1308, column: 180, scope: !1816)
!1823 = !DILocation(line: 1309, column: 12, scope: !395)
!1824 = !DILocation(line: 1309, column: 5, scope: !395)
!1825 = !DILocation(line: 1310, column: 1, scope: !395)
!1826 = !DILocation(line: 1055, column: 28, scope: !792)
!1827 = !DILocation(line: 1057, column: 5, scope: !792)
!1828 = !DILocation(line: 1057, column: 15, scope: !792)
!1829 = !DILocation(line: 1058, column: 5, scope: !792)
!1830 = !DILocation(line: 1058, column: 15, scope: !792)
!1831 = !DILocation(line: 1059, column: 5, scope: !792)
!1832 = !DILocation(line: 1059, column: 15, scope: !792)
!1833 = !DILocation(line: 1060, column: 5, scope: !792)
!1834 = !DILocation(line: 1060, column: 9, scope: !792)
!1835 = !DILocation(line: 1061, column: 5, scope: !792)
!1836 = !DILocation(line: 1061, column: 9, scope: !792)
!1837 = !DILocation(line: 1063, column: 18, scope: !792)
!1838 = !{!1839, !1839, i64 0}
!1839 = !{!"int", !884, i64 0}
!1840 = !DILocation(line: 1066, column: 25, scope: !792)
!1841 = !DILocation(line: 1066, column: 14, scope: !792)
!1842 = !DILocation(line: 1066, column: 12, scope: !792)
!1843 = !DILocation(line: 1067, column: 24, scope: !792)
!1844 = !DILocation(line: 1067, column: 13, scope: !792)
!1845 = !DILocation(line: 1067, column: 11, scope: !792)
!1846 = !DILocation(line: 1068, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !792, file: !367, line: 1068, column: 9)
!1848 = !DILocation(line: 1068, column: 16, scope: !1847)
!1849 = !DILocation(line: 1068, column: 30, scope: !1847)
!1850 = !DILocation(line: 1068, column: 33, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1847, file: !367, discriminator: 1)
!1852 = !DILocation(line: 1068, column: 39, scope: !1847)
!1853 = !DILocation(line: 1068, column: 9, scope: !792)
!1854 = !DILocation(line: 1069, column: 9, scope: !1847)
!1855 = !DILocation(line: 1070, column: 12, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !792, file: !367, line: 1070, column: 5)
!1857 = !DILocation(line: 1070, column: 10, scope: !1856)
!1858 = !DILocation(line: 1070, column: 17, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1860, file: !367, discriminator: 2)
!1860 = !DILexicalBlockFile(scope: !1861, file: !367, discriminator: 1)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !367, line: 1070, column: 5)
!1862 = !DILocation(line: 1070, column: 21, scope: !1861)
!1863 = !DILocation(line: 1070, column: 19, scope: !1861)
!1864 = !DILocation(line: 1070, column: 5, scope: !1856)
!1865 = !DILocation(line: 1071, column: 49, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1861, file: !367, line: 1070, column: 40)
!1867 = !DILocation(line: 1071, column: 34, scope: !1866)
!1868 = !DILocation(line: 1071, column: 13, scope: !1866)
!1869 = !DILocation(line: 1071, column: 11, scope: !1866)
!1870 = !DILocation(line: 1072, column: 13, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !367, line: 1072, column: 13)
!1872 = !DILocation(line: 1072, column: 15, scope: !1871)
!1873 = !DILocation(line: 1072, column: 13, scope: !1866)
!1874 = !DILocation(line: 1073, column: 13, scope: !1871)
!1875 = !DILocation(line: 1074, column: 52, scope: !1866)
!1876 = !DILocation(line: 1074, column: 46, scope: !1866)
!1877 = !DILocation(line: 1074, column: 10, scope: !1866)
!1878 = !DILocation(line: 1074, column: 28, scope: !1866)
!1879 = !DILocation(line: 1074, column: 11, scope: !1866)
!1880 = !DILocation(line: 1074, column: 38, scope: !1866)
!1881 = !{!1882, !883, i64 24}
!1882 = !{!"", !1883, i64 0, !883, i64 24, !902, i64 32}
!1883 = !{!"", !901, i64 0, !902, i64 16}
!1884 = !DILocation(line: 1074, column: 49, scope: !1866)
!1885 = !DILocation(line: 1076, column: 48, scope: !1866)
!1886 = !DILocation(line: 1076, column: 34, scope: !1866)
!1887 = !DILocation(line: 1076, column: 13, scope: !1866)
!1888 = !DILocation(line: 1076, column: 11, scope: !1866)
!1889 = !DILocation(line: 1077, column: 13, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1866, file: !367, line: 1077, column: 13)
!1891 = !DILocation(line: 1077, column: 15, scope: !1890)
!1892 = !DILocation(line: 1077, column: 13, scope: !1866)
!1893 = !DILocation(line: 1078, column: 13, scope: !1890)
!1894 = !DILocation(line: 1079, column: 51, scope: !1866)
!1895 = !DILocation(line: 1079, column: 45, scope: !1866)
!1896 = !DILocation(line: 1079, column: 10, scope: !1866)
!1897 = !DILocation(line: 1079, column: 28, scope: !1866)
!1898 = !DILocation(line: 1079, column: 11, scope: !1866)
!1899 = !DILocation(line: 1079, column: 37, scope: !1866)
!1900 = !DILocation(line: 1079, column: 48, scope: !1866)
!1901 = !DILocation(line: 1080, column: 5, scope: !1866)
!1902 = !DILocation(line: 1070, column: 36, scope: !1861)
!1903 = !DILocation(line: 1070, column: 5, scope: !1861)
!1904 = !DILocation(line: 1082, column: 28, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !792, file: !367, line: 1082, column: 9)
!1906 = !DILocation(line: 1082, column: 54, scope: !1905)
!1907 = !DILocation(line: 1082, column: 9, scope: !1905)
!1908 = !DILocation(line: 1082, column: 62, scope: !1905)
!1909 = !DILocation(line: 1082, column: 9, scope: !792)
!1910 = !DILocation(line: 1083, column: 9, scope: !1905)
!1911 = !DILocation(line: 1084, column: 28, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !792, file: !367, line: 1084, column: 9)
!1913 = !DILocation(line: 1084, column: 53, scope: !1912)
!1914 = !DILocation(line: 1084, column: 9, scope: !1912)
!1915 = !DILocation(line: 1084, column: 60, scope: !1912)
!1916 = !DILocation(line: 1084, column: 9, scope: !792)
!1917 = !DILocation(line: 1085, column: 9, scope: !1912)
!1918 = !DILocation(line: 1087, column: 5, scope: !792)
!1919 = !DILocation(line: 1090, column: 5, scope: !792)
!1920 = !DILocation(line: 1090, column: 10, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !801, file: !367, discriminator: 1)
!1922 = !DILocation(line: 1090, column: 20, scope: !801)
!1923 = !DILocation(line: 1090, column: 51, scope: !801)
!1924 = !DILocation(line: 1090, column: 64, scope: !804)
!1925 = !DILocation(line: 1090, column: 80, scope: !804)
!1926 = !DILocation(line: 1090, column: 64, scope: !801)
!1927 = !DILocation(line: 1090, column: 95, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !804, file: !367, discriminator: 2)
!1929 = !DILocation(line: 1090, column: 100, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !803, file: !367, discriminator: 4)
!1931 = !DILocation(line: 1090, column: 110, scope: !803)
!1932 = !DILocation(line: 1090, column: 140, scope: !803)
!1933 = !DILocation(line: 1090, column: 166, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !803, file: !367, line: 1090, column: 163)
!1935 = !DILocation(line: 1090, column: 183, scope: !1934)
!1936 = !DILocation(line: 1090, column: 163, scope: !1934)
!1937 = !DILocation(line: 1090, column: 193, scope: !1934)
!1938 = !DILocation(line: 1090, column: 163, scope: !803)
!1939 = !DILocation(line: 1090, column: 163, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !803, file: !367, discriminator: 5)
!1941 = !DILocation(line: 1090, column: 224, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1934, file: !367, discriminator: 6)
!1943 = !DILocation(line: 1090, column: 242, scope: !1934)
!1944 = !{!901, !883, i64 8}
!1945 = !DILocation(line: 1090, column: 252, scope: !1934)
!1946 = !{!1947, !883, i64 48}
!1947 = !{!"_typeobject", !1883, i64 0, !883, i64 24, !902, i64 32, !902, i64 40, !883, i64 48, !883, i64 56, !883, i64 64, !883, i64 72, !883, i64 80, !883, i64 88, !883, i64 96, !883, i64 104, !883, i64 112, !883, i64 120, !883, i64 128, !883, i64 136, !883, i64 144, !883, i64 152, !883, i64 160, !902, i64 168, !883, i64 176, !883, i64 184, !883, i64 192, !883, i64 200, !902, i64 208, !883, i64 216, !883, i64 224, !883, i64 232, !883, i64 240, !883, i64 248, !883, i64 256, !883, i64 264, !883, i64 272, !883, i64 280, !902, i64 288, !883, i64 296, !883, i64 304, !883, i64 312, !883, i64 320, !883, i64 328, !883, i64 336, !883, i64 344, !883, i64 352, !883, i64 360, !883, i64 368, !883, i64 376, !1839, i64 384, !883, i64 392}
!1948 = !DILocation(line: 1090, column: 277, scope: !1934)
!1949 = !DILocation(line: 1090, column: 208, scope: !1934)
!1950 = !DILocation(line: 1090, column: 296, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !804, file: !367, discriminator: 7)
!1952 = !DILocation(line: 1090, column: 296, scope: !803)
!1953 = !DILocation(line: 1090, column: 296, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !803, file: !367, discriminator: 8)
!1955 = !DILocation(line: 1090, column: 296, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !803, file: !367, discriminator: 9)
!1957 = !DILocation(line: 1090, column: 309, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1959, file: !367, discriminator: 10)
!1959 = !DILexicalBlockFile(scope: !792, file: !367, discriminator: 3)
!1960 = !DILocation(line: 1090, column: 309, scope: !801)
!1961 = !DILocation(line: 1090, column: 309, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !801, file: !367, discriminator: 11)
!1963 = !DILocation(line: 1090, column: 309, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !801, file: !367, discriminator: 12)
!1965 = !DILocation(line: 1092, column: 5, scope: !792)
!1966 = !DILocation(line: 1092, column: 10, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !806, file: !367, discriminator: 1)
!1968 = !DILocation(line: 1092, column: 20, scope: !806)
!1969 = !DILocation(line: 1092, column: 51, scope: !806)
!1970 = !DILocation(line: 1092, column: 63, scope: !809)
!1971 = !DILocation(line: 1092, column: 79, scope: !809)
!1972 = !DILocation(line: 1092, column: 63, scope: !806)
!1973 = !DILocation(line: 1092, column: 94, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !809, file: !367, discriminator: 2)
!1975 = !DILocation(line: 1092, column: 99, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !808, file: !367, discriminator: 4)
!1977 = !DILocation(line: 1092, column: 109, scope: !808)
!1978 = !DILocation(line: 1092, column: 139, scope: !808)
!1979 = !DILocation(line: 1092, column: 165, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !808, file: !367, line: 1092, column: 162)
!1981 = !DILocation(line: 1092, column: 182, scope: !1980)
!1982 = !DILocation(line: 1092, column: 162, scope: !1980)
!1983 = !DILocation(line: 1092, column: 192, scope: !1980)
!1984 = !DILocation(line: 1092, column: 162, scope: !808)
!1985 = !DILocation(line: 1092, column: 162, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !808, file: !367, discriminator: 5)
!1987 = !DILocation(line: 1092, column: 223, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1980, file: !367, discriminator: 6)
!1989 = !DILocation(line: 1092, column: 241, scope: !1980)
!1990 = !DILocation(line: 1092, column: 251, scope: !1980)
!1991 = !DILocation(line: 1092, column: 276, scope: !1980)
!1992 = !DILocation(line: 1092, column: 207, scope: !1980)
!1993 = !DILocation(line: 1092, column: 295, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !809, file: !367, discriminator: 7)
!1995 = !DILocation(line: 1092, column: 295, scope: !808)
!1996 = !DILocation(line: 1092, column: 295, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !808, file: !367, discriminator: 8)
!1998 = !DILocation(line: 1092, column: 295, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !808, file: !367, discriminator: 9)
!2000 = !DILocation(line: 1092, column: 308, scope: !1958)
!2001 = !DILocation(line: 1092, column: 308, scope: !806)
!2002 = !DILocation(line: 1092, column: 308, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !806, file: !367, discriminator: 11)
!2004 = !DILocation(line: 1093, column: 5, scope: !792)
!2005 = !DILocation(line: 1094, column: 1, scope: !792)
!2006 = !DILocation(line: 152, column: 26, scope: !400)
!2007 = !DILocation(line: 155, column: 9, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !400, file: !367, line: 155, column: 9)
!2009 = !DILocation(line: 155, column: 15, scope: !2008)
!2010 = !{!2011, !1839, i64 24}
!2011 = !{!"", !901, i64 0, !883, i64 16, !1839, i64 24, !1839, i64 28, !1839, i64 32, !1839, i64 36, !1839, i64 40}
!2012 = !DILocation(line: 155, column: 18, scope: !2008)
!2013 = !DILocation(line: 155, column: 9, scope: !400)
!2014 = !DILocation(line: 156, column: 15, scope: !2008)
!2015 = !DILocation(line: 156, column: 21, scope: !2008)
!2016 = !DILocation(line: 156, column: 9, scope: !2008)
!2017 = !DILocation(line: 157, column: 19, scope: !400)
!2018 = !DILocation(line: 157, column: 5, scope: !400)
!2019 = !DILocation(line: 158, column: 1, scope: !400)
!2020 = !DILocation(line: 926, column: 27, scope: !405)
!2021 = !DILocation(line: 926, column: 43, scope: !405)
!2022 = !DILocation(line: 928, column: 5, scope: !405)
!2023 = !DILocation(line: 928, column: 11, scope: !405)
!2024 = !DILocation(line: 929, column: 5, scope: !405)
!2025 = !DILocation(line: 929, column: 16, scope: !405)
!2026 = !DILocation(line: 931, column: 26, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !405, file: !367, line: 931, column: 9)
!2028 = !DILocation(line: 931, column: 37, scope: !2027)
!2029 = !DILocation(line: 931, column: 48, scope: !2027)
!2030 = !{!1947, !902, i64 168}
!2031 = !DILocation(line: 931, column: 57, scope: !2027)
!2032 = !DILocation(line: 931, column: 74, scope: !2027)
!2033 = !DILocation(line: 931, column: 9, scope: !405)
!2034 = !DILocation(line: 932, column: 33, scope: !2027)
!2035 = !DILocation(line: 932, column: 16, scope: !2027)
!2036 = !DILocation(line: 932, column: 14, scope: !2027)
!2037 = !DILocation(line: 932, column: 9, scope: !2027)
!2038 = !DILocation(line: 934, column: 26, scope: !414)
!2039 = !DILocation(line: 934, column: 33, scope: !414)
!2040 = !DILocation(line: 934, column: 43, scope: !414)
!2041 = !DILocation(line: 934, column: 1376, scope: !414)
!2042 = !DILocation(line: 934, column: 1389, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !414, file: !367, discriminator: 1)
!2044 = !{!902, !902, i64 0}
!2045 = !DILocation(line: 934, column: 1410, scope: !414)
!2046 = !DILocation(line: 934, column: 1419, scope: !414)
!2047 = !DILocation(line: 934, column: 1260, scope: !414)
!2048 = !DILocation(line: 934, column: 1587, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !418, file: !367, discriminator: 3)
!2050 = !DILocation(line: 934, column: 1608, scope: !418)
!2051 = !DILocation(line: 934, column: 1655, scope: !418)
!2052 = !DILocation(line: 934, column: 1662, scope: !418)
!2053 = !DILocation(line: 934, column: 1675, scope: !418)
!2054 = !DILocation(line: 934, column: 1686, scope: !418)
!2055 = !{!884, !884, i64 0}
!2056 = !DILocation(line: 934, column: 1696, scope: !418)
!2057 = !DILocation(line: 934, column: 1694, scope: !418)
!2058 = !DILocation(line: 934, column: 1756, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !418, file: !367, line: 934, column: 1756)
!2060 = !DILocation(line: 934, column: 1765, scope: !2059)
!2061 = !DILocation(line: 934, column: 1769, scope: !2059)
!2062 = !DILocation(line: 934, column: 1772, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2059, file: !367, discriminator: 5)
!2064 = !DILocation(line: 934, column: 1781, scope: !2059)
!2065 = !DILocation(line: 934, column: 1756, scope: !418)
!2066 = !DILocation(line: 934, column: 1801, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2068, file: !367, discriminator: 7)
!2068 = distinct !DILexicalBlock(scope: !2059, file: !367, line: 934, column: 1787)
!2069 = !DILocation(line: 934, column: 1811, scope: !2068)
!2070 = !DILocation(line: 934, column: 1809, scope: !2068)
!2071 = !DILocation(line: 934, column: 1798, scope: !2068)
!2072 = !DILocation(line: 934, column: 1872, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !367, line: 934, column: 1872)
!2074 = !DILocation(line: 934, column: 1881, scope: !2073)
!2075 = !DILocation(line: 934, column: 1885, scope: !2073)
!2076 = !DILocation(line: 934, column: 1888, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2073, file: !367, discriminator: 9)
!2078 = !DILocation(line: 934, column: 1897, scope: !2073)
!2079 = !DILocation(line: 934, column: 1872, scope: !2068)
!2080 = !DILocation(line: 934, column: 1917, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2082, file: !367, discriminator: 11)
!2082 = distinct !DILexicalBlock(scope: !2073, file: !367, line: 934, column: 1903)
!2083 = !DILocation(line: 934, column: 1927, scope: !2082)
!2084 = !DILocation(line: 934, column: 1925, scope: !2082)
!2085 = !DILocation(line: 934, column: 1914, scope: !2082)
!2086 = !DILocation(line: 934, column: 1988, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !367, line: 934, column: 1988)
!2088 = !DILocation(line: 934, column: 1997, scope: !2087)
!2089 = !DILocation(line: 934, column: 2001, scope: !2087)
!2090 = !DILocation(line: 934, column: 2004, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2087, file: !367, discriminator: 13)
!2092 = !DILocation(line: 934, column: 2013, scope: !2087)
!2093 = !DILocation(line: 934, column: 1988, scope: !2082)
!2094 = !DILocation(line: 934, column: 2031, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2087, file: !367, discriminator: 15)
!2096 = !DILocation(line: 934, column: 2041, scope: !2087)
!2097 = !DILocation(line: 934, column: 2039, scope: !2087)
!2098 = !DILocation(line: 934, column: 2028, scope: !2087)
!2099 = !DILocation(line: 934, column: 2019, scope: !2087)
!2100 = !DILocation(line: 934, column: 2098, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2102, file: !367, discriminator: 17)
!2102 = !DILexicalBlockFile(scope: !2103, file: !367, discriminator: 16)
!2103 = !DILexicalBlockFile(scope: !2082, file: !367, discriminator: 14)
!2104 = !DILocation(line: 934, column: 2100, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2106, file: !367, discriminator: 18)
!2106 = !DILexicalBlockFile(scope: !2107, file: !367, discriminator: 12)
!2107 = !DILexicalBlockFile(scope: !2068, file: !367, discriminator: 10)
!2108 = !DILocation(line: 934, column: 2102, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2110, file: !367, discriminator: 19)
!2110 = !DILexicalBlockFile(scope: !2111, file: !367, discriminator: 8)
!2111 = !DILexicalBlockFile(scope: !418, file: !367, discriminator: 6)
!2112 = !DILocation(line: 934, column: 1784, scope: !2059)
!2113 = !DILocation(line: 934, column: 2112, scope: !414)
!2114 = !DILocation(line: 934, column: 2112, scope: !418)
!2115 = !DILocation(line: 934, column: 2137, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2117, file: !367, discriminator: 4)
!2117 = !DILexicalBlockFile(scope: !414, file: !367, discriminator: 2)
!2118 = !DILocation(line: 934, column: 2119, scope: !414)
!2119 = !DILocation(line: 934, column: 26, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2121, file: !367, discriminator: 21)
!2121 = !DILexicalBlockFile(scope: !414, file: !367, discriminator: 20)
!2122 = !DILocation(line: 934, column: 2157, scope: !415)
!2123 = !DILocation(line: 934, column: 2157, scope: !414)
!2124 = !DILocation(line: 934, column: 2160, scope: !415)
!2125 = !DILocation(line: 934, column: 9, scope: !405)
!2126 = !DILocation(line: 935, column: 17, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !415, file: !367, line: 934, column: 2166)
!2128 = !DILocation(line: 935, column: 23, scope: !2127)
!2129 = !DILocation(line: 935, column: 26, scope: !2127)
!2130 = !DILocation(line: 935, column: 16, scope: !2127)
!2131 = !DILocation(line: 935, column: 14, scope: !2127)
!2132 = !DILocation(line: 936, column: 25, scope: !2127)
!2133 = !DILocation(line: 936, column: 33, scope: !2127)
!2134 = !DILocation(line: 936, column: 42, scope: !2127)
!2135 = !DILocation(line: 937, column: 5, scope: !2127)
!2136 = !DILocation(line: 938, column: 31, scope: !421)
!2137 = !DILocation(line: 938, column: 38, scope: !421)
!2138 = !DILocation(line: 938, column: 48, scope: !421)
!2139 = !DILocation(line: 938, column: 1355, scope: !421)
!2140 = !DILocation(line: 938, column: 1368, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !421, file: !367, discriminator: 1)
!2142 = !DILocation(line: 938, column: 1387, scope: !421)
!2143 = !DILocation(line: 938, column: 1396, scope: !421)
!2144 = !DILocation(line: 938, column: 1245, scope: !421)
!2145 = !DILocation(line: 938, column: 1562, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !425, file: !367, discriminator: 3)
!2147 = !DILocation(line: 938, column: 1583, scope: !425)
!2148 = !DILocation(line: 938, column: 1630, scope: !425)
!2149 = !DILocation(line: 938, column: 1637, scope: !425)
!2150 = !DILocation(line: 938, column: 1650, scope: !425)
!2151 = !DILocation(line: 938, column: 1661, scope: !425)
!2152 = !DILocation(line: 938, column: 1671, scope: !425)
!2153 = !DILocation(line: 938, column: 1669, scope: !425)
!2154 = !DILocation(line: 938, column: 1729, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !425, file: !367, line: 938, column: 1729)
!2156 = !DILocation(line: 938, column: 1738, scope: !2155)
!2157 = !DILocation(line: 938, column: 1742, scope: !2155)
!2158 = !DILocation(line: 938, column: 1745, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2155, file: !367, discriminator: 5)
!2160 = !DILocation(line: 938, column: 1754, scope: !2155)
!2161 = !DILocation(line: 938, column: 1729, scope: !425)
!2162 = !DILocation(line: 938, column: 1774, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2164, file: !367, discriminator: 7)
!2164 = distinct !DILexicalBlock(scope: !2155, file: !367, line: 938, column: 1760)
!2165 = !DILocation(line: 938, column: 1784, scope: !2164)
!2166 = !DILocation(line: 938, column: 1782, scope: !2164)
!2167 = !DILocation(line: 938, column: 1771, scope: !2164)
!2168 = !DILocation(line: 938, column: 1843, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !367, line: 938, column: 1843)
!2170 = !DILocation(line: 938, column: 1852, scope: !2169)
!2171 = !DILocation(line: 938, column: 1856, scope: !2169)
!2172 = !DILocation(line: 938, column: 1859, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2169, file: !367, discriminator: 9)
!2174 = !DILocation(line: 938, column: 1868, scope: !2169)
!2175 = !DILocation(line: 938, column: 1843, scope: !2164)
!2176 = !DILocation(line: 938, column: 1888, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2178, file: !367, discriminator: 11)
!2178 = distinct !DILexicalBlock(scope: !2169, file: !367, line: 938, column: 1874)
!2179 = !DILocation(line: 938, column: 1898, scope: !2178)
!2180 = !DILocation(line: 938, column: 1896, scope: !2178)
!2181 = !DILocation(line: 938, column: 1885, scope: !2178)
!2182 = !DILocation(line: 938, column: 1957, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !367, line: 938, column: 1957)
!2184 = !DILocation(line: 938, column: 1966, scope: !2183)
!2185 = !DILocation(line: 938, column: 1970, scope: !2183)
!2186 = !DILocation(line: 938, column: 1973, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2183, file: !367, discriminator: 13)
!2188 = !DILocation(line: 938, column: 1982, scope: !2183)
!2189 = !DILocation(line: 938, column: 1957, scope: !2178)
!2190 = !DILocation(line: 938, column: 2000, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2183, file: !367, discriminator: 15)
!2192 = !DILocation(line: 938, column: 2010, scope: !2183)
!2193 = !DILocation(line: 938, column: 2008, scope: !2183)
!2194 = !DILocation(line: 938, column: 1997, scope: !2183)
!2195 = !DILocation(line: 938, column: 1988, scope: !2183)
!2196 = !DILocation(line: 938, column: 2065, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !367, discriminator: 17)
!2198 = !DILexicalBlockFile(scope: !2199, file: !367, discriminator: 16)
!2199 = !DILexicalBlockFile(scope: !2178, file: !367, discriminator: 14)
!2200 = !DILocation(line: 938, column: 2067, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2202, file: !367, discriminator: 18)
!2202 = !DILexicalBlockFile(scope: !2203, file: !367, discriminator: 12)
!2203 = !DILexicalBlockFile(scope: !2164, file: !367, discriminator: 10)
!2204 = !DILocation(line: 938, column: 2069, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2206, file: !367, discriminator: 19)
!2206 = !DILexicalBlockFile(scope: !2207, file: !367, discriminator: 8)
!2207 = !DILexicalBlockFile(scope: !425, file: !367, discriminator: 6)
!2208 = !DILocation(line: 938, column: 1757, scope: !2155)
!2209 = !DILocation(line: 938, column: 2079, scope: !421)
!2210 = !DILocation(line: 938, column: 2079, scope: !425)
!2211 = !DILocation(line: 938, column: 2104, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2213, file: !367, discriminator: 4)
!2213 = !DILexicalBlockFile(scope: !421, file: !367, discriminator: 2)
!2214 = !DILocation(line: 938, column: 2086, scope: !421)
!2215 = !DILocation(line: 938, column: 31, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !367, discriminator: 21)
!2217 = !DILexicalBlockFile(scope: !421, file: !367, discriminator: 20)
!2218 = !DILocation(line: 938, column: 2122, scope: !422)
!2219 = !DILocation(line: 938, column: 2122, scope: !421)
!2220 = !DILocation(line: 938, column: 2125, scope: !422)
!2221 = !DILocation(line: 938, column: 14, scope: !415)
!2222 = !DILocation(line: 939, column: 37, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !422, file: !367, line: 938, column: 2131)
!2224 = !DILocation(line: 939, column: 43, scope: !2223)
!2225 = !{!2011, !883, i64 16}
!2226 = !DILocation(line: 939, column: 16, scope: !2223)
!2227 = !DILocation(line: 939, column: 14, scope: !2223)
!2228 = !DILocation(line: 940, column: 5, scope: !2223)
!2229 = !DILocation(line: 941, column: 31, scope: !428)
!2230 = !DILocation(line: 941, column: 38, scope: !428)
!2231 = !DILocation(line: 941, column: 48, scope: !428)
!2232 = !DILocation(line: 941, column: 1355, scope: !428)
!2233 = !DILocation(line: 941, column: 1368, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !428, file: !367, discriminator: 1)
!2235 = !DILocation(line: 941, column: 1387, scope: !428)
!2236 = !DILocation(line: 941, column: 1396, scope: !428)
!2237 = !DILocation(line: 941, column: 1245, scope: !428)
!2238 = !DILocation(line: 941, column: 1562, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !432, file: !367, discriminator: 3)
!2240 = !DILocation(line: 941, column: 1583, scope: !432)
!2241 = !DILocation(line: 941, column: 1630, scope: !432)
!2242 = !DILocation(line: 941, column: 1637, scope: !432)
!2243 = !DILocation(line: 941, column: 1650, scope: !432)
!2244 = !DILocation(line: 941, column: 1661, scope: !432)
!2245 = !DILocation(line: 941, column: 1671, scope: !432)
!2246 = !DILocation(line: 941, column: 1669, scope: !432)
!2247 = !DILocation(line: 941, column: 1729, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !432, file: !367, line: 941, column: 1729)
!2249 = !DILocation(line: 941, column: 1738, scope: !2248)
!2250 = !DILocation(line: 941, column: 1742, scope: !2248)
!2251 = !DILocation(line: 941, column: 1745, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2248, file: !367, discriminator: 5)
!2253 = !DILocation(line: 941, column: 1754, scope: !2248)
!2254 = !DILocation(line: 941, column: 1729, scope: !432)
!2255 = !DILocation(line: 941, column: 1774, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2257, file: !367, discriminator: 7)
!2257 = distinct !DILexicalBlock(scope: !2248, file: !367, line: 941, column: 1760)
!2258 = !DILocation(line: 941, column: 1784, scope: !2257)
!2259 = !DILocation(line: 941, column: 1782, scope: !2257)
!2260 = !DILocation(line: 941, column: 1771, scope: !2257)
!2261 = !DILocation(line: 941, column: 1843, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !367, line: 941, column: 1843)
!2263 = !DILocation(line: 941, column: 1852, scope: !2262)
!2264 = !DILocation(line: 941, column: 1856, scope: !2262)
!2265 = !DILocation(line: 941, column: 1859, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2262, file: !367, discriminator: 9)
!2267 = !DILocation(line: 941, column: 1868, scope: !2262)
!2268 = !DILocation(line: 941, column: 1843, scope: !2257)
!2269 = !DILocation(line: 941, column: 1888, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2271, file: !367, discriminator: 11)
!2271 = distinct !DILexicalBlock(scope: !2262, file: !367, line: 941, column: 1874)
!2272 = !DILocation(line: 941, column: 1898, scope: !2271)
!2273 = !DILocation(line: 941, column: 1896, scope: !2271)
!2274 = !DILocation(line: 941, column: 1885, scope: !2271)
!2275 = !DILocation(line: 941, column: 1957, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2271, file: !367, line: 941, column: 1957)
!2277 = !DILocation(line: 941, column: 1966, scope: !2276)
!2278 = !DILocation(line: 941, column: 1970, scope: !2276)
!2279 = !DILocation(line: 941, column: 1973, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2276, file: !367, discriminator: 13)
!2281 = !DILocation(line: 941, column: 1982, scope: !2276)
!2282 = !DILocation(line: 941, column: 1957, scope: !2271)
!2283 = !DILocation(line: 941, column: 2000, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2276, file: !367, discriminator: 15)
!2285 = !DILocation(line: 941, column: 2010, scope: !2276)
!2286 = !DILocation(line: 941, column: 2008, scope: !2276)
!2287 = !DILocation(line: 941, column: 1997, scope: !2276)
!2288 = !DILocation(line: 941, column: 1988, scope: !2276)
!2289 = !DILocation(line: 941, column: 2065, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2291, file: !367, discriminator: 17)
!2291 = !DILexicalBlockFile(scope: !2292, file: !367, discriminator: 16)
!2292 = !DILexicalBlockFile(scope: !2271, file: !367, discriminator: 14)
!2293 = !DILocation(line: 941, column: 2067, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2295, file: !367, discriminator: 18)
!2295 = !DILexicalBlockFile(scope: !2296, file: !367, discriminator: 12)
!2296 = !DILexicalBlockFile(scope: !2257, file: !367, discriminator: 10)
!2297 = !DILocation(line: 941, column: 2069, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2299, file: !367, discriminator: 19)
!2299 = !DILexicalBlockFile(scope: !2300, file: !367, discriminator: 8)
!2300 = !DILexicalBlockFile(scope: !432, file: !367, discriminator: 6)
!2301 = !DILocation(line: 941, column: 1757, scope: !2248)
!2302 = !DILocation(line: 941, column: 2079, scope: !428)
!2303 = !DILocation(line: 941, column: 2079, scope: !432)
!2304 = !DILocation(line: 941, column: 2104, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2306, file: !367, discriminator: 4)
!2306 = !DILexicalBlockFile(scope: !428, file: !367, discriminator: 2)
!2307 = !DILocation(line: 941, column: 2086, scope: !428)
!2308 = !DILocation(line: 941, column: 31, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2310, file: !367, discriminator: 21)
!2310 = !DILexicalBlockFile(scope: !428, file: !367, discriminator: 20)
!2311 = !DILocation(line: 941, column: 2122, scope: !429)
!2312 = !DILocation(line: 941, column: 2122, scope: !428)
!2313 = !DILocation(line: 941, column: 2125, scope: !429)
!2314 = !DILocation(line: 941, column: 14, scope: !422)
!2315 = !DILocation(line: 944, column: 16, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !429, file: !367, line: 941, column: 2131)
!2317 = !DILocation(line: 944, column: 22, scope: !2316)
!2318 = !{!2011, !1839, i64 28}
!2319 = !DILocation(line: 944, column: 9, scope: !2316)
!2320 = !DILocation(line: 946, column: 24, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2316, file: !367, line: 944, column: 28)
!2322 = !DILocation(line: 946, column: 22, scope: !2321)
!2323 = !DILocation(line: 947, column: 17, scope: !2321)
!2324 = !DILocation(line: 949, column: 24, scope: !2321)
!2325 = !DILocation(line: 949, column: 22, scope: !2321)
!2326 = !DILocation(line: 950, column: 17, scope: !2321)
!2327 = !DILocation(line: 952, column: 24, scope: !2321)
!2328 = !DILocation(line: 952, column: 22, scope: !2321)
!2329 = !DILocation(line: 953, column: 17, scope: !2321)
!2330 = !DILocation(line: 955, column: 5, scope: !2316)
!2331 = !DILocation(line: 957, column: 52, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !429, file: !367, line: 956, column: 10)
!2333 = !DILocation(line: 957, column: 40, scope: !2332)
!2334 = !DILocation(line: 957, column: 58, scope: !2332)
!2335 = !DILocation(line: 957, column: 16, scope: !2332)
!2336 = !DILocation(line: 957, column: 14, scope: !2332)
!2337 = !DILocation(line: 959, column: 12, scope: !405)
!2338 = !DILocation(line: 960, column: 1, scope: !405)
!2339 = !DILocation(line: 959, column: 5, scope: !405)
!2340 = !DILocation(line: 405, column: 23, scope: !434)
!2341 = !DILocation(line: 405, column: 39, scope: !434)
!2342 = !DILocation(line: 407, column: 5, scope: !434)
!2343 = !DILocation(line: 407, column: 9, scope: !434)
!2344 = !DILocation(line: 407, column: 15, scope: !434)
!2345 = !DILocation(line: 408, column: 5, scope: !434)
!2346 = !DILocation(line: 408, column: 11, scope: !434)
!2347 = !DILocation(line: 409, column: 5, scope: !434)
!2348 = !DILocation(line: 409, column: 15, scope: !434)
!2349 = !DILocation(line: 411, column: 23, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !434, file: !367, line: 411, column: 9)
!2351 = !DILocation(line: 411, column: 29, scope: !2350)
!2352 = !DILocation(line: 411, column: 10, scope: !2350)
!2353 = !DILocation(line: 411, column: 9, scope: !434)
!2354 = !DILocation(line: 412, column: 9, scope: !2350)
!2355 = !DILocation(line: 414, column: 27, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !434, file: !367, line: 414, column: 9)
!2357 = !DILocation(line: 414, column: 10, scope: !2356)
!2358 = !DILocation(line: 414, column: 9, scope: !434)
!2359 = !DILocation(line: 415, column: 9, scope: !2356)
!2360 = !DILocation(line: 416, column: 48, scope: !434)
!2361 = !DILocation(line: 416, column: 10, scope: !434)
!2362 = !DILocation(line: 416, column: 8, scope: !434)
!2363 = !DILocation(line: 417, column: 9, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !434, file: !367, line: 417, column: 9)
!2365 = !DILocation(line: 417, column: 12, scope: !2364)
!2366 = !DILocation(line: 417, column: 9, scope: !434)
!2367 = !DILocation(line: 418, column: 9, scope: !2364)
!2368 = !DILocation(line: 419, column: 45, scope: !434)
!2369 = !DILocation(line: 419, column: 27, scope: !434)
!2370 = !DILocation(line: 419, column: 51, scope: !434)
!2371 = !DILocation(line: 419, column: 25, scope: !434)
!2372 = !DILocation(line: 419, column: 8, scope: !434)
!2373 = !DILocation(line: 421, column: 7, scope: !443)
!2374 = !DILocation(line: 421, column: 22, scope: !443)
!2375 = !DILocation(line: 421, column: 37, scope: !443)
!2376 = !DILocation(line: 421, column: 35, scope: !443)
!2377 = !DILocation(line: 422, column: 18, scope: !443)
!2378 = !DILocation(line: 422, column: 24, scope: !443)
!2379 = !DILocation(line: 422, column: 28, scope: !443)
!2380 = !DILocation(line: 422, column: 32, scope: !443)
!2381 = !DILocation(line: 422, column: 13, scope: !443)
!2382 = !DILocation(line: 422, column: 11, scope: !443)
!2383 = !DILocation(line: 423, column: 26, scope: !443)
!2384 = !DILocation(line: 423, column: 5, scope: !443)
!2385 = !DILocation(line: 423, column: 34, scope: !434)
!2386 = !DILocation(line: 425, column: 9, scope: !505)
!2387 = !DILocation(line: 425, column: 15, scope: !505)
!2388 = !DILocation(line: 425, column: 9, scope: !434)
!2389 = !DILocation(line: 426, column: 28, scope: !504)
!2390 = !DILocation(line: 426, column: 9, scope: !504)
!2391 = !DILocation(line: 427, column: 9, scope: !504)
!2392 = !DILocation(line: 427, column: 14, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !503, file: !367, discriminator: 1)
!2394 = !DILocation(line: 427, column: 24, scope: !503)
!2395 = !DILocation(line: 427, column: 54, scope: !503)
!2396 = !DILocation(line: 427, column: 67, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !503, file: !367, line: 427, column: 64)
!2398 = !DILocation(line: 427, column: 84, scope: !2397)
!2399 = !DILocation(line: 427, column: 64, scope: !2397)
!2400 = !DILocation(line: 427, column: 94, scope: !2397)
!2401 = !DILocation(line: 427, column: 64, scope: !503)
!2402 = !DILocation(line: 427, column: 64, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !503, file: !367, discriminator: 2)
!2404 = !DILocation(line: 427, column: 125, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2397, file: !367, discriminator: 3)
!2406 = !DILocation(line: 427, column: 143, scope: !2397)
!2407 = !DILocation(line: 427, column: 153, scope: !2397)
!2408 = !DILocation(line: 427, column: 178, scope: !2397)
!2409 = !DILocation(line: 427, column: 109, scope: !2397)
!2410 = !DILocation(line: 427, column: 197, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !504, file: !367, discriminator: 4)
!2412 = !DILocation(line: 427, column: 197, scope: !503)
!2413 = !DILocation(line: 427, column: 197, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !503, file: !367, discriminator: 5)
!2415 = !DILocation(line: 428, column: 9, scope: !504)
!2416 = !DILocation(line: 430, column: 21, scope: !434)
!2417 = !DILocation(line: 430, column: 5, scope: !434)
!2418 = !DILocation(line: 430, column: 11, scope: !434)
!2419 = !DILocation(line: 430, column: 18, scope: !434)
!2420 = !{!2011, !1839, i64 32}
!2421 = !DILocation(line: 431, column: 26, scope: !434)
!2422 = !DILocation(line: 431, column: 5, scope: !434)
!2423 = !DILocation(line: 432, column: 12, scope: !434)
!2424 = !DILocation(line: 432, column: 5, scope: !434)
!2425 = !DILocation(line: 433, column: 1, scope: !434)
!2426 = !DILocation(line: 436, column: 24, scope: !511)
!2427 = !DILocation(line: 436, column: 40, scope: !511)
!2428 = !DILocation(line: 438, column: 5, scope: !511)
!2429 = !DILocation(line: 438, column: 11, scope: !511)
!2430 = !DILocation(line: 439, column: 5, scope: !511)
!2431 = !DILocation(line: 439, column: 9, scope: !511)
!2432 = !DILocation(line: 439, column: 13, scope: !511)
!2433 = !DILocation(line: 441, column: 23, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !511, file: !367, line: 441, column: 9)
!2435 = !DILocation(line: 441, column: 29, scope: !2434)
!2436 = !DILocation(line: 441, column: 10, scope: !2434)
!2437 = !DILocation(line: 441, column: 9, scope: !511)
!2438 = !DILocation(line: 442, column: 9, scope: !2434)
!2439 = !DILocation(line: 444, column: 27, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !511, file: !367, line: 444, column: 9)
!2441 = !DILocation(line: 444, column: 10, scope: !2440)
!2442 = !DILocation(line: 444, column: 9, scope: !511)
!2443 = !DILocation(line: 445, column: 9, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !367, line: 444, column: 58)
!2445 = !DILocation(line: 448, column: 7, scope: !519)
!2446 = !DILocation(line: 448, column: 22, scope: !519)
!2447 = !DILocation(line: 448, column: 37, scope: !519)
!2448 = !DILocation(line: 448, column: 35, scope: !519)
!2449 = !DILocation(line: 449, column: 16, scope: !519)
!2450 = !DILocation(line: 449, column: 22, scope: !519)
!2451 = !DILocation(line: 449, column: 26, scope: !519)
!2452 = !DILocation(line: 449, column: 30, scope: !519)
!2453 = !DILocation(line: 449, column: 10, scope: !519)
!2454 = !DILocation(line: 449, column: 8, scope: !519)
!2455 = !DILocation(line: 450, column: 26, scope: !519)
!2456 = !DILocation(line: 450, column: 5, scope: !519)
!2457 = !DILocation(line: 450, column: 34, scope: !511)
!2458 = !DILocation(line: 452, column: 9, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !511, file: !367, line: 452, column: 9)
!2460 = !DILocation(line: 452, column: 12, scope: !2459)
!2461 = !DILocation(line: 452, column: 9, scope: !511)
!2462 = !DILocation(line: 453, column: 35, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !367, line: 452, column: 19)
!2464 = !DILocation(line: 453, column: 16, scope: !2463)
!2465 = !DILocation(line: 453, column: 9, scope: !2463)
!2466 = !DILocation(line: 455, column: 25, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2459, file: !367, line: 454, column: 12)
!2468 = !DILocation(line: 455, column: 9, scope: !2467)
!2469 = !DILocation(line: 455, column: 15, scope: !2467)
!2470 = !DILocation(line: 455, column: 22, scope: !2467)
!2471 = !{!2011, !1839, i64 36}
!2472 = !DILocation(line: 457, column: 28, scope: !511)
!2473 = !DILocation(line: 457, column: 12, scope: !511)
!2474 = !DILocation(line: 457, column: 5, scope: !511)
!2475 = !DILocation(line: 458, column: 1, scope: !511)
!2476 = !DILocation(line: 461, column: 27, scope: !520)
!2477 = !DILocation(line: 461, column: 43, scope: !520)
!2478 = !DILocation(line: 463, column: 5, scope: !520)
!2479 = !DILocation(line: 463, column: 11, scope: !520)
!2480 = !DILocation(line: 464, column: 5, scope: !520)
!2481 = !DILocation(line: 464, column: 9, scope: !520)
!2482 = !DILocation(line: 464, column: 13, scope: !520)
!2483 = !DILocation(line: 465, column: 5, scope: !520)
!2484 = !DILocation(line: 465, column: 12, scope: !520)
!2485 = !DILocation(line: 466, column: 5, scope: !520)
!2486 = !DILocation(line: 466, column: 9, scope: !520)
!2487 = !DILocation(line: 475, column: 23, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !520, file: !367, line: 475, column: 9)
!2489 = !DILocation(line: 475, column: 29, scope: !2488)
!2490 = !DILocation(line: 475, column: 10, scope: !2488)
!2491 = !DILocation(line: 475, column: 9, scope: !520)
!2492 = !DILocation(line: 476, column: 9, scope: !2488)
!2493 = !DILocation(line: 478, column: 27, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !520, file: !367, line: 478, column: 9)
!2495 = !DILocation(line: 478, column: 10, scope: !2494)
!2496 = !DILocation(line: 478, column: 9, scope: !520)
!2497 = !DILocation(line: 479, column: 9, scope: !2494)
!2498 = !DILocation(line: 481, column: 13, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !520, file: !367, line: 481, column: 9)
!2500 = !DILocation(line: 481, column: 19, scope: !2499)
!2501 = !DILocation(line: 481, column: 23, scope: !2499)
!2502 = !DILocation(line: 481, column: 29, scope: !2499)
!2503 = !DILocation(line: 481, column: 34, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2499, file: !367, discriminator: 1)
!2505 = !DILocation(line: 481, column: 40, scope: !2499)
!2506 = !DILocation(line: 481, column: 44, scope: !2499)
!2507 = !DILocation(line: 481, column: 9, scope: !520)
!2508 = !DILocation(line: 482, column: 25, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2499, file: !367, line: 481, column: 54)
!2510 = !DILocation(line: 482, column: 9, scope: !2509)
!2511 = !DILocation(line: 484, column: 9, scope: !2509)
!2512 = !DILocation(line: 487, column: 5, scope: !520)
!2513 = !DILocation(line: 487, column: 10, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !537, file: !367, discriminator: 1)
!2515 = !DILocation(line: 487, column: 14, scope: !537)
!2516 = !DILocation(line: 487, column: 10, scope: !537)
!2517 = !DILocation(line: 487, column: 20, scope: !537)
!2518 = !DILocation(line: 487, column: 176, scope: !537)
!2519 = !DILocation(line: 487, column: 157, scope: !537)
!2520 = !DILocation(line: 487, column: 26, scope: !537)
!2521 = !{i32 306174}
!2522 = !DILocation(line: 487, column: 203, scope: !520)
!2523 = !DILocation(line: 487, column: 203, scope: !537)
!2524 = !DILocation(line: 487, column: 203, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !537, file: !367, discriminator: 2)
!2526 = !DILocation(line: 488, column: 113, scope: !520)
!2527 = !DILocation(line: 488, column: 119, scope: !520)
!2528 = !DILocation(line: 488, column: 123, scope: !520)
!2529 = !DILocation(line: 488, column: 108, scope: !520)
!2530 = !DILocation(line: 488, column: 45, scope: !520)
!2531 = !DILocation(line: 488, column: 51, scope: !520)
!2532 = !DILocation(line: 488, column: 55, scope: !520)
!2533 = !DILocation(line: 488, column: 14, scope: !520)
!2534 = !DILocation(line: 488, column: 33, scope: !520)
!2535 = !DILocation(line: 488, column: 90, scope: !520)
!2536 = !DILocation(line: 490, column: 5, scope: !520)
!2537 = !DILocation(line: 490, column: 12, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2539, file: !367, discriminator: 2)
!2539 = !DILexicalBlockFile(scope: !520, file: !367, discriminator: 1)
!2540 = !DILocation(line: 490, column: 17, scope: !520)
!2541 = !DILocation(line: 491, column: 11, scope: !540)
!2542 = !DILocation(line: 491, column: 26, scope: !540)
!2543 = !DILocation(line: 491, column: 41, scope: !540)
!2544 = !DILocation(line: 491, column: 39, scope: !540)
!2545 = !DILocation(line: 492, column: 28, scope: !540)
!2546 = !DILocation(line: 492, column: 34, scope: !540)
!2547 = !DILocation(line: 492, column: 36, scope: !540)
!2548 = !DILocation(line: 492, column: 21, scope: !540)
!2549 = !DILocation(line: 492, column: 19, scope: !540)
!2550 = !DILocation(line: 493, column: 30, scope: !540)
!2551 = !DILocation(line: 493, column: 9, scope: !540)
!2552 = !DILocation(line: 493, column: 38, scope: !541)
!2553 = !DILocation(line: 495, column: 13, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !541, file: !367, line: 495, column: 13)
!2555 = !DILocation(line: 495, column: 23, scope: !2554)
!2556 = !DILocation(line: 495, column: 13, scope: !541)
!2557 = !DILocation(line: 496, column: 39, scope: !2554)
!2558 = !DILocation(line: 496, column: 20, scope: !2554)
!2559 = !DILocation(line: 496, column: 13, scope: !2554)
!2560 = !DILocation(line: 498, column: 11, scope: !543)
!2561 = !DILocation(line: 498, column: 26, scope: !543)
!2562 = !DILocation(line: 498, column: 41, scope: !543)
!2563 = !DILocation(line: 498, column: 39, scope: !543)
!2564 = !DILocation(line: 499, column: 20, scope: !543)
!2565 = !DILocation(line: 499, column: 26, scope: !543)
!2566 = !DILocation(line: 499, column: 30, scope: !543)
!2567 = !DILocation(line: 499, column: 34, scope: !543)
!2568 = !DILocation(line: 499, column: 14, scope: !543)
!2569 = !DILocation(line: 499, column: 12, scope: !543)
!2570 = !DILocation(line: 500, column: 30, scope: !543)
!2571 = !DILocation(line: 500, column: 9, scope: !543)
!2572 = !DILocation(line: 500, column: 38, scope: !541)
!2573 = !DILocation(line: 501, column: 13, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !541, file: !367, line: 501, column: 13)
!2575 = !DILocation(line: 501, column: 16, scope: !2574)
!2576 = !DILocation(line: 501, column: 13, scope: !541)
!2577 = !DILocation(line: 502, column: 19, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !367, line: 502, column: 17)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !367, line: 501, column: 23)
!2580 = !DILocation(line: 502, column: 18, scope: !2578)
!2581 = !DILocation(line: 502, column: 40, scope: !2578)
!2582 = !DILocation(line: 502, column: 17, scope: !2579)
!2583 = !DILocation(line: 503, column: 19, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2578, file: !367, line: 502, column: 47)
!2585 = !DILocation(line: 503, column: 40, scope: !2584)
!2586 = !DILocation(line: 504, column: 17, scope: !2584)
!2587 = !DILocation(line: 506, column: 43, scope: !2578)
!2588 = !DILocation(line: 506, column: 24, scope: !2578)
!2589 = !DILocation(line: 506, column: 17, scope: !2578)
!2590 = !DILocation(line: 508, column: 29, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2574, file: !367, line: 507, column: 16)
!2592 = !DILocation(line: 508, column: 13, scope: !2591)
!2593 = !DILocation(line: 508, column: 19, scope: !2591)
!2594 = !DILocation(line: 508, column: 26, scope: !2591)
!2595 = !DILocation(line: 509, column: 21, scope: !2591)
!2596 = !DILocation(line: 509, column: 18, scope: !2591)
!2597 = !DILocation(line: 510, column: 19, scope: !2591)
!2598 = !DILocation(line: 510, column: 16, scope: !2591)
!2599 = !DILocation(line: 513, column: 51, scope: !520)
!2600 = !DILocation(line: 514, column: 5, scope: !520)
!2601 = !DILocation(line: 515, column: 1, scope: !520)
!2602 = !DILocation(line: 518, column: 24, scope: !544)
!2603 = !DILocation(line: 518, column: 40, scope: !544)
!2604 = !DILocation(line: 520, column: 9, scope: !551)
!2605 = !DILocation(line: 520, column: 15, scope: !551)
!2606 = !DILocation(line: 520, column: 18, scope: !551)
!2607 = !DILocation(line: 520, column: 9, scope: !544)
!2608 = !DILocation(line: 521, column: 11, scope: !549)
!2609 = !DILocation(line: 521, column: 26, scope: !549)
!2610 = !DILocation(line: 521, column: 41, scope: !549)
!2611 = !DILocation(line: 521, column: 39, scope: !549)
!2612 = !DILocation(line: 522, column: 15, scope: !549)
!2613 = !DILocation(line: 522, column: 21, scope: !549)
!2614 = !DILocation(line: 522, column: 9, scope: !549)
!2615 = !DILocation(line: 523, column: 30, scope: !549)
!2616 = !DILocation(line: 523, column: 9, scope: !549)
!2617 = !DILocation(line: 523, column: 38, scope: !550)
!2618 = !DILocation(line: 524, column: 9, scope: !550)
!2619 = !DILocation(line: 524, column: 15, scope: !550)
!2620 = !DILocation(line: 524, column: 18, scope: !550)
!2621 = !DILocation(line: 525, column: 5, scope: !550)
!2622 = !DILocation(line: 526, column: 51, scope: !544)
!2623 = !DILocation(line: 527, column: 5, scope: !544)
!2624 = !DILocation(line: 550, column: 25, scope: !552)
!2625 = !DILocation(line: 550, column: 41, scope: !552)
!2626 = !DILocation(line: 552, column: 23, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !552, file: !367, line: 552, column: 9)
!2628 = !DILocation(line: 552, column: 29, scope: !2627)
!2629 = !DILocation(line: 552, column: 10, scope: !2627)
!2630 = !DILocation(line: 552, column: 9, scope: !552)
!2631 = !DILocation(line: 553, column: 9, scope: !2627)
!2632 = !DILocation(line: 555, column: 28, scope: !552)
!2633 = !DILocation(line: 555, column: 34, scope: !552)
!2634 = !DILocation(line: 555, column: 12, scope: !552)
!2635 = !DILocation(line: 555, column: 5, scope: !552)
!2636 = !DILocation(line: 556, column: 1, scope: !552)
!2637 = !DILocation(line: 320, column: 27, scope: !556)
!2638 = !DILocation(line: 320, column: 43, scope: !556)
!2639 = !DILocation(line: 322, column: 23, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !556, file: !367, line: 322, column: 9)
!2641 = !DILocation(line: 322, column: 29, scope: !2640)
!2642 = !DILocation(line: 322, column: 10, scope: !2640)
!2643 = !DILocation(line: 322, column: 9, scope: !556)
!2644 = !DILocation(line: 323, column: 9, scope: !2640)
!2645 = !DILocation(line: 327, column: 15, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !556, file: !367, line: 327, column: 9)
!2647 = !DILocation(line: 327, column: 21, scope: !2646)
!2648 = !DILocation(line: 327, column: 9, scope: !2646)
!2649 = !DILocation(line: 327, column: 126, scope: !2646)
!2650 = !DILocation(line: 327, column: 9, scope: !556)
!2651 = !DILocation(line: 328, column: 35, scope: !2646)
!2652 = !DILocation(line: 328, column: 16, scope: !2646)
!2653 = !DILocation(line: 328, column: 9, scope: !2646)
!2654 = !DILocation(line: 329, column: 51, scope: !556)
!2655 = !DILocation(line: 330, column: 5, scope: !556)
!2656 = !DILocation(line: 331, column: 1, scope: !556)
!2657 = !DILocation(line: 334, column: 25, scope: !560)
!2658 = !DILocation(line: 334, column: 41, scope: !560)
!2659 = !DILocation(line: 336, column: 23, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !560, file: !367, line: 336, column: 9)
!2661 = !DILocation(line: 336, column: 29, scope: !2660)
!2662 = !DILocation(line: 336, column: 10, scope: !2660)
!2663 = !DILocation(line: 336, column: 9, scope: !560)
!2664 = !DILocation(line: 337, column: 9, scope: !2660)
!2665 = !DILocation(line: 339, column: 24, scope: !560)
!2666 = !DILocation(line: 339, column: 30, scope: !560)
!2667 = !DILocation(line: 339, column: 34, scope: !560)
!2668 = !DILocation(line: 339, column: 12, scope: !560)
!2669 = !DILocation(line: 339, column: 5, scope: !560)
!2670 = !DILocation(line: 340, column: 1, scope: !560)
!2671 = !DILocation(line: 343, column: 26, scope: !577)
!2672 = !DILocation(line: 343, column: 42, scope: !577)
!2673 = !DILocation(line: 345, column: 5, scope: !577)
!2674 = !DILocation(line: 345, column: 9, scope: !577)
!2675 = !DILocation(line: 347, column: 23, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !577, file: !367, line: 347, column: 9)
!2677 = !DILocation(line: 347, column: 29, scope: !2676)
!2678 = !DILocation(line: 347, column: 10, scope: !2676)
!2679 = !DILocation(line: 347, column: 9, scope: !577)
!2680 = !DILocation(line: 348, column: 9, scope: !2676)
!2681 = !DILocation(line: 350, column: 15, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !577, file: !367, line: 350, column: 9)
!2683 = !DILocation(line: 350, column: 21, scope: !2682)
!2684 = !DILocation(line: 350, column: 9, scope: !2682)
!2685 = !DILocation(line: 350, column: 135, scope: !2682)
!2686 = !DILocation(line: 350, column: 9, scope: !577)
!2687 = !DILocation(line: 351, column: 35, scope: !2682)
!2688 = !DILocation(line: 351, column: 16, scope: !2682)
!2689 = !DILocation(line: 351, column: 9, scope: !2682)
!2690 = !DILocation(line: 352, column: 28, scope: !577)
!2691 = !DILocation(line: 352, column: 12, scope: !577)
!2692 = !DILocation(line: 352, column: 5, scope: !577)
!2693 = !DILocation(line: 353, column: 1, scope: !577)
!2694 = !DILocation(line: 356, column: 27, scope: !582)
!2695 = !DILocation(line: 356, column: 43, scope: !582)
!2696 = !DILocation(line: 358, column: 23, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !582, file: !367, line: 358, column: 9)
!2698 = !DILocation(line: 358, column: 29, scope: !2697)
!2699 = !DILocation(line: 358, column: 10, scope: !2697)
!2700 = !DILocation(line: 358, column: 9, scope: !582)
!2701 = !DILocation(line: 359, column: 9, scope: !2697)
!2702 = !DILocation(line: 361, column: 24, scope: !582)
!2703 = !DILocation(line: 361, column: 30, scope: !582)
!2704 = !DILocation(line: 361, column: 34, scope: !582)
!2705 = !DILocation(line: 361, column: 12, scope: !582)
!2706 = !DILocation(line: 361, column: 5, scope: !582)
!2707 = !DILocation(line: 362, column: 1, scope: !582)
!2708 = !DILocation(line: 365, column: 24, scope: !586)
!2709 = !DILocation(line: 365, column: 40, scope: !586)
!2710 = !DILocation(line: 367, column: 23, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !586, file: !367, line: 367, column: 9)
!2712 = !DILocation(line: 367, column: 29, scope: !2711)
!2713 = !DILocation(line: 367, column: 10, scope: !2711)
!2714 = !DILocation(line: 367, column: 9, scope: !586)
!2715 = !DILocation(line: 368, column: 9, scope: !2711)
!2716 = !DILocation(line: 370, column: 24, scope: !586)
!2717 = !DILocation(line: 370, column: 30, scope: !586)
!2718 = !DILocation(line: 370, column: 34, scope: !586)
!2719 = !DILocation(line: 370, column: 12, scope: !586)
!2720 = !DILocation(line: 370, column: 5, scope: !586)
!2721 = !DILocation(line: 371, column: 1, scope: !586)
!2722 = !DILocation(line: 374, column: 23, scope: !590)
!2723 = !DILocation(line: 374, column: 39, scope: !590)
!2724 = !DILocation(line: 376, column: 23, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !590, file: !367, line: 376, column: 9)
!2726 = !DILocation(line: 376, column: 29, scope: !2725)
!2727 = !DILocation(line: 376, column: 10, scope: !2725)
!2728 = !DILocation(line: 376, column: 9, scope: !590)
!2729 = !DILocation(line: 377, column: 9, scope: !2725)
!2730 = !DILocation(line: 379, column: 24, scope: !590)
!2731 = !DILocation(line: 379, column: 30, scope: !590)
!2732 = !DILocation(line: 379, column: 34, scope: !590)
!2733 = !DILocation(line: 379, column: 12, scope: !590)
!2734 = !DILocation(line: 379, column: 5, scope: !590)
!2735 = !DILocation(line: 380, column: 1, scope: !590)
!2736 = !DILocation(line: 383, column: 24, scope: !607)
!2737 = !DILocation(line: 383, column: 40, scope: !607)
!2738 = !DILocation(line: 385, column: 23, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !607, file: !367, line: 385, column: 9)
!2740 = !DILocation(line: 385, column: 29, scope: !2739)
!2741 = !DILocation(line: 385, column: 10, scope: !2739)
!2742 = !DILocation(line: 385, column: 9, scope: !607)
!2743 = !DILocation(line: 386, column: 9, scope: !2739)
!2744 = !DILocation(line: 388, column: 24, scope: !607)
!2745 = !DILocation(line: 388, column: 30, scope: !607)
!2746 = !DILocation(line: 388, column: 34, scope: !607)
!2747 = !DILocation(line: 388, column: 12, scope: !607)
!2748 = !DILocation(line: 388, column: 5, scope: !607)
!2749 = !DILocation(line: 389, column: 1, scope: !607)
!2750 = !DILocation(line: 392, column: 23, scope: !611)
!2751 = !DILocation(line: 392, column: 39, scope: !611)
!2752 = !DILocation(line: 394, column: 23, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !611, file: !367, line: 394, column: 9)
!2754 = !DILocation(line: 394, column: 29, scope: !2753)
!2755 = !DILocation(line: 394, column: 10, scope: !2753)
!2756 = !DILocation(line: 394, column: 9, scope: !611)
!2757 = !DILocation(line: 395, column: 9, scope: !2753)
!2758 = !DILocation(line: 397, column: 24, scope: !611)
!2759 = !DILocation(line: 397, column: 30, scope: !611)
!2760 = !DILocation(line: 397, column: 34, scope: !611)
!2761 = !DILocation(line: 397, column: 12, scope: !611)
!2762 = !DILocation(line: 397, column: 5, scope: !611)
!2763 = !DILocation(line: 398, column: 1, scope: !611)
!2764 = !DILocation(line: 563, column: 32, scope: !615)
!2765 = !DILocation(line: 563, column: 48, scope: !615)
!2766 = !DILocation(line: 565, column: 5, scope: !615)
!2767 = !DILocation(line: 565, column: 9, scope: !615)
!2768 = !DILocation(line: 565, column: 21, scope: !615)
!2769 = !DILocation(line: 565, column: 38, scope: !615)
!2770 = !DILocation(line: 565, column: 51, scope: !615)
!2771 = !DILocation(line: 566, column: 5, scope: !615)
!2772 = !DILocation(line: 566, column: 9, scope: !615)
!2773 = !DILocation(line: 566, column: 14, scope: !615)
!2774 = !DILocation(line: 566, column: 24, scope: !615)
!2775 = !DILocation(line: 568, column: 23, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !615, file: !367, line: 568, column: 9)
!2777 = !DILocation(line: 568, column: 29, scope: !2776)
!2778 = !DILocation(line: 568, column: 10, scope: !2776)
!2779 = !DILocation(line: 568, column: 9, scope: !615)
!2780 = !DILocation(line: 569, column: 9, scope: !2776)
!2781 = !DILocation(line: 571, column: 27, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !615, file: !367, line: 571, column: 9)
!2783 = !DILocation(line: 571, column: 10, scope: !2782)
!2784 = !DILocation(line: 571, column: 9, scope: !615)
!2785 = !DILocation(line: 574, column: 9, scope: !2782)
!2786 = !DILocation(line: 576, column: 11, scope: !615)
!2787 = !DILocation(line: 576, column: 9, scope: !615)
!2788 = !DILocation(line: 577, column: 15, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !615, file: !367, line: 577, column: 9)
!2790 = !DILocation(line: 577, column: 21, scope: !2789)
!2791 = !DILocation(line: 577, column: 9, scope: !2789)
!2792 = !DILocation(line: 577, column: 136, scope: !2789)
!2793 = !DILocation(line: 577, column: 9, scope: !615)
!2794 = !DILocation(line: 578, column: 35, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2789, file: !367, line: 577, column: 143)
!2796 = !DILocation(line: 578, column: 16, scope: !2795)
!2797 = !DILocation(line: 578, column: 9, scope: !2795)
!2798 = !DILocation(line: 580, column: 9, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !615, file: !367, line: 580, column: 9)
!2800 = !DILocation(line: 580, column: 16, scope: !2799)
!2801 = !DILocation(line: 580, column: 19, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2799, file: !367, discriminator: 1)
!2803 = !DILocation(line: 580, column: 26, scope: !2799)
!2804 = !DILocation(line: 580, column: 23, scope: !2799)
!2805 = !DILocation(line: 580, column: 9, scope: !615)
!2806 = !DILocation(line: 582, column: 14, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2799, file: !367, line: 580, column: 38)
!2808 = !DILocation(line: 584, column: 14, scope: !2807)
!2809 = !DILocation(line: 584, column: 26, scope: !2807)
!2810 = !DILocation(line: 581, column: 16, scope: !2807)
!2811 = !DILocation(line: 581, column: 9, scope: !2807)
!2812 = !DILocation(line: 587, column: 16, scope: !615)
!2813 = !DILocation(line: 587, column: 14, scope: !615)
!2814 = !DILocation(line: 588, column: 15, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !615, file: !367, line: 588, column: 9)
!2816 = !DILocation(line: 588, column: 21, scope: !2815)
!2817 = !DILocation(line: 588, column: 9, scope: !2815)
!2818 = !DILocation(line: 588, column: 141, scope: !2815)
!2819 = !DILocation(line: 588, column: 9, scope: !615)
!2820 = !DILocation(line: 589, column: 35, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2815, file: !367, line: 588, column: 148)
!2822 = !DILocation(line: 589, column: 16, scope: !2821)
!2823 = !DILocation(line: 589, column: 9, scope: !2821)
!2824 = !DILocation(line: 591, column: 9, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !615, file: !367, line: 591, column: 9)
!2826 = !DILocation(line: 591, column: 16, scope: !2825)
!2827 = !DILocation(line: 591, column: 19, scope: !2828)
!2828 = !DILexicalBlockFile(scope: !2825, file: !367, discriminator: 1)
!2829 = !DILocation(line: 591, column: 31, scope: !2825)
!2830 = !DILocation(line: 591, column: 28, scope: !2825)
!2831 = !DILocation(line: 591, column: 9, scope: !615)
!2832 = !DILocation(line: 593, column: 14, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2825, file: !367, line: 591, column: 48)
!2834 = !DILocation(line: 595, column: 14, scope: !2833)
!2835 = !DILocation(line: 595, column: 31, scope: !2833)
!2836 = !DILocation(line: 592, column: 16, scope: !2833)
!2837 = !DILocation(line: 592, column: 9, scope: !2833)
!2838 = !DILocation(line: 598, column: 12, scope: !615)
!2839 = !DILocation(line: 598, column: 10, scope: !615)
!2840 = !DILocation(line: 599, column: 15, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !615, file: !367, line: 599, column: 9)
!2842 = !DILocation(line: 599, column: 21, scope: !2841)
!2843 = !DILocation(line: 599, column: 9, scope: !2841)
!2844 = !DILocation(line: 599, column: 137, scope: !2841)
!2845 = !DILocation(line: 599, column: 9, scope: !615)
!2846 = !DILocation(line: 600, column: 35, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !367, line: 599, column: 144)
!2848 = !DILocation(line: 600, column: 16, scope: !2847)
!2849 = !DILocation(line: 600, column: 9, scope: !2847)
!2850 = !DILocation(line: 602, column: 9, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !615, file: !367, line: 602, column: 9)
!2852 = !DILocation(line: 602, column: 16, scope: !2851)
!2853 = !DILocation(line: 602, column: 19, scope: !2854)
!2854 = !DILexicalBlockFile(scope: !2851, file: !367, discriminator: 1)
!2855 = !DILocation(line: 602, column: 27, scope: !2851)
!2856 = !DILocation(line: 602, column: 24, scope: !2851)
!2857 = !DILocation(line: 602, column: 9, scope: !615)
!2858 = !DILocation(line: 604, column: 14, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2851, file: !367, line: 602, column: 40)
!2860 = !DILocation(line: 606, column: 14, scope: !2859)
!2861 = !DILocation(line: 606, column: 27, scope: !2859)
!2862 = !DILocation(line: 603, column: 16, scope: !2859)
!2863 = !DILocation(line: 603, column: 9, scope: !2859)
!2864 = !DILocation(line: 611, column: 35, scope: !615)
!2865 = !DILocation(line: 611, column: 40, scope: !615)
!2866 = !DILocation(line: 611, column: 50, scope: !615)
!2867 = !DILocation(line: 611, column: 12, scope: !615)
!2868 = !DILocation(line: 611, column: 5, scope: !615)
!2869 = !DILocation(line: 612, column: 1, scope: !615)
!2870 = !DILocation(line: 650, column: 26, scope: !626)
!2871 = !DILocation(line: 650, column: 42, scope: !626)
!2872 = !DILocation(line: 652, column: 5, scope: !626)
!2873 = !DILocation(line: 652, column: 20, scope: !626)
!2874 = !DILocation(line: 653, column: 5, scope: !626)
!2875 = !DILocation(line: 653, column: 9, scope: !626)
!2876 = !DILocation(line: 653, column: 22, scope: !626)
!2877 = !DILocation(line: 655, column: 23, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !626, file: !367, line: 655, column: 9)
!2879 = !DILocation(line: 655, column: 29, scope: !2878)
!2880 = !DILocation(line: 655, column: 10, scope: !2878)
!2881 = !DILocation(line: 655, column: 9, scope: !626)
!2882 = !DILocation(line: 656, column: 9, scope: !2878)
!2883 = !DILocation(line: 658, column: 16, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !626, file: !367, line: 658, column: 9)
!2885 = !DILocation(line: 658, column: 9, scope: !2884)
!2886 = !DILocation(line: 658, column: 42, scope: !2884)
!2887 = !DILocation(line: 658, column: 46, scope: !2884)
!2888 = !DILocation(line: 658, column: 50, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !2884, file: !367, discriminator: 1)
!2890 = !DILocation(line: 658, column: 60, scope: !2884)
!2891 = !DILocation(line: 658, column: 64, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2884, file: !367, discriminator: 2)
!2893 = !DILocation(line: 658, column: 9, scope: !626)
!2894 = !DILocation(line: 659, column: 28, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2884, file: !367, line: 658, column: 71)
!2896 = !DILocation(line: 659, column: 9, scope: !2895)
!2897 = !DILocation(line: 660, column: 9, scope: !2895)
!2898 = !DILocation(line: 662, column: 15, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !626, file: !367, line: 662, column: 9)
!2900 = !DILocation(line: 662, column: 21, scope: !2899)
!2901 = !DILocation(line: 662, column: 9, scope: !2899)
!2902 = !DILocation(line: 662, column: 144, scope: !2899)
!2903 = !DILocation(line: 662, column: 9, scope: !626)
!2904 = !DILocation(line: 663, column: 28, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2899, file: !367, line: 662, column: 149)
!2906 = !DILocation(line: 663, column: 9, scope: !2905)
!2907 = !DILocation(line: 664, column: 9, scope: !2905)
!2908 = !DILocation(line: 666, column: 32, scope: !626)
!2909 = !{!2910, !1839, i64 4}
!2910 = !{!"audio_buf_info", !1839, i64 0, !1839, i64 4, !1839, i64 8, !1839, i64 12}
!2911 = !DILocation(line: 666, column: 48, scope: !626)
!2912 = !{!2910, !1839, i64 8}
!2913 = !DILocation(line: 666, column: 43, scope: !626)
!2914 = !DILocation(line: 666, column: 61, scope: !626)
!2915 = !DILocation(line: 666, column: 73, scope: !626)
!2916 = !DILocation(line: 666, column: 71, scope: !626)
!2917 = !DILocation(line: 666, column: 58, scope: !626)
!2918 = !DILocation(line: 666, column: 28, scope: !626)
!2919 = !DILocation(line: 666, column: 12, scope: !626)
!2920 = !DILocation(line: 666, column: 5, scope: !626)
!2921 = !DILocation(line: 667, column: 1, scope: !626)
!2922 = !DILocation(line: 672, column: 28, scope: !650)
!2923 = !DILocation(line: 672, column: 44, scope: !650)
!2924 = !DILocation(line: 674, column: 5, scope: !650)
!2925 = !DILocation(line: 674, column: 20, scope: !650)
!2926 = !DILocation(line: 675, column: 5, scope: !650)
!2927 = !DILocation(line: 675, column: 9, scope: !650)
!2928 = !DILocation(line: 675, column: 22, scope: !650)
!2929 = !DILocation(line: 677, column: 23, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !650, file: !367, line: 677, column: 9)
!2931 = !DILocation(line: 677, column: 29, scope: !2930)
!2932 = !DILocation(line: 677, column: 10, scope: !2930)
!2933 = !DILocation(line: 677, column: 9, scope: !650)
!2934 = !DILocation(line: 678, column: 9, scope: !2930)
!2935 = !DILocation(line: 680, column: 16, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !650, file: !367, line: 680, column: 9)
!2937 = !DILocation(line: 680, column: 9, scope: !2936)
!2938 = !DILocation(line: 680, column: 42, scope: !2936)
!2939 = !DILocation(line: 680, column: 46, scope: !2936)
!2940 = !DILocation(line: 680, column: 50, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !2936, file: !367, discriminator: 1)
!2942 = !DILocation(line: 680, column: 60, scope: !2936)
!2943 = !DILocation(line: 680, column: 64, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2936, file: !367, discriminator: 2)
!2945 = !DILocation(line: 680, column: 9, scope: !650)
!2946 = !DILocation(line: 681, column: 28, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2936, file: !367, line: 680, column: 71)
!2948 = !DILocation(line: 681, column: 9, scope: !2947)
!2949 = !DILocation(line: 682, column: 9, scope: !2947)
!2950 = !DILocation(line: 684, column: 15, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !650, file: !367, line: 684, column: 9)
!2952 = !DILocation(line: 684, column: 21, scope: !2951)
!2953 = !DILocation(line: 684, column: 9, scope: !2951)
!2954 = !DILocation(line: 684, column: 144, scope: !2951)
!2955 = !DILocation(line: 684, column: 9, scope: !650)
!2956 = !DILocation(line: 685, column: 28, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2951, file: !367, line: 684, column: 149)
!2958 = !DILocation(line: 685, column: 9, scope: !2957)
!2959 = !DILocation(line: 686, column: 9, scope: !2957)
!2960 = !DILocation(line: 688, column: 32, scope: !650)
!2961 = !DILocation(line: 688, column: 48, scope: !650)
!2962 = !DILocation(line: 688, column: 43, scope: !650)
!2963 = !DILocation(line: 688, column: 62, scope: !650)
!2964 = !{!2910, !1839, i64 12}
!2965 = !DILocation(line: 688, column: 57, scope: !650)
!2966 = !DILocation(line: 689, column: 28, scope: !650)
!2967 = !DILocation(line: 689, column: 36, scope: !650)
!2968 = !DILocation(line: 689, column: 34, scope: !650)
!2969 = !DILocation(line: 688, column: 69, scope: !650)
!2970 = !DILocation(line: 688, column: 28, scope: !650)
!2971 = !DILocation(line: 688, column: 12, scope: !650)
!2972 = !DILocation(line: 688, column: 5, scope: !650)
!2973 = !DILocation(line: 690, column: 1, scope: !650)
!2974 = !DILocation(line: 695, column: 27, scope: !657)
!2975 = !DILocation(line: 695, column: 43, scope: !657)
!2976 = !DILocation(line: 697, column: 5, scope: !657)
!2977 = !DILocation(line: 697, column: 20, scope: !657)
!2978 = !DILocation(line: 698, column: 5, scope: !657)
!2979 = !DILocation(line: 698, column: 9, scope: !657)
!2980 = !DILocation(line: 698, column: 22, scope: !657)
!2981 = !DILocation(line: 700, column: 23, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !657, file: !367, line: 700, column: 9)
!2983 = !DILocation(line: 700, column: 29, scope: !2982)
!2984 = !DILocation(line: 700, column: 10, scope: !2982)
!2985 = !DILocation(line: 700, column: 9, scope: !657)
!2986 = !DILocation(line: 701, column: 9, scope: !2982)
!2987 = !DILocation(line: 703, column: 16, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !657, file: !367, line: 703, column: 9)
!2989 = !DILocation(line: 703, column: 9, scope: !2988)
!2990 = !DILocation(line: 703, column: 42, scope: !2988)
!2991 = !DILocation(line: 703, column: 46, scope: !2988)
!2992 = !DILocation(line: 703, column: 50, scope: !2993)
!2993 = !DILexicalBlockFile(scope: !2988, file: !367, discriminator: 1)
!2994 = !DILocation(line: 703, column: 60, scope: !2988)
!2995 = !DILocation(line: 703, column: 64, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2988, file: !367, discriminator: 2)
!2997 = !DILocation(line: 703, column: 9, scope: !657)
!2998 = !DILocation(line: 704, column: 28, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2988, file: !367, line: 703, column: 71)
!3000 = !DILocation(line: 704, column: 9, scope: !2999)
!3001 = !DILocation(line: 705, column: 9, scope: !2999)
!3002 = !DILocation(line: 707, column: 15, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !657, file: !367, line: 707, column: 9)
!3004 = !DILocation(line: 707, column: 21, scope: !3003)
!3005 = !DILocation(line: 707, column: 9, scope: !3003)
!3006 = !DILocation(line: 707, column: 144, scope: !3003)
!3007 = !DILocation(line: 707, column: 9, scope: !657)
!3008 = !DILocation(line: 708, column: 28, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3003, file: !367, line: 707, column: 149)
!3010 = !DILocation(line: 708, column: 9, scope: !3009)
!3011 = !DILocation(line: 709, column: 9, scope: !3009)
!3012 = !DILocation(line: 711, column: 31, scope: !657)
!3013 = !DILocation(line: 711, column: 40, scope: !657)
!3014 = !DILocation(line: 711, column: 48, scope: !657)
!3015 = !DILocation(line: 711, column: 46, scope: !657)
!3016 = !DILocation(line: 711, column: 37, scope: !657)
!3017 = !DILocation(line: 711, column: 28, scope: !657)
!3018 = !DILocation(line: 711, column: 12, scope: !657)
!3019 = !DILocation(line: 711, column: 5, scope: !657)
!3020 = !DILocation(line: 712, column: 1, scope: !657)
!3021 = !DILocation(line: 715, column: 25, scope: !664)
!3022 = !DILocation(line: 715, column: 41, scope: !664)
!3023 = !DILocation(line: 717, column: 5, scope: !664)
!3024 = !DILocation(line: 717, column: 16, scope: !664)
!3025 = !DILocation(line: 718, column: 5, scope: !664)
!3026 = !DILocation(line: 718, column: 9, scope: !664)
!3027 = !DILocation(line: 720, column: 23, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !664, file: !367, line: 720, column: 9)
!3029 = !DILocation(line: 720, column: 29, scope: !3028)
!3030 = !DILocation(line: 720, column: 10, scope: !3028)
!3031 = !DILocation(line: 720, column: 9, scope: !664)
!3032 = !DILocation(line: 721, column: 9, scope: !3028)
!3033 = !DILocation(line: 723, column: 9, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !664, file: !367, line: 723, column: 9)
!3035 = !DILocation(line: 723, column: 15, scope: !3034)
!3036 = !DILocation(line: 723, column: 20, scope: !3034)
!3037 = !DILocation(line: 723, column: 9, scope: !664)
!3038 = !DILocation(line: 724, column: 13, scope: !3034)
!3039 = !DILocation(line: 724, column: 9, scope: !3034)
!3040 = !DILocation(line: 726, column: 13, scope: !3034)
!3041 = !DILocation(line: 727, column: 15, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !664, file: !367, line: 727, column: 9)
!3043 = !DILocation(line: 727, column: 21, scope: !3042)
!3044 = !DILocation(line: 727, column: 25, scope: !3042)
!3045 = !DILocation(line: 727, column: 9, scope: !3042)
!3046 = !DILocation(line: 727, column: 37, scope: !3042)
!3047 = !DILocation(line: 727, column: 9, scope: !664)
!3048 = !DILocation(line: 728, column: 28, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3042, file: !367, line: 727, column: 44)
!3050 = !DILocation(line: 728, column: 9, scope: !3049)
!3051 = !DILocation(line: 729, column: 9, scope: !3049)
!3052 = !DILocation(line: 731, column: 38, scope: !664)
!3053 = !{!3054, !1839, i64 0}
!3054 = !{!"count_info", !1839, i64 0, !1839, i64 4, !1839, i64 8}
!3055 = !DILocation(line: 731, column: 50, scope: !664)
!3056 = !{!3054, !1839, i64 4}
!3057 = !DILocation(line: 731, column: 63, scope: !664)
!3058 = !{!3054, !1839, i64 8}
!3059 = !DILocation(line: 731, column: 12, scope: !664)
!3060 = !DILocation(line: 731, column: 5, scope: !664)
!3061 = !DILocation(line: 732, column: 1, scope: !664)
!3062 = !DILocation(line: 531, column: 20, scope: !676)
!3063 = !DILocation(line: 531, column: 36, scope: !676)
!3064 = !DILocation(line: 533, column: 21, scope: !676)
!3065 = !DILocation(line: 533, column: 29, scope: !676)
!3066 = !DILocation(line: 533, column: 38, scope: !676)
!3067 = !DILocation(line: 534, column: 12, scope: !676)
!3068 = !DILocation(line: 534, column: 5, scope: !676)
!3069 = !DILocation(line: 538, column: 20, scope: !680)
!3070 = !DILocation(line: 538, column: 36, scope: !680)
!3071 = !DILocation(line: 542, column: 5, scope: !680)
!3072 = !DILocation(line: 542, column: 15, scope: !680)
!3073 = !DILocation(line: 542, column: 44, scope: !680)
!3074 = !DILocation(line: 542, column: 21, scope: !680)
!3075 = !DILocation(line: 543, column: 10, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !680, file: !367, line: 543, column: 9)
!3077 = !DILocation(line: 543, column: 9, scope: !680)
!3078 = !DILocation(line: 544, column: 9, scope: !3076)
!3079 = !DILocation(line: 545, column: 5, scope: !680)
!3080 = !DILocation(line: 545, column: 10, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !686, file: !367, discriminator: 1)
!3082 = !DILocation(line: 545, column: 20, scope: !686)
!3083 = !DILocation(line: 545, column: 50, scope: !686)
!3084 = !DILocation(line: 545, column: 64, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !686, file: !367, line: 545, column: 61)
!3086 = !DILocation(line: 545, column: 81, scope: !3085)
!3087 = !DILocation(line: 545, column: 61, scope: !3085)
!3088 = !DILocation(line: 545, column: 91, scope: !3085)
!3089 = !DILocation(line: 545, column: 61, scope: !686)
!3090 = !DILocation(line: 545, column: 61, scope: !3091)
!3091 = !DILexicalBlockFile(scope: !686, file: !367, discriminator: 2)
!3092 = !DILocation(line: 545, column: 122, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3085, file: !367, discriminator: 3)
!3094 = !DILocation(line: 545, column: 140, scope: !3085)
!3095 = !DILocation(line: 545, column: 150, scope: !3085)
!3096 = !DILocation(line: 545, column: 175, scope: !3085)
!3097 = !DILocation(line: 545, column: 106, scope: !3085)
!3098 = !DILocation(line: 545, column: 194, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !680, file: !367, discriminator: 4)
!3100 = !DILocation(line: 545, column: 194, scope: !686)
!3101 = !DILocation(line: 545, column: 194, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !686, file: !367, discriminator: 5)
!3103 = !DILocation(line: 546, column: 58, scope: !680)
!3104 = !DILocation(line: 546, column: 5, scope: !680)
!3105 = !DILocation(line: 547, column: 1, scope: !680)
!3106 = !DILocation(line: 223, column: 29, scope: !506)
!3107 = !DILocation(line: 226, column: 9, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !506, file: !367, line: 226, column: 9)
!3109 = !DILocation(line: 226, column: 12, scope: !3108)
!3110 = !DILocation(line: 226, column: 9, scope: !506)
!3111 = !DILocation(line: 227, column: 9, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3108, file: !367, line: 226, column: 18)
!3113 = !DILocation(line: 229, column: 25, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3108, file: !367, line: 228, column: 12)
!3115 = !DILocation(line: 229, column: 9, scope: !3114)
!3116 = !DILocation(line: 231, column: 9, scope: !3114)
!3117 = !DILocation(line: 233, column: 1, scope: !506)
!3118 = !DILocation(line: 245, column: 17, scope: !564)
!3119 = !DILocation(line: 245, column: 31, scope: !564)
!3120 = !DILocation(line: 245, column: 43, scope: !564)
!3121 = !DILocation(line: 245, column: 54, scope: !564)
!3122 = !DILocation(line: 247, column: 5, scope: !564)
!3123 = !DILocation(line: 247, column: 10, scope: !564)
!3124 = !DILocation(line: 248, column: 5, scope: !564)
!3125 = !DILocation(line: 248, column: 9, scope: !564)
!3126 = !DILocation(line: 251, column: 24, scope: !564)
!3127 = !DILocation(line: 251, column: 32, scope: !564)
!3128 = !DILocation(line: 251, column: 5, scope: !564)
!3129 = !DILocation(line: 252, column: 27, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !564, file: !367, line: 252, column: 9)
!3131 = !DILocation(line: 252, column: 33, scope: !3130)
!3132 = !DILocation(line: 252, column: 10, scope: !3130)
!3133 = !DILocation(line: 252, column: 9, scope: !564)
!3134 = !DILocation(line: 253, column: 9, scope: !3130)
!3135 = !DILocation(line: 255, column: 15, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !564, file: !367, line: 255, column: 9)
!3137 = !DILocation(line: 255, column: 19, scope: !3136)
!3138 = !DILocation(line: 255, column: 9, scope: !3136)
!3139 = !DILocation(line: 255, column: 30, scope: !3136)
!3140 = !DILocation(line: 255, column: 9, scope: !564)
!3141 = !DILocation(line: 256, column: 35, scope: !3136)
!3142 = !DILocation(line: 256, column: 16, scope: !3136)
!3143 = !DILocation(line: 256, column: 9, scope: !3136)
!3144 = !DILocation(line: 257, column: 28, scope: !564)
!3145 = !DILocation(line: 257, column: 12, scope: !564)
!3146 = !DILocation(line: 257, column: 5, scope: !564)
!3147 = !DILocation(line: 258, column: 1, scope: !564)
!3148 = !DILocation(line: 290, column: 17, scope: !594)
!3149 = !DILocation(line: 290, column: 31, scope: !594)
!3150 = !DILocation(line: 290, column: 43, scope: !594)
!3151 = !DILocation(line: 290, column: 54, scope: !594)
!3152 = !DILocation(line: 292, column: 5, scope: !594)
!3153 = !DILocation(line: 292, column: 10, scope: !594)
!3154 = !DILocation(line: 293, column: 5, scope: !594)
!3155 = !DILocation(line: 293, column: 9, scope: !594)
!3156 = !DILocation(line: 296, column: 24, scope: !594)
!3157 = !DILocation(line: 296, column: 32, scope: !594)
!3158 = !DILocation(line: 296, column: 5, scope: !594)
!3159 = !DILocation(line: 297, column: 27, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !594, file: !367, line: 297, column: 9)
!3161 = !DILocation(line: 297, column: 33, scope: !3160)
!3162 = !DILocation(line: 297, column: 10, scope: !3160)
!3163 = !DILocation(line: 297, column: 9, scope: !594)
!3164 = !DILocation(line: 298, column: 9, scope: !3160)
!3165 = !DILocation(line: 304, column: 7, scope: !606)
!3166 = !DILocation(line: 304, column: 22, scope: !606)
!3167 = !DILocation(line: 304, column: 37, scope: !606)
!3168 = !DILocation(line: 304, column: 35, scope: !606)
!3169 = !DILocation(line: 305, column: 16, scope: !606)
!3170 = !DILocation(line: 305, column: 20, scope: !606)
!3171 = !DILocation(line: 305, column: 10, scope: !606)
!3172 = !DILocation(line: 305, column: 8, scope: !606)
!3173 = !DILocation(line: 306, column: 26, scope: !606)
!3174 = !DILocation(line: 306, column: 5, scope: !606)
!3175 = !DILocation(line: 306, column: 34, scope: !594)
!3176 = !DILocation(line: 308, column: 9, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !594, file: !367, line: 308, column: 9)
!3178 = !DILocation(line: 308, column: 12, scope: !3177)
!3179 = !DILocation(line: 308, column: 9, scope: !594)
!3180 = !DILocation(line: 309, column: 35, scope: !3177)
!3181 = !DILocation(line: 309, column: 16, scope: !3177)
!3182 = !DILocation(line: 309, column: 9, scope: !3177)
!3183 = !DILocation(line: 310, column: 51, scope: !594)
!3184 = !DILocation(line: 311, column: 5, scope: !594)
!3185 = !DILocation(line: 312, column: 1, scope: !594)
!3186 = !DILocation(line: 615, column: 21, scope: !641)
!3187 = !DILocation(line: 615, column: 32, scope: !641)
!3188 = !DILocation(line: 615, column: 48, scope: !641)
!3189 = !DILocation(line: 617, column: 5, scope: !641)
!3190 = !DILocation(line: 617, column: 9, scope: !641)
!3191 = !DILocation(line: 619, column: 9, scope: !641)
!3192 = !DILocation(line: 620, column: 15, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !641, file: !367, line: 620, column: 9)
!3194 = !DILocation(line: 620, column: 21, scope: !3193)
!3195 = !DILocation(line: 620, column: 9, scope: !3193)
!3196 = !DILocation(line: 620, column: 136, scope: !3193)
!3197 = !DILocation(line: 620, column: 9, scope: !641)
!3198 = !DILocation(line: 621, column: 19, scope: !3193)
!3199 = !DILocation(line: 621, column: 18, scope: !3193)
!3200 = !DILocation(line: 621, column: 16, scope: !3193)
!3201 = !DILocation(line: 621, column: 9, scope: !3193)
!3202 = !DILocation(line: 623, column: 13, scope: !641)
!3203 = !DILocation(line: 623, column: 5, scope: !641)
!3204 = !DILocation(line: 628, column: 10, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !641, file: !367, line: 623, column: 18)
!3206 = !DILocation(line: 628, column: 16, scope: !3205)
!3207 = !DILocation(line: 629, column: 9, scope: !3205)
!3208 = !DILocation(line: 634, column: 10, scope: !3205)
!3209 = !DILocation(line: 634, column: 16, scope: !3205)
!3210 = !DILocation(line: 635, column: 9, scope: !3205)
!3211 = !DILocation(line: 639, column: 9, scope: !3205)
!3212 = !DILocation(line: 641, column: 15, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !641, file: !367, line: 641, column: 9)
!3214 = !DILocation(line: 641, column: 21, scope: !3213)
!3215 = !DILocation(line: 641, column: 130, scope: !3213)
!3216 = !DILocation(line: 641, column: 9, scope: !3213)
!3217 = !DILocation(line: 641, column: 141, scope: !3213)
!3218 = !DILocation(line: 641, column: 9, scope: !641)
!3219 = !DILocation(line: 642, column: 19, scope: !3213)
!3220 = !DILocation(line: 642, column: 18, scope: !3213)
!3221 = !DILocation(line: 642, column: 16, scope: !3213)
!3222 = !DILocation(line: 642, column: 9, scope: !3213)
!3223 = !DILocation(line: 643, column: 5, scope: !641)
!3224 = !DILocation(line: 644, column: 1, scope: !641)
!3225 = !DILocation(line: 199, column: 32, scope: !687)
!3226 = !DILocation(line: 202, column: 9, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !687, file: !367, line: 202, column: 9)
!3228 = !DILocation(line: 202, column: 15, scope: !3227)
!3229 = !{!3230, !1839, i64 16}
!3230 = !{!"", !901, i64 0, !1839, i64 16}
!3231 = !DILocation(line: 202, column: 18, scope: !3227)
!3232 = !DILocation(line: 202, column: 9, scope: !687)
!3233 = !DILocation(line: 203, column: 15, scope: !3227)
!3234 = !DILocation(line: 203, column: 21, scope: !3227)
!3235 = !DILocation(line: 203, column: 9, scope: !3227)
!3236 = !DILocation(line: 204, column: 19, scope: !687)
!3237 = !DILocation(line: 204, column: 5, scope: !687)
!3238 = !DILocation(line: 205, column: 1, scope: !687)
!3239 = !DILocation(line: 740, column: 30, scope: !692)
!3240 = !DILocation(line: 740, column: 46, scope: !692)
!3241 = !DILocation(line: 742, column: 9, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !692, file: !367, line: 742, column: 9)
!3243 = !DILocation(line: 742, column: 15, scope: !3242)
!3244 = !DILocation(line: 742, column: 18, scope: !3242)
!3245 = !DILocation(line: 742, column: 9, scope: !692)
!3246 = !DILocation(line: 743, column: 15, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3242, file: !367, line: 742, column: 24)
!3248 = !DILocation(line: 743, column: 21, scope: !3247)
!3249 = !DILocation(line: 743, column: 9, scope: !3247)
!3250 = !DILocation(line: 744, column: 9, scope: !3247)
!3251 = !DILocation(line: 744, column: 15, scope: !3247)
!3252 = !DILocation(line: 744, column: 18, scope: !3247)
!3253 = !DILocation(line: 745, column: 5, scope: !3247)
!3254 = !DILocation(line: 746, column: 51, scope: !692)
!3255 = !DILocation(line: 747, column: 5, scope: !692)
!3256 = !DILocation(line: 751, column: 31, scope: !698)
!3257 = !DILocation(line: 751, column: 47, scope: !698)
!3258 = !DILocation(line: 753, column: 23, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !698, file: !367, line: 753, column: 9)
!3260 = !DILocation(line: 753, column: 29, scope: !3259)
!3261 = !DILocation(line: 753, column: 10, scope: !3259)
!3262 = !DILocation(line: 753, column: 9, scope: !698)
!3263 = !DILocation(line: 754, column: 9, scope: !3259)
!3264 = !DILocation(line: 756, column: 28, scope: !698)
!3265 = !DILocation(line: 756, column: 34, scope: !698)
!3266 = !DILocation(line: 756, column: 12, scope: !698)
!3267 = !DILocation(line: 756, column: 5, scope: !698)
!3268 = !DILocation(line: 757, column: 1, scope: !698)
!3269 = !DILocation(line: 762, column: 33, scope: !702)
!3270 = !DILocation(line: 762, column: 49, scope: !702)
!3271 = !DILocation(line: 764, column: 23, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !702, file: !367, line: 764, column: 9)
!3273 = !DILocation(line: 764, column: 29, scope: !3272)
!3274 = !DILocation(line: 764, column: 10, scope: !3272)
!3275 = !DILocation(line: 764, column: 9, scope: !702)
!3276 = !DILocation(line: 765, column: 9, scope: !3272)
!3277 = !DILocation(line: 767, column: 33, scope: !702)
!3278 = !DILocation(line: 767, column: 39, scope: !702)
!3279 = !DILocation(line: 767, column: 43, scope: !702)
!3280 = !DILocation(line: 767, column: 12, scope: !702)
!3281 = !DILocation(line: 767, column: 5, scope: !702)
!3282 = !DILocation(line: 769, column: 1, scope: !702)
!3283 = !DILocation(line: 772, column: 39, scope: !714)
!3284 = !DILocation(line: 772, column: 55, scope: !714)
!3285 = !DILocation(line: 774, column: 23, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !714, file: !367, line: 774, column: 9)
!3287 = !DILocation(line: 774, column: 29, scope: !3286)
!3288 = !DILocation(line: 774, column: 10, scope: !3286)
!3289 = !DILocation(line: 774, column: 9, scope: !714)
!3290 = !DILocation(line: 775, column: 9, scope: !3286)
!3291 = !DILocation(line: 777, column: 33, scope: !714)
!3292 = !DILocation(line: 777, column: 39, scope: !714)
!3293 = !DILocation(line: 777, column: 43, scope: !714)
!3294 = !DILocation(line: 777, column: 12, scope: !714)
!3295 = !DILocation(line: 777, column: 5, scope: !714)
!3296 = !DILocation(line: 779, column: 1, scope: !714)
!3297 = !DILocation(line: 782, column: 36, scope: !718)
!3298 = !DILocation(line: 782, column: 52, scope: !718)
!3299 = !DILocation(line: 784, column: 23, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !718, file: !367, line: 784, column: 9)
!3301 = !DILocation(line: 784, column: 29, scope: !3300)
!3302 = !DILocation(line: 784, column: 10, scope: !3300)
!3303 = !DILocation(line: 784, column: 9, scope: !718)
!3304 = !DILocation(line: 785, column: 9, scope: !3300)
!3305 = !DILocation(line: 787, column: 33, scope: !718)
!3306 = !DILocation(line: 787, column: 39, scope: !718)
!3307 = !DILocation(line: 787, column: 43, scope: !718)
!3308 = !DILocation(line: 787, column: 12, scope: !718)
!3309 = !DILocation(line: 787, column: 5, scope: !718)
!3310 = !DILocation(line: 789, column: 1, scope: !718)
!3311 = !DILocation(line: 792, column: 28, scope: !722)
!3312 = !DILocation(line: 792, column: 44, scope: !722)
!3313 = !DILocation(line: 794, column: 5, scope: !722)
!3314 = !DILocation(line: 794, column: 9, scope: !722)
!3315 = !DILocation(line: 794, column: 18, scope: !722)
!3316 = !DILocation(line: 796, column: 23, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !722, file: !367, line: 796, column: 9)
!3318 = !DILocation(line: 796, column: 29, scope: !3317)
!3319 = !DILocation(line: 796, column: 10, scope: !3317)
!3320 = !DILocation(line: 796, column: 9, scope: !722)
!3321 = !DILocation(line: 797, column: 9, scope: !3317)
!3322 = !DILocation(line: 800, column: 27, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !722, file: !367, line: 800, column: 9)
!3324 = !DILocation(line: 800, column: 10, scope: !3323)
!3325 = !DILocation(line: 800, column: 9, scope: !722)
!3326 = !DILocation(line: 801, column: 9, scope: !3323)
!3327 = !DILocation(line: 803, column: 9, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !722, file: !367, line: 803, column: 9)
!3329 = !DILocation(line: 803, column: 17, scope: !3328)
!3330 = !DILocation(line: 803, column: 21, scope: !3328)
!3331 = !DILocation(line: 803, column: 24, scope: !3332)
!3332 = !DILexicalBlockFile(scope: !3328, file: !367, discriminator: 1)
!3333 = !DILocation(line: 803, column: 32, scope: !3328)
!3334 = !DILocation(line: 803, column: 9, scope: !722)
!3335 = !DILocation(line: 804, column: 25, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3328, file: !367, line: 803, column: 38)
!3337 = !DILocation(line: 804, column: 9, scope: !3336)
!3338 = !DILocation(line: 805, column: 9, scope: !3336)
!3339 = !DILocation(line: 808, column: 15, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !722, file: !367, line: 808, column: 9)
!3341 = !DILocation(line: 808, column: 21, scope: !3340)
!3342 = !DILocation(line: 808, column: 79, scope: !3340)
!3343 = !DILocation(line: 808, column: 89, scope: !3340)
!3344 = !DILocation(line: 808, column: 74, scope: !3340)
!3345 = !DILocation(line: 808, column: 26, scope: !3340)
!3346 = !DILocation(line: 808, column: 95, scope: !3340)
!3347 = !DILocation(line: 808, column: 9, scope: !3340)
!3348 = !DILocation(line: 808, column: 142, scope: !3340)
!3349 = !DILocation(line: 808, column: 9, scope: !722)
!3350 = !DILocation(line: 809, column: 35, scope: !3340)
!3351 = !DILocation(line: 809, column: 16, scope: !3340)
!3352 = !DILocation(line: 809, column: 9, scope: !3340)
!3353 = !DILocation(line: 811, column: 34, scope: !722)
!3354 = !DILocation(line: 811, column: 41, scope: !722)
!3355 = !DILocation(line: 811, column: 50, scope: !722)
!3356 = !DILocation(line: 811, column: 57, scope: !722)
!3357 = !DILocation(line: 811, column: 67, scope: !722)
!3358 = !DILocation(line: 811, column: 12, scope: !722)
!3359 = !DILocation(line: 811, column: 5, scope: !722)
!3360 = !DILocation(line: 812, column: 1, scope: !722)
!3361 = !DILocation(line: 815, column: 28, scope: !728)
!3362 = !DILocation(line: 815, column: 44, scope: !728)
!3363 = !DILocation(line: 817, column: 5, scope: !728)
!3364 = !DILocation(line: 817, column: 9, scope: !728)
!3365 = !DILocation(line: 817, column: 18, scope: !728)
!3366 = !DILocation(line: 817, column: 26, scope: !728)
!3367 = !DILocation(line: 817, column: 35, scope: !728)
!3368 = !DILocation(line: 819, column: 23, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !728, file: !367, line: 819, column: 9)
!3370 = !DILocation(line: 819, column: 29, scope: !3369)
!3371 = !DILocation(line: 819, column: 10, scope: !3369)
!3372 = !DILocation(line: 819, column: 9, scope: !728)
!3373 = !DILocation(line: 820, column: 9, scope: !3369)
!3374 = !DILocation(line: 823, column: 27, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !728, file: !367, line: 823, column: 9)
!3376 = !DILocation(line: 823, column: 10, scope: !3375)
!3377 = !DILocation(line: 823, column: 9, scope: !728)
!3378 = !DILocation(line: 824, column: 9, scope: !3375)
!3379 = !DILocation(line: 826, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !728, file: !367, line: 826, column: 9)
!3381 = !DILocation(line: 826, column: 17, scope: !3380)
!3382 = !DILocation(line: 826, column: 21, scope: !3380)
!3383 = !DILocation(line: 826, column: 24, scope: !3384)
!3384 = !DILexicalBlockFile(scope: !3380, file: !367, discriminator: 1)
!3385 = !DILocation(line: 826, column: 32, scope: !3380)
!3386 = !DILocation(line: 826, column: 9, scope: !728)
!3387 = !DILocation(line: 827, column: 25, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3380, file: !367, line: 826, column: 38)
!3389 = !DILocation(line: 827, column: 9, scope: !3388)
!3390 = !DILocation(line: 828, column: 9, scope: !3388)
!3391 = !DILocation(line: 831, column: 9, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !728, file: !367, line: 831, column: 9)
!3393 = !DILocation(line: 831, column: 17, scope: !3392)
!3394 = !DILocation(line: 831, column: 21, scope: !3392)
!3395 = !DILocation(line: 831, column: 24, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3392, file: !367, discriminator: 1)
!3397 = !DILocation(line: 831, column: 33, scope: !3392)
!3398 = !DILocation(line: 831, column: 37, scope: !3392)
!3399 = !DILocation(line: 831, column: 40, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3392, file: !367, discriminator: 2)
!3401 = !DILocation(line: 831, column: 48, scope: !3392)
!3402 = !DILocation(line: 831, column: 54, scope: !3392)
!3403 = !DILocation(line: 831, column: 57, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !3392, file: !367, discriminator: 3)
!3405 = !DILocation(line: 831, column: 66, scope: !3392)
!3406 = !DILocation(line: 831, column: 9, scope: !728)
!3407 = !DILocation(line: 832, column: 25, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3392, file: !367, line: 831, column: 73)
!3409 = !DILocation(line: 832, column: 9, scope: !3408)
!3410 = !DILocation(line: 833, column: 9, scope: !3408)
!3411 = !DILocation(line: 836, column: 15, scope: !728)
!3412 = !DILocation(line: 836, column: 24, scope: !728)
!3413 = !DILocation(line: 836, column: 32, scope: !728)
!3414 = !DILocation(line: 836, column: 30, scope: !728)
!3415 = !DILocation(line: 836, column: 12, scope: !728)
!3416 = !DILocation(line: 838, column: 15, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !728, file: !367, line: 838, column: 9)
!3418 = !DILocation(line: 838, column: 21, scope: !3417)
!3419 = !DILocation(line: 838, column: 82, scope: !3417)
!3420 = !DILocation(line: 838, column: 92, scope: !3417)
!3421 = !DILocation(line: 838, column: 77, scope: !3417)
!3422 = !DILocation(line: 838, column: 26, scope: !3417)
!3423 = !DILocation(line: 838, column: 98, scope: !3417)
!3424 = !DILocation(line: 838, column: 9, scope: !3417)
!3425 = !DILocation(line: 838, column: 145, scope: !3417)
!3426 = !DILocation(line: 838, column: 9, scope: !728)
!3427 = !DILocation(line: 839, column: 35, scope: !3417)
!3428 = !DILocation(line: 839, column: 16, scope: !3417)
!3429 = !DILocation(line: 839, column: 9, scope: !3417)
!3430 = !DILocation(line: 841, column: 34, scope: !728)
!3431 = !DILocation(line: 841, column: 41, scope: !728)
!3432 = !DILocation(line: 841, column: 50, scope: !728)
!3433 = !DILocation(line: 841, column: 57, scope: !728)
!3434 = !DILocation(line: 841, column: 67, scope: !728)
!3435 = !DILocation(line: 841, column: 12, scope: !728)
!3436 = !DILocation(line: 841, column: 5, scope: !728)
!3437 = !DILocation(line: 842, column: 1, scope: !728)
!3438 = !DILocation(line: 845, column: 35, scope: !736)
!3439 = !DILocation(line: 845, column: 51, scope: !736)
!3440 = !DILocation(line: 847, column: 23, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !736, file: !367, line: 847, column: 9)
!3442 = !DILocation(line: 847, column: 29, scope: !3441)
!3443 = !DILocation(line: 847, column: 10, scope: !3441)
!3444 = !DILocation(line: 847, column: 9, scope: !736)
!3445 = !DILocation(line: 848, column: 9, scope: !3441)
!3446 = !DILocation(line: 850, column: 33, scope: !736)
!3447 = !DILocation(line: 850, column: 39, scope: !736)
!3448 = !DILocation(line: 850, column: 43, scope: !736)
!3449 = !DILocation(line: 850, column: 12, scope: !736)
!3450 = !DILocation(line: 850, column: 5, scope: !736)
!3451 = !DILocation(line: 852, column: 1, scope: !736)
!3452 = !DILocation(line: 855, column: 35, scope: !740)
!3453 = !DILocation(line: 855, column: 51, scope: !740)
!3454 = !DILocation(line: 857, column: 23, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !740, file: !367, line: 857, column: 9)
!3456 = !DILocation(line: 857, column: 29, scope: !3455)
!3457 = !DILocation(line: 857, column: 10, scope: !3455)
!3458 = !DILocation(line: 857, column: 9, scope: !740)
!3459 = !DILocation(line: 858, column: 9, scope: !3455)
!3460 = !DILocation(line: 860, column: 24, scope: !740)
!3461 = !DILocation(line: 860, column: 30, scope: !740)
!3462 = !DILocation(line: 860, column: 34, scope: !740)
!3463 = !DILocation(line: 860, column: 12, scope: !740)
!3464 = !DILocation(line: 860, column: 5, scope: !740)
!3465 = !DILocation(line: 862, column: 1, scope: !740)
!3466 = !DILocation(line: 270, column: 26, scope: !706)
!3467 = !DILocation(line: 270, column: 40, scope: !706)
!3468 = !DILocation(line: 270, column: 52, scope: !706)
!3469 = !DILocation(line: 270, column: 63, scope: !706)
!3470 = !DILocation(line: 272, column: 5, scope: !706)
!3471 = !DILocation(line: 272, column: 10, scope: !706)
!3472 = !DILocation(line: 273, column: 5, scope: !706)
!3473 = !DILocation(line: 273, column: 9, scope: !706)
!3474 = !DILocation(line: 276, column: 24, scope: !706)
!3475 = !DILocation(line: 276, column: 32, scope: !706)
!3476 = !DILocation(line: 276, column: 5, scope: !706)
!3477 = !DILocation(line: 277, column: 27, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !706, file: !367, line: 277, column: 9)
!3479 = !DILocation(line: 277, column: 33, scope: !3478)
!3480 = !DILocation(line: 277, column: 10, scope: !3478)
!3481 = !DILocation(line: 277, column: 9, scope: !706)
!3482 = !DILocation(line: 278, column: 9, scope: !3478)
!3483 = !DILocation(line: 280, column: 15, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !706, file: !367, line: 280, column: 9)
!3485 = !DILocation(line: 280, column: 19, scope: !3484)
!3486 = !DILocation(line: 280, column: 9, scope: !3484)
!3487 = !DILocation(line: 280, column: 30, scope: !3484)
!3488 = !DILocation(line: 280, column: 9, scope: !706)
!3489 = !DILocation(line: 281, column: 35, scope: !3484)
!3490 = !DILocation(line: 281, column: 16, scope: !3484)
!3491 = !DILocation(line: 281, column: 9, scope: !3484)
!3492 = !DILocation(line: 282, column: 28, scope: !706)
!3493 = !DILocation(line: 282, column: 12, scope: !706)
!3494 = !DILocation(line: 282, column: 5, scope: !706)
!3495 = !DILocation(line: 283, column: 1, scope: !706)
!3496 = !DILocation(line: 1028, column: 19, scope: !744)
!3497 = !DILocation(line: 1028, column: 35, scope: !744)
!3498 = !DILocation(line: 1030, column: 37, scope: !744)
!3499 = !DILocation(line: 1030, column: 24, scope: !744)
!3500 = !DILocation(line: 1030, column: 12, scope: !744)
!3501 = !DILocation(line: 1030, column: 5, scope: !744)
!3502 = !DILocation(line: 1034, column: 24, scope: !780)
!3503 = !DILocation(line: 1034, column: 40, scope: !780)
!3504 = !DILocation(line: 1036, column: 42, scope: !780)
!3505 = !DILocation(line: 1036, column: 24, scope: !780)
!3506 = !DILocation(line: 1036, column: 12, scope: !780)
!3507 = !DILocation(line: 1036, column: 5, scope: !780)
!3508 = !DILocation(line: 76, column: 24, scope: !748)
!3509 = !DILocation(line: 78, column: 5, scope: !748)
!3510 = !DILocation(line: 78, column: 18, scope: !748)
!3511 = !DILocation(line: 79, column: 5, scope: !748)
!3512 = !DILocation(line: 79, column: 9, scope: !748)
!3513 = !DILocation(line: 79, column: 13, scope: !748)
!3514 = !DILocation(line: 79, column: 20, scope: !748)
!3515 = !DILocation(line: 80, column: 5, scope: !748)
!3516 = !DILocation(line: 80, column: 11, scope: !748)
!3517 = !DILocation(line: 81, column: 5, scope: !748)
!3518 = !DILocation(line: 81, column: 11, scope: !748)
!3519 = !DILocation(line: 88, column: 27, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !748, file: !367, line: 88, column: 9)
!3521 = !DILocation(line: 88, column: 10, scope: !3520)
!3522 = !DILocation(line: 88, column: 9, scope: !748)
!3523 = !DILocation(line: 89, column: 8, scope: !3520)
!3524 = !DILocation(line: 90, column: 9, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !748, file: !367, line: 90, column: 9)
!3526 = !DILocation(line: 90, column: 14, scope: !3525)
!3527 = !DILocation(line: 90, column: 9, scope: !748)
!3528 = !DILocation(line: 91, column: 15, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3525, file: !367, line: 90, column: 29)
!3530 = !DILocation(line: 91, column: 13, scope: !3529)
!3531 = !DILocation(line: 92, column: 19, scope: !3529)
!3532 = !DILocation(line: 93, column: 5, scope: !3529)
!3533 = !DILocation(line: 95, column: 26, scope: !760)
!3534 = !DILocation(line: 95, column: 33, scope: !760)
!3535 = !DILocation(line: 95, column: 43, scope: !760)
!3536 = !DILocation(line: 95, column: 1311, scope: !760)
!3537 = !DILocation(line: 95, column: 1324, scope: !3538)
!3538 = !DILexicalBlockFile(scope: !760, file: !367, discriminator: 1)
!3539 = !DILocation(line: 95, column: 1340, scope: !760)
!3540 = !DILocation(line: 95, column: 1349, scope: !760)
!3541 = !DILocation(line: 95, column: 1210, scope: !760)
!3542 = !DILocation(line: 95, column: 1512, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !764, file: !367, discriminator: 3)
!3544 = !DILocation(line: 95, column: 1533, scope: !764)
!3545 = !DILocation(line: 95, column: 1580, scope: !764)
!3546 = !DILocation(line: 95, column: 1587, scope: !764)
!3547 = !DILocation(line: 95, column: 1600, scope: !764)
!3548 = !DILocation(line: 95, column: 1611, scope: !764)
!3549 = !DILocation(line: 95, column: 1621, scope: !764)
!3550 = !DILocation(line: 95, column: 1619, scope: !764)
!3551 = !DILocation(line: 95, column: 1676, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !764, file: !367, line: 95, column: 1676)
!3553 = !DILocation(line: 95, column: 1685, scope: !3552)
!3554 = !DILocation(line: 95, column: 1689, scope: !3552)
!3555 = !DILocation(line: 95, column: 1692, scope: !3556)
!3556 = !DILexicalBlockFile(scope: !3552, file: !367, discriminator: 5)
!3557 = !DILocation(line: 95, column: 1701, scope: !3552)
!3558 = !DILocation(line: 95, column: 1676, scope: !764)
!3559 = !DILocation(line: 95, column: 1721, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3561, file: !367, discriminator: 7)
!3561 = distinct !DILexicalBlock(scope: !3552, file: !367, line: 95, column: 1707)
!3562 = !DILocation(line: 95, column: 1731, scope: !3561)
!3563 = !DILocation(line: 95, column: 1729, scope: !3561)
!3564 = !DILocation(line: 95, column: 1718, scope: !3561)
!3565 = !DILocation(line: 95, column: 1787, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3561, file: !367, line: 95, column: 1787)
!3567 = !DILocation(line: 95, column: 1796, scope: !3566)
!3568 = !DILocation(line: 95, column: 1800, scope: !3566)
!3569 = !DILocation(line: 95, column: 1803, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !3566, file: !367, discriminator: 9)
!3571 = !DILocation(line: 95, column: 1812, scope: !3566)
!3572 = !DILocation(line: 95, column: 1787, scope: !3561)
!3573 = !DILocation(line: 95, column: 1832, scope: !3574)
!3574 = !DILexicalBlockFile(scope: !3575, file: !367, discriminator: 11)
!3575 = distinct !DILexicalBlock(scope: !3566, file: !367, line: 95, column: 1818)
!3576 = !DILocation(line: 95, column: 1842, scope: !3575)
!3577 = !DILocation(line: 95, column: 1840, scope: !3575)
!3578 = !DILocation(line: 95, column: 1829, scope: !3575)
!3579 = !DILocation(line: 95, column: 1898, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3575, file: !367, line: 95, column: 1898)
!3581 = !DILocation(line: 95, column: 1907, scope: !3580)
!3582 = !DILocation(line: 95, column: 1911, scope: !3580)
!3583 = !DILocation(line: 95, column: 1914, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3580, file: !367, discriminator: 13)
!3585 = !DILocation(line: 95, column: 1923, scope: !3580)
!3586 = !DILocation(line: 95, column: 1898, scope: !3575)
!3587 = !DILocation(line: 95, column: 1941, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !3580, file: !367, discriminator: 15)
!3589 = !DILocation(line: 95, column: 1951, scope: !3580)
!3590 = !DILocation(line: 95, column: 1949, scope: !3580)
!3591 = !DILocation(line: 95, column: 1938, scope: !3580)
!3592 = !DILocation(line: 95, column: 1929, scope: !3580)
!3593 = !DILocation(line: 95, column: 2003, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3595, file: !367, discriminator: 17)
!3595 = !DILexicalBlockFile(scope: !3596, file: !367, discriminator: 16)
!3596 = !DILexicalBlockFile(scope: !3575, file: !367, discriminator: 14)
!3597 = !DILocation(line: 95, column: 2005, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !3599, file: !367, discriminator: 18)
!3599 = !DILexicalBlockFile(scope: !3600, file: !367, discriminator: 12)
!3600 = !DILexicalBlockFile(scope: !3561, file: !367, discriminator: 10)
!3601 = !DILocation(line: 95, column: 2007, scope: !3602)
!3602 = !DILexicalBlockFile(scope: !3603, file: !367, discriminator: 19)
!3603 = !DILexicalBlockFile(scope: !3604, file: !367, discriminator: 8)
!3604 = !DILexicalBlockFile(scope: !764, file: !367, discriminator: 6)
!3605 = !DILocation(line: 95, column: 1704, scope: !3552)
!3606 = !DILocation(line: 95, column: 2017, scope: !760)
!3607 = !DILocation(line: 95, column: 2017, scope: !764)
!3608 = !DILocation(line: 95, column: 2042, scope: !3609)
!3609 = !DILexicalBlockFile(scope: !3610, file: !367, discriminator: 4)
!3610 = !DILexicalBlockFile(scope: !760, file: !367, discriminator: 2)
!3611 = !DILocation(line: 95, column: 2024, scope: !760)
!3612 = !DILocation(line: 95, column: 26, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3614, file: !367, discriminator: 21)
!3614 = !DILexicalBlockFile(scope: !760, file: !367, discriminator: 20)
!3615 = !DILocation(line: 95, column: 2057, scope: !761)
!3616 = !DILocation(line: 95, column: 2057, scope: !760)
!3617 = !DILocation(line: 95, column: 2060, scope: !761)
!3618 = !DILocation(line: 95, column: 9, scope: !748)
!3619 = !DILocation(line: 96, column: 15, scope: !761)
!3620 = !DILocation(line: 96, column: 9, scope: !761)
!3621 = !DILocation(line: 97, column: 31, scope: !767)
!3622 = !DILocation(line: 97, column: 38, scope: !767)
!3623 = !DILocation(line: 97, column: 48, scope: !767)
!3624 = !DILocation(line: 97, column: 1316, scope: !767)
!3625 = !DILocation(line: 97, column: 1329, scope: !3626)
!3626 = !DILexicalBlockFile(scope: !767, file: !367, discriminator: 1)
!3627 = !DILocation(line: 97, column: 1345, scope: !767)
!3628 = !DILocation(line: 97, column: 1354, scope: !767)
!3629 = !DILocation(line: 97, column: 1215, scope: !767)
!3630 = !DILocation(line: 97, column: 1517, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !771, file: !367, discriminator: 3)
!3632 = !DILocation(line: 97, column: 1538, scope: !771)
!3633 = !DILocation(line: 97, column: 1585, scope: !771)
!3634 = !DILocation(line: 97, column: 1592, scope: !771)
!3635 = !DILocation(line: 97, column: 1605, scope: !771)
!3636 = !DILocation(line: 97, column: 1616, scope: !771)
!3637 = !DILocation(line: 97, column: 1626, scope: !771)
!3638 = !DILocation(line: 97, column: 1624, scope: !771)
!3639 = !DILocation(line: 97, column: 1681, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !771, file: !367, line: 97, column: 1681)
!3641 = !DILocation(line: 97, column: 1690, scope: !3640)
!3642 = !DILocation(line: 97, column: 1694, scope: !3640)
!3643 = !DILocation(line: 97, column: 1697, scope: !3644)
!3644 = !DILexicalBlockFile(scope: !3640, file: !367, discriminator: 5)
!3645 = !DILocation(line: 97, column: 1706, scope: !3640)
!3646 = !DILocation(line: 97, column: 1681, scope: !771)
!3647 = !DILocation(line: 97, column: 1726, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3649, file: !367, discriminator: 7)
!3649 = distinct !DILexicalBlock(scope: !3640, file: !367, line: 97, column: 1712)
!3650 = !DILocation(line: 97, column: 1736, scope: !3649)
!3651 = !DILocation(line: 97, column: 1734, scope: !3649)
!3652 = !DILocation(line: 97, column: 1723, scope: !3649)
!3653 = !DILocation(line: 97, column: 1792, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3649, file: !367, line: 97, column: 1792)
!3655 = !DILocation(line: 97, column: 1801, scope: !3654)
!3656 = !DILocation(line: 97, column: 1805, scope: !3654)
!3657 = !DILocation(line: 97, column: 1808, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !3654, file: !367, discriminator: 9)
!3659 = !DILocation(line: 97, column: 1817, scope: !3654)
!3660 = !DILocation(line: 97, column: 1792, scope: !3649)
!3661 = !DILocation(line: 97, column: 1837, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3663, file: !367, discriminator: 11)
!3663 = distinct !DILexicalBlock(scope: !3654, file: !367, line: 97, column: 1823)
!3664 = !DILocation(line: 97, column: 1847, scope: !3663)
!3665 = !DILocation(line: 97, column: 1845, scope: !3663)
!3666 = !DILocation(line: 97, column: 1834, scope: !3663)
!3667 = !DILocation(line: 97, column: 1903, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3663, file: !367, line: 97, column: 1903)
!3669 = !DILocation(line: 97, column: 1912, scope: !3668)
!3670 = !DILocation(line: 97, column: 1916, scope: !3668)
!3671 = !DILocation(line: 97, column: 1919, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3668, file: !367, discriminator: 13)
!3673 = !DILocation(line: 97, column: 1928, scope: !3668)
!3674 = !DILocation(line: 97, column: 1903, scope: !3663)
!3675 = !DILocation(line: 97, column: 1946, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !3668, file: !367, discriminator: 15)
!3677 = !DILocation(line: 97, column: 1956, scope: !3668)
!3678 = !DILocation(line: 97, column: 1954, scope: !3668)
!3679 = !DILocation(line: 97, column: 1943, scope: !3668)
!3680 = !DILocation(line: 97, column: 1934, scope: !3668)
!3681 = !DILocation(line: 97, column: 2008, scope: !3682)
!3682 = !DILexicalBlockFile(scope: !3683, file: !367, discriminator: 17)
!3683 = !DILexicalBlockFile(scope: !3684, file: !367, discriminator: 16)
!3684 = !DILexicalBlockFile(scope: !3663, file: !367, discriminator: 14)
!3685 = !DILocation(line: 97, column: 2010, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3687, file: !367, discriminator: 18)
!3687 = !DILexicalBlockFile(scope: !3688, file: !367, discriminator: 12)
!3688 = !DILexicalBlockFile(scope: !3649, file: !367, discriminator: 10)
!3689 = !DILocation(line: 97, column: 2012, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !3691, file: !367, discriminator: 19)
!3691 = !DILexicalBlockFile(scope: !3692, file: !367, discriminator: 8)
!3692 = !DILexicalBlockFile(scope: !771, file: !367, discriminator: 6)
!3693 = !DILocation(line: 97, column: 1709, scope: !3640)
!3694 = !DILocation(line: 97, column: 2022, scope: !767)
!3695 = !DILocation(line: 97, column: 2022, scope: !771)
!3696 = !DILocation(line: 97, column: 2047, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !3698, file: !367, discriminator: 4)
!3698 = !DILexicalBlockFile(scope: !767, file: !367, discriminator: 2)
!3699 = !DILocation(line: 97, column: 2029, scope: !767)
!3700 = !DILocation(line: 97, column: 31, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3702, file: !367, discriminator: 21)
!3702 = !DILexicalBlockFile(scope: !767, file: !367, discriminator: 20)
!3703 = !DILocation(line: 97, column: 2062, scope: !768)
!3704 = !DILocation(line: 97, column: 2062, scope: !767)
!3705 = !DILocation(line: 97, column: 2065, scope: !768)
!3706 = !DILocation(line: 97, column: 14, scope: !761)
!3707 = !DILocation(line: 98, column: 15, scope: !768)
!3708 = !DILocation(line: 98, column: 9, scope: !768)
!3709 = !DILocation(line: 99, column: 31, scope: !774)
!3710 = !DILocation(line: 99, column: 38, scope: !774)
!3711 = !DILocation(line: 99, column: 48, scope: !774)
!3712 = !DILocation(line: 99, column: 1329, scope: !774)
!3713 = !DILocation(line: 99, column: 1342, scope: !3714)
!3714 = !DILexicalBlockFile(scope: !774, file: !367, discriminator: 1)
!3715 = !DILocation(line: 99, column: 1359, scope: !774)
!3716 = !DILocation(line: 99, column: 1368, scope: !774)
!3717 = !DILocation(line: 99, column: 1225, scope: !774)
!3718 = !DILocation(line: 99, column: 1532, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !778, file: !367, discriminator: 3)
!3720 = !DILocation(line: 99, column: 1553, scope: !778)
!3721 = !DILocation(line: 99, column: 1600, scope: !778)
!3722 = !DILocation(line: 99, column: 1607, scope: !778)
!3723 = !DILocation(line: 99, column: 1620, scope: !778)
!3724 = !DILocation(line: 99, column: 1631, scope: !778)
!3725 = !DILocation(line: 99, column: 1641, scope: !778)
!3726 = !DILocation(line: 99, column: 1639, scope: !778)
!3727 = !DILocation(line: 99, column: 1697, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !778, file: !367, line: 99, column: 1697)
!3729 = !DILocation(line: 99, column: 1706, scope: !3728)
!3730 = !DILocation(line: 99, column: 1710, scope: !3728)
!3731 = !DILocation(line: 99, column: 1713, scope: !3732)
!3732 = !DILexicalBlockFile(scope: !3728, file: !367, discriminator: 5)
!3733 = !DILocation(line: 99, column: 1722, scope: !3728)
!3734 = !DILocation(line: 99, column: 1697, scope: !778)
!3735 = !DILocation(line: 99, column: 1742, scope: !3736)
!3736 = !DILexicalBlockFile(scope: !3737, file: !367, discriminator: 7)
!3737 = distinct !DILexicalBlock(scope: !3728, file: !367, line: 99, column: 1728)
!3738 = !DILocation(line: 99, column: 1752, scope: !3737)
!3739 = !DILocation(line: 99, column: 1750, scope: !3737)
!3740 = !DILocation(line: 99, column: 1739, scope: !3737)
!3741 = !DILocation(line: 99, column: 1809, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3737, file: !367, line: 99, column: 1809)
!3743 = !DILocation(line: 99, column: 1818, scope: !3742)
!3744 = !DILocation(line: 99, column: 1822, scope: !3742)
!3745 = !DILocation(line: 99, column: 1825, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3742, file: !367, discriminator: 9)
!3747 = !DILocation(line: 99, column: 1834, scope: !3742)
!3748 = !DILocation(line: 99, column: 1809, scope: !3737)
!3749 = !DILocation(line: 99, column: 1854, scope: !3750)
!3750 = !DILexicalBlockFile(scope: !3751, file: !367, discriminator: 11)
!3751 = distinct !DILexicalBlock(scope: !3742, file: !367, line: 99, column: 1840)
!3752 = !DILocation(line: 99, column: 1864, scope: !3751)
!3753 = !DILocation(line: 99, column: 1862, scope: !3751)
!3754 = !DILocation(line: 99, column: 1851, scope: !3751)
!3755 = !DILocation(line: 99, column: 1921, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3751, file: !367, line: 99, column: 1921)
!3757 = !DILocation(line: 99, column: 1930, scope: !3756)
!3758 = !DILocation(line: 99, column: 1934, scope: !3756)
!3759 = !DILocation(line: 99, column: 1937, scope: !3760)
!3760 = !DILexicalBlockFile(scope: !3756, file: !367, discriminator: 13)
!3761 = !DILocation(line: 99, column: 1946, scope: !3756)
!3762 = !DILocation(line: 99, column: 1921, scope: !3751)
!3763 = !DILocation(line: 99, column: 1964, scope: !3764)
!3764 = !DILexicalBlockFile(scope: !3756, file: !367, discriminator: 15)
!3765 = !DILocation(line: 99, column: 1974, scope: !3756)
!3766 = !DILocation(line: 99, column: 1972, scope: !3756)
!3767 = !DILocation(line: 99, column: 1961, scope: !3756)
!3768 = !DILocation(line: 99, column: 1952, scope: !3756)
!3769 = !DILocation(line: 99, column: 2027, scope: !3770)
!3770 = !DILexicalBlockFile(scope: !3771, file: !367, discriminator: 17)
!3771 = !DILexicalBlockFile(scope: !3772, file: !367, discriminator: 16)
!3772 = !DILexicalBlockFile(scope: !3751, file: !367, discriminator: 14)
!3773 = !DILocation(line: 99, column: 2029, scope: !3774)
!3774 = !DILexicalBlockFile(scope: !3775, file: !367, discriminator: 18)
!3775 = !DILexicalBlockFile(scope: !3776, file: !367, discriminator: 12)
!3776 = !DILexicalBlockFile(scope: !3737, file: !367, discriminator: 10)
!3777 = !DILocation(line: 99, column: 2031, scope: !3778)
!3778 = !DILexicalBlockFile(scope: !3779, file: !367, discriminator: 19)
!3779 = !DILexicalBlockFile(scope: !3780, file: !367, discriminator: 8)
!3780 = !DILexicalBlockFile(scope: !778, file: !367, discriminator: 6)
!3781 = !DILocation(line: 99, column: 1725, scope: !3728)
!3782 = !DILocation(line: 99, column: 2041, scope: !774)
!3783 = !DILocation(line: 99, column: 2041, scope: !778)
!3784 = !DILocation(line: 99, column: 2066, scope: !3785)
!3785 = !DILexicalBlockFile(scope: !3786, file: !367, discriminator: 4)
!3786 = !DILexicalBlockFile(scope: !774, file: !367, discriminator: 2)
!3787 = !DILocation(line: 99, column: 2048, scope: !774)
!3788 = !DILocation(line: 99, column: 31, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !3790, file: !367, discriminator: 21)
!3790 = !DILexicalBlockFile(scope: !774, file: !367, discriminator: 20)
!3791 = !DILocation(line: 99, column: 2082, scope: !775)
!3792 = !DILocation(line: 99, column: 2082, scope: !774)
!3793 = !DILocation(line: 99, column: 2085, scope: !775)
!3794 = !DILocation(line: 99, column: 14, scope: !768)
!3795 = !DILocation(line: 100, column: 15, scope: !775)
!3796 = !DILocation(line: 100, column: 9, scope: !775)
!3797 = !DILocation(line: 102, column: 25, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !775, file: !367, line: 101, column: 10)
!3799 = !DILocation(line: 102, column: 9, scope: !3798)
!3800 = !DILocation(line: 103, column: 9, scope: !3798)
!3801 = !DILocation(line: 108, column: 9, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !748, file: !367, line: 108, column: 9)
!3803 = !DILocation(line: 108, column: 20, scope: !3802)
!3804 = !DILocation(line: 108, column: 9, scope: !748)
!3805 = !DILocation(line: 109, column: 21, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3802, file: !367, line: 108, column: 35)
!3807 = !DILocation(line: 109, column: 19, scope: !3806)
!3808 = !DILocation(line: 110, column: 12, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3806, file: !367, line: 110, column: 12)
!3810 = !DILocation(line: 110, column: 23, scope: !3809)
!3811 = !DILocation(line: 110, column: 12, scope: !3806)
!3812 = !DILocation(line: 111, column: 22, scope: !3809)
!3813 = !DILocation(line: 111, column: 11, scope: !3809)
!3814 = !DILocation(line: 112, column: 5, scope: !3806)
!3815 = !DILocation(line: 118, column: 19, scope: !748)
!3816 = !DILocation(line: 118, column: 31, scope: !748)
!3817 = !DILocation(line: 118, column: 36, scope: !748)
!3818 = !DILocation(line: 118, column: 10, scope: !748)
!3819 = !DILocation(line: 118, column: 8, scope: !748)
!3820 = !DILocation(line: 120, column: 9, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !748, file: !367, line: 120, column: 9)
!3822 = !DILocation(line: 120, column: 12, scope: !3821)
!3823 = !DILocation(line: 120, column: 9, scope: !748)
!3824 = !DILocation(line: 121, column: 40, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3821, file: !367, line: 120, column: 19)
!3826 = !DILocation(line: 121, column: 55, scope: !3825)
!3827 = !DILocation(line: 121, column: 9, scope: !3825)
!3828 = !DILocation(line: 122, column: 9, scope: !3825)
!3829 = !DILocation(line: 127, column: 15, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !748, file: !367, line: 127, column: 9)
!3831 = !DILocation(line: 127, column: 9, scope: !3830)
!3832 = !DILocation(line: 127, column: 25, scope: !3830)
!3833 = !DILocation(line: 127, column: 9, scope: !748)
!3834 = !DILocation(line: 128, column: 15, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3830, file: !367, line: 127, column: 32)
!3836 = !DILocation(line: 128, column: 9, scope: !3835)
!3837 = !DILocation(line: 129, column: 40, scope: !3835)
!3838 = !DILocation(line: 129, column: 55, scope: !3835)
!3839 = !DILocation(line: 129, column: 9, scope: !3835)
!3840 = !DILocation(line: 130, column: 9, scope: !3835)
!3841 = !DILocation(line: 133, column: 15, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !748, file: !367, line: 133, column: 9)
!3843 = !DILocation(line: 133, column: 9, scope: !3842)
!3844 = !DILocation(line: 133, column: 130, scope: !3842)
!3845 = !DILocation(line: 133, column: 9, scope: !748)
!3846 = !DILocation(line: 134, column: 15, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3842, file: !367, line: 133, column: 137)
!3848 = !DILocation(line: 134, column: 9, scope: !3847)
!3849 = !DILocation(line: 135, column: 40, scope: !3847)
!3850 = !DILocation(line: 135, column: 55, scope: !3847)
!3851 = !DILocation(line: 135, column: 9, scope: !3847)
!3852 = !DILocation(line: 136, column: 9, scope: !3847)
!3853 = !DILocation(line: 139, column: 35, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !748, file: !367, line: 139, column: 9)
!3855 = !DILocation(line: 139, column: 19, scope: !3854)
!3856 = !DILocation(line: 139, column: 15, scope: !3854)
!3857 = !DILocation(line: 139, column: 67, scope: !3854)
!3858 = !DILocation(line: 139, column: 9, scope: !748)
!3859 = !DILocation(line: 140, column: 15, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3854, file: !367, line: 139, column: 82)
!3861 = !DILocation(line: 140, column: 9, scope: !3860)
!3862 = !DILocation(line: 141, column: 9, scope: !3860)
!3863 = !DILocation(line: 143, column: 24, scope: !748)
!3864 = !DILocation(line: 143, column: 5, scope: !748)
!3865 = !DILocation(line: 143, column: 11, scope: !748)
!3866 = !DILocation(line: 143, column: 22, scope: !748)
!3867 = !DILocation(line: 144, column: 16, scope: !748)
!3868 = !DILocation(line: 144, column: 5, scope: !748)
!3869 = !DILocation(line: 144, column: 11, scope: !748)
!3870 = !DILocation(line: 144, column: 14, scope: !748)
!3871 = !DILocation(line: 145, column: 18, scope: !748)
!3872 = !DILocation(line: 145, column: 5, scope: !748)
!3873 = !DILocation(line: 145, column: 11, scope: !748)
!3874 = !DILocation(line: 145, column: 16, scope: !748)
!3875 = !DILocation(line: 146, column: 20, scope: !748)
!3876 = !DILocation(line: 146, column: 26, scope: !748)
!3877 = !DILocation(line: 146, column: 33, scope: !748)
!3878 = !DILocation(line: 146, column: 5, scope: !748)
!3879 = !DILocation(line: 146, column: 11, scope: !748)
!3880 = !DILocation(line: 146, column: 18, scope: !748)
!3881 = !DILocation(line: 147, column: 19, scope: !748)
!3882 = !DILocation(line: 147, column: 5, scope: !748)
!3883 = !DILocation(line: 147, column: 11, scope: !748)
!3884 = !DILocation(line: 147, column: 17, scope: !748)
!3885 = !{!2011, !1839, i64 40}
!3886 = !DILocation(line: 148, column: 12, scope: !748)
!3887 = !DILocation(line: 148, column: 5, scope: !748)
!3888 = !DILocation(line: 149, column: 1, scope: !748)
!3889 = !DILocation(line: 166, column: 29, scope: !784)
!3890 = !DILocation(line: 168, column: 5, scope: !784)
!3891 = !DILocation(line: 168, column: 11, scope: !784)
!3892 = !DILocation(line: 169, column: 5, scope: !784)
!3893 = !DILocation(line: 169, column: 9, scope: !784)
!3894 = !DILocation(line: 170, column: 5, scope: !784)
!3895 = !DILocation(line: 170, column: 18, scope: !784)
!3896 = !DILocation(line: 172, column: 27, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !784, file: !367, line: 172, column: 9)
!3898 = !DILocation(line: 172, column: 10, scope: !3897)
!3899 = !DILocation(line: 172, column: 9, scope: !784)
!3900 = !DILocation(line: 173, column: 9, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3897, file: !367, line: 172, column: 52)
!3902 = !DILocation(line: 176, column: 9, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !784, file: !367, line: 176, column: 9)
!3904 = !DILocation(line: 176, column: 20, scope: !3903)
!3905 = !DILocation(line: 176, column: 9, scope: !784)
!3906 = !DILocation(line: 177, column: 22, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3903, file: !367, line: 176, column: 35)
!3908 = !DILocation(line: 177, column: 20, scope: !3907)
!3909 = !DILocation(line: 178, column: 13, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3907, file: !367, line: 178, column: 13)
!3911 = !DILocation(line: 178, column: 24, scope: !3910)
!3912 = !DILocation(line: 178, column: 13, scope: !3907)
!3913 = !DILocation(line: 179, column: 24, scope: !3910)
!3914 = !DILocation(line: 179, column: 13, scope: !3910)
!3915 = !DILocation(line: 180, column: 5, scope: !3907)
!3916 = !DILocation(line: 182, column: 19, scope: !784)
!3917 = !DILocation(line: 182, column: 10, scope: !784)
!3918 = !DILocation(line: 182, column: 8, scope: !784)
!3919 = !DILocation(line: 183, column: 9, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !784, file: !367, line: 183, column: 9)
!3921 = !DILocation(line: 183, column: 12, scope: !3920)
!3922 = !DILocation(line: 183, column: 9, scope: !784)
!3923 = !DILocation(line: 184, column: 40, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3920, file: !367, line: 183, column: 19)
!3925 = !DILocation(line: 184, column: 55, scope: !3924)
!3926 = !DILocation(line: 184, column: 9, scope: !3924)
!3927 = !DILocation(line: 185, column: 9, scope: !3924)
!3928 = !DILocation(line: 188, column: 35, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !784, file: !367, line: 188, column: 9)
!3930 = !DILocation(line: 188, column: 19, scope: !3929)
!3931 = !DILocation(line: 188, column: 15, scope: !3929)
!3932 = !DILocation(line: 188, column: 67, scope: !3929)
!3933 = !DILocation(line: 188, column: 9, scope: !784)
!3934 = !DILocation(line: 189, column: 15, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3929, file: !367, line: 188, column: 82)
!3936 = !DILocation(line: 189, column: 9, scope: !3935)
!3937 = !DILocation(line: 190, column: 9, scope: !3935)
!3938 = !DILocation(line: 193, column: 16, scope: !784)
!3939 = !DILocation(line: 193, column: 5, scope: !784)
!3940 = !DILocation(line: 193, column: 11, scope: !784)
!3941 = !DILocation(line: 193, column: 14, scope: !784)
!3942 = !DILocation(line: 195, column: 12, scope: !784)
!3943 = !DILocation(line: 195, column: 5, scope: !784)
!3944 = !DILocation(line: 196, column: 1, scope: !784)
