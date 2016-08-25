; ModuleID = './ossaudiodev.bc'
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
  %call = call i32 @PyType_Ready(%struct._typeobject* @OSSAudioType)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @OSSMixerType)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @ossaudiodevmodule, i32 1013)
  store %struct._object* %call5, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp6 = icmp eq %struct._object* %0, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call9, %struct._object** @OSSAudioError, align 8
  %1 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.8
  %2 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt11, align 8
  %inc12 = add i64 %5, 1
  store i64 %inc12, i64* %ob_refcnt11, align 8
  %6 = load %struct._object*, %struct._object** %m, align 8
  %7 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  %call13 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %7)
  %8 = load %struct._object*, %struct._object** %m, align 8
  %9 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  %call14 = call i32 @PyModule_AddObject(%struct._object* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), %struct._object* %9)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end.8
  %10 = load %struct._object*, %struct._object** %m, align 8
  %call16 = call i32 @build_namelists(%struct._object* %10)
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64 0)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %12 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i64 1)
  %cmp25 = icmp eq i32 %call24, -1
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call28 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i64 2)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.27
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call32 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i64 4)
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.31
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call36 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i64 8)
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call40 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i64 16)
  %cmp41 = icmp eq i32 %call40, -1
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %17 = load %struct._object*, %struct._object** %m, align 8
  %call44 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i64 32)
  %cmp45 = icmp eq i32 %call44, -1
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.43
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.47:                                        ; preds = %if.end.43
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call48 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i64 64)
  %cmp49 = icmp eq i32 %call48, -1
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.47
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call52 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i64 128)
  %cmp53 = icmp eq i32 %call52, -1
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.51
  %20 = load %struct._object*, %struct._object** %m, align 8
  %call56 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i64 256)
  %cmp57 = icmp eq i32 %call56, -1
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.55
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %if.end.55
  %21 = load %struct._object*, %struct._object** %m, align 8
  %call60 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i64 512)
  %cmp61 = icmp eq i32 %call60, -1
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.59
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call64 = call i32 @PyModule_AddIntConstant(%struct._object* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i64 1024)
  %cmp65 = icmp eq i32 %call64, -1
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.63
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.67:                                        ; preds = %if.end.63
  %23 = load %struct._object*, %struct._object** %m, align 8
  %call68 = call i32 @PyModule_AddIntConstant(%struct._object* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i64 16)
  %cmp69 = icmp eq i32 %call68, -1
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.71:                                        ; preds = %if.end.67
  %24 = load %struct._object*, %struct._object** %m, align 8
  %call72 = call i32 @PyModule_AddIntConstant(%struct._object* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i64 512)
  %cmp73 = icmp eq i32 %call72, -1
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.71
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.75:                                        ; preds = %if.end.71
  %25 = load %struct._object*, %struct._object** %m, align 8
  %call76 = call i32 @PyModule_AddIntConstant(%struct._object* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i64 25)
  %cmp77 = icmp eq i32 %call76, -1
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.75
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.79:                                        ; preds = %if.end.75
  %26 = load %struct._object*, %struct._object** %m, align 8
  %call80 = call i32 @PyModule_AddIntConstant(%struct._object* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i64 0)
  %cmp81 = icmp eq i32 %call80, -1
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.79
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %if.end.79
  %27 = load %struct._object*, %struct._object** %m, align 8
  %call84 = call i32 @PyModule_AddIntConstant(%struct._object* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i64 1)
  %cmp85 = icmp eq i32 %call84, -1
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.87:                                        ; preds = %if.end.83
  %28 = load %struct._object*, %struct._object** %m, align 8
  %call88 = call i32 @PyModule_AddIntConstant(%struct._object* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i64 2)
  %cmp89 = icmp eq i32 %call88, -1
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.91:                                        ; preds = %if.end.87
  %29 = load %struct._object*, %struct._object** %m, align 8
  %call92 = call i32 @PyModule_AddIntConstant(%struct._object* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i64 3)
  %cmp93 = icmp eq i32 %call92, -1
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.91
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.95:                                        ; preds = %if.end.91
  %30 = load %struct._object*, %struct._object** %m, align 8
  %call96 = call i32 @PyModule_AddIntConstant(%struct._object* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i64 4)
  %cmp97 = icmp eq i32 %call96, -1
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.95
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.99:                                        ; preds = %if.end.95
  %31 = load %struct._object*, %struct._object** %m, align 8
  %call100 = call i32 @PyModule_AddIntConstant(%struct._object* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i64 5)
  %cmp101 = icmp eq i32 %call100, -1
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.103:                                       ; preds = %if.end.99
  %32 = load %struct._object*, %struct._object** %m, align 8
  %call104 = call i32 @PyModule_AddIntConstant(%struct._object* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i64 6)
  %cmp105 = icmp eq i32 %call104, -1
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.103
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.107:                                       ; preds = %if.end.103
  %33 = load %struct._object*, %struct._object** %m, align 8
  %call108 = call i32 @PyModule_AddIntConstant(%struct._object* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i64 7)
  %cmp109 = icmp eq i32 %call108, -1
  br i1 %cmp109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.107
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.111:                                       ; preds = %if.end.107
  %34 = load %struct._object*, %struct._object** %m, align 8
  %call112 = call i32 @PyModule_AddIntConstant(%struct._object* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i64 8)
  %cmp113 = icmp eq i32 %call112, -1
  br i1 %cmp113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.111
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.115:                                       ; preds = %if.end.111
  %35 = load %struct._object*, %struct._object** %m, align 8
  %call116 = call i32 @PyModule_AddIntConstant(%struct._object* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i64 9)
  %cmp117 = icmp eq i32 %call116, -1
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.115
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.119:                                       ; preds = %if.end.115
  %36 = load %struct._object*, %struct._object** %m, align 8
  %call120 = call i32 @PyModule_AddIntConstant(%struct._object* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i64 10)
  %cmp121 = icmp eq i32 %call120, -1
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.119
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.123:                                       ; preds = %if.end.119
  %37 = load %struct._object*, %struct._object** %m, align 8
  %call124 = call i32 @PyModule_AddIntConstant(%struct._object* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i64 11)
  %cmp125 = icmp eq i32 %call124, -1
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.123
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.127:                                       ; preds = %if.end.123
  %38 = load %struct._object*, %struct._object** %m, align 8
  %call128 = call i32 @PyModule_AddIntConstant(%struct._object* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i64 12)
  %cmp129 = icmp eq i32 %call128, -1
  br i1 %cmp129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.127
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.131:                                       ; preds = %if.end.127
  %39 = load %struct._object*, %struct._object** %m, align 8
  %call132 = call i32 @PyModule_AddIntConstant(%struct._object* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i64 13)
  %cmp133 = icmp eq i32 %call132, -1
  br i1 %cmp133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.131
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.135:                                       ; preds = %if.end.131
  %40 = load %struct._object*, %struct._object** %m, align 8
  %call136 = call i32 @PyModule_AddIntConstant(%struct._object* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i64 14)
  %cmp137 = icmp eq i32 %call136, -1
  br i1 %cmp137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.135
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.139:                                       ; preds = %if.end.135
  %41 = load %struct._object*, %struct._object** %m, align 8
  %call140 = call i32 @PyModule_AddIntConstant(%struct._object* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i64 15)
  %cmp141 = icmp eq i32 %call140, -1
  br i1 %cmp141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.139
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.143:                                       ; preds = %if.end.139
  %42 = load %struct._object*, %struct._object** %m, align 8
  %call144 = call i32 @PyModule_AddIntConstant(%struct._object* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i64 16)
  %cmp145 = icmp eq i32 %call144, -1
  br i1 %cmp145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.143
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.147:                                       ; preds = %if.end.143
  %43 = load %struct._object*, %struct._object** %m, align 8
  %call148 = call i32 @PyModule_AddIntConstant(%struct._object* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i64 17)
  %cmp149 = icmp eq i32 %call148, -1
  br i1 %cmp149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.147
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.151:                                       ; preds = %if.end.147
  %44 = load %struct._object*, %struct._object** %m, align 8
  %call152 = call i32 @PyModule_AddIntConstant(%struct._object* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i64 18)
  %cmp153 = icmp eq i32 %call152, -1
  br i1 %cmp153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.151
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.155:                                       ; preds = %if.end.151
  %45 = load %struct._object*, %struct._object** %m, align 8
  %call156 = call i32 @PyModule_AddIntConstant(%struct._object* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i64 19)
  %cmp157 = icmp eq i32 %call156, -1
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.155
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.159:                                       ; preds = %if.end.155
  %46 = load %struct._object*, %struct._object** %m, align 8
  %call160 = call i32 @PyModule_AddIntConstant(%struct._object* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i32 0, i32 0), i64 20)
  %cmp161 = icmp eq i32 %call160, -1
  br i1 %cmp161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.end.159
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.163:                                       ; preds = %if.end.159
  %47 = load %struct._object*, %struct._object** %m, align 8
  %call164 = call i32 @PyModule_AddIntConstant(%struct._object* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i64 21)
  %cmp165 = icmp eq i32 %call164, -1
  br i1 %cmp165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.163
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.167:                                       ; preds = %if.end.163
  %48 = load %struct._object*, %struct._object** %m, align 8
  %call168 = call i32 @PyModule_AddIntConstant(%struct._object* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i64 22)
  %cmp169 = icmp eq i32 %call168, -1
  br i1 %cmp169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.167
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.171:                                       ; preds = %if.end.167
  %49 = load %struct._object*, %struct._object** %m, align 8
  %call172 = call i32 @PyModule_AddIntConstant(%struct._object* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i64 23)
  %cmp173 = icmp eq i32 %call172, -1
  br i1 %cmp173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.171
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.175:                                       ; preds = %if.end.171
  %50 = load %struct._object*, %struct._object** %m, align 8
  %call176 = call i32 @PyModule_AddIntConstant(%struct._object* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i64 24)
  %cmp177 = icmp eq i32 %call176, -1
  br i1 %cmp177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.175
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.179:                                       ; preds = %if.end.175
  %51 = load %struct._object*, %struct._object** %m, align 8
  %call180 = call i32 @PyModule_AddIntConstant(%struct._object* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i64 3222553351)
  %cmp181 = icmp eq i32 %call180, -1
  br i1 %cmp181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.179
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.183:                                       ; preds = %if.end.179
  %52 = load %struct._object*, %struct._object** %m, align 8
  %call184 = call i32 @PyModule_AddIntConstant(%struct._object* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i64 3484435201)
  %cmp185 = icmp eq i32 %call184, -1
  br i1 %cmp185, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.end.183
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.187:                                       ; preds = %if.end.183
  %53 = load %struct._object*, %struct._object** %m, align 8
  %call188 = call i32 @PyModule_AddIntConstant(%struct._object* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i64 3222553347)
  %cmp189 = icmp eq i32 %call188, -1
  br i1 %cmp189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.end.187
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.191:                                       ; preds = %if.end.187
  %54 = load %struct._object*, %struct._object** %m, align 8
  %call192 = call i32 @PyModule_AddIntConstant(%struct._object* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i64 2409906953)
  %cmp193 = icmp eq i32 %call192, -1
  br i1 %cmp193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.191
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.195:                                       ; preds = %if.end.191
  %55 = load %struct._object*, %struct._object** %m, align 8
  %call196 = call i32 @PyModule_AddIntConstant(%struct._object* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i64 3222553346)
  %cmp197 = icmp eq i32 %call196, -1
  br i1 %cmp197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.195
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.199:                                       ; preds = %if.end.195
  %56 = load %struct._object*, %struct._object** %m, align 8
  %call200 = call i32 @PyModule_AddIntConstant(%struct._object* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i64 17152)
  %cmp201 = icmp eq i32 %call200, -1
  br i1 %cmp201, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.199
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.203:                                       ; preds = %if.end.199
  %57 = load %struct._object*, %struct._object** %m, align 8
  %call204 = call i32 @PyModule_AddIntConstant(%struct._object* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i64 3222553350)
  %cmp205 = icmp eq i32 %call204, -1
  br i1 %cmp205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.203
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.207:                                       ; preds = %if.end.203
  %58 = load %struct._object*, %struct._object** %m, align 8
  %call208 = call i32 @PyModule_AddIntConstant(%struct._object* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i64 3483648776)
  %cmp209 = icmp eq i32 %call208, -1
  br i1 %cmp209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.end.207
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.211:                                       ; preds = %if.end.207
  %59 = load %struct._object*, %struct._object** %m, align 8
  %call212 = call i32 @PyModule_AddIntConstant(%struct._object* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i64 1075069701)
  %cmp213 = icmp eq i32 %call212, -1
  br i1 %cmp213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.211
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.215:                                       ; preds = %if.end.211
  %60 = load %struct._object*, %struct._object** %m, align 8
  %call216 = call i32 @PyModule_AddIntConstant(%struct._object* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i64 1075069700)
  %cmp217 = icmp eq i32 %call216, -1
  br i1 %cmp217, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.end.215
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.219:                                       ; preds = %if.end.215
  %61 = load %struct._object*, %struct._object** %m, align 8
  %call220 = call i32 @PyModule_AddIntConstant(%struct._object* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0), i64 3221508161)
  %cmp221 = icmp eq i32 %call220, -1
  br i1 %cmp221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %if.end.219
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.223:                                       ; preds = %if.end.219
  %62 = load %struct._object*, %struct._object** %m, align 8
  %call224 = call i32 @PyModule_AddIntConstant(%struct._object* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i64 3221508102)
  %cmp225 = icmp eq i32 %call224, -1
  br i1 %cmp225, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.223
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.227:                                       ; preds = %if.end.223
  %63 = load %struct._object*, %struct._object** %m, align 8
  %call228 = call i32 @PyModule_AddIntConstant(%struct._object* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0), i64 3221508100)
  %cmp229 = icmp eq i32 %call228, -1
  br i1 %cmp229, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.227
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.231:                                       ; preds = %if.end.227
  %64 = load %struct._object*, %struct._object** %m, align 8
  %call232 = call i32 @PyModule_AddIntConstant(%struct._object* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i64 2147766287)
  %cmp233 = icmp eq i32 %call232, -1
  br i1 %cmp233, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.end.231
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.235:                                       ; preds = %if.end.231
  %65 = load %struct._object*, %struct._object** %m, align 8
  %call236 = call i32 @PyModule_AddIntConstant(%struct._object* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.56, i32 0, i32 0), i64 3221508160)
  %cmp237 = icmp eq i32 %call236, -1
  br i1 %cmp237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.end.235
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.239:                                       ; preds = %if.end.235
  %66 = load %struct._object*, %struct._object** %m, align 8
  %call240 = call i32 @PyModule_AddIntConstant(%struct._object* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i64 2147766283)
  %cmp241 = icmp eq i32 %call240, -1
  br i1 %cmp241, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.end.239
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.243:                                       ; preds = %if.end.239
  %67 = load %struct._object*, %struct._object** %m, align 8
  %call244 = call i32 @PyModule_AddIntConstant(%struct._object* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i64 2148290577)
  %cmp245 = icmp eq i32 %call244, -1
  br i1 %cmp245, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.end.243
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.247:                                       ; preds = %if.end.243
  %68 = load %struct._object*, %struct._object** %m, align 8
  %call248 = call i32 @PyModule_AddIntConstant(%struct._object* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0), i64 2148552717)
  %cmp249 = icmp eq i32 %call248, -1
  br i1 %cmp249, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.end.247
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.251:                                       ; preds = %if.end.247
  %69 = load %struct._object*, %struct._object** %m, align 8
  %call252 = call i32 @PyModule_AddIntConstant(%struct._object* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0), i64 2147766295)
  %cmp253 = icmp eq i32 %call252, -1
  br i1 %cmp253, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.end.251
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.255:                                       ; preds = %if.end.251
  %70 = load %struct._object*, %struct._object** %m, align 8
  %call256 = call i32 @PyModule_AddIntConstant(%struct._object* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), i64 2148290578)
  %cmp257 = icmp eq i32 %call256, -1
  br i1 %cmp257, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.end.255
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.259:                                       ; preds = %if.end.255
  %71 = load %struct._object*, %struct._object** %m, align 8
  %call260 = call i32 @PyModule_AddIntConstant(%struct._object* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0), i64 2148552716)
  %cmp261 = icmp eq i32 %call260, -1
  br i1 %cmp261, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.end.259
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.263:                                       ; preds = %if.end.259
  %72 = load %struct._object*, %struct._object** %m, align 8
  %call264 = call i32 @PyModule_AddIntConstant(%struct._object* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i64 2147766339)
  %cmp265 = icmp eq i32 %call264, -1
  br i1 %cmp265, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.end.263
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.267:                                       ; preds = %if.end.263
  %73 = load %struct._object*, %struct._object** %m, align 8
  %call268 = call i32 @PyModule_AddIntConstant(%struct._object* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i32 0, i32 0), i64 2147766288)
  %cmp269 = icmp eq i32 %call268, -1
  br i1 %cmp269, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.end.267
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.271:                                       ; preds = %if.end.267
  %74 = load %struct._object*, %struct._object** %m, align 8
  %call272 = call i32 @PyModule_AddIntConstant(%struct._object* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0), i64 2148552723)
  %cmp273 = icmp eq i32 %call272, -1
  br i1 %cmp273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %if.end.271
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.275:                                       ; preds = %if.end.271
  %75 = load %struct._object*, %struct._object** %m, align 8
  %call276 = call i32 @PyModule_AddIntConstant(%struct._object* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i64 2148552724)
  %cmp277 = icmp eq i32 %call276, -1
  br i1 %cmp277, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.end.275
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.279:                                       ; preds = %if.end.275
  %76 = load %struct._object*, %struct._object** %m, align 8
  %call280 = call i32 @PyModule_AddIntConstant(%struct._object* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i64 20494)
  %cmp281 = icmp eq i32 %call280, -1
  br i1 %cmp281, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %if.end.279
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.283:                                       ; preds = %if.end.279
  %77 = load %struct._object*, %struct._object** %m, align 8
  %call284 = call i32 @PyModule_AddIntConstant(%struct._object* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i64 20488)
  %cmp285 = icmp eq i32 %call284, -1
  br i1 %cmp285, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.end.283
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.287:                                       ; preds = %if.end.283
  %78 = load %struct._object*, %struct._object** %m, align 8
  %call288 = call i32 @PyModule_AddIntConstant(%struct._object* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i64 1074024471)
  %cmp289 = icmp eq i32 %call288, -1
  br i1 %cmp289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.287
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.291:                                       ; preds = %if.end.287
  %79 = load %struct._object*, %struct._object** %m, align 8
  %call292 = call i32 @PyModule_AddIntConstant(%struct._object* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i64 20480)
  %cmp293 = icmp eq i32 %call292, -1
  br i1 %cmp293, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %if.end.291
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.295:                                       ; preds = %if.end.291
  %80 = load %struct._object*, %struct._object** %m, align 8
  %call296 = call i32 @PyModule_AddIntConstant(%struct._object* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0), i64 3221508101)
  %cmp297 = icmp eq i32 %call296, -1
  br i1 %cmp297, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.end.295
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.299:                                       ; preds = %if.end.295
  %81 = load %struct._object*, %struct._object** %m, align 8
  %call300 = call i32 @PyModule_AddIntConstant(%struct._object* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i32 0, i32 0), i64 20502)
  %cmp301 = icmp eq i32 %call300, -1
  br i1 %cmp301, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %if.end.299
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.303:                                       ; preds = %if.end.299
  %82 = load %struct._object*, %struct._object** %m, align 8
  %call304 = call i32 @PyModule_AddIntConstant(%struct._object* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), i64 3221508101)
  %cmp305 = icmp eq i32 %call304, -1
  br i1 %cmp305, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %if.end.303
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.307:                                       ; preds = %if.end.303
  %83 = load %struct._object*, %struct._object** %m, align 8
  %call308 = call i32 @PyModule_AddIntConstant(%struct._object* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i64 3221508106)
  %cmp309 = icmp eq i32 %call308, -1
  br i1 %cmp309, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %if.end.307
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.311:                                       ; preds = %if.end.307
  %84 = load %struct._object*, %struct._object** %m, align 8
  %call312 = call i32 @PyModule_AddIntConstant(%struct._object* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i64 1074024514)
  %cmp313 = icmp eq i32 %call312, -1
  br i1 %cmp313, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.end.311
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.315:                                       ; preds = %if.end.311
  %85 = load %struct._object*, %struct._object** %m, align 8
  %call316 = call i32 @PyModule_AddIntConstant(%struct._object* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i32 0, i32 0), i64 20501)
  %cmp317 = icmp eq i32 %call316, -1
  br i1 %cmp317, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %if.end.315
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.319:                                       ; preds = %if.end.315
  %86 = load %struct._object*, %struct._object** %m, align 8
  %call320 = call i32 @PyModule_AddIntConstant(%struct._object* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), i64 1074024464)
  %cmp321 = icmp eq i32 %call320, -1
  br i1 %cmp321, label %if.then.322, label %if.end.323

