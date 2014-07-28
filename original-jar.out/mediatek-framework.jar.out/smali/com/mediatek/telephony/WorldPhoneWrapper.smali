.class public Lcom/mediatek/telephony/WorldPhoneWrapper;
.super Ljava/lang/Object;
.source "WorldPhoneWrapper.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# static fields
.field private static sOperatorSpec:I

.field private static sWorldPhoneOm:Lcom/mediatek/telephony/WorldPhoneOm;

.field private static sWorldPhoneOp01:Lcom/mediatek/telephony/WorldPhoneOp01;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sWorldPhoneOm:Lcom/mediatek/telephony/WorldPhoneOm;

    .line 50
    sput-object v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sWorldPhoneOp01:Lcom/mediatek/telephony/WorldPhoneOp01;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "operator"
    .parameter "phone"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sput p1, Lcom/mediatek/telephony/WorldPhoneWrapper;->sOperatorSpec:I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sOperatorSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/mediatek/telephony/WorldPhoneWrapper;->sOperatorSpec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneWrapper;->logd(Ljava/lang/String;)V

    .line 55
    sget v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sOperatorSpec:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-direct {v0, p2}, Lcom/mediatek/telephony/WorldPhoneOp01;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sWorldPhoneOp01:Lcom/mediatek/telephony/WorldPhoneOp01;

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-direct {v0, p2}, Lcom/mediatek/telephony/WorldPhoneOm;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sWorldPhoneOm:Lcom/mediatek/telephony/WorldPhoneOm;

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 79
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPO_WRAPPER]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method


# virtual methods
.method public disposeWorldPhone()V
    .locals 2

    .prologue
    .line 71
    sget v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sOperatorSpec:I

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sWorldPhoneOm:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-virtual {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->disposeWorldPhone()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sOperatorSpec:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sWorldPhoneOp01:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-virtual {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->disposeWorldPhone()V

    goto :goto_0
.end method

.method public setNetworkSelectionMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 63
    sget v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sOperatorSpec:I

    if-nez v0, :cond_1

    .line 64
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sWorldPhoneOm:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/WorldPhoneOm;->setNetworkSelectionMode(I)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    sget v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sOperatorSpec:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    sget-object v0, Lcom/mediatek/telephony/WorldPhoneWrapper;->sWorldPhoneOp01:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/WorldPhoneOp01;->setNetworkSelectionMode(I)V

    goto :goto_0
.end method
