.class Lcom/android/OriginalSettings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, action:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/IccLockSettings;->finish()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, SIMstate:Ljava/lang/String;
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(), SIMstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(), mPhone.getIccCard().getIccLockEnabled() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #getter for: Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/OriginalSettings/IccLockSettings;->access$400(Lcom/android/OriginalSettings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v2, "LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    const-string v2, "IccLockSettings"

    const-string v3, "onReceive(), SIMstate : LOCKED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #getter for: Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$500(Lcom/android/OriginalSettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #getter for: Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/OriginalSettings/IccLockSettings;->access$400(Lcom/android/OriginalSettings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #getter for: Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$600(Lcom/android/OriginalSettings/IccLockSettings;)Lcom/android/OriginalSettings/EditPinPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #getter for: Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/OriginalSettings/IccLockSettings;->access$500(Lcom/android/OriginalSettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 192
    :cond_2
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #getter for: Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$700(Lcom/android/OriginalSettings/IccLockSettings;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #calls: Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$800(Lcom/android/OriginalSettings/IccLockSettings;)V

    goto/16 :goto_0

    .line 197
    :cond_3
    const-string v2, "IccLockSettings"

    const-string v3, "onReceive(), resetDialogState()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$2;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #calls: Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$900(Lcom/android/OriginalSettings/IccLockSettings;)V

    goto/16 :goto_0
.end method