if.then.322:                                      ; preds = %if.end.319
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.323:                                       ; preds = %if.end.319
  %87 = load %struct._object*, %struct._object** %m, align 8
  %call324 = call i32 @PyModule_AddIntConstant(%struct._object* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0), i64 3221508098)
  %cmp325 = icmp eq i32 %call324, -1
  br i1 %cmp325, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %if.end.323
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.327:                                       ; preds = %if.end.323
  %88 = load %struct._object*, %struct._object** %m, align 8
  %call328 = call i32 @PyModule_AddIntConstant(%struct._object* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), i64 3221508099)
  %cmp329 = icmp eq i32 %call328, -1
  br i1 %cmp329, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %if.end.327
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.331:                                       ; preds = %if.end.327
  %89 = load %struct._object*, %struct._object** %m, align 8
  %call332 = call i32 @PyModule_AddIntConstant(%struct._object* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), i64 3221508105)
  %cmp333 = icmp eq i32 %call332, -1
  br i1 %cmp333, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %if.end.331
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.335:                                       ; preds = %if.end.331
  %90 = load %struct._object*, %struct._object** %m, align 8
  %call336 = call i32 @PyModule_AddIntConstant(%struct._object* %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i64 20481)
  %cmp337 = icmp eq i32 %call336, -1
  br i1 %cmp337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.end.335
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.339:                                       ; preds = %if.end.335
  %91 = load %struct._object*, %struct._object** %m, align 8
  %call340 = call i32 @PyModule_AddIntConstant(%struct._object* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.82, i32 0, i32 0), i64 1074024719)
  %cmp341 = icmp eq i32 %call340, -1
  br i1 %cmp341, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %if.end.339
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.343:                                       ; preds = %if.end.339
  %92 = load %struct._object*, %struct._object** %m, align 8
  %call344 = call i32 @PyModule_AddIntConstant(%struct._object* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0), i64 1076384007)
  %cmp345 = icmp eq i32 %call344, -1
  br i1 %cmp345, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %if.end.343
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.347:                                       ; preds = %if.end.343
  %93 = load %struct._object*, %struct._object** %m, align 8
  %call348 = call i32 @PyModule_AddIntConstant(%struct._object* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i64 3228848396)
  %cmp349 = icmp eq i32 %call348, -1
  br i1 %cmp349, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %if.end.347
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.351:                                       ; preds = %if.end.347
  %94 = load %struct._object*, %struct._object** %m, align 8
  %call352 = call i32 @PyModule_AddIntConstant(%struct._object* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i32 0, i32 0), i64 3223416066)
  %cmp353 = icmp eq i32 %call352, -1
  br i1 %cmp353, label %if.then.354, label %if.end.355

