.class public Lcom/android/OriginalSettings/cloud/CloudPhotosSyncFragment;
.super Lcom/android/OriginalSettings/cloud/SyncFragment;
.source "CloudPhotosSyncFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/OriginalSettings/cloud/SyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected broadcastStatus()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, i:Landroid/content/Intent;
    const-string v1, "photoSync"

    iget-object v2, p0, Lcom/android/OriginalSettings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudPhotosSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    const-string v1, "CloudSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudPhotosSyncFragment changed -->  sending intent with Cloud Status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/cloud/SyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/cloud/CloudPhotosSyncFragment;->addPreferencesFromResource(I)V

    .line 27
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/OriginalSettings/cloud/SyncFragment;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/OriginalSettings/cloud/CloudSettings;->getInstance()Lcom/android/OriginalSettings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/OriginalSettings/cloud/CloudSettings;->isPhotoSync()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cloud/CloudPhotosSyncFragment;->updateScreen()V

    .line 38
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 40
    return-void
.end method

.method protected togglePreferences(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 64
    return-void
.end method
