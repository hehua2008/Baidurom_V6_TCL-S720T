.class public Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODEM_SWITCH_MODE_FDD:I = 0x3

.field public static final MODEM_SWITCH_MODE_TDD:I = 0x4

.field public static final MODEM_SWITCH_MODE_UNKNOWN:I

.field private static a:I

.field private static b:[Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a:I

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:[Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method public constructor <init>([Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 63
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:[Lcom/android/internal/telephony/CommandsInterface;

    .line 64
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 65
    sget-object v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 135
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ModemSwitchHandler]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public static getAvailableCi()I
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 105
    sget-object v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available Ci = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 112
    :goto_1
    return v0

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "All phones radio off, no available Ci"

    invoke-static {v0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 112
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getModem()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a:I

    return v0
.end method

.method public static modemToString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    packed-switch p0, :pswitch_data_0

    .line 128
    :pswitch_0
    const-string v0, "Invalid modem type"

    .line 131
    :goto_0
    return-object v0

    .line 119
    :pswitch_1
    const-string v0, "Unknown modem"

    goto :goto_0

    .line 122
    :pswitch_2
    const-string v0, "TDD modem"

    goto :goto_0

    .line 125
    :pswitch_3
    const-string v0, "FDD modem"

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static setModem(I)V
    .locals 0
    .parameter

    .prologue
    .line 100
    sput p0, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a:I

    .line 101
    return-void
.end method

.method public static switchModem(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 70
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getAvailableCi()I

    move-result v0

    .line 71
    if-ne v0, v4, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPO] Store Modem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_2

    const-string v2, "OP01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    :goto_1
    invoke-static {p0}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->setModem(I)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast intent ACTION_MD_TYPE_CHANGE modemType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v2, "mdType"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 86
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 87
    const-string v1, "Reload and reset to FDD modem image"

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v1, v0

    const/16 v1, 0xa

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0

    .line 79
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1, p0, v3}, Lcom/android/internal/telephony/CommandsInterface;->storeModemType(ILandroid/os/Message;)V

    goto :goto_1

    .line 89
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 90
    const-string v1, "Reload and reset to TDD modem image"

    invoke-static {v1}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->a(Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->b:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v1, v0

    const/16 v1, 0x9

    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setTRM(ILandroid/os/Message;)V

    goto :goto_0
.end method