if.then.354:                                      ; preds = %if.end.351
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.355:                                       ; preds = %if.end.351
  %95 = load %struct._object*, %struct._object** %m, align 8
  %call356 = call i32 @PyModule_AddIntConstant(%struct._object* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i32 0, i32 0), i64 3221515521)
  %cmp357 = icmp eq i32 %call356, -1
  br i1 %cmp357, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %if.end.355
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.359:                                       ; preds = %if.end.355
  %96 = load %struct._object*, %struct._object** %m, align 8
  %call360 = call i32 @PyModule_AddIntConstant(%struct._object* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.87, i32 0, i32 0), i64 3221515520)
  %cmp361 = icmp eq i32 %call360, -1
  br i1 %cmp361, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %if.end.359
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.363:                                       ; preds = %if.end.359
  %97 = load %struct._object*, %struct._object** %m, align 8
  %call364 = call i32 @PyModule_AddIntConstant(%struct._object* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.88, i32 0, i32 0), i64 3221508355)
  %cmp365 = icmp eq i32 %call364, -1
  br i1 %cmp365, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %if.end.363
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.367:                                       ; preds = %if.end.363
  %98 = load %struct._object*, %struct._object** %m, align 8
  %call368 = call i32 @PyModule_AddIntConstant(%struct._object* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.89, i32 0, i32 0), i64 2147766533)
  %cmp369 = icmp eq i32 %call368, -1
  br i1 %cmp369, label %if.then.370, label %if.end.371

if.then.370:                                      ; preds = %if.end.367
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.371:                                       ; preds = %if.end.367
  %99 = load %struct._object*, %struct._object** %m, align 8
  %call372 = call i32 @PyModule_AddIntConstant(%struct._object* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.90, i32 0, i32 0), i64 2147766532)
  %cmp373 = icmp eq i32 %call372, -1
  br i1 %cmp373, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %if.end.371
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.375:                                       ; preds = %if.end.371
  %100 = load %struct._object*, %struct._object** %m, align 8
  %call376 = call i32 @PyModule_AddIntConstant(%struct._object* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i32 0, i32 0), i64 2147766547)
  %cmp377 = icmp eq i32 %call376, -1
  br i1 %cmp377, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.end.375
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.379:                                       ; preds = %if.end.375
  %101 = load %struct._object*, %struct._object** %m, align 8
  %call380 = call i32 @PyModule_AddIntConstant(%struct._object* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i32 0, i32 0), i64 2147766539)
  %cmp381 = icmp eq i32 %call380, -1
  br i1 %cmp381, label %if.then.382, label %if.end.383

if.then.382:                                      ; preds = %if.end.379
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.383:                                       ; preds = %if.end.379
  %102 = load %struct._object*, %struct._object** %m, align 8
  %call384 = call i32 @PyModule_AddIntConstant(%struct._object* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.93, i32 0, i32 0), i64 2147766538)
  %cmp385 = icmp eq i32 %call384, -1
  br i1 %cmp385, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %if.end.383
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.387:                                       ; preds = %if.end.383
  %103 = load %struct._object*, %struct._object** %m, align 8
  %call388 = call i32 @PyModule_AddIntConstant(%struct._object* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0), i64 1074286866)
  %cmp389 = icmp eq i32 %call388, -1
  br i1 %cmp389, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %if.end.387
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.391:                                       ; preds = %if.end.387
  %104 = load %struct._object*, %struct._object** %m, align 8
  %call392 = call i32 @PyModule_AddIntConstant(%struct._object* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0), i64 20753)
  %cmp393 = icmp eq i32 %call392, -1
  br i1 %cmp393, label %if.then.394, label %if.end.395

if.then.394:                                      ; preds = %if.end.391
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.395:                                       ; preds = %if.end.391
  %105 = load %struct._object*, %struct._object** %m, align 8
  %call396 = call i32 @PyModule_AddIntConstant(%struct._object* %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.96, i32 0, i32 0), i64 1074024710)
  %cmp397 = icmp eq i32 %call396, -1
  br i1 %cmp397, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %if.end.395
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.399:                                       ; preds = %if.end.395
  %106 = load %struct._object*, %struct._object** %m, align 8
  %call400 = call i32 @PyModule_AddIntConstant(%struct._object* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i64 20736)
  %cmp401 = icmp eq i32 %call400, -1
  br i1 %cmp401, label %if.then.402, label %if.end.403

