.class Lcom/android/server/am/AppErrorSendReportDialog$1;
.super Landroid/os/Handler;
.source "AppErrorSendReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorSendReportDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorSendReportDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorSendReportDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 393
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$000(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    monitor-enter v6

    .line 394
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$100(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$100(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    if-ne v5, v7, :cond_0

    .line 395
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$100(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 397
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$200(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 399
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 400
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$300(Lcom/android/server/am/AppErrorSendReportDialog;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$100(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 401
    new-instance v4, Lcom/android/server/am/AppErrorSendReportDialog$GlobalScreenshot;

    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    invoke-direct {v4, v5}, Lcom/android/server/am/AppErrorSendReportDialog$GlobalScreenshot;-><init>(Lcom/android/server/am/AppErrorSendReportDialog;)V

    .line 402
    .local v4, shot:Lcom/android/server/am/AppErrorSendReportDialog$GlobalScreenshot;
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$300(Lcom/android/server/am/AppErrorSendReportDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/AppErrorSendReportDialog$GlobalScreenshot;->takeScreenshot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, filename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v7}, Lcom/android/server/am/AppErrorSendReportDialog;->access$100(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mStackTrace:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/am/AppErrorSendReportDialog;->access$400(Lcom/android/server/am/AppErrorSendReportDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/server/am/AppErrorSendReportDialog;->saveLog(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/am/AppErrorSendReportDialog;->access$500(Lcom/android/server/am/AppErrorSendReportDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, logname:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 407
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.jrdcom.APPLICATION.ERROR"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v5, "error_logFileName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v5, "error_imageFileName"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$300(Lcom/android/server/am/AppErrorSendReportDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v6}, Lcom/android/server/am/AppErrorSendReportDialog;->access$100(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 414
    .local v0, appName:Ljava/lang/CharSequence;
    const-string v5, "process_name"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 419
    new-instance v5, Lcom/android/server/am/AppErrorSendReportDialog$1$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/server/am/AppErrorSendReportDialog$1$1;-><init>(Lcom/android/server/am/AppErrorSendReportDialog$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/AppErrorSendReportDialog$1$1;->start()V

    .line 449
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    #getter for: Lcom/android/server/am/AppErrorSendReportDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->access$300(Lcom/android/server/am/AppErrorSendReportDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    .end local v0           #appName:Ljava/lang/CharSequence;
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #logname:Ljava/lang/String;
    .end local v4           #shot:Lcom/android/server/am/AppErrorSendReportDialog$GlobalScreenshot;
    :cond_1
    :goto_0
    return-void

    .line 397
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 455
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/AppErrorSendReportDialog$1;->this$0:Lcom/android/server/am/AppErrorSendReportDialog;

    invoke-virtual {v5}, Lcom/android/server/am/AppErrorSendReportDialog;->dismiss()V

    goto :goto_0
.end method
