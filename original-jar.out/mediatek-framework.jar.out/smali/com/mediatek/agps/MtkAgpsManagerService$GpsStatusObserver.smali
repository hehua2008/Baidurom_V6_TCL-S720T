.class Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;
.super Landroid/database/ContentObserver;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    .line 319
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 320
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "change"

    .prologue
    .line 323
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->isGpsAvailable()Z
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;)Z

    move-result v0

    .line 324
    .local v0, status:Z
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsForceEnabledFlag:I
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$110(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Status in Settings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mGpsForceEnabledFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsForceEnabledFlag:I
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 328
    return-void
.end method
