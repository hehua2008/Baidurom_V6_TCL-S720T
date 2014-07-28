.class Lcom/mediatek/telephony/WorldPhoneOm$1;
.super Ljava/lang/Object;
.source "WorldPhoneOm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "TDD time out!"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$108()I

    .line 354
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$100()I

    move-result v0

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$200()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 355
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$200()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOm;->access$102(I)I

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    const/4 v1, 0x3

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    .line 358
    return-void
.end method
