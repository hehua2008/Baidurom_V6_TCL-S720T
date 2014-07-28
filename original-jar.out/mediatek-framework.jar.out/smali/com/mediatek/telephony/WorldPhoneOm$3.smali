.class Lcom/mediatek/telephony/WorldPhoneOm$3;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


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
    .line 569
    iput-object p1, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

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

    const/16 v6, -0x63

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 571
    const-string v4, "[BroadcastReceiver]+"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 573
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

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 575
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 576
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, simStatus:Ljava/lang/String;
    const-string v4, "simId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 578
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

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 579
    const-string v4, "IMSI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 580
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 581
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->get3gCapabilitySim()I
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$700(Lcom/mediatek/telephony/WorldPhoneOm;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$602(I)I

    .line 584
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$800()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aput-object v5, v4, v3

    .line 585
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$900()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$800()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aput-object v5, v4, v3

    .line 586
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1000()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$900()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 587
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

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1100()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    .line 589
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1100()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 590
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1200()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    add-int/lit8 v6, v3, 0x50

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentPOLList(Landroid/os/Message;)V

    .line 592
    :cond_1
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 593
    const-string v4, "3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 594
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1400(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1302(I)I

    .line 595
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1500()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_2

    .line 596
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1500()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 597
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1300()I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 598
    invoke-static {v8}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1602(Z)Z

    .line 599
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1700()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 600
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    const/4 v5, 0x4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    .line 609
    :cond_2
    :goto_0
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1800()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    .line 610
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1800()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 611
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

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1900()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 613
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V
    invoke-static {v4, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2100(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    .line 677
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_3
    :goto_1
    const-string v4, "[BroadcastReceiver]-"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 678
    return-void

    .line 602
    .restart local v2       #simStatus:Ljava/lang/String;
    .restart local v3       #slotId:I
    :cond_4
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1300()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 603
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1602(Z)Z

    goto :goto_0

    .line 604
    :cond_5
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1300()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 605
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1602(Z)Z

    .line 606
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v4, v9}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    goto :goto_0

    .line 617
    :cond_6
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1000()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1400(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I

    .line 618
    const-string v4, "Not 3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 620
    :cond_7
    const-string v4, "ABSENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 621
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1000()[Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    aput-object v5, v4, v3

    .line 622
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1500()[Z

    move-result-object v4

    aput-boolean v8, v4, v3

    .line 623
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1800()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 624
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1100()[Z

    move-result-object v4

    aput-boolean v8, v4, v3

    .line 625
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 626
    const-string v4, "3G Sim removed, no world phone service"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 627
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1302(I)I

    .line 628
    invoke-static {v8}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2202(I)I

    .line 629
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1602(Z)Z

    .line 630
    invoke-static {v8}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2302(Z)Z

    .line 632
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOm;->access$602(I)I

    goto :goto_1

    .line 637
    :cond_8
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

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 640
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 641
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    const/16 v5, -0x62

    if-eq v4, v5, :cond_a

    .line 642
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$602(I)I

    .line 644
    :cond_a
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2400(Lcom/mediatek/telephony/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 645
    :cond_b
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 646
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 647
    .local v1, serviceState:Landroid/telephony/ServiceState;
    if-eqz v1, :cond_3

    .line 648
    const-string v4, "simId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 649
    .restart local v3       #slotId:I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2502(Ljava/lang/String;)Ljava/lang/String;

    .line 650
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilRadioTechnology()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2602(I)I

    .line 651
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2702(I)I

    .line 652
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2802(I)I

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s3gSimSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->getModem()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/worldphone/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 655
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

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sPlmnSs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 658
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2800()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sRegState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2700()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sRilRadioTechnology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2600()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_c

    .line 662
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2800()I

    move-result v4

    if-nez v4, :cond_d

    .line 663
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2302(Z)Z

    .line 667
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sAllowSwitchModem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 669
    :cond_c
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2700()I

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2800()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 671
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 672
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$3;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleNoService()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2900(Lcom/mediatek/telephony/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 665
    :cond_d
    invoke-static {v8}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2302(Z)Z

    goto :goto_2
.end method
