.class Lcom/android/server/am/AppNotRespondingSendReportDialog$1;
.super Ljava/lang/Object;
.source "AppNotRespondingSendReportDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppNotRespondingSendReportDialog;->takeScreenshot()V
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
    .line 230
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 234
    move-object v0, p0

    .line 235
    .local v0, myConn:Landroid/content/ServiceConnection;
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 237
    return-void
.end method
