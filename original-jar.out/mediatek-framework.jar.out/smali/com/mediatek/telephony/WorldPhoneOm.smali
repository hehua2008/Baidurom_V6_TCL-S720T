.class public Lcom/mediatek/telephony/WorldPhoneOm;
.super Landroid/os/Handler;
.source "WorldPhoneOm.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;
    }
.end annotation


# static fields
.field private static final FDD_STANDBY_TIMER:[I

.field private static final MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

.field private static final MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

.field private static final MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static final TDD_STANDBY_TIMER:[I

.field private static s3gSimSlot:I

.field private static sAllowSwitchModem:Z

.field private static sContext:Landroid/content/Context;

.field private static sDenyReason:I

.field private static sFddStandByCounter:I

.field private static sFirstSelect:[Z

.field private static sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sGsmPhone:[Lcom/android/internal/telephony/Phone;

.field private static sGsmPlmnStrings:[Ljava/lang/String;

.field private static sIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

.field private static sImsi:[Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static sModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

.field private static sNeedGetPlmnPreferList:[Z

.field private static sNeedQueryModemType:Z

.field private static sOperatorSpec:Ljava/lang/String;

.field private static sPhone:Lcom/android/internal/telephony/Phone;

.field private static sPlmnSs:Ljava/lang/String;

.field private static sRegState:I

.field private static sRegion:I

.field private static sRilRadioTechnology:I

.field private static sState:I

.field private static sSuspendId:I

.field private static sSuspendWaitImsi:[Z

.field private static sTddStandByCounter:I

.field private static sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

.field private static sUserType:I

.field private static sWaitForDesignateService:Z

.field private static sWaitInFdd:Z

.field private static sWaitInTdd:Z


# instance fields
.field private mFddStandByTimerRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTddStandByTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sLock:Ljava/lang/Object;

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .line 111
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "45407"

    aput-object v1, v0, v2

    const-string v1, "46003"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "46005"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "45502"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 121
    new-array v0, v4, [I

    const/4 v1, -0x1

    aput v1, v0, v3

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    .line 124
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x1ct 0x2t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 350
    new-instance v2, Lcom/mediatek/telephony/WorldPhoneOm$1;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/WorldPhoneOm$1;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    iput-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 361
    new-instance v2, Lcom/mediatek/telephony/WorldPhoneOm$2;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/WorldPhoneOm$2;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    iput-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 569
    new-instance v2, Lcom/mediatek/telephony/WorldPhoneOm$3;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/WorldPhoneOm$3;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    iput-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    const-string v2, "Constructor invoked"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 130
    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sOperatorSpec:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator Spec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOm;->sOperatorSpec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 132
    sput-object p1, Lcom/mediatek/telephony/WorldPhoneOm;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 133
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    .line 135
    const-string v2, "Gemini Project"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 137
    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v3, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 145
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 146
    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v0

    .line 147
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x0

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0xa

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 149
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1e

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "3G Switch Supported"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 156
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sContext:Landroid/content/Context;

    .line 161
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    new-instance v2, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>([Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 166
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 167
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/IccRecords;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    .line 168
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    .line 169
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Z

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedGetPlmnPreferList:[Z

    .line 170
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Z

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendWaitImsi:[Z

    .line 171
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Z

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sFirstSelect:[Z

    .line 173
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetAllProperties()V

    .line 174
    sput v4, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    .line 175
    sput v4, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    .line 176
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedQueryModemType:Z

    .line 177
    sput-boolean v4, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    .line 178
    sput-boolean v4, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    .line 179
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_auto_select_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 180
    const-string v2, "Auto select disable"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 181
    const/16 v2, -0x62

    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    .line 185
    :goto_2
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    sget-object v4, Lcom/mediatek/telephony/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "world_phone_fdd_modem_timer"

    sget-object v6, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v6, v6, v7

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDD_STANDBY_TIMER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 188
    return-void

    .line 183
    :cond_2
    const-string v2, "Auto select enable"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$1100()[Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedGetPlmnPreferList:[Z

    return-object v0
.end method

.method static synthetic access$1200()[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    return p0
.end method

.method static synthetic access$1400(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500()[Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sFirstSelect:[Z

    return-object v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    return p0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    return v0
.end method

.method static synthetic access$1800()[Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/telephony/WorldPhoneOm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic access$2202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    return p0
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V

    return-void
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput-object p0, Lcom/mediatek/telephony/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sRilRadioTechnology:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->sRilRadioTechnology:I

    return p0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sRegState:I

    return v0
.end method

.method static synthetic access$2702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->sRegState:I

    return p0
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sState:I

    return v0
.end method

.method static synthetic access$2802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->sState:I

    return p0
.end method

.method static synthetic access$2900(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleNoService()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/telephony/WorldPhoneOm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    sput p0, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    return p0
.end method

.method static synthetic access$700(Lcom/mediatek/telephony/WorldPhoneOm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v0

    return v0
.end method

.method static synthetic access$800()[Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$900()[Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method private get3gCapabilitySim()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 784
    const-string v3, "gsm.baseband.capability"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 785
    .local v0, capability:I
    const-string v3, "gsm.baseband.capability2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 786
    .local v1, capability2:I
    if-gt v0, v4, :cond_0

    if-le v1, v4, :cond_1

    .line 787
    :cond_0
    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v2

    .line 788
    .local v2, slot3g:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s3gSimSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 792
    .end local v2           #slot3g:I
    :goto_0
    return v2

    .line 791
    :cond_1
    const-string v3, "3G turn off"

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 792
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 7
    .parameter "srcMccOrPlmn"

    .prologue
    const/4 v5, 0x0

    .line 879
    if-nez p1, :cond_0

    .line 880
    const-string v6, "[getRegion] null source"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 891
    :goto_0
    return v5

    .line 883
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, currentMcc:Ljava/lang/String;
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 885
    .local v4, mcc:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 886
    const-string v5, "[getRegion] REGION_DOMESTIC"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 887
    const/4 v5, 0x1

    goto :goto_0

    .line 884
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 890
    .end local v4           #mcc:Ljava/lang/String;
    :cond_2
    const-string v5, "[getRegion] REGION_FOREIGN"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 891
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 6
    .parameter "simImsi"

    .prologue
    const/4 v4, 0x0

    .line 855
    if-eqz p1, :cond_4

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 856
    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getUserType] simPlmn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 858
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 859
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 860
    const-string v4, "[getUserType] Type1 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 861
    const/4 v4, 0x1

    .line 874
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mccmnc:Ljava/lang/String;
    :goto_1
    return v4

    .line 858
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 864
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 865
    .restart local v3       #mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 866
    const-string v4, "[getUserType] Type3 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 867
    const/4 v4, 0x3

    goto :goto_1

    .line 864
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 870
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_3
    const-string v4, "[getUserType] Type2 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 871
    const/4 v4, 0x2

    goto :goto_1

    .line 873
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_4
    const-string v5, "[getUserType] null simImsi"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle3gSwitched()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 682
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 683
    const-string v0, "3G capability turned off"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    .line 685
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    const/16 v1, -0x62

    if-ne v0, v1, :cond_2

    .line 687
    const-string v0, "Auto Network Selection Disabled"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 688
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    goto :goto_0

    .line 690
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 691
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    const-string v0, "3G slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 694
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    goto :goto_0

    .line 697
    :cond_3
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    .line 698
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-ne v0, v3, :cond_5

    .line 699
    sput-boolean v3, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    .line 705
    :goto_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 706
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    .line 708
    :cond_4
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-eqz v0, :cond_0

    .line 709
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    aput-boolean v2, v0, v1

    .line 710
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-ne v0, v4, :cond_8

    .line 711
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    if-ne v0, v4, :cond_0

    .line 712
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 700
    :cond_5
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-eq v0, v4, :cond_6

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-ne v0, v5, :cond_7

    .line 701
    :cond_6
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    goto :goto_1

    .line 703
    :cond_7
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 714
    :cond_8
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-ne v0, v3, :cond_9

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    if-ne v0, v3, :cond_9

    .line 715
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 717
    :cond_9
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0
.end method

.method private handleGetPlmnPreferList(Landroid/os/AsyncResult;I)V
    .locals 5
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 506
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 507
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 508
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    new-instance v3, Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;

    invoke-direct {v3, p0}, Lcom/mediatek/telephony/WorldPhoneOm$NetworkCompare;-><init>(Lcom/mediatek/telephony/WorldPhoneOm;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 509
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 510
    .local v2, network:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    .end local v2           #network:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    :cond_0
    const-string v3, "<PLMN Prefer List End>"

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 516
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;>;"
    :goto_1
    return-void

    .line 514
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleNoService()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 303
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 305
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 306
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-ne v0, v2, :cond_5

    .line 307
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    .line 308
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 309
    const-string v0, "TDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    aget v0, v0, v1

    if-ltz v0, :cond_1

    .line 311
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    if-nez v0, :cond_0

    .line 312
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s. Timer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    :goto_0
    const-string v0, "[handleNoService]-"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 347
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer already set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sTddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_1
    const-string v0, "Standby in TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_2
    const-string v0, "FDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v0, v0, v1

    if-ltz v0, :cond_4

    .line 324
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    if-nez v0, :cond_3

    .line 325
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s. Timer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 329
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer already set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOm;->sFddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_4
    const-string v0, "Standby in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :cond_5
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-ne v0, v3, :cond_8

    .line 336
    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    .line 337
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 338
    const-string v0, "TDD modem -> switch to FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 341
    :cond_7
    const-string v0, "FDD modem -> standby in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 344
    :cond_8
    const-string v0, "Unknow user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 5
    .parameter "ar"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 520
    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    const/16 v2, -0x63

    if-ne v1, v2, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    .line 523
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 524
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    .line 525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sGsmPlmnStrings["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :cond_1
    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    if-ne v1, p2, :cond_2

    sget-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    if-eq v1, v4, :cond_2

    .line 530
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->searchForDesignateService(Ljava/lang/String;)V

    .line 534
    :cond_2
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    .line 535
    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    const/16 v2, -0x62

    if-eq v1, v2, :cond_3

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    if-ne v1, v4, :cond_3

    .line 537
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    .line 542
    .end local v0           #i:I
    :cond_3
    :goto_1
    return-void

    .line 540
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncResult is wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePlmnSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 546
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendId:I

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 549
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    if-ne v0, p2, :cond_1

    .line 550
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-eqz v0, :cond_0

    .line 551
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V

    .line 567
    :goto_0
    return-void

    .line 553
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 554
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_1
    const-string v0, "Not 3G slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 558
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 561
    :cond_2
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleQueryModemType(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 490
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 491
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 492
    .local v1, modemType:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modemType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 493
    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 494
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getAvailableCi()I

    move-result v0

    .line 495
    .local v0, mAvailableCi:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 502
    .end local v0           #mAvailableCi:I
    .end local v1           #modemType:I
    :goto_0
    return-void

    .line 498
    .restart local v0       #mAvailableCi:I
    .restart local v1       #modemType:I
    :cond_0
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x3c

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_0

    .line 500
    .end local v0           #mAvailableCi:I
    .end local v1           #modemType:I
    :cond_1
    const-string v2, "Query modem type fail"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRadioOn(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 475
    sget-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedQueryModemType:Z

    if-eqz v1, :cond_2

    .line 476
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedQueryModemType:Z

    .line 477
    const-string v1, "Query modem type"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getAvailableCi()I

    move-result v0

    .line 479
    .local v0, mAvailableCi:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 487
    .end local v0           #mAvailableCi:I
    :cond_0
    :goto_0
    return-void

    .line 482
    .restart local v0       #mAvailableCi:I
    :cond_1
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/16 v2, 0x46

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryModemType(Landroid/os/Message;)V

    .line 484
    .end local v0           #mAvailableCi:I
    :cond_2
    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    const/16 v2, -0x63

    if-ne v1, v2, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    goto :goto_0
.end method

.method private handleSwitchModem(I)V
    .locals 5
    .parameter "toModem"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 737
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 738
    if-ne p1, v4, :cond_0

    .line 739
    const-string v1, "Already in TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 761
    :goto_0
    return-void

    .line 741
    :cond_0
    const-string v1, "Already in FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 746
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not idle, modem switch not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 751
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    .line 752
    if-ne p1, v3, :cond_4

    .line 753
    const-string v1, "Switching to FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 754
    invoke-static {v3}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 759
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetNetworkProperties()V

    goto :goto_0

    .line 756
    :cond_4
    const-string v1, "Switching to TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 757
    invoke-static {v4}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    goto :goto_2
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 12
    .parameter "plmnString"
    .parameter "slotId"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isAllowCampOn]+ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is 3G SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->getRegion(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    .line 195
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-ne v7, v5, :cond_3

    .line 196
    sput-boolean v5, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    .line 197
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    if-ne v7, v5, :cond_1

    .line 198
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 199
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    .line 200
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 201
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    .line 202
    const-string v6, "In TDD modem -> stay in TDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 203
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 299
    :goto_0
    return v5

    .line 206
    :cond_0
    sput v11, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 207
    const-string v5, "In FDD modem -> switch to TDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 208
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 209
    goto :goto_0

    .line 211
    :cond_1
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    if-ne v7, v9, :cond_f

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 213
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 214
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 215
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 216
    goto :goto_0

    .line 218
    :cond_2
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 219
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->removeModemStandByTimer()V

    .line 220
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 221
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_3
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-ne v7, v9, :cond_c

    .line 226
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    .line 227
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    if-ne v7, v9, :cond_5

    .line 228
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 229
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 230
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 231
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 232
    goto :goto_0

    .line 234
    :cond_4
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 235
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 236
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_5
    sget-boolean v7, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    if-nez v7, :cond_6

    .line 241
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 242
    const-string v6, "Not allow to switch modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 243
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_6
    const/4 v4, 0x0

    .line 247
    .local v4, nwType:I
    const/4 v7, 0x5

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 248
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 249
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 250
    const/4 v4, 0x1

    .line 254
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_7
    if-ne v4, v5, :cond_a

    .line 255
    const-string v7, "In TD network"

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_9

    .line 257
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 258
    const-string v6, "In TDD modem -> stay in TDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 259
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_9
    sput v11, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 263
    const-string v5, "In FDD modem -> switch to TDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 264
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 265
    goto/16 :goto_0

    .line 268
    :cond_a
    const-string v7, "Not in TD network"

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_b

    .line 270
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 271
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 272
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 273
    goto/16 :goto_0

    .line 275
    :cond_b
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 276
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 277
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #nwType:I
    :cond_c
    sget v7, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    if-ne v7, v11, :cond_e

    .line 282
    sput-boolean v6, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v7

    if-ne v7, v10, :cond_d

    .line 284
    sput v9, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 285
    const-string v5, "In TDD modem -> switch to FDD modem"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 286
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 287
    goto/16 :goto_0

    .line 289
    :cond_d
    sput v6, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 290
    const-string v6, "In FDD modem -> stay in FDD modem"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 291
    const-string v6, "[isAllowCampOn]- Camp on OK"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_e
    const-string v7, "Unknown user type"

    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 297
    :cond_f
    sput v5, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 298
    const-string v5, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 299
    goto/16 :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 910
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPOM]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void
.end method

.method private removeModemStandByTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 375
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInTdd:Z

    .line 376
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    :cond_0
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    if-eqz v0, :cond_1

    .line 379
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 380
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitInFdd:Z

    .line 381
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    :cond_1
    return-void
.end method

.method private resetAllProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 809
    const-string v1, "Reseting all properties"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 810
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    .line 811
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 812
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 813
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sNeedGetPlmnPreferList:[Z

    aput-boolean v2, v1, v0

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_0
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOm;->sAllowSwitchModem:Z

    .line 816
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOm;->sWaitForDesignateService:Z

    .line 817
    sput v2, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    .line 818
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetSimProperties()V

    .line 819
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetNetworkProperties()V

    .line 820
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 823
    const-string v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 824
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 825
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    .line 826
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 827
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    :cond_0
    monitor-exit v2

    .line 830
    return-void

    .line 829
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetSimProperties()V
    .locals 4

    .prologue
    .line 833
    const-string v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 834
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOm;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 835
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 836
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    .line 840
    const/16 v1, -0x63

    sput v1, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    .line 844
    monitor-exit v2

    .line 845
    return-void

    .line 844
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restartSelection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 849
    const-string v0, "[restartSelection] Restarting from TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->resetAllProperties()V

    .line 852
    return-void
.end method

.method private resumeCampingProcedure(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x3

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume camping slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sSuspendId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 765
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmPlmnStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 772
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 773
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 774
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0

    .line 775
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOm;->sDenyReason:I

    if-ne v0, v2, :cond_0

    .line 776
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 6
    .parameter "strPlmn"

    .prologue
    .line 386
    const-string v4, "[searchForDesignateService]+ Search for TD srvice"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 387
    if-nez p1, :cond_0

    .line 388
    const-string v4, "[searchForDesignateService]- null source"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 402
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 392
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 393
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sUserType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOm;->sUserType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sRegion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOm;->sRegion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 396
    const-string v4, "Find TD service"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 397
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V

    .line 401
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    const-string v4, "[searchForDesignateService]-"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setRatMode(II)V
    .locals 3
    .parameter "ratMode"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 797
    if-ne p1, v2, :cond_0

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRatMode] Setting slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RAT=auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 799
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 806
    :goto_0
    return-void

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRatMode] Setting slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RAT=2G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 803
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public disposeWorldPhone()V
    .locals 3

    .prologue
    .line 895
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 896
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 897
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 898
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnGSMSuspended(Landroid/os/Handler;)V

    .line 899
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOm;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 896
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 901
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 406
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 407
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 409
    :sswitch_0
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 413
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 414
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 417
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 421
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 425
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 429
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleRadioOn(I)V

    goto :goto_0

    .line 433
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_QUERY_MODEM_TYPE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOm;->handleQueryModemType(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 437
    :sswitch_7
    const-string v1, "handleMessage : <EVENT_SET_RAT_GSM_ONLY>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 438
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 439
    const-string v1, "Set RAT=2g ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RAT=2g fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :sswitch_8
    const-string v1, "handleMessage : <EVENT_SET_RAT_WCDMA_PREF>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 446
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 447
    const-string v1, "Set RAT=auto ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set RAT=auto fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :sswitch_9
    const-string v1, "handleMessage : <EVENT_STORE_MODEM_TYPE>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 454
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 455
    const-string v1, "Store modem type success"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store modem type fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :sswitch_a
    const-string v1, "handleMessage : <EVENT_GET_PLMN_PREFER_LIST>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOm;->handleGetPlmnPreferList(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 465
    :sswitch_b
    const-string v1, "handleMessage : <EVENT_GET_PLMN_PREFER_LIST>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->handleGetPlmnPreferList(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_4
        0x1e -> :sswitch_2
        0x1f -> :sswitch_5
        0x28 -> :sswitch_7
        0x32 -> :sswitch_8
        0x3c -> :sswitch_9
        0x46 -> :sswitch_6
        0x50 -> :sswitch_a
        0x51 -> :sswitch_b
    .end sparse-switch
.end method

.method public setNetworkSelectionMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 724
    if-nez p1, :cond_0

    .line 725
    const-string v0, "Network Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 726
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 727
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    .line 733
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V

    .line 734
    return-void

    .line 729
    :cond_0
    const-string v0, "Network Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V

    .line 730
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOm;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 731
    const/16 v0, -0x62

    sput v0, Lcom/mediatek/telephony/WorldPhoneOm;->s3gSimSlot:I

    goto :goto_0
.end method
