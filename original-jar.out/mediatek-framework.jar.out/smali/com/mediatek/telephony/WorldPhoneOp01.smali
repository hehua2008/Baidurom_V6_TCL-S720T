.class public Lcom/mediatek/telephony/WorldPhoneOp01;
.super Landroid/os/Handler;
.source "WorldPhoneOp01.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# static fields
.field private static FDD_STANDBY_TIMER:[I

.field private static final MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

.field private static final MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

.field private static final MCC_TABLE_DOMESTIC:[Ljava/lang/String;

.field private static final TDD_STANDBY_TIMER:[I

.field private static s3gSimSlot:I

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
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    .line 99
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v6

    const-string v1, "00101"

    aput-object v1, v0, v5

    const-string v1, "00211"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "00321"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00431"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "00541"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "00651"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "00761"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "00871"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "00902"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "01012"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "01122"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "01232"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "46004"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "46009"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "46602"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "50270"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "46003"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "45407"

    aput-object v1, v0, v6

    const-string v1, "46005"

    aput-object v1, v0, v5

    const-string v1, "45502"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    .line 109
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "460"

    aput-object v1, v0, v3

    const-string v1, "001"

    aput-object v1, v0, v4

    const-string v1, "002"

    aput-object v1, v0, v6

    const-string v1, "003"

    aput-object v1, v0, v5

    const-string v1, "004"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "005"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "006"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "007"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "008"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "009"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "010"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "011"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "012"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .line 119
    new-array v0, v4, [I

    const/16 v1, 0x3c

    aput v1, v0, v3

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    .line 122
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 306
    new-instance v2, Lcom/mediatek/telephony/WorldPhoneOp01$1;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/WorldPhoneOp01$1;-><init>(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    iput-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 317
    new-instance v2, Lcom/mediatek/telephony/WorldPhoneOp01$2;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/WorldPhoneOp01$2;-><init>(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    iput-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    .line 476
    new-instance v2, Lcom/mediatek/telephony/WorldPhoneOp01$3;

    invoke-direct {v2, p0}, Lcom/mediatek/telephony/WorldPhoneOp01$3;-><init>(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    iput-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    const-string v2, "Constructor invoked"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 128
    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sOperatorSpec:Ljava/lang/String;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator Spec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sOperatorSpec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 130
    sput-object p1, Lcom/mediatek/telephony/WorldPhoneOp01;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 131
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    .line 133
    const-string v2, "Gemini Project"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 135
    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v3, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 143
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 144
    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v2, v3, v0

    .line 145
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x0

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0xa

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnGSMSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1e

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v2, "3G Switch Supported"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 154
    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sContext:Landroid/content/Context;

    .line 159
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    new-instance v2, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;-><init>([Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sModemSwitchHandler:Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;

    .line 162
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 163
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 165
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/UiccController;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    .line 166
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/IccRecords;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    .line 167
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    .line 168
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Z

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    .line 169
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v2, v2, [Z

    sput-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sFirstSelect:[Z

    .line 171
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetAllProperties()V

    .line 172
    sput v4, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    .line 173
    sput v4, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    .line 174
    sput-boolean v4, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    .line 175
    sput-boolean v4, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    .line 176
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "world_phone_auto_select_mode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 177
    const-string v2, "Auto select disable"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 178
    const/16 v2, -0x62

    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    .line 182
    :goto_2
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    sget-object v4, Lcom/mediatek/telephony/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "world_phone_fdd_modem_timer"

    sget-object v6, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v7, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v6, v6, v7

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FDD_STANDBY_TIMER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v4, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 185
    return-void

    .line 180
    :cond_2
    const-string v2, "Auto select enable"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    return p0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    return p0
.end method

.method static synthetic access$1200(Lcom/mediatek/telephony/WorldPhoneOp01;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()[Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sFirstSelect:[Z

    return-object v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-boolean p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/mediatek/telephony/WorldPhoneOp01;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    return-void
.end method

.method static synthetic access$1600()[Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/telephony/WorldPhoneOp01;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->resumeCampingProcedure(I)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    return p0
.end method

.method static synthetic access$2100(Lcom/mediatek/telephony/WorldPhoneOp01;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handle3gSwitched()V

    return-void
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-object p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sRilRadioTechnology:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sRilRadioTechnology:I

    return p0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegState:I

    return v0
.end method

.method static synthetic access$2402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegState:I

    return p0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sState:I

    return v0
.end method

.method static synthetic access$2502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sState:I

    return p0
.end method

.method static synthetic access$2600(Lcom/mediatek/telephony/WorldPhoneOp01;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleNoService()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/telephony/WorldPhoneOp01;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    return v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput p0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    return p0
.end method

.method static synthetic access$700(Lcom/mediatek/telephony/WorldPhoneOp01;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->get3gCapabilitySim()I

    move-result v0

    return v0
.end method

.method static synthetic access$800()[Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUiccController:[Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$900()[Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method private get3gCapabilitySim()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 677
    const-string v3, "gsm.baseband.capability"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 678
    .local v0, capability:I
    const-string v3, "gsm.baseband.capability2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 679
    .local v1, capability2:I
    if-gt v0, v4, :cond_0

    if-le v1, v4, :cond_1

    .line 680
    :cond_0
    sget-object v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v2

    .line 681
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

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 685
    .end local v2           #slot3g:I
    :goto_0
    return v2

    .line 684
    :cond_1
    const-string v3, "3G turn off"

    invoke-static {v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 685
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getRegion(Ljava/lang/String;)I
    .locals 8
    .parameter "srcMccOrPlmn"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 773
    if-nez p1, :cond_0

    .line 774
    const-string v6, "[getRegion] null source"

    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 791
    :goto_0
    return v5

    .line 779
    :cond_0
    const/4 v7, 0x5

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, currentMcc:Ljava/lang/String;
    const-string v7, "46602"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "50270"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v5, v6

    .line 781
    goto :goto_0

    .line 783
    :cond_2
    const/4 v7, 0x3

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 784
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCC_TABLE_DOMESTIC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 785
    .local v4, mcc:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 786
    const-string v5, "[getRegion] REGION_DOMESTIC"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v5, v6

    .line 787
    goto :goto_0

    .line 784
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 790
    .end local v4           #mcc:Ljava/lang/String;
    :cond_4
    const-string v5, "[getRegion] REGION_FOREIGN"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 791
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getUserType(Ljava/lang/String;)I
    .locals 6
    .parameter "simImsi"

    .prologue
    const/4 v4, 0x0

    .line 748
    if-eqz p1, :cond_4

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 749
    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getUserType] simPlmn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 751
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 752
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 753
    const-string v4, "[getUserType] Type1 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 754
    const/4 v4, 0x1

    .line 767
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mccmnc:Ljava/lang/String;
    :goto_1
    return v4

    .line 751
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #mccmnc:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE3:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 758
    .restart local v3       #mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 759
    const-string v4, "[getUserType] Type3 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 760
    const/4 v4, 0x3

    goto :goto_1

    .line 757
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 763
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_3
    const-string v4, "[getUserType] Type2 user"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 764
    const/4 v4, 0x2

    goto :goto_1

    .line 766
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_4
    const-string v5, "[getUserType] null simImsi"

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handle3gSwitched()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 576
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 577
    const-string v0, "3G capability turned off"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 578
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 579
    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    const/16 v1, -0x62

    if-ne v0, v1, :cond_2

    .line 581
    const-string v0, "Auto Network Selection Disabled"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 582
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    goto :goto_0

    .line 584
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G capability in slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 585
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    const-string v0, "3G slot IMSI not ready"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 588
    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    goto :goto_0

    .line 591
    :cond_3
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    .line 592
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-eq v0, v4, :cond_4

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-ne v0, v5, :cond_7

    .line 593
    :cond_4
    sput-boolean v4, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    .line 599
    :goto_1
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 600
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    .line 602
    :cond_5
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    if-eqz v0, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sFirstSelect:[Z

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    aput-boolean v2, v0, v1

    .line 604
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-eq v0, v3, :cond_6

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    if-ne v0, v5, :cond_9

    .line 605
    :cond_6
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 594
    :cond_7
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-ne v0, v3, :cond_8

    .line 595
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    goto :goto_1

    .line 597
    :cond_8
    const-string v0, "Unknown user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 607
    :cond_9
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0
.end method

.method private handleNoService()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 253
    const-string v0, "[handleNoService]+ Can not find service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 255
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->regionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 256
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-eq v0, v2, :cond_0

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-ne v0, v4, :cond_7

    .line 257
    :cond_0
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    .line 258
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 260
    const-string v0, "TDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    aget v0, v0, v1

    if-ltz v0, :cond_2

    .line 262
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    if-nez v0, :cond_1

    .line 263
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s. Timer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :goto_0
    const-string v0, "[handleNoService]-"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 303
    return-void

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer already set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->TDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sTddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_2
    const-string v0, "Standby in TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_3
    const-string v0, "FDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v0, v0, v1

    if-ltz v0, :cond_6

    .line 275
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    if-ne v0, v4, :cond_5

    .line 276
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    if-nez v0, :cond_4

    .line 277
    sput-boolean v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s. Timer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 281
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer already set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sFddStandByCounter:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :cond_5
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 287
    :cond_6
    const-string v0, "Standby in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_7
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-ne v0, v5, :cond_9

    .line 291
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    .line 292
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 294
    const-string v0, "Should not happen! Type3 user, TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto/16 :goto_0

    .line 297
    :cond_8
    const-string v0, "FDD modem -> keep trying in FDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :cond_9
    const-string v0, "Unknow user type"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handlePlmnChange(Landroid/os/AsyncResult;I)V
    .locals 5
    .parameter "ar"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 427
    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    const/16 v2, -0x63

    if-ne v1, v2, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->get3gCapabilitySim()I

    move-result v1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    .line 430
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 431
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 433
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

    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_1
    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    if-ne v1, p2, :cond_2

    sget-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    if-eq v1, v4, :cond_2

    .line 437
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->searchForDesignateService(Ljava/lang/String;)V

    .line 441
    :cond_2
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    .line 442
    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    const/16 v2, -0x62

    if-eq v1, v2, :cond_3

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    if-ne v1, v4, :cond_3

    .line 444
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    .line 449
    .end local v0           #i:I
    :cond_3
    :goto_1
    return-void

    .line 447
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePlmnSuspend(Landroid/os/AsyncResult;I)V
    .locals 3
    .parameter "ar"
    .parameter "slotId"

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 453
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendId:I

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suspending with Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 456
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    if-ne v0, p2, :cond_1

    .line 457
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->resumeCampingProcedure(I)V

    .line 474
    :goto_0
    return-void

    .line 460
    :cond_0
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 461
    const-string v0, "User type unknown, wait for IMSI"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_1
    const-string v0, "Not 3G slot, camp on OK"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 468
    :cond_2
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 472
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

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRadioOn(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 411
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    .line 414
    :cond_0
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    if-ne v0, p1, :cond_2

    .line 415
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 416
    :cond_1
    const-string v0, "Modem on, Type12 user"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    .line 423
    :cond_2
    :goto_0
    return-void

    .line 418
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 419
    const-string v0, "Modem on, Type3 user"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    goto :goto_0
.end method

.method private handleSwitchModem(I)V
    .locals 5
    .parameter "toModem"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 630
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 631
    if-ne p1, v4, :cond_0

    .line 632
    const-string v1, "Already in TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 654
    :goto_0
    return-void

    .line 634
    :cond_0
    const-string v1, "Already in FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 639
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 640
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 645
    if-ne p1, v3, :cond_4

    .line 646
    const-string v1, "Switching to FDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 647
    invoke-static {v3}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 652
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetNetworkProperties()V

    goto :goto_0

    .line 649
    :cond_4
    const-string v1, "Switching to TDD modem"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 650
    invoke-static {v4}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    goto :goto_2
.end method

.method private isAllowCampOn(Ljava/lang/String;I)Z
    .locals 6
    .parameter "plmnString"
    .parameter "slotId"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAllowCampOn]+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is 3G SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->getRegion(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    .line 192
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-eq v2, v0, :cond_0

    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-ne v2, v5, :cond_5

    .line 193
    :cond_0
    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    .line 194
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    if-ne v2, v0, :cond_2

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 196
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    .line 197
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    .line 198
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 199
    const-string v1, "TDD modem, stop searching TD service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 200
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 249
    :goto_0
    return v0

    .line 204
    :cond_1
    sput v4, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    .line 205
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 206
    invoke-direct {p0, v1, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    .line 207
    const-string v1, "FDD modem, RAT=2g, expecting TD service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 208
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    if-ne v2, v5, :cond_4

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 213
    sput v5, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    .line 214
    const-string v0, "TDD modem, expecting TD service"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 215
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 216
    goto :goto_0

    .line 219
    :cond_3
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    .line 220
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->removeModemStandByTimer()V

    .line 221
    invoke-direct {p0, v0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    .line 222
    const-string v1, "FDD modem, expecting TD service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 223
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_4
    const-string v2, "Unknow region"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 246
    :goto_1
    sput-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    .line 247
    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    .line 248
    const-string v0, "[isAllowCampOn]- Camp on REJECT"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    move v0, v1

    .line 249
    goto :goto_0

    .line 229
    :cond_5
    sget v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 230
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 233
    const-string v1, "Should not happen! TDD modem, Type3 user allow GSM full service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 234
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_6
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    .line 239
    const-string v1, "FDD modem, GSM full service or WCDMA limited service"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 240
    const-string v1, "[isAllowCampOn]- Camp on OK"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_7
    const-string v2, "Unknown user type"

    invoke-static {v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 804
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPOP01]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void
.end method

.method private removeModemStandByTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "Remove TDD wait timer. Set sWaitInTdd = false"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 331
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInTdd:Z

    .line 332
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mTddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    :cond_0
    sget-boolean v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    if-eqz v0, :cond_1

    .line 335
    const-string v0, "Remove FDD wait timer. Set sWaitInFdd = false"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 336
    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitInFdd:Z

    .line 337
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mFddStandByTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    :cond_1
    return-void
.end method

.method private resetAllProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 702
    const-string v1, "Reseting all properties"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 703
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    .line 704
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 705
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sFirstSelect:[Z

    aput-boolean v2, v1, v0

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sWaitForDesignateService:Z

    .line 708
    sput v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    .line 709
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetSimProperties()V

    .line 710
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetNetworkProperties()V

    .line 711
    return-void
.end method

.method private resetNetworkProperties()V
    .locals 4

    .prologue
    .line 714
    const-string v1, "[resetNetworkProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 715
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 716
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    .line 717
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 718
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendWaitImsi:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v0

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_0
    monitor-exit v2

    .line 721
    return-void

    .line 720
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
    .line 724
    const-string v1, "[resetSimProperties]"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 725
    sget-object v2, Lcom/mediatek/telephony/WorldPhoneOp01;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 726
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 727
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sImsi:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v0

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    .line 731
    const/16 v1, -0x63

    sput v1, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    .line 735
    monitor-exit v2

    .line 736
    return-void

    .line 735
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
    .line 740
    const-string v0, "[restartSelection] Restarting from TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 742
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->resetAllProperties()V

    .line 743
    const-string v0, "Switching to TDD modem"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->switchModem(I)V

    .line 745
    return-void
.end method

.method private resumeCampingProcedure(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x3

    .line 657
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

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 658
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmPlmnStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->isAllowCampOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sSuspendId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    const-string v0, "Radio off or unavailable, can not send EMSR"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->denyReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 666
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 667
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0

    .line 668
    :cond_3
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sDenyReason:I

    if-ne v0, v2, :cond_0

    .line 669
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    goto :goto_0
.end method

.method private searchForDesignateService(Ljava/lang/String;)V
    .locals 6
    .parameter "strPlmn"

    .prologue
    .line 342
    const-string v4, "[searchForDesignateService]+ Search for TD srvice"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 343
    if-nez p1, :cond_0

    .line 344
    const-string v4, "[searchForDesignateService]- null source"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 348
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->MCCMNC_TABLE_TYPE1:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 349
    .local v3, mccmnc:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sUserType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sRegion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/mediatek/telephony/WorldPhoneOp01;->sRegion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 352
    const-string v4, "Find TD service"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 353
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V

    .line 357
    .end local v3           #mccmnc:Ljava/lang/String;
    :cond_1
    const-string v4, "[searchForDesignateService]-"

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 348
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

    .line 690
    if-ne p1, v2, :cond_0

    .line 691
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

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 692
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 699
    :goto_0
    return-void

    .line 695
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

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 696
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

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
    .line 795
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/telephony/WorldPhoneOp01;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 796
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 797
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 798
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnGSMSuspended(Landroid/os/Handler;)V

    .line 799
    sget-object v1, Lcom/mediatek/telephony/WorldPhoneOp01;->sGsmCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 362
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 363
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 405
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 365
    :sswitch_0
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 369
    :sswitch_1
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, v0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 373
    :sswitch_2
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleRadioOn(I)V

    goto :goto_0

    .line 377
    :sswitch_3
    const-string v1, "handleMessage : <EVENT_GSM_PLMN_CHANGED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 378
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnChange(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 381
    :sswitch_4
    const-string v1, "handleMessage : <EVENT_GSM_SUSPENDED>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, v0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handlePlmnSuspend(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 385
    :sswitch_5
    const-string v1, "handleMessage : <EVENT_RADIO_ON>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->handleRadioOn(I)V

    goto :goto_0

    .line 389
    :sswitch_6
    const-string v1, "handleMessage : <EVENT_SET_RAT_GSM_ONLY>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 390
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 391
    const-string v1, "Set RAT=2g ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 393
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :sswitch_7
    const-string v1, "handleMessage : <EVENT_SET_RAT_WCDMA_PREF>"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 398
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 399
    const-string v1, "Set RAT=auto ok"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 401
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

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0xa -> :sswitch_1
        0xb -> :sswitch_4
        0x1e -> :sswitch_2
        0x1f -> :sswitch_5
        0x28 -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch
.end method

.method public setNetworkSelectionMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 614
    if-nez p1, :cond_1

    .line 615
    const-string v0, "Network Selection <AUTO>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 616
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->get3gCapabilitySim()I

    move-result v0

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    .line 626
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/telephony/WorldPhoneOp01;->handle3gSwitched()V

    .line 627
    return-void

    .line 619
    :cond_1
    const-string v0, "Network Selection <MANUAL>"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "world_phone_auto_select_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 621
    const/16 v0, -0x62

    sput v0, Lcom/mediatek/telephony/WorldPhoneOp01;->s3gSimSlot:I

    .line 622
    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    if-eq v0, v2, :cond_2

    sget v0, Lcom/mediatek/telephony/WorldPhoneOp01;->sUserType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 623
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V

    goto :goto_0
.end method
