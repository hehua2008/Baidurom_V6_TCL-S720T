.class abstract Lcom/android/server/WifiService$DeathRecipient;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeathRecipient"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mMode:I

.field mTag:Ljava/lang/String;

.field mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 3
    .parameter
    .parameter "mode"
    .parameter "tag"
    .parameter "binder"
    .parameter "ws"

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/android/server/WifiService$DeathRecipient;->this$0:Lcom/android/server/WifiService;

    .line 1677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    iput-object p3, p0, Lcom/android/server/WifiService$DeathRecipient;->mTag:Ljava/lang/String;

    .line 1679
    iput p2, p0, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    .line 1680
    iput-object p4, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 1681
    iput-object p5, p0, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    .line 1683
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    :goto_0
    return-void

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/WifiService$DeathRecipient;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1691
    return-void
.end method
