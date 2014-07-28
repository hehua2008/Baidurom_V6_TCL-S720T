.class public Lcom/mediatek/op/telephony/ServiceStateExt;
.super Ljava/lang/Object;
.source "ServiceStateExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IServiceStateExt;


# static fields
.field static final TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public allowSpnDisplayed()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public getEccPlmnValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040302

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignoreDomesticRoaming()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public isBroadcastEmmrrsPsResume(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isImeiLocked()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public isRegCodeRoaming(ZILjava/lang/String;)Z
    .locals 0
    .parameter "originalIsRoaming"
    .parameter "mccmnc"
    .parameter "numeric"

    .prologue
    .line 78
    return p1
.end method

.method public loadSpnOverrides()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 164
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public mapGsmSignalDbm(II)I
    .locals 4
    .parameter "GsmRscpQdbm"
    .parameter "asu"

    .prologue
    .line 140
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapGsmSignalDbm() GsmRscpQdbm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " asu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-gez p1, :cond_0

    .line 142
    div-int/lit8 v0, p1, 0x4

    .line 146
    .local v0, dBm:I
    :goto_0
    return v0

    .line 144
    .end local v0           #dBm:I
    :cond_0
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v0, v1, -0x71

    .restart local v0       #dBm:I
    goto :goto_0
.end method

.method public mapGsmSignalLevel(I)I
    .locals 2
    .parameter "asu"

    .prologue
    .line 129
    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    const/16 v1, 0x63

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, level:I
    :goto_0
    return v0

    .line 130
    .end local v0           #level:I
    :cond_1
    const/16 v1, 0xc

    if-lt p1, v1, :cond_2

    const/4 v0, 0x4

    .restart local v0       #level:I
    goto :goto_0

    .line 131
    .end local v0           #level:I
    :cond_2
    const/16 v1, 0x8

    if-lt p1, v1, :cond_3

    const/4 v0, 0x3

    .restart local v0       #level:I
    goto :goto_0

    .line 132
    .end local v0           #level:I
    :cond_3
    const/4 v1, 0x5

    if-lt p1, v1, :cond_4

    const/4 v0, 0x2

    .restart local v0       #level:I
    goto :goto_0

    .line 133
    .end local v0           #level:I
    :cond_4
    const/4 v0, 0x1

    .restart local v0       #level:I
    goto :goto_0
.end method

.method public needBrodcastACMT(II)Z
    .locals 1
    .parameter "error_type"
    .parameter "error_cause"

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public needEMMRRS()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public needIgnoredState(III)Z
    .locals 3
    .parameter "state"
    .parameter "new_state"
    .parameter "cause"

    .prologue
    const/4 v0, 0x1

    .line 102
    if-nez p1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 104
    const-string v1, "GSM"

    const-string v2, "set dontUpdateNetworkStateFlag for searching state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return v0

    .line 109
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 110
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 112
    const-string v1, "GSM"

    const-string v2, "set dontUpdateNetworkStateFlag for REG_DENIED with cause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_1
    const-string v0, "GSM"

    const-string v1, "clear dontUpdateNetworkStateFlag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRejectCauseNotification(I)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onPollStateDone(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;II)V
    .locals 0
    .parameter "oldSS"
    .parameter "newSS"
    .parameter "oldGprsState"
    .parameter "newGprsState"

    .prologue
    .line 61
    return-void
.end method

.method public onUpdateSpnDisplay(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "plmn"
    .parameter "radioTechnology"

    .prologue
    .line 74
    return-object p1
.end method

.method public setEmergencyCallsOnly(II)I
    .locals 3
    .parameter "state"
    .parameter "cid"

    .prologue
    const/4 v0, -0x1

    .line 150
    if-eq p2, v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 152
    :cond_0
    const-string v1, "GSM"

    const-string v2, "No valid info to distinguish limited service and no service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return v0

    .line 155
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 156
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportEccForEachSIM()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method
