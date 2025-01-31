.class public abstract Lcom/infraware/service/aidl/ISNoteFileUtil$Stub;
.super Landroid/os/Binder;
.source "ISNoteFileUtil.java"

# interfaces
.implements Lcom/infraware/service/aidl/ISNoteFileUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/service/aidl/ISNoteFileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/service/aidl/ISNoteFileUtil$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.infraware.service.aidl.ISNoteFileUtil"

.field static final TRANSACTION_extractDirtyItems:I = 0x3

.field static final TRANSACTION_extractMediaItems:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.infraware.service.aidl.ISNoteFileUtil"

    invoke-virtual {p0, p0, v0}, Lcom/infraware/service/aidl/ISNoteFileUtil$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/infraware/service/aidl/ISNoteFileUtil;
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
    const-string v1, "com.infraware.service.aidl.ISNoteFileUtil"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/infraware/service/aidl/ISNoteFileUtil;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/infraware/service/aidl/ISNoteFileUtil;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/infraware/service/aidl/ISNoteFileUtil$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/infraware/service/aidl/ISNoteFileUtil$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "com.infraware.service.aidl.ISNoteFileUtil"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.infraware.service.aidl.ISNoteFileUtil"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/infraware/service/aidl/ISNoteFileUtilCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/infraware/service/aidl/ISNoteFileUtilCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/infraware/service/aidl/ISNoteFileUtilCallback;
    invoke-virtual {p0, v0}, Lcom/infraware/service/aidl/ISNoteFileUtil$Stub;->registerCallback(Lcom/infraware/service/aidl/ISNoteFileUtilCallback;)Z

    move-result v2

    .line 51
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Lcom/infraware/service/aidl/ISNoteFileUtilCallback;
    .end local v2           #_result:Z
    :sswitch_2
    const-string v6, "com.infraware.service.aidl.ISNoteFileUtil"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/infraware/service/aidl/ISNoteFileUtilCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/infraware/service/aidl/ISNoteFileUtilCallback;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Lcom/infraware/service/aidl/ISNoteFileUtilCallback;
    invoke-virtual {p0, v0}, Lcom/infraware/service/aidl/ISNoteFileUtil$Stub;->unregisterCallback(Lcom/infraware/service/aidl/ISNoteFileUtilCallback;)Z

    move-result v2

    .line 61
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Lcom/infraware/service/aidl/ISNoteFileUtilCallback;
    .end local v2           #_result:Z
    :sswitch_3
    const-string v4, "com.infraware.service.aidl.ISNoteFileUtil"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 72
    .local v3, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 73
    .local v1, _arg1:Ljava/util/List;
    invoke-virtual {p0, v0, v1}, Lcom/infraware/service/aidl/ISNoteFileUtil$Stub;->extractDirtyItems(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 74
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/util/List;
    .end local v2           #_result:I
    .end local v3           #cl:Ljava/lang/ClassLoader;
    :sswitch_4
    const-string v4, "com.infraware.service.aidl.ISNoteFileUtil"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 85
    .restart local v3       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 86
    .restart local v1       #_arg1:Ljava/util/List;
    invoke-virtual {p0, v0, v1}, Lcom/infraware/service/aidl/ISNoteFileUtil$Stub;->extractMediaItems(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 87
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
