.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$1;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 138
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V
    invoke-static {v1, v3}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->access$100(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;I)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;

    #getter for: Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/OriginalSettings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0902fb

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 142
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
