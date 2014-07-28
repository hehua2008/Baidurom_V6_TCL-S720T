.class public Lcom/mediatek/telephony/SmsManagerEx;
.super Ljava/lang/Object;
.source "SmsManagerEx.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ISmsManagerExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static final TEST_MODE_CTA:I = 0x1

.field private static final TEST_MODE_FTA:I = 0x2

.field private static final TEST_MODE_IOT:I = 0x3

.field private static final TEST_MODE_PROPERTY_KEY:Ljava/lang/String; = "gsm.gcf.testmode"

.field private static final TEST_MODE_PROPERTY_KEY2:Ljava/lang/String; = "gsm.gcf.testmode2"

.field private static final TEST_MODE_UNKNOWN:I = -0x1

.field private static lastReceivedSmsSimId:I

.field private static final sInstance:Lcom/mediatek/telephony/SmsManagerEx;


# instance fields
.field private testMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/mediatek/telephony/SmsManagerEx;

    invoke-direct {v0}, Lcom/mediatek/telephony/SmsManagerEx;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/SmsManagerEx;->sInstance:Lcom/mediatek/telephony/SmsManagerEx;

    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/telephony/SmsManagerEx;->lastReceivedSmsSimId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/telephony/SmsManagerEx;->testMode:I

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/SmsManagerEx;->getDefaultSim()I

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const-string v1, "SMS"

    const-string v2, "SM-constructor: get test mode from SIM 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "gsm.gcf.testmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/telephony/SmsManagerEx;->testMode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SM-constructor: test mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/telephony/SmsManagerEx;->testMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 68
    :cond_0
    :try_start_1
    const-string v1, "SMS"

    const-string v2, "SM-constructor: get test mode from SIM 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v1, "gsm.gcf.testmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mediatek/telephony/SmsManagerEx;->testMode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "SMS"

    const-string v2, "SM-constructor: invalid property value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/telephony/SmsManagerEx;->testMode:I

    goto :goto_0
.end method

