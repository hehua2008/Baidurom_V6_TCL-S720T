.class Lcom/android/server/am/AppNotRespondingSendReportDialog$2;
.super Landroid/os/Handler;
.source "AppNotRespondingSendReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingSendReportDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppNotRespondingSendReportDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, appErrorIntent:Landroid/content/Intent;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 456
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 458
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    invoke-virtual {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_1
    :goto_1
    return-void

    .line 399
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$100(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v10}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$000(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$200(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$000(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 403
    new-instance v8, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;

    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    invoke-direct {v8, v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;-><init>(Lcom/android/server/am/AppNotRespondingSendReportDialog;)V

    .line 404
    .local v8, shot:Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$200(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->takeScreenshot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, filename:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "com.jrdcom.APPLICATION.ANR"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/main"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mLogTime:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$300(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".log"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, mMainLogFilePath:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/event"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mLogTime:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$300(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".log"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, mEventLogFilePath:Ljava/lang/String;
    const-string v9, "error_logFileName"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v9, "error_eventlogFileName"

    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v9, "error_imageFileName"

    invoke-virtual {v5, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$200(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v10}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$000(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 425
    .local v2, appName:Ljava/lang/CharSequence;
    const-string v9, "process_name"

    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 428
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$200(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 431
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$100(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v10}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$000(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 439
    .end local v2           #appName:Ljava/lang/CharSequence;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #mEventLogFilePath:Ljava/lang/String;
    .end local v7           #mMainLogFilePath:Ljava/lang/String;
    .end local v8           #shot:Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$100(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    monitor-enter v10

    .line 440
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$000(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 442
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_2

    .line 443
    iget-object v9, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    #getter for: Lcom/android/server/am/AppNotRespondingSendReportDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->access$100(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual {v9, v0, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 447
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 448
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 449
    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    iget-object v11, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    if-ne v9, v11, :cond_3

    .line 450
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 452
    :cond_3
    monitor-exit v10

    goto/16 :goto_0

    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 459
    :catch_0
    move-exception v3

    .line 460
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "AppNotRespondingDialog"

    const-string v10, "bug report receiver dissappeared"

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
