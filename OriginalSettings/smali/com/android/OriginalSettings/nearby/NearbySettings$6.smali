.class Lcom/android/OriginalSettings/nearby/NearbySettings$6;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/nearby/NearbySettings;->requestDBUpdatedPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$6;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 771
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: DB AlertDialog Select : Canceled"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$6;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #setter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static {v0, v3}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1002(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z

    .line 773
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$6;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$400(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AutoDMS"

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$6;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static {v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1000(Lcom/android/OriginalSettings/nearby/NearbySettings;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 775
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$6;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$6;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #setter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->bDBCanceled:Z
    invoke-static {v0, v4}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$1102(Lcom/android/OriginalSettings/nearby/NearbySettings;Z)Z

    .line 777
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$6;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$6;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 778
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$6;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$300(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 779
    return-void
.end method
