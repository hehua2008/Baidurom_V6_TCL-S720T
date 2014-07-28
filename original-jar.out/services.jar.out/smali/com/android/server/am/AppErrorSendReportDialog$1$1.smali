.class Lcom/android/server/am/AppErrorSendReportDialog$1$1;
.super Ljava/lang/Thread;
.source "AppErrorSendReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrorSendReportDialog$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/AppErrorSendReportDialog$1;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$logname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorSendReportDialog$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/server/am/AppErrorSendReportDialog$1$1;->this$1:Lcom/android/server/am/AppErrorSendReportDialog$1;

    iput-object p2, p0, Lcom/android/server/am/AppErrorSendReportDialog$1$1;->val$logname:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/AppErrorSendReportDialog$1$1;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 423
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/data"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 426
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 427
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_3

    array-length v7, v2

    if-lez v7, :cond_3

    .line 429
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 431
    .local v6, subfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 432
    .local v5, path:Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v7, ".log"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/am/AppErrorSendReportDialog$1$1;->val$logname:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string v7, ".jpg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/AppErrorSendReportDialog$1$1;->val$filename:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 436
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 438
    :catch_0
    move-exception v7

    goto :goto_1

    .line 445
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #subfile:Ljava/io/File;
    :cond_3
    return-void
.end method
