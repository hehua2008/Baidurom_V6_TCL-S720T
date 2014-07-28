.class Lcom/mediatek/telephony/WorldPhoneOp01$1;
.super Ljava/lang/Object;
.source "WorldPhoneOp01.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/WorldPhoneOp01;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/mediatek/telephony/WorldPhoneOp01$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$008()I

    .line 309
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$000()I

    move-result v0

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 310
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$002(I)I

    .line 312
    :cond_0
    const-string v0, "TDD time out!"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    const/4 v1, 0x3

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$300(Lcom/mediatek/telephony/WorldPhoneOp01;I)V

    .line 314
    return-void
.end method
