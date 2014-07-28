.class public abstract Lcom/mediatek/telephony/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static denyReasonToString(I)Ljava/lang/String;
    .locals 1
    .parameter "reason"

    .prologue
    .line 121
    packed-switch p0, :pswitch_data_0

    .line 138
    const-string v0, "Invalid Reason"

    .line 141
    .local v0, drString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 123
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "CAMP_ON_NOT_DENIED"

    .line 124
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 126
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "DENY_CAMP_ON_REASON_UNKNOWN"

    .line 127
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "DENY_CAMP_ON_REASON_NEED_SWITCH_TO_FDD"

    .line 130
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "DENY_CAMP_ON_REASON_NEED_SWITCH_TO_TDD"

    .line 133
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_4
    const-string v0, "DENY_CAMP_ON_REASON_DOMESTIC_WCDMA"

    .line 136
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 145
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPP_UTIL]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public static regStateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "regState"

    .prologue
    .line 93
    packed-switch p0, :pswitch_data_0

    .line 113
    const-string v0, "Invalid RegState"

    .line 116
    .local v0, rsString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 95
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING"

    .line 96
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGISTRATION_STATE_HOME_NETWORK"

    .line 99
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING"

    .line 102
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "REGISTRATION_STATE_REGISTRATION_DENIED"

    .line 105
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_4
    const-string v0, "REGISTRATION_STATE_UNKNOWN"

    .line 108
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_5
    const-string v0, "REGISTRATION_STATE_ROAMING"

    .line 111
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static regionToString(I)Ljava/lang/String;
    .locals 1
    .parameter "region"

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 63
    const-string v0, "Invalid Region"

    .line 66
    .local v0, regionString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 54
    .end local v0           #regionString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGION_UNKNOWN"

    .line 55
    .restart local v0       #regionString:Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0           #regionString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGION_DOMESTIC"

    .line 58
    .restart local v0       #regionString:Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0           #regionString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGION_FOREIGN"

    .line 61
    .restart local v0       #regionString:Ljava/lang/String;
    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 71
    packed-switch p0, :pswitch_data_0

    .line 85
    const-string v0, "Invalid State"

    .line 88
    .local v0, stateString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 73
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "STATE_POWER_OFF"

    .line 74
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "STATE_IN_SERVICE"

    .line 77
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "STATE_OUT_OF_SERVICE"

    .line 80
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "STATE_EMERGENCY_ONLY"

    .line 83
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