if.then.402:                                      ; preds = %if.end.399
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.403:                                       ; preds = %if.end.399
  %107 = load %struct._object*, %struct._object** %m, align 8
  %call404 = call i32 @PyModule_AddIntConstant(%struct._object* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i32 0, i32 0), i64 1074024713)
  %cmp405 = icmp eq i32 %call404, -1
  br i1 %cmp405, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %if.end.403
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.407:                                       ; preds = %if.end.403
  %108 = load %struct._object*, %struct._object** %m, align 8
  %call408 = call i32 @PyModule_AddIntConstant(%struct._object* %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0), i64 20737)
  %cmp409 = icmp eq i32 %call408, -1
  br i1 %cmp409, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %if.end.407
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.411:                                       ; preds = %if.end.407
  %109 = load %struct._object*, %struct._object** %m, align 8
  %call412 = call i32 @PyModule_AddIntConstant(%struct._object* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.100, i32 0, i32 0), i64 1074024712)
  %cmp413 = icmp eq i32 %call412, -1
  br i1 %cmp413, label %if.then.414, label %if.end.415

if.then.414:                                      ; preds = %if.end.411
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.415:                                       ; preds = %if.end.411
  %110 = load %struct._object*, %struct._object** %m, align 8
  %call416 = call i32 @PyModule_AddIntConstant(%struct._object* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i32 0, i32 0), i64 1074024717)
  %cmp417 = icmp eq i32 %call416, -1
  br i1 %cmp417, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %if.end.415
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.419:                                       ; preds = %if.end.415
  %111 = load %struct._object*, %struct._object** %m, align 8
  %call420 = call i32 @PyModule_AddIntConstant(%struct._object* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i32 0, i32 0), i64 3483652373)
  %cmp421 = icmp eq i32 %call420, -1
  br i1 %cmp421, label %if.then.422, label %if.end.423

if.then.422:                                      ; preds = %if.end.419
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.423:                                       ; preds = %if.end.419
  %112 = load %struct._object*, %struct._object** %m, align 8
  %call424 = call i32 @PyModule_AddIntConstant(%struct._object* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i64 3230421268)
  %cmp425 = icmp eq i32 %call424, -1
  br i1 %cmp425, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %if.end.423
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.427:                                       ; preds = %if.end.423
  %113 = load %struct._object*, %struct._object** %m, align 8
  %call428 = call i32 @PyModule_AddIntConstant(%struct._object* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i32 0, i32 0), i64 3230421250)
  %cmp429 = icmp eq i32 %call428, -1
  br i1 %cmp429, label %if.then.430, label %if.end.431

if.then.430:                                      ; preds = %if.end.427
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.431:                                       ; preds = %if.end.427
  %114 = load %struct._object*, %struct._object** %m, align 8
  %call432 = call i32 @PyModule_AddIntConstant(%struct._object* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i32 0, i32 0), i64 3221508366)
  %cmp433 = icmp eq i32 %call432, -1
  br i1 %cmp433, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %if.end.431
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.435:                                       ; preds = %if.end.431
  %115 = load %struct._object*, %struct._object** %m, align 8
  %call436 = call i32 @PyModule_AddIntConstant(%struct._object* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.106, i32 0, i32 0), i64 3222032662)
  %cmp437 = icmp eq i32 %call436, -1
  br i1 %cmp437, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %if.end.435
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.439:                                       ; preds = %if.end.435
  %116 = load %struct._object*, %struct._object** %m, align 8
  %call440 = call i32 @PyModule_AddIntConstant(%struct._object* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.107, i32 0, i32 0), i64 21508)
  %cmp441 = icmp eq i32 %call440, -1
  br i1 %cmp441, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %if.end.439
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.443:                                       ; preds = %if.end.439
  %117 = load %struct._object*, %struct._object** %m, align 8
  %call444 = call i32 @PyModule_AddIntConstant(%struct._object* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), i64 1074025479)
  %cmp445 = icmp eq i32 %call444, -1
  br i1 %cmp445, label %if.then.446, label %if.end.447

if.then.446:                                      ; preds = %if.end.443
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.447:                                       ; preds = %if.end.443
  %118 = load %struct._object*, %struct._object** %m, align 8
  %call448 = call i32 @PyModule_AddIntConstant(%struct._object* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i32 0, i32 0), i64 1074025480)
  %cmp449 = icmp eq i32 %call448, -1
  br i1 %cmp449, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %if.end.447
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.451:                                       ; preds = %if.end.447
  %119 = load %struct._object*, %struct._object** %m, align 8
  %call452 = call i32 @PyModule_AddIntConstant(%struct._object* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0), i64 3221509126)
  %cmp453 = icmp eq i32 %call452, -1
  br i1 %cmp453, label %if.then.454, label %if.end.455

if.then.454:                                      ; preds = %if.end.451
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.455:                                       ; preds = %if.end.451
  %120 = load %struct._object*, %struct._object** %m, align 8
  %call456 = call i32 @PyModule_AddIntConstant(%struct._object* %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), i64 21506)
  %cmp457 = icmp eq i32 %call456, -1
  br i1 %cmp457, label %if.then.458, label %if.end.459

if.then.458:                                      ; preds = %if.end.455
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.459:                                       ; preds = %if.end.455
  %121 = load %struct._object*, %struct._object** %m, align 8
  %call460 = call i32 @PyModule_AddIntConstant(%struct._object* %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), i64 21507)
  %cmp461 = icmp eq i32 %call460, -1
  br i1 %cmp461, label %if.then.462, label %if.end.463

if.then.462:                                      ; preds = %if.end.459
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.463:                                       ; preds = %if.end.459
  %122 = load %struct._object*, %struct._object** %m, align 8
  %call464 = call i32 @PyModule_AddIntConstant(%struct._object* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.113, i32 0, i32 0), i64 3221509125)
  %cmp465 = icmp eq i32 %call464, -1
  br i1 %cmp465, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.end.463
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.467:                                       ; preds = %if.end.463
  %123 = load %struct._object*, %struct._object** %m, align 8
  %call468 = call i32 @PyModule_AddIntConstant(%struct._object* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i32 0, i32 0), i64 3221509121)
  %cmp469 = icmp eq i32 %call468, -1
  br i1 %cmp469, label %if.then.470, label %if.end.471

if.then.470:                                      ; preds = %if.end.467
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.471:                                       ; preds = %if.end.467
  %124 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %124, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.471, %if.then.470, %if.then.466, %if.then.462, %if.then.458, %if.then.454, %if.then.450, %if.then.446, %if.then.442, %if.then.438, %if.then.434, %if.then.430, %if.then.426, %if.then.422, %if.then.418, %if.then.414, %if.then.410, %if.then.406, %if.then.402, %if.then.398, %if.then.394, %if.then.390, %if.then.386, %if.then.382, %if.then.378, %if.then.374, %if.then.370, %if.then.366, %if.then.362, %if.then.358, %if.then.354, %if.then.350, %if.then.346, %if.then.342, %if.then.338, %if.then.334, %if.then.330, %if.then.326, %if.then.322, %if.then.318, %if.then.314, %if.then.310, %if.then.306, %if.then.302, %if.then.298, %if.then.294, %if.then.290, %if.then.286, %if.then.282, %if.then.278, %if.then.274, %if.then.270, %if.then.266, %if.then.262, %if.then.258, %if.then.254, %if.then.250, %if.then.246, %if.then.242, %if.then.238, %if.then.234, %if.then.230, %if.then.226, %if.then.222, %if.then.218, %if.then.214, %if.then.210, %if.then.206, %if.then.202, %if.then.198, %if.then.194, %if.then.190, %if.then.186, %if.then.182, %if.then.178, %if.then.174, %if.then.170, %if.then.166, %if.then.162, %if.then.158, %if.then.154, %if.then.150, %if.then.146, %if.then.142, %if.then.138, %if.then.134, %if.then.130, %if.then.126, %if.then.122, %if.then.118, %if.then.114, %if.then.110, %if.then.106, %if.then.102, %if.then.98, %if.then.94, %if.then.90, %if.then.86, %if.then.82, %if.then.78, %if.then.74, %if.then.70, %if.then.66, %if.then.62, %if.then.58, %if.then.54, %if.then.50, %if.then.46, %if.then.42, %if.then.38, %if.then.34, %if.then.30, %if.then.26, %if.then.22, %if.then.18, %if.then.7, %if.then.3, %if.then
  %125 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %125
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  store %struct._object* %module, %struct._object** %module.addr, align 8
  store i32 25, i32* %num_controls, align 4
  %0 = load i32, i32* %num_controls, align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyList_New(i64 %conv)
  store %struct._object* %call, %struct._object** %labels, align 8
  %1 = load i32, i32* %num_controls, align 4
  %conv1 = sext i32 %1 to i64
  %call2 = call %struct._object* @PyList_New(i64 %conv1)
  store %struct._object* %call2, %struct._object** %names, align 8
  %2 = load %struct._object*, %struct._object** %labels, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %names, align 8
  %cmp4 = icmp eq %struct._object* %3, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %error2

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %num_controls, align 4
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr [25 x i8*], [25 x i8*]* @control_labels, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call8 = call %struct._object* @PyUnicode_FromString(i8* %7)
  store %struct._object* %call8, %struct._object** %s, align 8
  %8 = load %struct._object*, %struct._object** %s, align 8
  %cmp9 = icmp eq %struct._object* %8, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  br label %error2

