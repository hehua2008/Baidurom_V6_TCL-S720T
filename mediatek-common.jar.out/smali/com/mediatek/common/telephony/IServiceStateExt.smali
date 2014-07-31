.class public interface abstract Lcom/mediatek/common/telephony/IServiceStateExt;
.super Ljava/lang/Object;
.source "IServiceStateExt.java"


# virtual methods
.method public abstract allowSpnDisplayed()Z
.end method

.method public abstract getEccPlmnValue()Ljava/lang/String;
.end method

.method public abstract ignoreDomesticRoaming()Z
.end method

.method public abstract isBroadcastEmmrrsPsResume(I)Z
.end method

.method public abstract isImeiLocked()Z
.end method

.method public abstract isRegCodeRoaming(ZILjava/lang/String;)Z
.end method

.method public abstract loadSpnOverrides()Ljava/util/Map;
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
.end method

.method public abstract mapGsmSignalDbm(II)I
.end method

.method public abstract mapGsmSignalLevel(I)I
.end method

.method public abstract needBrodcastACMT(II)Z
.end method

.method public abstract needEMMRRS()Z
.end method

.method public abstract needIgnoredState(III)Z
.end method

.method public abstract needRejectCauseNotification(I)Z
.end method

.method public abstract onPollStateDone(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;II)V
.end method

.method public abstract onUpdateSpnDisplay(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract setEmergencyCallsOnly(II)I
.end method

.method public abstract supportEccForEachSIM()Z
.end method
