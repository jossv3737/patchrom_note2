.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$700(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$402(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$800(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$800(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$400(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$600(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$900(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$500(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$700(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$102(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$1000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings$5;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;->access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 360
    :cond_1
    return-void
.end method