if.end.12:                                        ; preds = %for.body
  %9 = load %struct._object*, %struct._object** %s, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %11 = load %struct._object*, %struct._object** %labels, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %12, i32 0, i32 1
  %13 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx14 = getelementptr %struct._object*, %struct._object** %13, i64 %idxprom13
  store %struct._object* %9, %struct._object** %arrayidx14, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr [25 x i8*], [25 x i8*]* @control_names, i32 0, i64 %idxprom15
  %15 = load i8*, i8** %arrayidx16, align 8
  %call17 = call %struct._object* @PyUnicode_FromString(i8* %15)
  store %struct._object* %call17, %struct._object** %s, align 8
  %16 = load %struct._object*, %struct._object** %s, align 8
  %cmp18 = icmp eq %struct._object* %16, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.12
  br label %error2

if.end.21:                                        ; preds = %if.end.12
  %17 = load %struct._object*, %struct._object** %s, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %18 to i64
  %19 = load %struct._object*, %struct._object** %names, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyListObject*
  %ob_item23 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %20, i32 0, i32 1
  %21 = load %struct._object**, %struct._object*** %ob_item23, align 8
  %arrayidx24 = getelementptr %struct._object*, %struct._object** %21, i64 %idxprom22
  store %struct._object* %17, %struct._object** %arrayidx24, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %22 = load i32, i32* %i, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._object*, %struct._object** %module.addr, align 8
  %24 = load %struct._object*, %struct._object** %labels, align 8
  %call25 = call i32 @PyModule_AddObject(%struct._object* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.177, i32 0, i32 0), %struct._object* %24)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.end
  br label %error2

if.end.29:                                        ; preds = %for.end
  %25 = load %struct._object*, %struct._object** %module.addr, align 8
  %26 = load %struct._object*, %struct._object** %names, align 8
  %call30 = call i32 @PyModule_AddObject(%struct._object* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.178, i32 0, i32 0), %struct._object* %26)
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  br label %error1

if.end.34:                                        ; preds = %if.end.29
  store i32 0, i32* %retval
  br label %return

error2:                                           ; preds = %if.then.28, %if.then.20, %if.then.11, %if.then
  br label %do.body

do.body:                                          ; preds = %error2
  %27 = load %struct._object*, %struct._object** %labels, align 8
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp35 = icmp ne %struct._object* %28, null
  br i1 %cmp35, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %do.body
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp39 = icmp ne i64 %dec, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %do.body.38
  br label %if.end.42

if.else:                                          ; preds = %do.body.38
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  br label %do.end

do.end:                                           ; preds = %if.end.42
  br label %if.end.43

if.end.43:                                        ; preds = %do.end, %do.body
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %error1

error1:                                           ; preds = %do.end.44, %if.then.33
  br label %do.body.45

do.body.45:                                       ; preds = %error1
  %36 = load %struct._object*, %struct._object** %names, align 8
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp46, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  %cmp47 = icmp ne %struct._object* %37, null
  br i1 %cmp47, label %if.then.49, label %if.end.62

if.then.49:                                       ; preds = %do.body.45
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.49
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp51, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %40, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.50
  br label %if.end.60

if.else.57:                                       ; preds = %do.body.50
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %43(%struct._object* %44)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %if.end.62

if.end.62:                                        ; preds = %do.end.61, %do.body.45
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.63, %if.end.34
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @oss_dealloc(%struct.oss_audio_t* %self) #0 {
entry:
  %self.addr = alloca %struct.oss_audio_t*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %call = call i32 @close(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %5 = bitcast %struct.oss_audio_t* %4 to i8*
  call void @PyObject_Free(i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_getattro(%struct.oss_audio_t* %self, %struct._object* %nameobj) #0 {
entry:
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %nameobj.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %rval = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %nameobj, %struct._object** %nameobj.addr, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.116, i32 0, i32 0), i8** %name, align 8
  store %struct._object* null, %struct._object** %rval, align 8
  %0 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call = call i8* @PyUnicode_AsUTF8(%struct._object* %3)
  store i8* %call, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %name, align 8
  %call1 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0)) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %5, i32 0, i32 2
  %6 = load i32, i32* %fd, align 4
  %cmp4 = icmp eq i32 %6, -1
  %cond = select i1 %cmp4, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %rval, align 8
  %7 = load %struct._object*, %struct._object** %rval, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.end
  %9 = load i8*, i8** %name, align 8
  %call5 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %10 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %devicename = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %10, i32 0, i32 1
  %11 = load i8*, i8** %devicename, align 8
  %call8 = call %struct._object* @PyUnicode_FromString(i8* %11)
  store %struct._object* %call8, %struct._object** %rval, align 8
  br label %if.end.21

if.else.9:                                        ; preds = %if.else
  %12 = load i8*, i8** %name, align 8
  %call10 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0)) #6
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.18

if.then.12:                                       ; preds = %if.else.9
  %13 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %mode = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %13, i32 0, i32 3
  %14 = load i32, i32* %mode, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.14
    i32 1, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.then.12
  %call13 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0))
  store %struct._object* %call13, %struct._object** %rval, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then.12
  %call15 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0))
  store %struct._object* %call15, %struct._object** %rval, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then.12
  %call17 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0))
  store %struct._object* %call17, %struct._object** %rval, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.12, %sw.bb.16, %sw.bb.14, %sw.bb
  br label %if.end.20

if.else.18:                                       ; preds = %if.else.9
  %15 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %16 = bitcast %struct.oss_audio_t* %15 to %struct._object*
  %17 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call19 = call %struct._object* @PyObject_GenericGetAttr(%struct._object* %16, %struct._object* %17)
  store %struct._object* %call19, %struct._object** %rval, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %sw.epilog
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.7
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.3
  %18 = load %struct._object*, %struct._object** %rval, align 8
  ret %struct._object* %18
}

declare i32 @close(i32) #1

declare void @PyObject_Free(i8*) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

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
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i32 0, i32 0), i32* %size)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %size, align 4
  %conv = sext i32 %3 to i64
  %call5 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv)
  store %struct._object* %call5, %struct._object** %rv, align 8
  %4 = load %struct._object*, %struct._object** %rv, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %rv, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %6, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %cp, align 8
  %call9 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call9, %struct._ts** %_save, align 8
  %7 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd10 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %7, i32 0, i32 2
  %8 = load i32, i32* %fd10, align 4
  %9 = load i8*, i8** %cp, align 8
  %10 = load i32, i32* %size, align 4
  %conv11 = sext i32 %10 to i64
  %call12 = call i64 @read(i32 %8, i8* %9, i64 %conv11)
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %count, align 4
  %11 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %11)
  %12 = load i32, i32* %count, align 4
  %cmp14 = icmp slt i32 %12, 0
  br i1 %cmp14, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call17 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %13)
  br label %do.body

do.body:                                          ; preds = %if.then.16
  %14 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.21

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.8
  %21 = load i32, i32* %count, align 4
  %22 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %icount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %22, i32 0, i32 4
  %23 = load i32, i32* %icount, align 4
  %add = add i32 %23, %21
  store i32 %add, i32* %icount, align 4
  %24 = load i32, i32* %count, align 4
  %conv23 = sext i32 %24 to i64
  %call24 = call i32 @_PyBytes_Resize(%struct._object** %rv, i64 %conv23)
  %25 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %do.end, %if.then.7, %if.then.3, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
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
  %_save = alloca %struct._ts*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.146, i32 0, i32 0), i8** %cp, i32* %size)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call5, %struct._ts** %_save, align 8
  %3 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd6 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %3, i32 0, i32 2
  %4 = load i32, i32* %fd6, align 4
  %5 = load i8*, i8** %cp, align 8
  %6 = load i32, i32* %size, align 4
  %conv = sext i32 %6 to i64
  %call7 = call i64 @write(i32 %4, i8* %5, i64 %conv)
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %rv, align 4
  %7 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %7)
  %8 = load i32, i32* %rv, align 4
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call11 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %9)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.4
  %10 = load i32, i32* %rv, align 4
  %11 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %ocount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %11, i32 0, i32 5
  %12 = load i32, i32* %ocount, align 4
  %add = add i32 %12, %10
  store i32 %add, i32* %ocount, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else
  %13 = load i32, i32* %rv, align 4
  %conv13 = sext i32 %13 to i64
  %call14 = call %struct._object* @PyLong_FromLong(i64 %conv13)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.10, %if.then.3, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
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
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_save23 = alloca %struct._ts*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.146, i32 0, i32 0), i8** %cp, i32* %size)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd5 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %3, i32 0, i32 2
  %4 = load i32, i32* %fd5, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.8

