.class Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    iput-object p3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/OriginalSettings/bluetooth/SapProfile;

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "DeviceProfilesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling disconnectImmediate of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->disconnectImmediate(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 390
    return-void

    .line 386
    :cond_0
    const-string v0, "DeviceProfilesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling disconnect of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method
