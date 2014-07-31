.class public interface abstract Lcom/mediatek/common/policy/IOperatorSIMString;
.super Ljava/lang/Object;
.source "IOperatorSIMString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;
    }
.end annotation


# virtual methods
.method public abstract getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getOperatorSIMStringForSIMDetection(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;
.end method
