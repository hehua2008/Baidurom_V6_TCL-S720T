.class public final Lcom/mediatek/common/MediatekClassFactory;
.super Ljava/lang/Object;
.source "MediatekClassFactory.java"


# static fields
.field private static final DEBUG_GETINSTANCE:Z = true

.field private static final DEBUG_PERFORMANCE:Z = true

.field private static final TAG:Ljava/lang/String; = "MediatekClassFactory"

.field private static commonInterfaceMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mOPFactoryName:Ljava/lang/String; = "com.mediatek.op.MediatekOPClassFactory"

.field private static mOpChecked:Z

.field private static mOpGetIfClassName:Ljava/lang/reflect/Method;

.field private static opInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static primitiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/common/MediatekClassFactory;->mOpChecked:Z

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    .line 150
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const-string v2, "com.mediatek.telephony.SimInfoUpdateAdp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/aee/IExceptionLog;

    const-string v2, "com.mediatek.exceptionlog.ExceptionLog"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/lowstorage/ILowStorageHandle;

    const-string v2, "com.mediatek.lowstorage.LowStorageHandle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v2, "com.mediatek.agps.MtkAgpsManagerImpl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const-string v2, "com.mediatek.agps.MtkAgpsManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/dcfdecoder/IDcfDecoder;

    const-string v2, "com.mediatek.dcfdecoder.DcfDecoder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/gifdecoder/IGifDecoder;

    const-string v2, "com.mediatek.gifdecoder.GifDecoder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const-string v2, "com.mediatek.audioprofile.AudioProfileService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileManager;

    const-string v2, "com.mediatek.audioprofile.AudioProfileManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    const-string v2, "com.mediatek.hdmi.MtkHdmiManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/hdmi/IHDMINative;

    const-string v2, "com.mediatek.hdmi.HDMINative"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/voicecommand/IVoicePhoneDetection;

    const-string v2, "com.mediatek.voicecommand.app.VoicePhoneDetection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/amsplus/IAmsPlus;

    const-string v2, "com.mediatek.amsplus.ActivityStackPlus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    const-string v2, "com.mediatek.msglogger.MessageMonitorService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/msgmonitorservice/IMessageLoggerWrapper;

    const-string v2, "com.mediatek.msglogger.MessageLoggerWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IBipManagerExt;

    const-string v2, "com.mediatek.internal.telephony.cat.BipManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/search/ISearchEngineManager;

    const-string v2, "com.mediatek.search.SearchEngineManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/search/ISearchEngineManagerService;

    const-string v2, "com.mediatek.search.SearchEngineManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/mom/IMobileManager;

    const-string v2, "com.mediatek.mom.MobileManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/mom/IMobileManagerService;

    const-string v2, "com.mediatek.mom.MobileManagerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const-string v2, "com.mediatek.telephony.InternationalRoamingController"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/perfservice/IPerfService;

    const-string v2, "com.mediatek.perfservice.PerfService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/perfservice/IPerfServiceWrapper;

    const-string v2, "com.mediatek.perfservice.PerfServiceWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/perfservice/PerfServiceManager;

    const-string v2, "com.mediatek.perfservice.PerfServiceManagerImpl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IWorldPhone;

    const-string v2, "com.mediatek.telephony.WorldPhoneWrapper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    .line 205
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/IFwkExt;

    const-string v2, "com.mediatek.op.FwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/wifi/IWifiFwkExt;

    const-string v2, "com.mediatek.op.wifi.DefaultWifiFwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/net/IConnectivityServiceExt;

    const-string v2, "com.mediatek.op.net.DefaultConnectivityServiceExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/util/IPatterns;

    const-string v2, "com.mediatek.op.util.DefaultPatterns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/bootanim/IBootAnimExt;

    const-string v2, "com.mediatek.op.bootanim.DefaultBootAnimExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IKeyguardUtilExt;

    const-string v2, "com.mediatek.op.policy.DefaultKeyguardUtilExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    const-string v2, "com.mediatek.op.telephony.ServiceStateExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITetheringExt;

    const-string v2, "com.mediatek.op.telephony.TetheringExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const-string v2, "com.mediatek.op.telephony.PhoneNumberExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IGsmConnectionExt;

    const-string v2, "com.mediatek.op.telephony.GsmConnectionExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITelephonyExt;

    const-string v2, "com.mediatek.op.telephony.TelephonyExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ICallerInfoExt;

    const-string v2, "com.mediatek.op.telephony.CallerInfoExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/media/IOmaSettingHelper;

    const-string v2, "com.mediatek.op.media.DefaultOmaSettingHelper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/media/IAudioServiceExt;

    const-string v2, "com.mediatek.common.media.IAudioServiceExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    const-string v2, "com.mediatek.op.audioprofile.DefaultAudioProfileExtension"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    const-string v2, "com.mediatek.op.audioprofile.DefaultProfileStatesGetter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IWapPushFwkExt;

    const-string v2, "com.mediatek.op.sms.WapPushFwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IConcatenatedSmsFwkExt;

    const-string v2, "com.mediatek.op.sms.ConcatenatedSmsFwkExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IDupSmsFilterExt;

    const-string v2, "com.mediatek.op.sms.DupSmsFilterExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/ITelephonyProviderExt;

    const-string v2, "com.mediatek.op.telephony.TelephonyProviderExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IGsmDCTExt;

    const-string v2, "com.mediatek.op.telephony.GsmDCTExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/sms/IDefaultSmsSimSettingsExt;

    const-string v2, "com.mediatek.op.sms.DefaultSmsSimSettingsExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IDualClock;

    const-string v2, "com.mediatek.op.policy.DefaultDualClock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/ICardInfoExt;

    const-string v2, "com.mediatek.op.policy.DefaultCardInfoExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IOperatorSIMString;

    const-string v2, "com.mediatek.op.policy.DefaultOperatorSIMString"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IEmergencyButtonExt;

    const-string v2, "com.mediatek.op.policy.DefaultEmergencyButtonExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;

    const-string v2, "com.mediatek.op.policy.DefaultKeyguardPLMNCapitalize"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/util/IWebProtocolNames;

    const-string v2, "com.mediatek.op.util.DefaultWebProtocolNames"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/IUiccControllerExt;

    const-string v2, "com.mediatek.op.telephony.UiccControllerExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;

    const-string v2, "com.mediatek.op.search.DefaultRegionalPhoneSearchEngineExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/ICardStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.DefaultCardStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/IDataStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.DefaultDataStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/IGeneralStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.DefaultGeneralStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/telephony/internationalroaming/strategy/INetworkSelectionStrategy;

    const-string v2, "com.mediatek.op.telephony.internationalroaming.strategy.DefaultNetworkSelectionStrategy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/mediatek/common/policy/ILockScreenExt;

    const-string v2, "com.mediatek.op.policy.DefaultLockScreenExt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    .line 716
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createInstance(): Begin = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v5, 0x0

    .line 287
    .local v5, ifClassName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 290
    .local v9, obj:Ljava/lang/Object;
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create Instance with :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v14, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 295
    sget-object v14, Lcom/mediatek/common/MediatekClassFactory;->commonInterfaceMap:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ifClassName:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 298
    .restart local v5       #ifClassName:Ljava/lang/String;
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create Instance from mediatek-framework library :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/mediatek/common/MediatekClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 602
    .end local v9           #obj:Ljava/lang/Object;
    :goto_0
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createInstance(): End = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    if-nez v9, :cond_1d

    .line 607
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "null object during finding :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14}, Ljava/lang/RuntimeException;-><init>()V

    throw v14

    .line 304
    .restart local v9       #obj:Ljava/lang/Object;
    :cond_0
    sget-object v14, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 306
    invoke-static/range {p0 .. p0}, Lcom/mediatek/common/MediatekClassFactory;->getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 309
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "create Instance from operator library :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/mediatek/common/MediatekClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 313
    :cond_1
    const-class v14, Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_4

    .line 314
    const/4 v8, 0x0

    .line 316
    .local v8, mpoDecoderObj:Ljava/lang/Object;
    :try_start_0
    const-string v14, "com.mediatek.mpo.MpoDecoder"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 317
    .local v2, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_2

    .line 318
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "decodeFile"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 319
    const-string v14, "decodeFile"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 321
    .local v7, method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_2

    .line 322
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v8           #mpoDecoderObj:Ljava/lang/Object;
    :cond_2
    :goto_1
    move-object v9, v8

    .line 338
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    goto/16 :goto_0

    .line 324
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v8       #mpoDecoderObj:Ljava/lang/Object;
    :cond_3
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "decodeUri"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 325
    const-string v14, "decodeUri"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/ContentResolver;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Landroid/net/Uri;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 327
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_2

    .line 328
    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_1

    .line 333
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 334
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for MpoDecoder"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v9, v8

    goto :goto_2

    .line 338
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #mpoDecoderObj:Ljava/lang/Object;
    :cond_4
    const-class v14, Lcom/mediatek/common/stereo3d/IJpsParser;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_6

    .line 339
    const/4 v6, 0x0

    .line 341
    .local v6, jpsParserObj:Ljava/lang/Object;
    :try_start_1
    const-string v14, "com.mediatek.stereo3d.JpsParser"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 342
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_5

    .line 344
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "parse"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 345
    const-string v14, "parse"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/io/File;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 348
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_5

    .line 349
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .end local v6           #jpsParserObj:Ljava/lang/Object;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_5
    move-object v9, v6

    .line 358
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    goto/16 :goto_0

    .line 353
    .restart local v6       #jpsParserObj:Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 354
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for JpsParser"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v9, v6

    goto :goto_3

    .line 358
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #jpsParserObj:Ljava/lang/Object;
    :cond_6
    const-class v14, Lcom/mediatek/common/stereo3d/IStereo3DConversion;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_b

    .line 359
    const/4 v1, 0x0

    .line 361
    .local v1, bitmapObj:Ljava/lang/Object;
    :try_start_2
    const-string v14, "com.mediatek.stereo3d.Stereo3DConversion"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 363
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_7

    .line 364
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Stereo3DConversion args legnth: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "execute"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 369
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    .line 370
    const-string v14, "execute"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/graphics/Bitmap;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 373
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_7

    .line 374
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bitmapObj:Ljava/lang/Object;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_7
    :goto_4
    move-object v9, v1

    .line 412
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_5
    goto/16 :goto_0

    .line 376
    .restart local v1       #bitmapObj:Ljava/lang/Object;
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 377
    const-string v14, "execute"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/graphics/Bitmap;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 381
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_7

    .line 382
    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 385
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_9
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_a

    .line 386
    const-string v14, "execute"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/graphics/Bitmap;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 390
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_7

    .line 391
    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 394
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_a
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_7

    .line 395
    const-string v14, "execute"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/graphics/Bitmap;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 399
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_7

    .line 400
    const/4 v14, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x4

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto/16 :goto_4

    .line 406
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_2
    move-exception v3

    .line 407
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for Stereo3DConversion"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v9, v1

    goto/16 :goto_5

    .line 412
    .end local v1           #bitmapObj:Ljava/lang/Object;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_b
    const-class v14, Lcom/mediatek/common/geocoding/IGeoCodingQuery;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_d

    .line 413
    const/4 v4, 0x0

    .line 415
    .local v4, geoCodingQueryObj:Ljava/lang/Object;
    :try_start_3
    const-string v14, "com.mediatek.geocoding.GeoCodingQuery"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 416
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_c

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_c

    .line 417
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getInstance"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 418
    const-string v14, "getInstance"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 419
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_c

    .line 420
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    .end local v4           #geoCodingQueryObj:Ljava/lang/Object;
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_c
    move-object v9, v4

    .line 429
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_6
    goto/16 :goto_0

    .line 424
    .restart local v4       #geoCodingQueryObj:Ljava/lang/Object;
    :catch_3
    move-exception v3

    .line 425
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for GeoCodingQuery"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v9, v4

    goto :goto_6

    .line 429
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #geoCodingQueryObj:Ljava/lang/Object;
    :cond_d
    const-class v14, Lcom/mediatek/common/pluginmanager/IPluginManager;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_12

    .line 430
    const/4 v11, 0x0

    .line 432
    .local v11, pluginMgr:Ljava/lang/Object;
    :try_start_4
    const-string v14, "com.mediatek.pluginmanager.PluginManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 434
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_e

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_e

    .line 435
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PluginManager args length: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "create"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 437
    const-string v14, "MediatekClassFactory"

    const-string v15, "IPluginManager.CREATE"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_f

    .line 445
    const-string v14, "create"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-class v17, [Landroid/content/pm/Signature;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 449
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_e

    .line 450
    const/4 v14, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x0

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v11           #pluginMgr:Ljava/lang/Object;
    :cond_e
    :goto_7
    move-object v9, v11

    .line 500
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_8
    goto/16 :goto_0

    .line 453
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v11       #pluginMgr:Ljava/lang/Object;
    :cond_f
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_e

    .line 454
    const-string v14, "create"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-class v17, [Landroid/content/pm/Signature;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 458
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_e

    .line 459
    const/4 v14, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x4

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_7

    .line 463
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_10
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "createPluginObject"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 465
    const-string v14, "MediatekClassFactory"

    const-string v15, "IPluginManager.CREATE_PLUGIN_OBJECT"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_11

    .line 475
    const-string v14, "createPluginObject"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-class v17, [Landroid/content/pm/Signature;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 479
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_e

    .line 480
    const/4 v14, 0x0

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x4

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x0

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_7

    .line 483
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_11
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x6

    if-ne v14, v15, :cond_e

    .line 484
    const-string v14, "createPluginObject"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-class v17, [Landroid/content/pm/Signature;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 488
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_e

    .line 489
    const/4 v14, 0x0

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x3

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x4

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x5

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v11

    goto/16 :goto_7

    .line 495
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v3

    .line 496
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for PluginManager"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v9, v11

    goto/16 :goto_8

    .line 500
    .end local v3           #e:Ljava/lang/Exception;
    .end local v11           #pluginMgr:Ljava/lang/Object;
    :cond_12
    const-class v14, Lcom/mediatek/common/webkit/IPicker;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_14

    .line 501
    const/4 v10, 0x0

    .line 503
    .local v10, pickerObj:Ljava/lang/Object;
    :try_start_5
    const-string v14, "com.mediatek.webkit.PickerManager"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 504
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IPicker init args length : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", args[0] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", args[1] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-eqz v2, :cond_13

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_13

    .line 507
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getInstance"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 508
    const-string v14, "getInstance"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 509
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_13

    .line 510
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 511
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IPicker init invoke : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v10           #pickerObj:Ljava/lang/Object;
    :cond_13
    move-object v9, v10

    .line 520
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_9
    goto/16 :goto_0

    .line 515
    :catch_5
    move-exception v3

    .line 516
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for Webkit Picker"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v9, v10

    goto :goto_9

    .line 520
    .end local v3           #e:Ljava/lang/Exception;
    :cond_14
    const-class v14, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_19

    .line 521
    const/4 v12, 0x0

    .line 523
    .local v12, policyObj:Ljava/lang/Object;
    :try_start_6
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ISwitch3GPolicy init args length : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", args[0] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_23

    .line 526
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "OP"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 527
    const-string v14, "com.mediatek.telephony.Switch3GPolicyOp"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 528
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_15

    .line 529
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v12

    .line 530
    .end local v12           #policyObj:Ljava/lang/Object;
    :cond_15
    :try_start_7
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ISwitch3GPolicy newInstance (Op) : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-object v9, v12

    .line 538
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #obj:Ljava/lang/Object;
    :goto_a
    if-nez v9, :cond_16

    .line 539
    :try_start_8
    const-string v14, "MediatekClassFactory"

    const-string v15, "ISwitch3GPolicy newInstance (ERROR) : create request not mapped to any implementation."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 546
    .restart local v9       #obj:Ljava/lang/Object;
    :cond_16
    :goto_b
    goto/16 :goto_0

    .line 531
    .restart local v12       #policyObj:Ljava/lang/Object;
    :cond_17
    const/4 v14, 0x0

    :try_start_9
    aget-object v14, p1, v14

    const-string v15, "DEFAULT"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 532
    const-string v14, "com.mediatek.telephony.Switch3GPolicyDefault"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 533
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_18

    .line 534
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v12

    .line 535
    .end local v12           #policyObj:Ljava/lang/Object;
    :cond_18
    :try_start_a
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ISwitch3GPolicy newInstance (Default) : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-object v9, v12

    goto :goto_a

    .line 541
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v12       #policyObj:Ljava/lang/Object;
    :catch_6
    move-exception v3

    move-object v9, v12

    .line 542
    .end local v9           #obj:Ljava/lang/Object;
    .end local v12           #policyObj:Ljava/lang/Object;
    .restart local v3       #e:Ljava/lang/Exception;
    :goto_c
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for Switch 3G Policy"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 546
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v9       #obj:Ljava/lang/Object;
    :cond_19
    const-class v14, Lcom/mediatek/common/storage/IStorageManagerEx;

    move-object/from16 v0, p0

    if-ne v0, v14, :cond_22

    .line 547
    const/4 v13, 0x0

    .line 549
    .local v13, storageManagerExObj:Ljava/lang/Object;
    :try_start_b
    const-string v14, "com.mediatek.storage.StorageManagerEx"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 550
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1a

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_1a

    .line 551
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getDefaultPath"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 552
    const-string v14, "getDefaultPath"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 553
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_1a

    .line 554
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v13           #storageManagerExObj:Ljava/lang/Object;
    :cond_1a
    :goto_d
    move-object v9, v13

    .line 593
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_e
    goto/16 :goto_0

    .line 556
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v13       #storageManagerExObj:Ljava/lang/Object;
    :cond_1b
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "setDefaultPath"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 557
    const-string v14, "setDefaultPath"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 558
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_1c

    .line 559
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 565
    .end local v13           #storageManagerExObj:Ljava/lang/Object;
    :cond_1c
    const/4 v9, 0x0

    .line 610
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    .end local v9           #obj:Ljava/lang/Object;
    :cond_1d
    return-object v9

    .line 566
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v13       #storageManagerExObj:Ljava/lang/Object;
    :cond_1e
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getExternalCacheDir"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 567
    const-string v14, "getExternalCacheDir"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 568
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_1a

    .line 569
    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, p1, v17

    aput-object v17, v15, v16

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_d

    .line 571
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_1f
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getExternalStoragePath"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 572
    const-string v14, "getExternalStoragePath"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 573
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_1a

    .line 574
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_d

    .line 576
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_20
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getInternalStoragePath"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 577
    const-string v14, "getInternalStoragePath"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 578
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_1a

    .line 579
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_d

    .line 581
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_21
    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "getSdSwapState"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 582
    const-string v14, "getSdSwapState"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 583
    .restart local v7       #method:Ljava/lang/reflect/Method;
    if-eqz v7, :cond_1a

    .line 584
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    move-result-object v13

    goto/16 :goto_d

    .line 588
    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #method:Ljava/lang/reflect/Method;
    :catch_7
    move-exception v3

    .line 589
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v14, "MediatekClassFactory"

    const-string v15, "createInstance:got exception for StorageManagerEx"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v9, v13

    goto/16 :goto_e

    .line 594
    .end local v3           #e:Ljava/lang/Exception;
    .end local v13           #storageManagerExObj:Ljava/lang/Object;
    :cond_22
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsupported class: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v14, "MediatekClassFactory"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createInstance(): End = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 541
    .restart local v2       #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_8
    move-exception v3

    move-object v9, v12

    goto/16 :goto_c

    .end local v2           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #obj:Ljava/lang/Object;
    :catch_9
    move-exception v3

    goto/16 :goto_c

    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v12       #policyObj:Ljava/lang/Object;
    :cond_23
    move-object v9, v12

    goto/16 :goto_a
.end method

.method public static getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "className"
    .parameter "args"

    .prologue
    const/4 v11, 0x0

    .line 616
    if-nez p0, :cond_0

    .line 617
    const-string v10, "MediatekClassFactory"

    const-string v12, "Interface full class name is null"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 669
    :goto_0
    return-object v10

    .line 622
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 624
    .local v1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v10, p1

    if-nez v10, :cond_1

    .line 626
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 631
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 632
    .local v3, ctorList:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v10, v3

    if-ge v5, v10, :cond_7

    .line 633
    const/4 v7, 0x1

    .line 634
    .local v7, matched:Z
    aget-object v2, v3, v5

    .line 635
    .local v2, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 636
    .local v9, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v10, v9

    array-length v12, p1

    if-eq v10, v12, :cond_3

    .line 632
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 640
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    array-length v10, v9

    if-ge v6, v10, :cond_5

    .line 641
    aget-object v8, v9, v6

    .line 642
    .local v8, paramType:Ljava/lang/Class;
    aget-object v10, p1, v6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 644
    .local v0, actualType:Ljava/lang/Class;
    const-string v10, "MediatekClassFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getInstanceHelper: paramType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", actualType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/mediatek/common/MediatekClassFactory;->primitiveMap:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 650
    :cond_4
    const-string v10, "MediatekClassFactory"

    const-string v12, "Parameter not matched, skip"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v7, 0x0

    .line 660
    .end local v0           #actualType:Ljava/lang/Class;
    .end local v8           #paramType:Ljava/lang/Class;
    :cond_5
    if-eqz v7, :cond_2

    .line 661
    const-string v10, "MediatekClassFactory"

    const-string v12, "Constructor matched"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 655
    .restart local v0       #actualType:Ljava/lang/Class;
    .restart local v8       #paramType:Ljava/lang/Class;
    :cond_6
    const-string v10, "MediatekClassFactory"

    const-string v12, "Parameter matched"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 665
    .end local v0           #actualType:Ljava/lang/Class;
    .end local v1           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #ctorList:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #matched:Z
    .end local v8           #paramType:Ljava/lang/Class;
    .end local v9           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 666
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "MediatekClassFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #e:Ljava/lang/Exception;
    :cond_7
    move-object v10, v11

    .line 669
    goto/16 :goto_0
.end method

.method private static getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 676
    .local v3, ifClassName:Ljava/lang/String;
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 681
    :try_start_0
    const-string v4, "com.mediatek.op.MediatekOPClassFactory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 682
    .local v1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getOpIfClassName"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 693
    .end local v1           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 695
    :try_start_1
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 705
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 707
    sget-object v4, Lcom/mediatek/common/MediatekClassFactory;->opInterfaceMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ifClassName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 710
    .restart local v3       #ifClassName:Ljava/lang/String;
    :cond_2
    return-object v3

    .line 684
    :catch_0
    move-exception v2

    .line 685
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "MediatekClassFactory"

    const-string v5, "OP not exist!, Get obj from default class"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 687
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "MediatekClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not Such Method Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 697
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "MediatekClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 699
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 700
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "MediatekClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InvocationTargetException Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