land.lhs.true:                                    ; preds = %if.end.4
  %5 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd6 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %5, i32 0, i32 2
  %6 = load i32, i32* %fd6, align 4
  %cmp7 = icmp slt i32 %6, 1024
  br i1 %cmp7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true, %if.end.4
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.147, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %write_set_fds, i32 0, i32 0
  %arrayidx = getelementptr [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %8 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #5, !srcloc !2
  %asmresult = extractvalue { i64, i64* } %8, 0
  %asmresult10 = extractvalue { i64, i64* } %8, 1
  %9 = trunc i64 %asmresult to i32
  store i32 %9, i32* %__d0, align 4
  %10 = ptrtoint i64* %asmresult10 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %12 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd11 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %12, i32 0, i32 2
  %13 = load i32, i32* %fd11, align 4
  %rem = srem i32 %13, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %14 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd12 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %14, i32 0, i32 2
  %15 = load i32, i32* %fd12, align 4
  %div = sdiv i32 %15, 64
  %idxprom = sext i32 %div to i64
  %fds_bits13 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %write_set_fds, i32 0, i32 0
  %arrayidx14 = getelementptr [16 x i64], [16 x i64]* %fds_bits13, i32 0, i64 %idxprom
  %16 = load i64, i64* %arrayidx14, align 8
  %or = or i64 %16, %shl
  store i64 %or, i64* %arrayidx14, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.then.34, %do.end
  %17 = load i32, i32* %size, align 4
  %cmp15 = icmp sgt i32 %17, 0
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call16 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call16, %struct._ts** %_save, align 8
  %18 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd17 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %18, i32 0, i32 2
  %19 = load i32, i32* %fd17, align 4
  %add = add i32 %19, 1
  %call18 = call i32 @select(i32 %add, %struct.fd_set* null, %struct.fd_set* %write_set_fds, %struct.fd_set* null, %struct.timeval* null)
  store i32 %call18, i32* %select_rv, align 4
  %20 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %20)
  %21 = load i32, i32* %select_rv, align 4
  %cmp19 = icmp eq i32 %21, -1
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %while.body
  %22 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call21 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %22)
  store %struct._object* %call21, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %while.body
  %call24 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call24, %struct._ts** %_save23, align 8
  %23 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd25 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %23, i32 0, i32 2
  %24 = load i32, i32* %fd25, align 4
  %25 = load i8*, i8** %cp, align 8
  %26 = load i32, i32* %size, align 4
  %conv = sext i32 %26 to i64
  %call26 = call i64 @write(i32 %24, i8* %25, i64 %conv)
  %conv27 = trunc i64 %call26 to i32
  store i32 %conv27, i32* %rv, align 4
  %27 = load %struct._ts*, %struct._ts** %_save23, align 8
  call void @PyEval_RestoreThread(%struct._ts* %27)
  %28 = load i32, i32* %rv, align 4
  %cmp28 = icmp eq i32 %28, -1
  br i1 %cmp28, label %if.then.30, label %if.else.37

if.then.30:                                       ; preds = %if.end.22
  %call31 = call i32* @__errno_location() #7
  %29 = load i32, i32* %call31, align 4
  %cmp32 = icmp eq i32 %29, 11
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.30
  %call35 = call i32* @__errno_location() #7
  store i32 0, i32* %call35, align 4
  br label %while.cond

if.else:                                          ; preds = %if.then.30
  %30 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call36 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %30)
  store %struct._object* %call36, %struct._object** %retval
  br label %return

if.else.37:                                       ; preds = %if.end.22
  %31 = load i32, i32* %rv, align 4
  %32 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %ocount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %32, i32 0, i32 5
  %33 = load i32, i32* %ocount, align 4
  %add38 = add i32 %33, %31
  store i32 %add38, i32* %ocount, align 4
  %34 = load i32, i32* %rv, align 4
  %35 = load i32, i32* %size, align 4
  %sub = sub i32 %35, %34
  store i32 %sub, i32* %size, align 4
  %36 = load i32, i32* %rv, align 4
  %37 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %cp, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else, %if.then.20, %if.then.8, %if.then.3, %if.then
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_close(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %call2 = call i32 @close(i32 %3)
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  %5 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd3 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %5, i32 0, i32 2
  store i32 -1, i32* %fd3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_fileno(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %conv = sext i32 %3 to i64
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_nonblock(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %call2 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 20494, i8* null) #5
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_setfmt(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_1(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i32 0, i32 0), i32 -1073459195)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_getfmts(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %mask = alloca i32, align 4
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %call2 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 2147766283, i32* %mask) #5
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call4 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %4)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i32, i32* %mask, align 4
  %conv = sext i32 %5 to i64
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_channels(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_1(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i32 0, i32 0), i32 -1073459194)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_speed(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_1(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i32 -1073459198)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_sync(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_0(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i32 20481)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_reset(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_0(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i32 20480)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_post(%struct.oss_audio_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 2
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_0(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0), i32 20488)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
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
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %strict, align 4
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.148, i32 0, i32 0), i32* %wanted_fmt, i32* %wanted_channels, i32* %wanted_rate, i32* %strict)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %wanted_fmt, align 4
  store i32 %3, i32* %fmt, align 4
  %4 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd5 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %4, i32 0, i32 2
  %5 = load i32, i32* %fd5, align 4
  %call6 = call i32 (i32, i64, ...) @ioctl(i32 %5, i64 3221508101, i32* %fmt) #5
  %cmp = icmp eq i32 %call6, -1
  br i1 %cmp, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  %7 = load i32, i32* %strict, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.9
  %8 = load i32, i32* %fmt, align 4
  %9 = load i32, i32* %wanted_fmt, align 4
  %cmp11 = icmp ne i32 %8, %9
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  %11 = load i32, i32* %wanted_fmt, align 4
  %12 = load i32, i32* %fmt, align 4
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.149, i32 0, i32 0), i32 %11, i32 %12)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.end.9
  %13 = load i32, i32* %wanted_channels, align 4
  store i32 %13, i32* %channels, align 4
  %14 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd15 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %14, i32 0, i32 2
  %15 = load i32, i32* %fd15, align 4
  %call16 = call i32 (i32, i64, ...) @ioctl(i32 %15, i64 3221508102, i32* %channels) #5
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.14
  %16 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call19 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %16)
  store %struct._object* %call19, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %17 = load i32, i32* %strict, align 4
  %tobool21 = icmp ne i32 %17, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.26

land.lhs.true.22:                                 ; preds = %if.end.20
  %18 = load i32, i32* %channels, align 4
  %19 = load i32, i32* %wanted_channels, align 4
  %cmp23 = icmp ne i32 %18, %19
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.lhs.true.22
  %20 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  %21 = load i32, i32* %wanted_channels, align 4
  %22 = load i32, i32* %channels, align 4
  %call25 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.150, i32 0, i32 0), i32 %21, i32 %22)
  store %struct._object* %call25, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.22, %if.end.20
  %23 = load i32, i32* %wanted_rate, align 4
  store i32 %23, i32* %rate, align 4
  %24 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd27 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %24, i32 0, i32 2
  %25 = load i32, i32* %fd27, align 4
  %call28 = call i32 (i32, i64, ...) @ioctl(i32 %25, i64 3221508098, i32* %rate) #5
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.26
  %26 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call31 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %26)
  store %struct._object* %call31, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.26
  %27 = load i32, i32* %strict, align 4
  %tobool33 = icmp ne i32 %27, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.38

