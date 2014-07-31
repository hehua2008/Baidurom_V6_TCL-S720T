.class public interface abstract Lcom/mediatek/common/telephony/ISwitch3GPolicy;
.super Ljava/lang/Object;
.source "ISwitch3GPolicy.java"


# static fields
.field public static final CAPABILITY_3G_GEMINI_SIM1:I = 0x1

.field public static final CAPABILITY_3G_GEMINI_SIM2:I = 0x2

.field public static final CAPABILITY_3G_GEMINI_SIM3:I = 0x3

.field public static final CAPABILITY_3G_GEMINI_SIM4:I = 0x4

.field public static final CAPABILITY_3G_INVALID:I = -0x1

.field public static final CAPABILITY_3G_NOCHANGE:I = 0x15

.field public static final POLICY_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final POLICY_OP:Ljava/lang/String; = "OP"


# virtual methods
.method public abstract getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
