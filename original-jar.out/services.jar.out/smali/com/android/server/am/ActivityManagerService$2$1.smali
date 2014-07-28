.class Lcom/android/server/am/ActivityManagerService$2$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$2;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1282
    const/4 v2, 0x0

    .line 1283
    .local v2, logTime:Ljava/lang/String;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1284
    .local v0, anrMessage:Landroid/os/Message;
    const/16 v3, 0x190

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1285
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1286
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getAnrLogFile()Ljava/lang/String;

    move-result-object v2

    .line 1288
    if-eqz v2, :cond_0

    .line 1289
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1290
    const-string v3, "logtime"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1295
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$2$1;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1296
    return-void

    .line 1292
    :cond_0
    const/4 v3, 0x0

    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method