.method public static activateCellBroadcastSms(ZI)Z
    .locals 7
    .parameter "activate"
    .parameter "slotId"

    .prologue
    .line 1445
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activateCellBroadcastSms activate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v1, 0x0

    .line 1448
    .local v1, result:Z
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 1450
    .local v3, serviceName:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1451
    .local v2, service:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1452
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ISms;->activateCellBroadcastSms(Z)Z

    move-result v1

    .line 1462
    .end local v2           #service:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 1454
    .restart local v2       #service:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v4, "SMS"

    const-string v5, "fail to get sms service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    const/4 v1, 0x0

    goto :goto_0

    .line 1457
    .end local v2           #service:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 1458
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "fail to activate CB"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)I
    .locals 9
    .parameter "scAddress"
    .parameter "address"
    .parameter
    .parameter "status"
    .parameter "timestamp"
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJI)I"
        }
    .end annotation

    .prologue
    .line 1279
    .local p2, text:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "SMS"

    const-string v2, "call copyTextMessageToIccCard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const/4 v8, 0x1

    .line 1282
    .local v8, result:I
    invoke-static {p6}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v7

    .line 1285
    .local v7, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1286
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 1287
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1293
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v8

    .line 1289
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static createFromEfRecordByMode(I[BII)Landroid/telephony/gemini/GeminiSmsMessage;
    .locals 2
    .parameter "index"
    .parameter "data"
    .parameter "simId"
    .parameter "mode"

    .prologue
    .line 1030
    const/4 v0, 0x0

    .line 1032
    .local v0, sms:Landroid/telephony/SmsMessage;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 1033
    const-string v1, "3gpp2"

    invoke-static {p0, p1, v1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 1038
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 1035
    :cond_0
    const-string v1, "3gpp"

    invoke-static {p0, p1, v1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    goto :goto_0

    .line 1038
    :cond_1
    new-instance v1, Landroid/telephony/gemini/GeminiSmsMessage;

    invoke-direct {v1, v0, p2}, Landroid/telephony/gemini/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    goto :goto_1
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const-string v5, "SMS"

    const-string v6, "call createMessageListFromRawRecords"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v2, 0x0

    .line 883
    .local v2, geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_2

    .line 884
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 885
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .restart local v2       #geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 888
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 890
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 891
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p1}, Landroid/telephony/gemini/GeminiSmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/gemini/GeminiSmsMessage;

    move-result-object v3

    .line 893
    .local v3, geminiSms:Landroid/telephony/gemini/GeminiSmsMessage;
    if-eqz v3, :cond_0

    .line 894
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    .end local v3           #geminiSms:Landroid/telephony/gemini/GeminiSmsMessage;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 898
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    :cond_1
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actual SIM sms count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .end local v0           #count:I
    .end local v4           #i:I
    :goto_1
    return-object v2

    .line 900
    :cond_2
    const-string v5, "SMS"

    const-string v6, "fail to parse SIM sms, records is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static createMessageListFromRawRecordsByMode(Ljava/util/List;II)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "slotId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1052
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const-string v5, "SMS"

    const-string v6, "call createMessageListFromRawRecordsByMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v2, 0x0

    .line 1054
    .local v2, geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_2

    .line 1055
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1056
    .local v0, count:I
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .restart local v2       #geminiMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 1059
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1061
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1062
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p1, p2}, Lcom/mediatek/telephony/SmsManagerEx;->createFromEfRecordByMode(I[BII)Landroid/telephony/gemini/GeminiSmsMessage;

    move-result-object v3

    .line 1064
    .local v3, geminiSms:Landroid/telephony/gemini/GeminiSmsMessage;
    if-eqz v3, :cond_0

    .line 1065
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    .end local v3           #geminiSms:Landroid/telephony/gemini/GeminiSmsMessage;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1069
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    :cond_1
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actual SIM sms count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    .end local v0           #count:I
    .end local v4           #i:I
    :goto_1
    return-object v2

    .line 1071
    :cond_2
    const-string v5, "SMS"

    const-string v6, "fail to parse SIM sms, records is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDefault()Lcom/mediatek/telephony/SmsManagerEx;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/mediatek/telephony/SmsManagerEx;->sInstance:Lcom/mediatek/telephony/SmsManagerEx;

    return-object v0
.end method

.method private getDefaultSim()I
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSmsDefaultSim()I

    move-result v0

    return v0
.end method

.method private static getSmsParameters(I)Landroid/telephony/SmsParameters;
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 755
    const-string v4, "SMS"

    const-string v5, "[EFsmsp call getSmsParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {p0}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, svcName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 768
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 769
    const-string v4, "SMS"

    const-string v5, "[EFsmsp to get params from ef"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSmsParameters()Landroid/telephony/SmsParameters;

    move-result-object v3

    .line 780
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return-object v3

    .line 772
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail to get service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 776
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail because of RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail to get EFsmsp info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSmsServiceName(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 913
    if-nez p0, :cond_0

    .line 914
    const-string v0, "isms"

    .line 922
    :goto_0
    return-object v0

    .line 915
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 916
    const-string v0, "isms2"

    goto :goto_0

    .line 917
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 918
    const-string v0, "isms3"

    goto :goto_0

    .line 919
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 920
    const-string v0, "isms4"

    goto :goto_0

    .line 922
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static insertRawMessageToIccCard(I[B[BI)Landroid/telephony/SimSmsInsertStatus;
    .locals 6
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"
    .parameter "slotId"

    .prologue
    .line 591
    const-string v3, "SMS"

    const-string v4, "call insertRawMessageToIccCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v2, 0x0

    .line 602
    .local v2, ret:Landroid/telephony/SimSmsInsertStatus;
    invoke-static {p3}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 605
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 606
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISms;->insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 612
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    const-string v4, "SMS"

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[insertRaw "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-object v2

    .line 612
    :cond_1
    const-string v3, "[insertRaw null"

    goto :goto_1

    .line 608
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 3
    .parameter "destinationAddress"
    .parameter "text"
    .parameter "sentIntent"

    .prologue
    .line 938
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v1, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v0, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-static {p0, v0, v1}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter "destinationAddress"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x1

    .line 966
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 992
    :cond_0
    :goto_0
    return v2

    .line 970
    :cond_1
    invoke-static {p0}, Lcom/mediatek/telephony/SmsManagerEx;->isValidSmsDestinationAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 971
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 972
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 973
    .local v1, sentIntent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_2

    .line 975
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 981
    .end local v1           #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid destinationAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v2, 0x0

    goto :goto_0

    .line 985
    .end local v0           #i:I
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 986
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 988
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 989
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 976
    .restart local v0       #i:I
    .restart local v1       #sentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private static isValidSmsDestinationAddress(Ljava/lang/String;)Z
    .locals 6
    .parameter "da"

    .prologue
    const/4 v3, 0x1

    .line 1003
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, encodeAddress:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return v3

    .line 1008
    :cond_1
    const/4 v2, 0x0

    .line 1009
    .local v2, spaceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1010
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    .line 1011
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1009
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1015
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-eq v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static sendMultipartTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "encodingType"
    .parameter "slotId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v5, 0x0

    .line 1401
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call sendMultipartTextMessageWithEncodingType, encoding = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-static {p0, p2, p5}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1404
    const-string v1, "SMS"

    const-string v2, "invalid parameters for multipart message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1408
    :cond_1
    invoke-static {p4}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 1409
    .local v8, isms:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1411
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1412
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1413
    const-string v1, "SMS"

    const-string v2, "call ISms.sendMultipartText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1414
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1417
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1421
    :cond_2
    const/4 v6, 0x0

    .line 1422
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 1423
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1424
    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 1426
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get sentIntent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    if-eqz p6, :cond_4

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1428
    invoke-virtual {p6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1430
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    const-string v1, "SMS"

    const-string v2, "send single message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    if-eqz p2, :cond_5

    .line 1432
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parts.size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const-string v3, ""

    .line 1435
    .local v3, text:Ljava/lang/String;
    :goto_1
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pass encoding type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    .line 1436
    invoke-static/range {v1 .. v7}, Lcom/mediatek/telephony/SmsManagerEx;->sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1434
    .end local v3           #text:Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    goto :goto_1
.end method

.method public static sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "encodingType"
    .parameter "slotId"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1334
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call sendTextMessageWithEncodingType, encoding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-static {p0, p2, p5}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    const-string v1, "SMS"

    const-string v2, "the parameters are invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-static {p4}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 1343
    .local v8, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1344
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1345
    const-string v1, "SMS"

    const-string v2, "call ISms interface to send text message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1346
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1351
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 1353
    .local v7, ex:Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "fail to get ISms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1349
    .end local v7           #ex:Landroid/os/RemoteException;
    .restart local v0       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :try_start_1
    const-string v1, "SMS"

    const-string v2, "iccISms is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setSmsMemoryStatus(ZI)V
    .locals 5
    .parameter "status"
    .parameter "simId"

    .prologue
    .line 1140
    const-string v3, "SMS"

    const-string v4, "call setSmsMemoryStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-static {p2}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 1144
    .local v2, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1145
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1146
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->setSmsMemoryStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SMS"

    const-string v4, "setSmsMemoryStatus, RemoteException "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setSmsParameters(Landroid/telephony/SmsParameters;I)Z
    .locals 6
    .parameter "params"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x0

    .line 784
    const-string v4, "SMS"

    const-string v5, "[EFsmsp call setSmsParameters"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, svcName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 789
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 790
    const-string v4, "SMS"

    const-string v5, "[EFsmsp to set params into ef"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISms;->setSmsParameters(Landroid/telephony/SmsParameters;)Z

    move-result v3

    .line 800
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v3

    .line 793
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail to get service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 796
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 797
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "[EFsmsp fail because of RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public copySmsPduToIcc([B[BII)I
    .locals 4
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "slotId"

    .prologue
    const/4 v2, -0x1

    .line 856
    invoke-static {p3, p2, p1, p4}, Lcom/mediatek/telephony/SmsManagerEx;->insertRawMessageToIccCard(I[B[BI)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v1

    .line 858
    .local v1, smsStatus:Landroid/telephony/SimSmsInsertStatus;
    if-nez v1, :cond_1

    .line 867
    :cond_0
    :goto_0
    return v2

    .line 861
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SimSmsInsertStatus;->getIndex()[I

    move-result-object v0

    .line 863
    .local v0, index:[I
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 864
    const/4 v2, 0x0

    aget v2, v0, v2

    goto :goto_0
.end method

.method public deleteAllMessagesFromIcc(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 440
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/SmsManagerEx;->deleteMessageFromIcc(II)Z

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 7
    .parameter "messageIndex"
    .parameter "slotId"

    .prologue
    .line 403
    const-string v5, "SMS"

    const-string v6, "call deleteMessageFromIcc"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v4, 0x0

    .line 413
    .local v4, success:Z
    invoke-static {p2}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, isms:Ljava/lang/String;
    const/16 v5, 0xaf

    new-array v3, v5, [B

    .line 416
    .local v3, pdu:[B
    const/4 v5, -0x1

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 419
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 420
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 421
    const/4 v5, 0x0

    invoke-interface {v1, p1, v5, v3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 428
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v4

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, ex:Landroid/os/RemoteException;
    const-string v5, "SMS"

    const-string v6, "deleteMessageFromIcc, RemoteException!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .parameter "text"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1258
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call divideMessage, encoding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1260
    .local v0, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "divideMessage: size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return-object v0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 13
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    const-string v10, "SMS"

    const-string v11, "call getAllMessagesFromIcc"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, isms:Ljava/lang/String;
    const/4 v7, 0x0

    .line 501
    .local v7, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 502
    .local v3, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 503
    invoke-interface {v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 509
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 510
    .local v9, sz:I
    if-eqz v7, :cond_1

    .line 511
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 513
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v9, :cond_5

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, data:[B
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsRawData;

    .line 516
    .local v6, record:Lcom/android/internal/telephony/SmsRawData;
    if-nez v6, :cond_3

    .line 513
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 505
    .end local v0           #data:[B
    .end local v2           #i:I
    .end local v6           #record:Lcom/android/internal/telephony/SmsRawData;
    .end local v9           #sz:I
    :catch_0
    move-exception v1

    .line 506
    .local v1, ex:Landroid/os/RemoteException;
    const-string v10, "SMS"

    const-string v11, "getAllMessagesFromIcc, RemoteException!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #data:[B
    .restart local v2       #i:I
    .restart local v6       #record:Lcom/android/internal/telephony/SmsRawData;
    .restart local v9       #sz:I
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v0

    .line 521
    add-int/lit8 v4, v2, 0x1

    .line 522
    .local v4, index:I
    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 523
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "index["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] is STATUS_ON_ICC_READ"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v10, 0x1

    invoke-virtual {p0, v4, v10, v0, p1}, Lcom/mediatek/telephony/SmsManagerEx;->updateMessageOnIcc(II[BI)Z

    move-result v8

    .line 526
    .local v8, ret:Z
    if-eqz v8, :cond_4

    .line 527
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update index["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] to STATUS_ON_ICC_READ"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 529
    :cond_4
    const-string v10, "SMS"

    const-string v11, "fail to update message status"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 534
    .end local v0           #data:[B
    .end local v4           #index:I
    .end local v6           #record:Lcom/android/internal/telephony/SmsRawData;
    .end local v8           #ret:Z
    :cond_5
    invoke-static {v7, p1}, Lcom/mediatek/telephony/SmsManagerEx;->createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v10

    return-object v10
.end method

.method public getAllMessagesFromIcc(II)Ljava/util/ArrayList;
    .locals 13
    .parameter "slotId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1089
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "call getAllMessagesFromIcc, mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v5

    .line 1091
    .local v5, isms:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1094
    .local v7, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1095
    .local v3, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 1096
    invoke-interface {v3, p2}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfByMode(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1102
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 1103
    .local v9, sz:I
    if-eqz v7, :cond_1

    .line 1104
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 1106
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v9, :cond_5

    .line 1107
    const/4 v0, 0x0

    .line 1108
    .local v0, data:[B
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/SmsRawData;

    .line 1109
    .local v6, record:Lcom/android/internal/telephony/SmsRawData;
    if-nez v6, :cond_3

    .line 1106
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1098
    .end local v0           #data:[B
    .end local v2           #i:I
    .end local v6           #record:Lcom/android/internal/telephony/SmsRawData;
    .end local v9           #sz:I
    :catch_0
    move-exception v1

    .line 1099
    .local v1, ex:Landroid/os/RemoteException;
    const-string v10, "SMS"

    const-string v11, "getAllMessagesFromIcc, RemoteException!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1112
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #data:[B
    .restart local v2       #i:I
    .restart local v6       #record:Lcom/android/internal/telephony/SmsRawData;
    .restart local v9       #sz:I
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v0

    .line 1114
    add-int/lit8 v4, v2, 0x1

    .line 1115
    .local v4, index:I
    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 1116
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "index["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] is STATUS_ON_ICC_READ"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v10, 0x1

    invoke-virtual {p0, v4, v10, v0, p1}, Lcom/mediatek/telephony/SmsManagerEx;->updateMessageOnIcc(II[BI)Z

    move-result v8

    .line 1119
    .local v8, ret:Z
    if-eqz v8, :cond_4

    .line 1120
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update index["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] to STATUS_ON_ICC_READ"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1122
    :cond_4
    const-string v10, "SMS"

    const-string v11, "fail to update message status"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1127
    .end local v0           #data:[B
    .end local v4           #index:I
    .end local v6           #record:Lcom/android/internal/telephony/SmsRawData;
    .end local v8           #ret:Z
    :cond_5
    invoke-static {v7, p1, p2}, Lcom/mediatek/telephony/SmsManagerEx;->createMessageListFromRawRecordsByMode(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object v10

    return-object v10
.end method

.method public getIccSmsStorageStatus(I)Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    .locals 4
    .parameter "slotId"

    .prologue
    .line 572
    const-string v2, "SMS"

    const-string v3, "call getSmsSimMemoryStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 578
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getSmsSimMemoryStatus()Lcom/mediatek/common/telephony/IccSmsStorageStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 585
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return-object v2

    .line 581
    :catch_0
    move-exception v2

    .line 585
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getValidityPeriodFromIccCard(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 811
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsParameters(I)Landroid/telephony/SmsParameters;

    move-result-object v0

    .line 812
    .local v0, smsParam:Landroid/telephony/SmsParameters;
    if-nez v0, :cond_0

    .line 813
    const/4 v1, 0x0

    .line 815
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/telephony/SmsParameters;->vp:I

    goto :goto_0
.end method

.method public isSmsReady(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    .line 547
    const-string v3, "SMS"

    const-string v4, "call isSmsReady"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v1, 0x0

    .line 549
    .local v1, isReady:Z
    invoke-static {p1}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 553
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 554
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->isSmsReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 560
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 556
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "originalPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1242
    invoke-direct {p0}, Lcom/mediatek/telephony/SmsManagerEx;->getDefaultSim()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/telephony/SmsManagerEx;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 1245
    return-void
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "originalPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 364
    const-string v2, "SMS"

    const-string v3, "[xj send data with original port"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v2, "send_data"

    move-object/from16 v0, p6

    invoke-static {p1, v2, v0}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v2, v0

    if-nez v2, :cond_3

    .line 371
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_3
    invoke-static/range {p8 .. p8}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, isms:Ljava/lang/String;
    :try_start_0
    const-string v2, "SMS"

    const-string v3, "[xj get sms service start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 378
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    const-string v2, "SMS"

    const-string v3, "[xj get sms service end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v1, :cond_0

    .line 380
    const-string v2, "SMS"

    const-string v3, "[xj send data start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const v2, 0xffff

    and-int v4, p3, v2

    const v2, 0xffff

    and-int v5, p4, v2

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendDataWithOriginalPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 384
    const-string v2, "SMS"

    const-string v3, "[xj send data end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v9

    .line 387
    .local v9, ex:Landroid/os/RemoteException;
    const-string v2, "SMS"

    const-string v3, "sendDataMessage, RemoteException!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 293
    const-string v1, "SMS"

    const-string v2, "call sendDataMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v1, "send_data"

    invoke-static {p1, v1, p5}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-eqz p4, :cond_2

    array-length v1, p4

    if-nez v1, :cond_3

    .line 300
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_3
    invoke-static/range {p7 .. p7}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 320
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 321
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 325
    .local v7, ex:Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "sendDataMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "SMS"

    const-string v2, "call sendMultipartTextMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {p1, p3, p4}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-static/range {p6 .. p6}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, isms:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 236
    :try_start_0
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 237
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 238
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v8

    .line 242
    .local v8, ex:Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "sendMultipartTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_2
    const/4 v5, 0x0

    .line 246
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 247
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 248
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 250
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 251
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 253
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v4, ""

    .local v4, text:Ljava/lang/String;
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v7, p6

    .line 254
    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/telephony/SmsManagerEx;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 253
    .end local v4           #text:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    goto :goto_1
.end method

.method public sendMultipartTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 12
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter "extraParams"
    .parameter
    .parameter
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v2, "SMS"

    const-string v3, "call sendMultipartTextWithExtraParams"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p5

    invoke-static {p1, p3, v0}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    if-nez p4, :cond_2

    .line 707
    const-string v2, "SMS"

    const-string v3, "bundle is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 727
    :cond_2
    invoke-static/range {p7 .. p7}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v11

    .line 728
    .local v11, serviceName:Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 731
    :try_start_0
    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 732
    .local v1, service:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 733
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    .end local v1           #service:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v10

    .line 737
    .local v10, e:Landroid/os/RemoteException;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to call sendMultipartTextWithExtraParams: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v7, 0x0

    .line 741
    .local v7, sentIntent:Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 742
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 743
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 745
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 746
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 749
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/telephony/SmsManagerEx;->sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto/16 :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 140
    const-string v1, "SMS"

    const-string v2, "call sendTextMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p1, p3, p4}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {p6}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 164
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 165
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v6

    .line 169
    .local v6, ex:Landroid/os/RemoteException;
    const-string v1, "SMS"

    const-string v2, "sendTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "extraParams"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotId"

    .prologue
    .line 636
    const-string v1, "SMS"

    const-string v2, "call sendTextWithExtraParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-static {p1, p3, p5}, Lcom/mediatek/telephony/SmsManagerEx;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    if-nez p4, :cond_2

    .line 642
    const-string v1, "SMS"

    const-string v2, "bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    :cond_2
    invoke-static/range {p7 .. p7}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, serviceName:Ljava/lang/String;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :try_start_0
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 664
    .local v0, service:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 665
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    .end local v0           #service:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    .line 669
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to call sendTextWithExtraParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLastIncomingSmsSimId(I)V
    .locals 1
    .parameter "simId"

    .prologue
    .line 1201
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1202
    :cond_0
    sput p1, Lcom/mediatek/telephony/SmsManagerEx;->lastReceivedSmsSimId:I

    .line 1204
    :cond_1
    return-void
.end method

.method public setSmsMemoryStatus(Z)V
    .locals 6
    .parameter "status"

    .prologue
    .line 1163
    const/4 v1, 0x0

    .line 1166
    .local v1, isTestIccCard:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1168
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    sget v3, Lcom/mediatek/telephony/SmsManagerEx;->lastReceivedSmsSimId:I

    if-ltz v3, :cond_0

    .line 1169
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isTestIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1179
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1183
    sget v3, Lcom/mediatek/telephony/SmsManagerEx;->lastReceivedSmsSimId:I

    invoke-direct {p0, p1, v3}, Lcom/mediatek/telephony/SmsManagerEx;->setSmsMemoryStatus(ZI)V

    .line 1190
    :goto_1
    return-void

    .line 1171
    :catch_0
    move-exception v0

    .line 1173
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmsMemoryStatus, remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1174
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1176
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmsMemoryStatus, NullPointerException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1184
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :cond_1
    iget v3, p0, Lcom/mediatek/telephony/SmsManagerEx;->testMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1185
    sget v3, Lcom/mediatek/telephony/SmsManagerEx;->lastReceivedSmsSimId:I

    invoke-direct {p0, p1, v3}, Lcom/mediatek/telephony/SmsManagerEx;->setSmsMemoryStatus(ZI)V

    goto :goto_1

    .line 1188
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/telephony/SmsManagerEx;->getDefaultSim()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/mediatek/telephony/SmsManagerEx;->setSmsMemoryStatus(ZI)V

    goto :goto_1
.end method

.method public setValidityPeroidToIccCard(II)Z
    .locals 2
    .parameter "validityPeriod"
    .parameter "slotId"

    .prologue
    .line 826
    invoke-static {p2}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsParameters(I)Landroid/telephony/SmsParameters;

    move-result-object v0

    .line 827
    .local v0, smsParams:Landroid/telephony/SmsParameters;
    if-nez v0, :cond_0

    .line 828
    const/4 v1, 0x0

    .line 831
    :goto_0
    return v1

    .line 830
    :cond_0
    iput p1, v0, Landroid/telephony/SmsParameters;->vp:I

    .line 831
    invoke-static {v0, p2}, Lcom/mediatek/telephony/SmsManagerEx;->setSmsParameters(Landroid/telephony/SmsParameters;I)Z

    move-result v1

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[BI)Z
    .locals 6
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "slotId"

    .prologue
    .line 459
    const-string v4, "SMS"

    const-string v5, "call updateMessageOnIcc"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v3, 0x0

    .line 469
    .local v3, success:Z
    invoke-static {p4}, Lcom/mediatek/telephony/SmsManagerEx;->getSmsServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, isms:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 473
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 474
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 480
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v3

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SMS"

    const-string v5, "updateMessageOnIcc, RemoteException!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
