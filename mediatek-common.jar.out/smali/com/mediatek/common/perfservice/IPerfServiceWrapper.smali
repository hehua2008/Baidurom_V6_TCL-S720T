.class public interface abstract Lcom/mediatek/common/perfservice/IPerfServiceWrapper;
.super Ljava/lang/Object;
.source "IPerfServiceWrapper.java"


# static fields
.field public static final SCN_APP_ROTATE:I = 0x2

.field public static final SCN_APP_SWITCH:I = 0x1

.field public static final SCN_NONE:I = 0x0

.field public static final SCN_SW_CODEC:I = 0x3

.field public static final STATE_DEAD:I = 0x3

.field public static final STATE_DESTROYED:I = 0x2

.field public static final STATE_PAUSED:I = 0x0

.field public static final STATE_RESUMED:I = 0x1


# virtual methods
.method public abstract boostDisable(I)V
.end method

.method public abstract boostEnable(I)V
.end method

.method public abstract boostEnableTimeout(II)V
.end method

.method public abstract notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract userDisable(I)V
.end method

.method public abstract userDisableAll()V
.end method

.method public abstract userEnable(I)V
.end method

.method public abstract userEnableTimeout(II)V
.end method

.method public abstract userReg(II)I
.end method

.method public abstract userResetAll()V
.end method

.method public abstract userUnreg(I)V
.end method
