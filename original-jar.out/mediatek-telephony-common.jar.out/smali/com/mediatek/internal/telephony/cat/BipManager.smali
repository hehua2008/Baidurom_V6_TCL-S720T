.class public Lcom/mediatek/internal/telephony/cat/BipManager;
.super Ljava/lang/Object;
.source "BipManager.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IBipManagerExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;,
        Lcom/mediatek/internal/telephony/cat/BipManager$ConnectivityChangeThread;,
        Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;
    }
.end annotation


# static fields
.field private static final CONN_MGR_TIMEOUT:I = 0x7530

.field private static final CONN_RETRY_TIMEOUT:I = 0x1388

.field private static instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

.field private static instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

.field private static instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

.field private static instance4:Lcom/mediatek/internal/telephony/cat/BipManager;


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

.field private mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

.field mBufferSize:I

.field private mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/mediatek/common/telephony/ChannelStatus;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

.field private mHandler:Landroid/os/Handler;

.field private mIsOpenInProgress:Z

.field mLinkMode:I

.field mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field mPassword:Ljava/lang/String;

.field private mSimId:I

.field mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 96
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 97
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 98
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5
    .parameter "context"
    .parameter "handler"
    .parameter "sim_id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 103
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    .line 105
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 107
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    .line 108
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBufferSize:I

    .line 109
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 110
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    .line 111
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 112
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLinkMode:I

    .line 113
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mAutoReconnected:Z

    .line 115
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    .line 119
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->NETWORK_TYPE:I

    .line 121
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 122
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    .line 123
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 124
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatusDataObject:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 125
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    .line 130
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 131
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 132
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 1078
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/cat/BipManager$1;-><init>(Lcom/mediatek/internal/telephony/cat/BipManager;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    const-string v1, "[BIP]"

    const-string v2, "Construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string v1, "[BIP]"

    const-string v2, "Fail to construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    .line 142
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    .line 143
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSimId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 145
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    .line 148
    if-nez p3, :cond_2

    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v1, :cond_2

    .line 149
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 1"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sput-object p0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 162
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, connFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void

    .line 151
    .end local v0           #connFilter:Landroid/content/IntentFilter;
    :cond_2
    if-ne p3, v4, :cond_3

    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v1, :cond_3

    .line 152
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sput-object p0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 154
    :cond_3
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v1, :cond_4

    .line 155
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 3"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sput-object p0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 157
    :cond_4
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v1, :cond_1

    .line 158
    const-string v1, "[BIP]"

    const-string v2, "Construct instance for sim 3"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sput-object p0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/cat/BipManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/cat/BipManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->requestRouteToHost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->establishLink()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/cat/BipManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->updateCurrentChannelStatus(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/internal/telephony/cat/BipManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .parameter "nwInfo"
    .parameter "exState"

    .prologue
    const/4 v3, 0x0

    .line 719
    if-nez p1, :cond_0

    move v2, v3

    .line 732
    :goto_0
    return v2

    .line 723
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 724
    .local v1, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 725
    .local v0, state:Landroid/net/NetworkInfo$State;
    const-string v4, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v2, "MOBILE"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 729
    const/4 v2, 0x1

    goto :goto_0

    .line 725
    :cond_1
    const-string v2, "WIFI"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 732
    goto :goto_0
.end method

.method private establishLink()I
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x1

    .line 736
    const/4 v11, 0x0

    .line 737
    .local v11, ret:I
    const/4 v9, 0x0

    .line 783
    .local v9, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v1, v1, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    if-ne v1, v12, :cond_2

    .line 785
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: establish a UDP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :try_start_0
    new-instance v0, Lcom/mediatek/internal/telephony/cat/UdpChannel;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v3, v3, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iget-object v4, v4, Lcom/mediatek/common/telephony/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v5, v5, Lcom/mediatek/common/telephony/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/cat/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/mediatek/internal/telephony/cat/BipManager;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v9           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .local v0, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cat/UdpChannel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v11

    .line 796
    if-eqz v11, :cond_0

    const/4 v1, 0x3

    if-ne v11, v1, :cond_1

    .line 797
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 798
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I

    .line 809
    :goto_0
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-establishLink: ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v11

    .line 810
    :goto_1
    return v1

    .line 790
    .end local v0           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v9       #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    :catch_0
    move-exception v10

    .line 791
    .local v10, ne:Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: NE,new UDP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 793
    const/4 v1, 0x5

    move-object v0, v9

    .end local v9           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v0       #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    goto :goto_1

    .line 800
    .end local v10           #ne:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, v12}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 801
    iput v13, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 804
    .end local v0           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v9       #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    :cond_2
    const-string v1, "[BIP]"

    const-string v2, "BM-establishLink: unsupported channel type"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v11, 0x4

    .line 806
    iput v13, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    move-object v0, v9

    .end local v9           #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    .restart local v0       #lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    goto :goto_0
.end method

.method private getDataConnectionFromSetting()I
    .locals 7

    .prologue
    .line 186
    const/4 v2, -0x1

    .line 189
    .local v2, currentDataConnectionSimId:I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 190
    .local v0, currentDataConnectionMultiSimId:J
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 195
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Data Setting value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v2
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 701
    const-string v3, "[BIP]"

    const-string v4, "requestRouteToHost"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, addressBytes:[B
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    if-eqz v3, :cond_0

    .line 704
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iget-object v3, v3, Lcom/mediatek/common/telephony/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 709
    const/4 v0, 0x0

    .line 710
    .local v0, addr:I
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v3, v2

    .line 715
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .end local v0           #addr:I
    :goto_0
    return v2

    .line 706
    :cond_0
    const-string v3, "[BIP]"

    const-string v4, "mDataDestinationAddress is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "apn"
    .parameter "user"
    .parameter "pwd"

    .prologue
    .line 814
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    if-nez p1, :cond_0

    .line 816
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: No apn parameters"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :goto_0
    return-void

    .line 820
    :cond_0
    const/4 v13, 0x0

    .line 821
    .local v13, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 822
    .local v12, numeric:Ljava/lang/String;
    const/4 v9, 0x0

    .line 823
    .local v9, mcc:Ljava/lang/String;
    const/4 v10, 0x0

    .line 824
    .local v10, mnc:Ljava/lang/String;
    const-string v7, "supl"

    .line 830
    .local v7, apnType:Ljava/lang/String;
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: URI use telephony provider enhancement"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    if-nez v1, :cond_4

    .line 832
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 833
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 852
    :goto_1
    if-nez v13, :cond_1

    .line 853
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: Invalid uri"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    :cond_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 857
    const/4 v8, 0x0

    .line 858
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 859
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 860
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-setApnParams: mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = \'BIP\' and numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, selection:Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    if-nez v1, :cond_8

    .line 865
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 882
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 883
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 884
    .local v14, values:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "BIP"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v1, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v1, "type"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v1, "mcc"

    invoke-virtual {v14, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v1, "mnc"

    invoke-virtual {v14, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 896
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: insert one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 898
    .local v11, newRow:Landroid/net/Uri;
    if-eqz v11, :cond_b

    .line 899
    const-string v1, "[BIP]"

    const-string v2, "insert a new record into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    .end local v11           #newRow:Landroid/net/Uri;
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 913
    .end local v4           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: exit"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 834
    :cond_4
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 835
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 836
    const-string v1, "gsm.sim.operator.numeric.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 837
    :cond_5
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 838
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM3Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 839
    const-string v1, "gsm.sim.operator.numeric.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 840
    :cond_6
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 841
    sget-object v13, Landroid/provider/Telephony$Carriers$SIM4Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 842
    const-string v1, "gsm.sim.operator.numeric.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 844
    :cond_7
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: invalid sim id"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 867
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_8
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 868
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 870
    :cond_9
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 871
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM3Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 873
    :cond_a
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 874
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM4Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 901
    .restart local v11       #newRow:Landroid/net/Uri;
    .restart local v14       #values:Landroid/content/ContentValues;
    :cond_b
    const-string v1, "[BIP]"

    const-string v2, "Fail to insert apn params into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 904
    .end local v11           #newRow:Landroid/net/Uri;
    :cond_c
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: update one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v14, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private updateCurrentChannelStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->updateChannelStatus(II)V

    .line 694
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput p1, v1, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, ne:Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public closeChannel(Landroid/os/Message;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 491
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 493
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new closeChannel, mCloseCid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 496
    return-void
.end method

.method public closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 12
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x7

    .line 423
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v3, 0x0

    .line 426
    .local v3, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    iget v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    .line 428
    .local v1, cId:I
    iput v10, p2, Landroid/os/Message;->arg1:I

    .line 430
    if-ltz v1, :cond_0

    const/4 v5, 0x1

    if-ge v5, v1, :cond_1

    .line 431
    :cond_0
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel id is wrong"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iput v9, p2, Landroid/os/Message;->arg1:I

    .line 482
    :goto_0
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 484
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 485
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void

    .line 435
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 436
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v2

    .line 478
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BM-closeChannel: IndexOutOfBoundsException cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iput v9, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 437
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    if-ne v7, v5, :cond_3

    .line 438
    const/16 v5, 0x8

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 440
    :cond_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v3

    .line 441
    if-nez v3, :cond_4

    .line 442
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: channel has already been closed"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 446
    :cond_4
    const/4 v4, 0x0

    .line 447
    .local v4, tcpSerCh:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;
    iget v5, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_7

    .line 448
    instance-of v5, v3, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    if-eqz v5, :cond_5

    .line 449
    move-object v0, v3

    check-cast v0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    move-object v4, v0

    .line 450
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseBackToTcpListen:Z

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 464
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    move-result v5

    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 465
    iget v5, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v11, v5, :cond_8

    .line 466
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 467
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 473
    :cond_6
    :goto_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannel:Lcom/mediatek/internal/telephony/cat/Channel;

    .line 474
    const/4 v5, 0x2

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto/16 :goto_0

    .line 453
    :cond_7
    const-string v5, "[BIP]"

    const-string v6, "BM-closeChannel: stop data connection"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopUsingNetworkFeature getDataConnectionFromSetting  =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v6, 0x0

    const-string v7, "enableSUPL"

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    goto :goto_1

    .line 470
    :cond_8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getBipChannelManager()Lcom/mediatek/internal/telephony/cat/BipChannelManager;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 917
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 606
    const-string v1, "[BIP]"

    const-string v2, "new getChannelStatus"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 609
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 610
    return-void
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 8
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v7, 0x1

    .line 669
    const/4 v3, 0x0

    .line 670
    .local v3, ret:I
    const/4 v0, 0x1

    .line 671
    .local v0, cId:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v1, csList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/ChannelStatus;>;"
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    if-gt v0, v7, :cond_1

    .line 675
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v4

    if-ne v7, v4, :cond_0

    .line 676
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getChannelStatus: cId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v4

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :catch_0
    move-exception v2

    .line 682
    .local v2, ne:Ljava/lang/NullPointerException;
    const-string v4, "[BIP]"

    const-string v5, "getChannelStatus: NE"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 685
    .end local v2           #ne:Ljava/lang/NullPointerException;
    :cond_1
    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 686
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 687
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    return-void
.end method

.method public getFreeChannelId()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getFreeChannelId()I

    move-result v0

    return v0
.end method

.method public getInstance(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "simId"

    .prologue
    .line 168
    if-nez p3, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance1:Lcom/mediatek/internal/telephony/cat/BipManager;

    .line 183
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v0, :cond_1

    .line 172
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance2:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v0, :cond_2

    .line 175
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance3:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    if-nez v0, :cond_3

    .line 178
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 3"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipManager;->instance4:Lcom/mediatek/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 181
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bip instance was generated. sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openChannel(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 613
    const-string v1, "[BIP]"

    const-string v2, "new openChannel"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 615
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 616
    return-void
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 10
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    const/4 v1, 0x2

    .line 257
    .local v1, result:I
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: enter"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, ret:I
    const/4 v0, 0x0

    .line 261
    .local v0, channel:Lcom/mediatek/internal/telephony/cat/Channel;
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: init channel status object"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 265
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v7, v7, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->acquireChannelId(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    .line 266
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    if-nez v4, :cond_0

    .line 267
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: acquire channel id = 0"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v4, 0x5

    iput v4, p2, Landroid/os/Message;->arg1:I

    .line 269
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 271
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v4, Lcom/mediatek/common/telephony/ChannelStatus;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-direct {v4, v7, v5, v5}, Lcom/mediatek/common/telephony/ChannelStatus;-><init>(III)V

    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 275
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 277
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    .line 278
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    if-eqz v4, :cond_3

    .line 279
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: bearer type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    iget v8, v8, Lcom/mediatek/common/telephony/BearerDesc;->bearerType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_1
    iget v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    iput v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBufferSize:I

    .line 285
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: buffer size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 288
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    if-eqz v4, :cond_4

    .line 289
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: local address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iget-object v8, v8, Lcom/mediatek/common/telephony/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_2
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    .line 295
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    if-eqz v4, :cond_5

    .line 296
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v8, v8, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v8, v8, Lcom/mediatek/common/telephony/TransportProtocol;->portNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_3
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 303
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    if-eqz v4, :cond_6

    .line 304
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: dest address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    iget-object v8, v8, Lcom/mediatek/common/telephony/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_4
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-nez v4, :cond_7

    const-string v4, "TestGp.rs"

    :goto_5
    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    .line 310
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 311
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: apn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_6
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    .line 318
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: login "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    .line 320
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: password "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_9

    move v4, v5

    :goto_7
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLinkMode:I

    .line 325
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: mLinkMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_a

    move v4, v5

    :goto_8
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mAutoReconnected:Z

    .line 338
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8}, Lcom/mediatek/internal/telephony/cat/BipManager;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v4, "gsm.stk.bip"

    const-string v7, "1"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    iget v4, v4, Lcom/mediatek/common/telephony/TransportProtocol;->protocolType:I

    if-ne v9, v4, :cond_c

    .line 346
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->establishLink()I

    move-result v2

    .line 348
    if-eqz v2, :cond_1

    if-ne v2, v9, :cond_b

    .line 349
    :cond_1
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: channel is activated"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v0

    .line 351
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iget v5, v5, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    iput v5, v4, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    .line 357
    :goto_9
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 358
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    :cond_2
    :goto_a
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: exit"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_3
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: bearer type is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 291
    :cond_4
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: local address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 299
    :cond_5
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: transport protocol is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 306
    :cond_6
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: dest address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 309
    :cond_7
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_5

    .line 313
    :cond_8
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: apn default TestGp.rs"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_6

    :cond_9
    move v4, v6

    .line 322
    goto/16 :goto_7

    :cond_a
    move v4, v6

    .line 327
    goto/16 :goto_8

    .line 353
    :cond_b
    const-string v4, "[BIP]"

    const-string v6, "BM-openChannel: channel is un-activated"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput v5, v4, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I

    goto :goto_9

    .line 362
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->getDataConnectionFromSetting()I

    move-result v4

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    if-ne v4, v7, :cond_d

    .line 363
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start to establish data connection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v7, "enableSUPL"

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v4, v5, v7, v8}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v1

    .line 371
    :cond_d
    if-nez v1, :cond_11

    .line 372
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: APN already active"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->requestRouteToHost()Z

    move-result v4

    if-nez v4, :cond_e

    .line 374
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: Fail - requestRouteToHost"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v2, 0x2

    .line 377
    :cond_e
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 378
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 379
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: establish data channel"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->establishLink()I

    move-result v2

    .line 382
    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    .line 383
    if-eqz v2, :cond_f

    if-ne v2, v9, :cond_10

    .line 384
    :cond_f
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: channel is activated"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/16 v4, 0x80

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/BipManager;->updateCurrentChannelStatus(I)V

    .line 390
    :goto_b
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    if-ne v6, v4, :cond_2

    .line 391
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 392
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 393
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 394
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 387
    :cond_10
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: channel is un-activated"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/cat/BipManager;->updateCurrentChannelStatus(I)V

    goto :goto_b

    .line 397
    :cond_11
    if-ne v1, v6, :cond_12

    .line 398
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: APN request started"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 400
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 401
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 402
    .local v3, timerMsg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 403
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a

    .line 405
    .end local v3           #timerMsg:Landroid/os/Message;
    :cond_12
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: startUsingNetworkFeature FAIL"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 407
    .restart local v3       #timerMsg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_a
.end method

.method public openChannelCompleted(ILcom/mediatek/internal/telephony/cat/Channel;)V
    .locals 6
    .parameter "ret"
    .parameter "lChannel"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 926
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-openChannelCompleted: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    if-ne p1, v5, :cond_0

    .line 929
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 931
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v5, :cond_3

    .line 932
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 933
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2, p2}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I

    .line 938
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    .line 940
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    if-nez v1, :cond_2

    .line 941
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 942
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1, v2, p1, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 943
    .local v0, response:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 944
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 945
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 947
    .end local v0           #response:Landroid/os/Message;
    :cond_2
    return-void

    .line 935
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 936
    const/4 v1, 0x7

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0
.end method

.method public reOpenChannel()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 201
    const/4 v1, 0x2

    .line 202
    .local v1, result:I
    const/4 v2, 0x0

    .line 204
    .local v2, ret:I
    const-string v4, "[BIP]"

    const-string v5, "BM-reOpenChannel."

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->getDataConnectionFromSetting()I

    move-result v4

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    if-ne v4, v5, :cond_0

    .line 207
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM-reOpenChannel Start to establish data connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v5, "enableSUPL"

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mSimId:I

    invoke-virtual {v4, v8, v5, v6}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v1

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 216
    .local v0, response:Landroid/os/Message;
    if-nez v1, :cond_4

    .line 217
    const-string v4, "[BIP]"

    const-string v5, "BM-reOpenChannel: APN already active"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->requestRouteToHost()Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    const-string v4, "[BIP]"

    const-string v5, "BM-reOpenChannel: Fail - requestRouteToHost"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x2

    .line 222
    :cond_1
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 224
    const-string v4, "[BIP]"

    const-string v5, "BM-reOpenChannel: establish data channel"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipManager;->establishLink()I

    move-result v2

    .line 226
    if-eqz v2, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 227
    :cond_2
    const-string v4, "[BIP]"

    const-string v5, "BM-reOpenChannel: channel is activated"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput-boolean v7, v4, Lcom/mediatek/common/telephony/ChannelStatus;->isActivated:Z

    .line 234
    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 235
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    :goto_1
    return-void

    .line 230
    :cond_3
    const-string v4, "[BIP]"

    const-string v5, "BM-reOpenChannel: channel is un-activated"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput-boolean v8, v4, Lcom/mediatek/common/telephony/ChannelStatus;->isActivated:Z

    goto :goto_0

    .line 237
    :cond_4
    if-ne v1, v7, :cond_5

    .line 238
    const-string v4, "[BIP]"

    const-string v5, "BM-reOpenChannel: APN request started"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 241
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 242
    .local v3, timerMsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 245
    .end local v3           #timerMsg:Landroid/os/Message;
    :cond_5
    const-string v4, "[BIP]"

    const-string v5, "BM-reOpenChannel: startUsingNetworkFeature FAIL"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v2, 0x2

    .line 247
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput-boolean v8, v4, Lcom/mediatek/common/telephony/ChannelStatus;->isActivated:Z

    .line 249
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 250
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public receiveData(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 532
    const-string v1, "[BIP]"

    const-string v2, "new receiveData"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 534
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 535
    return-void
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 9
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v5, 0x5

    .line 499
    iget v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 500
    .local v2, requestCount:I
    new-instance v3, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 501
    .local v3, result:Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    const/4 v7, 0x0

    .line 502
    .local v7, lChannel:Lcom/mediatek/internal/telephony/cat/Channel;
    iget v6, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    .line 504
    .local v6, cId:I
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;

    move-result-object v7

    .line 505
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: receiveData enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    if-nez v7, :cond_0

    .line 508
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lChannel is null cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 510
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 529
    :goto_0
    return-void

    .line 514
    :cond_0
    iget v0, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 516
    :cond_1
    const/16 v0, 0xd2

    if-le v2, v0, :cond_2

    .line 517
    const-string v0, "[BIP]"

    const-string v1, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/16 v2, 0xd2

    .line 520
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/cat/BipManager$RecvDataRunnable;-><init>(Lcom/mediatek/internal/telephony/cat/BipManager;ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 521
    .local v8, recvThread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 524
    .end local v8           #recvThread:Ljava/lang/Thread;
    :cond_3
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mChannelStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 526
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 600
    const-string v1, "[BIP]"

    const-string v2, "new sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mHandler:Landroid/os/Handler;

    check-cast v1, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService;->getCmdMessage()Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    .line 602
    .local v0, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/cat/BipManager;->sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    .line 603
    return-void
.end method

.method public sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 3
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    .line 539
    const-string v1, "[BIP]"

    const-string v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/cat/BipManager$SendDataThread;-><init>(Lcom/mediatek/internal/telephony/cat/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 595
    .local v0, rt:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 596
    const-string v1, "[BIP]"

    const-string v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1093
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 1094
    return-void
.end method

.method public setOpenInProgressFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1096
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/BipManager;->mIsOpenInProgress:Z

    .line 1097
    return-void
.end method
