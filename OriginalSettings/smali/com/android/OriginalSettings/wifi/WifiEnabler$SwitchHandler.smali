.class Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;
.super Landroid/os/Handler;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 604
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 612
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 613
    return-void

    .line 606
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1200(Lcom/android/OriginalSettings/wifi/WifiEnabler;Z)V

    goto :goto_0

    .line 609
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiEnabler$SwitchHandler;->this$0:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    const/4 v1, 0x0

    #calls: Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitchChecked(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->access$1200(Lcom/android/OriginalSettings/wifi/WifiEnabler;Z)V

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
