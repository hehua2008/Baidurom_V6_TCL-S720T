.class Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AgpsPhoneStateListener"
.end annotation


# static fields
.field public static final NETWORK_TYPE_2G:I = 0x0

.field public static final NETWORK_TYPE_3G:I = 0x1

.field public static final NETWORK_TYPE_CDMA:I = 0x2

.field public static final NETWORK_TYPE_NONE:I = -0x1

.field public static final NETWORK_TYPE_SIP:I = 0x3


# instance fields
.field private mIsDataConnected:Z

.field private mIsGemini:Z

.field private mIsNetworkRoaming:Z

.field private mIsSimReady:Z

.field private mNetworkType:I

.field private mSimId:I

.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 787
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;ZI)V

    .line 788
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;ZI)V
    .locals 2
    .parameter
    .parameter "isGemini"
    .parameter "whichSim"

    .prologue
    const/4 v1, 0x0

    .line 789
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 773
    iput v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsGemini:Z

    .line 781
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 782
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    .line 783
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    .line 784
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    .line 790
    iput-boolean p2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsGemini:Z

    .line 791
    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-lt p3, v0, :cond_1

    .line 792
    :cond_0
    iput v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_1
    iput p3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    goto :goto_0
.end method

.method private changeSlpProfileBasedOnMccMnc(Ljava/lang/String;)V
    .locals 5
    .parameter "mccMnc"

    .prologue
    .line 970
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2500(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 971
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->mccMnc:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 972
    iget-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->mccMnc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 973
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSlpProfileBasedOnMccMnc mccMnc is matched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 974
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-virtual {v2, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    goto :goto_0

    .line 978
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_1
    return-void
.end method

.method private getLocalIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 855
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 856
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 858
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 859
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 860
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 861
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 862
    .local v5, ip:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IP="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 872
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    .end local v5           #ip:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 872
    .end local v0           #e:Ljava/net/SocketException;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 869
    :catch_1
    move-exception v0

    .line 870
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getNetworkTypeInt()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 819
    const/4 v1, -0x1

    .line 822
    .local v1, ret:I
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 823
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 828
    .local v0, networkType:I
    :goto_0
    if-nez v0, :cond_1

    .line 829
    const/4 v1, -0x1

    .line 830
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " network type is Unknown  networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 850
    :goto_1
    return v1

    .line 825
    .end local v0           #networkType:I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkType(I)I

    move-result v0

    .restart local v0       #networkType:I
    goto :goto_0

    .line 831
    :cond_1
    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 832
    const/4 v1, 0x3

    .line 833
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " network type is LTE  networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 834
    :cond_2
    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xe

    if-ne v0, v2, :cond_4

    .line 840
    :cond_3
    const/4 v1, 0x2

    .line 841
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " network type is CDMA networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 842
    :cond_4
    if-eq v0, v4, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 844
    :cond_5
    const/4 v1, 0x0

    .line 845
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " network type is GSM networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 847
    :cond_6
    const/4 v1, 0x1

    .line 848
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " network type is WCDMA networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getSimNum()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method private updateCallState2Agpsd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0xb

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 915
    return-void
.end method

.method private updateConnectionState2Agpsd(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 891
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    .line 892
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xe

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 893
    return-void

    .line 892
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIPAdress()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 896
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v7

    .line 897
    .local v7, ip:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 898
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v6

    move v4, v3

    move v5, v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;)V

    .line 902
    :cond_0
    return-void
.end method

.method private updateNetworkType2Agpsd()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 881
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 882
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getNetworkTypeInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 883
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 888
    :goto_0
    return-void

    .line 885
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getNetworkTypeInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 886
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    goto :goto_0
.end method

.method private updateRoamingStatus2Agpsd()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 905
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 906
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    .line 910
    :goto_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xd

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    if-eqz v4, :cond_1

    :goto_1
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 911
    return-void

    .line 908
    :cond_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    goto :goto_0

    .line 910
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateSimStatus2Agpsd(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    .line 877
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xa

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 878
    return-void

    .line 877
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public generateProtectedIMSI(Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "imsi"
    .parameter "lenShow"

    .prologue
    .line 918
    const/4 v1, 0x0

    .line 919
    .local v1, protectedIMSI:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #protectedIMSI:Ljava/lang/StringBuilder;
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 921
    .restart local v1       #protectedIMSI:Ljava/lang/StringBuilder;
    move v0, p2

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 922
    const/16 v2, 0x58

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 921
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    return v0
.end method

.method public isDataConnected()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    return v0
.end method

.method public isSimReady()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (0:idle 1:ringing 2:offhook) incomingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1022
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCallState2Agpsd(I)V

    .line 1023
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCellLocationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCellInfo2Agpsd()I

    .line 985
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    if-eqz v0, :cond_0

    .line 986
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateNetworkType2Agpsd()V

    .line 989
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 994
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 996
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateConnectionState2Agpsd(Z)V

    .line 997
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateNetworkType2Agpsd()V

    .line 998
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateIPAdress()V

    .line 999
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCellInfo2Agpsd()I

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    if-nez p1, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1002
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateConnectionState2Agpsd(Z)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x1

    .line 1008
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged phone is in service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1010
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateSimStatus2Agpsd(Z)V

    .line 1011
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateRoamingStatus2Agpsd()V

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged phone is out of service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1014
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateSimStatus2Agpsd(Z)V

    goto :goto_0
.end method

.method public updateCellInfo2Agpsd()I
    .locals 12

    .prologue
    const/4 v1, 0x6

    const/4 v0, -0x1

    .line 929
    const/4 v6, 0x0

    .line 930
    .local v6, imsi:Ljava/lang/String;
    const/4 v7, 0x0

    .line 931
    .local v7, mccMnc:Ljava/lang/String;
    const/4 v2, 0x0

    .line 932
    .local v2, lac:I
    const/4 v3, 0x0

    .line 933
    .local v3, cid:I
    const/4 v8, 0x0

    .line 935
    .local v8, cellLocation:Landroid/telephony/CellLocation;
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 936
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v8

    .line 937
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 938
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 944
    :goto_0
    instance-of v4, v8, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_2

    move-object v10, v8

    .line 945
    check-cast v10, Landroid/telephony/gsm/GsmCellLocation;

    .line 947
    .local v10, gsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :try_start_0
    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 948
    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 954
    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    .line 955
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2400(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-direct {p0, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->changeSlpProfileBasedOnMccMnc(Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x0

    .line 966
    .end local v10           #gsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :goto_1
    return v0

    .line 940
    :cond_0
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v8

    .line 941
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 942
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 949
    .restart local v10       #gsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :catch_0
    move-exception v9

    .line 950
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 961
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid imsi="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v6, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->generateProtectedIMSI(Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " mccMnc="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " on SIM="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 964
    .end local v10           #gsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gsm cell is unavailable on SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
