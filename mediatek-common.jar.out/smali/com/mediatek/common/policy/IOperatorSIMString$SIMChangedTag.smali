.class public final enum Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;
.super Ljava/lang/Enum;
.source "IOperatorSIMString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/policy/IOperatorSIMString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIMChangedTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

.field public static final enum DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

.field public static final enum SIMTOUIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

.field public static final enum UIMSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    const-string v1, "SIMTOUIM"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->SIMTOUIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    new-instance v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    const-string v1, "UIMSIM"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->UIMSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    new-instance v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    const-string v1, "DELSIM"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    sget-object v1, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->SIMTOUIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->UIMSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->$VALUES:[Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->$VALUES:[Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    return-object v0
.end method
