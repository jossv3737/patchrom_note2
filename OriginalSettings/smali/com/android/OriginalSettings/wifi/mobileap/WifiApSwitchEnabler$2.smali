.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$2;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler$2;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;->access$300(Lcom/android/OriginalSettings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 356
    return-void
.end method