land.lhs.true.34:                                 ; preds = %if.end.32
  %28 = load i32, i32* %rate, align 4
  %29 = load i32, i32* %wanted_rate, align 4
  %cmp35 = icmp ne i32 %28, %29
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %land.lhs.true.34
  %30 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  %31 = load i32, i32* %wanted_rate, align 4
  %32 = load i32, i32* %rate, align 4
  %call37 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.151, i32 0, i32 0), i32 %31, i32 %32)
  store %struct._object* %call37, %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %land.lhs.true.34, %if.end.32
  %33 = load i32, i32* %fmt, align 4
  %34 = load i32, i32* %channels, align 4
  %35 = load i32, i32* %rate, align 4
  %call39 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.152, i32 0, i32 0), i32 %33, i32 %34, i32 %35)
  store %struct._object* %call39, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.36, %if.then.30, %if.then.24, %if.then.18, %if.then.12, %if.then.7, %if.then.3, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
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
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  store i32 0, i32* %nchannels, align 4
  store i32 0, i32* %ssize, align 4
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %call1 = call i32 @_ssize(%struct.oss_audio_t* %2, i32* %nchannels, i32* %ssize)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %nchannels, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then.5

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %ssize, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false.3
  %6 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd8 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %6, i32 0, i32 2
  %7 = load i32, i32* %fd8, align 4
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 2148552716, %struct.audio_buf_info* %ai) #5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %fragstotal = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 1
  %9 = load i32, i32* %fragstotal, align 4
  %fragsize = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 2
  %10 = load i32, i32* %fragsize, align 4
  %mul = mul i32 %9, %10
  %11 = load i32, i32* %nchannels, align 4
  %12 = load i32, i32* %ssize, align 4
  %mul14 = mul i32 %11, %12
  %div = sdiv i32 %mul, %mul14
  %conv = sext i32 %div to i64
  %call15 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
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
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  store i32 0, i32* %nchannels, align 4
  store i32 0, i32* %ssize, align 4
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %call1 = call i32 @_ssize(%struct.oss_audio_t* %2, i32* %nchannels, i32* %ssize)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %nchannels, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then.5

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %ssize, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false.3
  %6 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd8 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %6, i32 0, i32 2
  %7 = load i32, i32* %fd8, align 4
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 2148552716, %struct.audio_buf_info* %ai) #5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %fragstotal = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 1
  %9 = load i32, i32* %fragstotal, align 4
  %fragsize = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 2
  %10 = load i32, i32* %fragsize, align 4
  %mul = mul i32 %9, %10
  %bytes = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 3
  %11 = load i32, i32* %bytes, align 4
  %sub = sub i32 %mul, %11
  %12 = load i32, i32* %ssize, align 4
  %13 = load i32, i32* %nchannels, align 4
  %mul14 = mul i32 %12, %13
  %div = sdiv i32 %sub, %mul14
  %conv = sext i32 %div to i64
  %call15 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
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
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  store i32 0, i32* %nchannels, align 4
  store i32 0, i32* %ssize, align 4
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %call1 = call i32 @_ssize(%struct.oss_audio_t* %2, i32* %nchannels, i32* %ssize)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %nchannels, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then.5

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %ssize, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false.3, %lor.lhs.false, %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false.3
  %6 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd8 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %6, i32 0, i32 2
  %7 = load i32, i32* %fd8, align 4
  %call9 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 2148552716, %struct.audio_buf_info* %ai) #5
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.7
  %bytes = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %ai, i32 0, i32 3
  %9 = load i32, i32* %bytes, align 4
  %10 = load i32, i32* %ssize, align 4
  %11 = load i32, i32* %nchannels, align 4
  %mul = mul i32 %10, %11
  %div = sdiv i32 %9, %mul
  %conv = sext i32 %div to i64
  %call14 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_getptr(%struct.oss_audio_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %info = alloca %struct.count_info, align 4
  %req = alloca i32, align 4
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %mode = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %2, i32 0, i32 3
  %3 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store i32 -2146676719, i32* %req, align 4
  br label %if.end.2

if.else:                                          ; preds = %if.end
  store i32 -2146676718, i32* %req, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %4 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd3 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %4, i32 0, i32 2
  %5 = load i32, i32* %fd3, align 4
  %6 = load i32, i32* %req, align 4
  %conv = sext i32 %6 to i64
  %call4 = call i32 (i32, i64, ...) @ioctl(i32 %5, i64 %conv, %struct.count_info* %info) #5
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.2
  %7 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call8 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.2
  %bytes = getelementptr inbounds %struct.count_info, %struct.count_info* %info, i32 0, i32 0
  %8 = load i32, i32* %bytes, align 4
  %blocks = getelementptr inbounds %struct.count_info, %struct.count_info* %info, i32 0, i32 1
  %9 = load i32, i32* %blocks, align 4
  %ptr = getelementptr inbounds %struct.count_info, %struct.count_info* %info, i32 0, i32 2
  %10 = load i32, i32* %ptr, align 4
  %call10 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0), i32 %8, i32 %9, i32 %10)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_self(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_exit(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %0, %struct._Py_Identifier* @oss_exit.PyId_close, i8* null)
  store %struct._object* %call, %struct._object** %ret, align 8
  %1 = load %struct._object*, %struct._object** %ret, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %do.body
  br label %if.end.2

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  br label %do.end

do.end:                                           ; preds = %if.end.2
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @_is_fd_valid(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i64 @read(i32, i8*, i64) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i64 @write(i32, i8*, i64) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

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
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %cmd, i32* %cmd.addr, align 4
  %0 = bitcast [33 x i8]* %argfmt to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 33, i32 16, i1 false)
  %1 = bitcast i8* %0 to [33 x i8]*
  %2 = getelementptr [33 x i8], [33 x i8]* %1, i32 0, i32 0
  store i8 105, i8* %2
  %3 = getelementptr [33 x i8], [33 x i8]* %1, i32 0, i32 1
  store i8 58, i8* %3
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %argfmt, i32 0, i32 0
  %4 = load i8*, i8** %fname.addr, align 8
  %call = call i8* @strncat(i8* %arraydecay, i8* %4, i64 30) #5
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %arraydecay1 = getelementptr inbounds [33 x i8], [33 x i8]* %argfmt, i32 0, i32 0
  %call2 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* %arraydecay1, i32* %arg)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %fd.addr, align 4
  %7 = load i32, i32* %cmd.addr, align 4
  %conv = sext i32 %7 to i64
  %call3 = call i32 (i32, i64, ...) @ioctl(i32 %6, i64 %conv, i32* %arg) #5
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %9 = load i32, i32* %arg, align 4
  %conv8 = sext i32 %9 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv8)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

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
  %_save = alloca %struct._ts*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %cmd, i32* %cmd.addr, align 4
  %0 = bitcast [32 x i8]* %argfmt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_do_ioctl_0.argfmt, i32 0, i32 0), i64 32, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %argfmt, i32 0, i32 0
  %1 = load i8*, i8** %fname.addr, align 8
  %call = call i8* @strncat(i8* %arraydecay, i8* %1, i64 30) #5
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %argfmt, i32 0, i32 0
  %call2 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* %arraydecay1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call3, %struct._ts** %_save, align 8
  %3 = load i32, i32* %fd.addr, align 4
  %4 = load i32, i32* %cmd.addr, align 4
  %conv = sext i32 %4 to i64
  %call4 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 %conv, i32 0) #5
  store i32 %call4, i32* %rv, align 4
  %5 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %5)
  %6 = load i32, i32* %rv, align 4
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %7)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @_ssize(%struct.oss_audio_t* %self, i32* %nchannels, i32* %ssize) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.oss_audio_t*, align 8
  %nchannels.addr = alloca i32*, align 8
  %ssize.addr = alloca i32*, align 8
  %fmt = alloca i32, align 4
  store %struct.oss_audio_t* %self, %struct.oss_audio_t** %self.addr, align 8
  store i32* %nchannels, i32** %nchannels.addr, align 8
  store i32* %ssize, i32** %ssize.addr, align 8
  store i32 0, i32* %fmt, align 4
  %0 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %0, i32 0, i32 2
  %1 = load i32, i32* %fd, align 4
  %call = call i32 (i32, i64, ...) @ioctl(i32 %1, i64 3221508101, i32* %fmt) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #7
  %2 = load i32, i32* %call1, align 4
  %sub = sub i32 0, %2
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fmt, align 4
  switch i32 %3, label %sw.default [
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
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  %4 = load i32*, i32** %ssize.addr, align 8
  store i32 1, i32* %4, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  %5 = load i32*, i32** %ssize.addr, align 8
  store i32 2, i32* %5, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end, %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb.3
  store i32 -95, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb
  %6 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self.addr, align 8
  %fd4 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %6, i32 0, i32 2
  %7 = load i32, i32* %fd4, align 4
  %8 = load i32*, i32** %nchannels.addr, align 8
  %call5 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 3221508102, i32* %8) #5
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %sw.epilog
  %call8 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call8, align 4
  %sub9 = sub i32 0, %9
  store i32 %sub9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.7, %sw.default, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @oss_mixer_dealloc(%struct.oss_mixer_t* %self) #0 {
