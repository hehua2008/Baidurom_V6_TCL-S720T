.class Lcom/mediatek/mom/c;
.super Lcom/android/internal/content/PackageMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/MobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mediatek/mom/MobileManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/mom/MobileManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/mediatek/mom/c;->a:Lcom/mediatek/mom/MobileManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/mediatek/mom/c;->a:Lcom/mediatek/mom/MobileManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;I)V

    .line 387
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mediatek/mom/c;->a:Lcom/mediatek/mom/MobileManagerService;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;I)V

    .line 395
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/mom/c;->a:Lcom/mediatek/mom/MobileManagerService;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;I)V

    .line 391
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 398
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/mediatek/mom/c;->a:Lcom/mediatek/mom/MobileManagerService;

    aget-object v2, p1, v0

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;I)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 404
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/mediatek/mom/c;->a:Lcom/mediatek/mom/MobileManagerService;

    aget-object v2, p1, v0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;I)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method
