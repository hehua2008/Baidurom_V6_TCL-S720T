.class Lcom/mediatek/telephony/WorldPhoneOp01$3;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOp01.java"


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
    .line 476
    iput-object p1, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x3

    const/16 v8, -0x63

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 478
    const-string v4, "[BroadcastReceiver]+"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, action:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 482
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 483
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, simStatus:Ljava/lang/String;
    const-string v4, "simId"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 485
    .local v3, slotId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 486
    const-string v4, "IMSI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 487
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 488
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->get3gCapabilitySim()I
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$700(Lcom/mediatek/telephony/WorldPhoneOp01;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$602(I)I

    .line 491
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$800()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aput-object v5, v4, v3

    .line 492
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$900()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$800()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aput-object v5, v4, v3

    .line 493
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1000()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$900()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sImsi["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 496
    const-string v4, "3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 497
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1200(Lcom/mediatek/telephony/WorldPhoneOp01;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1102(I)I

    .line 498
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1300()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_2

    .line 499
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1300()[Z

    move-result-object v4

    aput-boolean v6, v4, v3

    .line 500
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1100()I

    move-result v4

    if-eq v4, v7, :cond_1

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1100()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 501
    :cond_1
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1402(Z)Z

    .line 502
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V
    invoke-static {v4, v7, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1500(Lcom/mediatek/telephony/WorldPhoneOp01;II)V

    .line 510
    :cond_2
    :goto_0
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1600()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    .line 511
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1600()[Z

    move-result-object v4

    aput-boolean v6, v4, v3

    .line 512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI fot slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now ready, resuming PLMN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1700()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1800()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 514
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->resumeCampingProcedure(I)V
    invoke-static {v4, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1900(Lcom/mediatek/telephony/WorldPhoneOp01;I)V

    .line 571
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_3
    :goto_1
    const-string v4, "[BroadcastReceiver]-"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 572
    return-void

    .line 503
    .restart local v2       #simStatus:Ljava/lang/String;
    .restart local v3       #slotId:I
    :cond_4
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1100()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 504
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1402(Z)Z

    .line 505
    const-string v4, "Type3 user, switch to FDD modem"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 506
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->setRatMode(II)V
    invoke-static {v4, v6, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1500(Lcom/mediatek/telephony/WorldPhoneOp01;II)V

    .line 507
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V
    invoke-static {v4, v9}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$300(Lcom/mediatek/telephony/WorldPhoneOp01;I)V

    goto :goto_0

    .line 518
    :cond_5
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1200(Lcom/mediatek/telephony/WorldPhoneOp01;Ljava/lang/String;)I

    .line 519
    const-string v4, "Not 3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    goto :goto_1

    .line 521
    :cond_6
    const-string v4, "ABSENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 522
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1000()[Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    aput-object v5, v4, v3

    .line 523
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1300()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 524
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1600()[Z

    move-result-object v4

    aput-boolean v6, v4, v3

    .line 525
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 526
    const-string v4, "3G Sim removed, no world phone service"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 527
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1102(I)I

    .line 528
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2002(I)I

    .line 529
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1402(Z)Z

    .line 531
    invoke-static {v8}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$602(I)I

    goto :goto_1

    .line 536
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not 3G slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    goto :goto_1

    .line 539
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_8
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 540
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v4

    const/16 v5, -0x62

    if-eq v4, v5, :cond_9

    .line 541
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$602(I)I

    .line 543
    :cond_9
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->handle3gSwitched()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2100(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    goto/16 :goto_1

    .line 544
    :cond_a
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 545
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 546
    .local v1, serviceState:Landroid/telephony/ServiceState;
    if-eqz v1, :cond_3

    .line 547
    const-string v4, "simId"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 548
    .restart local v3       #slotId:I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilRadioTechnology()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2302(I)I

    .line 550
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2402(I)I

    .line 551
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2502(I)I

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s3gSimSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isEmergencyOnly: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sPlmnSs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2500()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sRegState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2400()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sRilRadioTechnology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2300()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 561
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2500()I

    move-result v4

    if-nez v4, :cond_b

    .line 562
    const-string v4, "sTddStandByCounter set to 0"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Ljava/lang/String;)V

    .line 563
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$002(I)I

    goto/16 :goto_1

    .line 564
    :cond_b
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2500()I

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2400()I

    move-result v4

    if-nez v4, :cond_3

    .line 566
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->handleNoService()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2600(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    goto/16 :goto_1
.end method
