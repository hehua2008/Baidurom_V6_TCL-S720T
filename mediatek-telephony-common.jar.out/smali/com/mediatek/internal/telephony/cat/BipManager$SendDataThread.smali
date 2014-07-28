.class public Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SendDataThread"
.end annotation


# instance fields
.field cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field response:Landroid/os/Message;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter "Msg"
    .parameter "resp"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const-string v0, "[BIP]"

    const-string v1, "SendDataThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 627
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    .line 628
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 633
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run Enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v4, 0x0

    .line 636
    .local v4, ret:I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    .line 637
    .local v0, buffer:[B
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v3, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendMode:I

    .line 638
    .local v3, mode:I
    const/4 v2, 0x0

    .line 639
    .local v2, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v1, v5, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendDataCid:I

    .line 641
    .local v1, cId:I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v2

    .line 643
    if-nez v2, :cond_0

    .line 644
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run mChannelId != cmdMsg.mSendDataCid"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v4, 0x7

    .line 661
    :goto_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 662
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 663
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run mHandler.sendMessage(response);"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->this$0:Lcom/mediatek/internal/telephony/cat/BipManager;

    #getter for: Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/BipManager;->access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    return-void

    .line 649
    :cond_0
    iget v5, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 651
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run mChannel.sendData"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v2, v0, v3}, Lcom/mediatek/internal/telephony/cat/Channel;->sendData([BI)I

    move-result v4

    .line 653
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;->response:Landroid/os/Message;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->getTxAvailBufferSize()I

    move-result v6

    iput v6, v5, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 657
    :cond_1
    const-string v5, "[BIP]"

    const-string v6, "SendDataThread Run CHANNEL_ID_NOT_VALID"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const/4 v4, 0x7

    goto :goto_0
.end method