entry:
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %call = call i32 @close(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %5 = bitcast %struct.oss_mixer_t* %4 to i8*
  call void @PyObject_Free(i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_close(%struct.oss_mixer_t* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %call = call i32 @close(i32 %3)
  %4 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd2 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %4, i32 0, i32 1
  store i32 -1, i32* %fd2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_fileno(%struct.oss_mixer_t* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %conv = sext i32 %3 to i64
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_controls(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_1_internal(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), i32 -2147201538)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_stereocontrols(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_1_internal(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.156, i32 0, i32 0), i32 -2147201541)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_reccontrols(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_1_internal(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.157, i32 0, i32 0), i32 -2147201539)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_get(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  %channel = alloca i32, align 4
  %volume = alloca i32, align 4
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i32 0, i32 0), i32* %channel)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %channel, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %4 = load i32, i32* %channel, align 4
  %cmp5 = icmp sgt i32 %4, 25
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.4
  %5 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.163, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %6 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd8 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %6, i32 0, i32 1
  %7 = load i32, i32* %fd8, align 4
  %8 = load i32, i32* %channel, align 4
  %shl = shl i32 %8, 0
  %or = or i32 -2147463936, %shl
  %conv = zext i32 %or to i64
  %or9 = or i64 %conv, 262144
  %call10 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 %or9, i32* %volume) #5
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call14 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %9)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.7
  %10 = load i32, i32* %volume, align 4
  %and = and i32 %10, 255
  %11 = load i32, i32* %volume, align 4
  %and16 = and i32 %11, 65280
  %shr = ashr i32 %and16, 8
  %call17 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i32 %and, i32 %shr)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.then.6, %if.then.3, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
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
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32* %channel, i32* %leftVol, i32* %rightVol)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %channel, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %4 = load i32, i32* %channel, align 4
  %cmp5 = icmp sgt i32 %4, 25
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end.4
  %5 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.163, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  %6 = load i32, i32* %leftVol, align 4
  %cmp8 = icmp slt i32 %6, 0
  br i1 %cmp8, label %if.then.15, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.7
  %7 = load i32, i32* %rightVol, align 4
  %cmp10 = icmp slt i32 %7, 0
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %8 = load i32, i32* %leftVol, align 4
  %cmp12 = icmp sgt i32 %8, 100
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.11
  %9 = load i32, i32* %rightVol, align 4
  %cmp14 = icmp sgt i32 %9, 100
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.11, %lor.lhs.false.9, %if.end.7
  %10 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.166, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.13
  %11 = load i32, i32* %rightVol, align 4
  %shl = shl i32 %11, 8
  %12 = load i32, i32* %leftVol, align 4
  %or = or i32 %shl, %12
  store i32 %or, i32* %volume, align 4
  %13 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd17 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %13, i32 0, i32 1
  %14 = load i32, i32* %fd17, align 4
  %15 = load i32, i32* %channel, align 4
  %shl18 = shl i32 %15, 0
  %or19 = or i32 -1073722112, %shl18
  %conv = zext i32 %or19 to i64
  %or20 = or i64 %conv, 262144
  %call21 = call i32 (i32, i64, ...) @ioctl(i32 %14, i64 %or20, i32* %volume) #5
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.16
  %16 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call25 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %16)
  store %struct._object* %call25, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.16
  %17 = load i32, i32* %volume, align 4
  %and = and i32 %17, 255
  %18 = load i32, i32* %volume, align 4
  %and27 = and i32 %18, 65280
  %shr = ashr i32 %and27, 8
  %call28 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.164, i32 0, i32 0), i32 %and, i32 %shr)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.24, %if.then.15, %if.then.6, %if.then.3, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_get_recsrc(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_1_internal(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i32 0, i32 0), i32 -2147201537)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @oss_mixer_set_recsrc(%struct.oss_mixer_t* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.oss_mixer_t*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.oss_mixer_t* %self, %struct.oss_mixer_t** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %0, i32 0, i32 1
  %1 = load i32, i32* %fd, align 4
  %call = call i32 @_is_fd_valid(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self.addr, align 8
  %fd1 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %2, i32 0, i32 1
  %3 = load i32, i32* %fd1, align 4
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call2 = call %struct._object* @_do_ioctl_1(i32 %3, %struct._object* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.161, i32 0, i32 0), i32 -1073459713)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
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
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* %fname, i8** %fname.addr, align 8
  store i32 %cmd, i32* %cmd.addr, align 4
  %0 = bitcast [32 x i8]* %argfmt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_do_ioctl_1_internal.argfmt, i32 0, i32 0), i64 32, i32 16, i1 false)
  store i32 0, i32* %arg, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %argfmt, i32 0, i32 0
  %1 = load i8*, i8** %fname.addr, align 8
  %call = call i8* @strncat(i8* %arraydecay, i8* %1, i64 30) #5
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %argfmt, i32 0, i32 0
  %call2 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* %arraydecay1, i32* %arg)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd.addr, align 4
  %4 = load i32, i32* %cmd.addr, align 4
  %conv = sext i32 %4 to i64
  %call3 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 %conv, i32* %arg) #5
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call6 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %5)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %6 = load i32, i32* %arg, align 4
  %conv8 = sext i32 %6 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv8)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ossopen(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct.oss_audio_t* @newossobject(%struct._object* %0)
  %1 = bitcast %struct.oss_audio_t* %call to %struct._object*
  ret %struct._object* %1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ossopenmixer(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct.oss_mixer_t* @newossmixerobject(%struct._object* %0)
  %1 = bitcast %struct.oss_mixer_t* %call to %struct._object*
  ret %struct._object* %1
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
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i8* null, i8** %devicename, align 8
  store i8* null, i8** %mode, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i8** %devicename, i8** %mode)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %mode, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load i8*, i8** %devicename, align 8
  store i8* %2, i8** %mode, align 8
  store i8* null, i8** %devicename, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %3 = load i8*, i8** %mode, align 8
  %call3 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0)) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  store i32 0, i32* %imode, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.end.2
  %4 = load i8*, i8** %mode, align 8
  %call6 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0)) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  store i32 1, i32* %imode, align 4
  br label %if.end.15

if.else.9:                                        ; preds = %if.else
  %5 = load i8*, i8** %mode, align 8
  %call10 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0)) #6
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  store i32 2, i32* %imode, align 4
  br label %if.end.14

if.else.13:                                       ; preds = %if.else.9
  %6 = load %struct._object*, %struct._object** @OSSAudioError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.171, i32 0, i32 0))
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.5
  %7 = load i8*, i8** %devicename, align 8
  %cmp17 = icmp eq i8* %7, null
  br i1 %cmp17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.16
  %call19 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0)) #5
  store i8* %call19, i8** %devicename, align 8
  %8 = load i8*, i8** %devicename, align 8
  %cmp20 = icmp eq i8* %8, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0), i8** %devicename, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.16
  %9 = load i8*, i8** %devicename, align 8
  %10 = load i32, i32* %imode, align 4
  %or = or i32 %10, 2048
  %call24 = call i32 @_Py_open(i8* %9, i32 %or)
  store i32 %call24, i32* %fd, align 4
  %11 = load i32, i32* %fd, align 4
  %cmp25 = icmp eq i32 %11, -1
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %12 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %13 = load i8*, i8** %devicename, align 8
  %call27 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %12, i8* %13)
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  %14 = load i32, i32* %fd, align 4
  %call29 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 4, i32 0)
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.28
  %15 = load i32, i32* %fd, align 4
  %call32 = call i32 @close(i32 %15)
  %16 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %17 = load i8*, i8** %devicename, align 8
  %call33 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %16, i8* %17)
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.28
  %18 = load i32, i32* %fd, align 4
  %call35 = call i32 (i32, i64, ...) @ioctl(i32 %18, i64 2147766283, i32* %afmts) #5
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.34
  %19 = load i32, i32* %fd, align 4
  %call38 = call i32 @close(i32 %19)
  %20 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %21 = load i8*, i8** %devicename, align 8
  %call39 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %20, i8* %21)
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.34
  %call41 = call %struct._object* @_PyObject_New(%struct._typeobject* @OSSAudioType)
  %22 = bitcast %struct._object* %call41 to %struct.oss_audio_t*
  store %struct.oss_audio_t* %22, %struct.oss_audio_t** %self, align 8
  %cmp42 = icmp eq %struct.oss_audio_t* %22, null
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.40
  %23 = load i32, i32* %fd, align 4
  %call44 = call i32 @close(i32 %23)
  store %struct.oss_audio_t* null, %struct.oss_audio_t** %retval
  br label %return

if.end.45:                                        ; preds = %if.end.40
  %24 = load i8*, i8** %devicename, align 8
  %25 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8
  %devicename46 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %25, i32 0, i32 1
  store i8* %24, i8** %devicename46, align 8
  %26 = load i32, i32* %fd, align 4
  %27 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8
  %fd47 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %27, i32 0, i32 2
  store i32 %26, i32* %fd47, align 4
  %28 = load i32, i32* %imode, align 4
  %29 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8
  %mode48 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %29, i32 0, i32 3
  store i32 %28, i32* %mode48, align 4
  %30 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8
  %ocount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %30, i32 0, i32 5
  store i32 0, i32* %ocount, align 4
  %31 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8
  %icount = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %31, i32 0, i32 4
  store i32 0, i32* %icount, align 4
  %32 = load i32, i32* %afmts, align 4
  %33 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8
  %afmts49 = getelementptr inbounds %struct.oss_audio_t, %struct.oss_audio_t* %33, i32 0, i32 6
  store i32 %32, i32* %afmts49, align 4
  %34 = load %struct.oss_audio_t*, %struct.oss_audio_t** %self, align 8
  store %struct.oss_audio_t* %34, %struct.oss_audio_t** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.43, %if.then.37, %if.then.31, %if.then.26, %if.else.13, %if.then
  %35 = load %struct.oss_audio_t*, %struct.oss_audio_t** %retval
  ret %struct.oss_audio_t* %35
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare i32 @_Py_open(i8*, i32) #1

declare %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object*, i8*) #1

declare i32 @fcntl(i32, i32, ...) #1

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal %struct.oss_mixer_t* @newossmixerobject(%struct._object* %arg) #0 {
entry:
  %retval = alloca %struct.oss_mixer_t*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %devicename = alloca i8*, align 8
  %fd = alloca i32, align 4
  %self = alloca %struct.oss_mixer_t*, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i8* null, i8** %devicename, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8** %devicename)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.oss_mixer_t* null, %struct.oss_mixer_t** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %devicename, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0)) #5
  store i8* %call2, i8** %devicename, align 8
  %2 = load i8*, i8** %devicename, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.176, i32 0, i32 0), i8** %devicename, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %3 = load i8*, i8** %devicename, align 8
  %call7 = call i32 @_Py_open(i8* %3, i32 2)
  store i32 %call7, i32* %fd, align 4
  %4 = load i32, i32* %fd, align 4
  %cmp8 = icmp eq i32 %4, -1
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %5 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %6 = load i8*, i8** %devicename, align 8
  %call10 = call %struct._object* @PyErr_SetFromErrnoWithFilename(%struct._object* %5, i8* %6)
  store %struct.oss_mixer_t* null, %struct.oss_mixer_t** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %call12 = call %struct._object* @_PyObject_New(%struct._typeobject* @OSSMixerType)
  %7 = bitcast %struct._object* %call12 to %struct.oss_mixer_t*
  store %struct.oss_mixer_t* %7, %struct.oss_mixer_t** %self, align 8
  %cmp13 = icmp eq %struct.oss_mixer_t* %7, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %8 = load i32, i32* %fd, align 4
  %call15 = call i32 @close(i32 %8)
  store %struct.oss_mixer_t* null, %struct.oss_mixer_t** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %9 = load i32, i32* %fd, align 4
  %10 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self, align 8
  %fd17 = getelementptr inbounds %struct.oss_mixer_t, %struct.oss_mixer_t* %10, i32 0, i32 1
  store i32 %9, i32* %fd17, align 4
  %11 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %self, align 8
  store %struct.oss_mixer_t* %11, %struct.oss_mixer_t** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then.9, %if.then
  %12 = load %struct.oss_mixer_t*, %struct.oss_mixer_t** %retval
  ret %struct.oss_mixer_t* %12
}

declare %struct._object* @PyList_New(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 283420}
