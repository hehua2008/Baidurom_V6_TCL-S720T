.class public abstract Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;
.super Landroid/os/Binder;
.source "IMtkHdmiManager.java"

# interfaces
.implements Lcom/mediatek/common/hdmi/IMtkHdmiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/hdmi/IMtkHdmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.hdmi.IMtkHdmiManager"

.field static final TRANSACTION_enableHdmi:I = 0x1

.field static final TRANSACTION_getResolutionMask:I = 0x4

.field static final TRANSACTION_getSupportedResolutions:I = 0x6

.field static final TRANSACTION_isSignalOutputting:I = 0x5

.field static final TRANSACTION_setColorAndDeep:I = 0x3

.field static final TRANSACTION_setVideoResolution:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.common.hdmi.IMtkHdmiManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.mediatek.common.hdmi.IMtkHdmiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v4, "com.mediatek.common.hdmi.IMtkHdmiManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.mediatek.common.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 53
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->enableHdmi(Z)Z

    move-result v2

    .line 54
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_1
    move v0, v4

    .line 52
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v5, "com.mediatek.common.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->setVideoResolution(I)Z

    move-result v2

    .line 64
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_3
    const-string v5, "com.mediatek.common.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->setColorAndDeep(II)Z

    move-result v2

    .line 76
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_4
    const-string v4, "com.mediatek.common.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->getResolutionMask()[I

    move-result-object v2

    .line 84
    .local v2, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 90
    .end local v2           #_result:[I
    :sswitch_5
    const-string v5, "com.mediatek.common.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->isSignalOutputting()Z

    move-result v2

    .line 92
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v2           #_result:Z
    :sswitch_6
    const-string v4, "com.mediatek.common.hdmi.IMtkHdmiManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->getSupportedResolutions()[I

    move-result-object v2

    .line 100
    .local v2, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
