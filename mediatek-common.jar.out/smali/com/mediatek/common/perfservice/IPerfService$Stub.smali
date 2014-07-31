.class public abstract Lcom/mediatek/common/perfservice/IPerfService$Stub;
.super Landroid/os/Binder;
.source "IPerfService.java"

# interfaces
.implements Lcom/mediatek/common/perfservice/IPerfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/perfservice/IPerfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/perfservice/IPerfService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.perfservice.IPerfService"

.field static final TRANSACTION_boostDisable:I = 0x2

.field static final TRANSACTION_boostEnable:I = 0x1

.field static final TRANSACTION_boostEnableTimeout:I = 0x3

.field static final TRANSACTION_notifyAppState:I = 0x4

.field static final TRANSACTION_userDisable:I = 0x9

.field static final TRANSACTION_userDisableAll:I = 0xb

.field static final TRANSACTION_userEnable:I = 0x7

.field static final TRANSACTION_userEnableTimeout:I = 0x8

.field static final TRANSACTION_userReg:I = 0x5

.field static final TRANSACTION_userResetAll:I = 0xa

.field static final TRANSACTION_userUnreg:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/perfservice/IPerfService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.mediatek.common.perfservice.IPerfService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/perfservice/IPerfService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/common/perfservice/IPerfService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/common/perfservice/IPerfService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/common/perfservice/IPerfService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->boostEnable(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->boostDisable(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->boostEnableTimeout(II)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_4
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_5
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->userReg(II)I

    move-result v3

    .line 95
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_6
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->userUnreg(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->userEnable(I)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->userEnableTimeout(II)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_9
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->userDisable(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    .end local v0           #_arg0:I
    :sswitch_a
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->userResetAll()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    :sswitch_b
    const-string v5, "com.mediatek.common.perfservice.IPerfService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/mediatek/common/perfservice/IPerfService$Stub;->userDisableAll()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
