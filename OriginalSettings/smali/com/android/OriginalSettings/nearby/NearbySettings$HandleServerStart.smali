.class Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleServerStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Lcom/android/OriginalSettings/nearby/NearbySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1591
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;-><init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1594
    iget-object v3, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$000(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/IMediaServer;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 1608
    .end local p2
    :goto_0
    return v1

    .line 1598
    .restart local p2
    :cond_1
    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v1, :cond_2

    .line 1599
    iget-object v3, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$000(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/IMediaServer;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/OriginalSettings/nearby/IMediaServer;->startMediaServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1605
    goto :goto_0

    .line 1601
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$HandleServerStart;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mIMediaServer:Lcom/android/OriginalSettings/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$000(Lcom/android/OriginalSettings/nearby/NearbySettings;)Lcom/android/OriginalSettings/nearby/IMediaServer;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/OriginalSettings/nearby/IMediaServer;->stopMediaServer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
