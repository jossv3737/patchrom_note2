.class final Landroid/webkit/WebViewInputDispatcher$UiHandler;
.super Landroid/os/Handler;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UiHandler"
.end annotation


# static fields
.field public static final MSG_CLICK:I = 0x4

.field public static final MSG_DISPATCH_UI_EVENTS:I = 0x1

.field public static final MSG_HIDE_TAP_HIGHLIGHT:I = 0x6

.field public static final MSG_LONG_PRESS:I = 0x3

.field public static final MSG_SHOW_TAP_HIGHLIGHT:I = 0x5

.field public static final MSG_WEBKIT_TIMEOUT:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewInputDispatcher;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1307
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    .line 1308
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1309
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1313
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1314
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage in UI Thread: event= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1336
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1318
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V
    invoke-static {v0, v3}, Landroid/webkit/WebViewInputDispatcher;->access$300(Landroid/webkit/WebViewInputDispatcher;Z)V

    .line 1338
    :goto_0
    return-void

    .line 1321
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V
    invoke-static {v0}, Landroid/webkit/WebViewInputDispatcher;->access$400(Landroid/webkit/WebViewInputDispatcher;)V

    goto :goto_0

    .line 1324
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->postLongPress()V
    invoke-static {v0}, Landroid/webkit/WebViewInputDispatcher;->access$500(Landroid/webkit/WebViewInputDispatcher;)V

    goto :goto_0

    .line 1327
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->postClick()V
    invoke-static {v0}, Landroid/webkit/WebViewInputDispatcher;->access$600(Landroid/webkit/WebViewInputDispatcher;)V

    goto :goto_0

    .line 1330
    :pswitch_4
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    #calls: Landroid/webkit/WebViewInputDispatcher;->postShowTapHighlight(Z)V
    invoke-static {v0, v3}, Landroid/webkit/WebViewInputDispatcher;->access$700(Landroid/webkit/WebViewInputDispatcher;Z)V

    goto :goto_0

    .line 1333
    :pswitch_5
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$UiHandler;->this$0:Landroid/webkit/WebViewInputDispatcher;

    const/4 v1, 0x0

    #calls: Landroid/webkit/WebViewInputDispatcher;->postShowTapHighlight(Z)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewInputDispatcher;->access$700(Landroid/webkit/WebViewInputDispatcher;Z)V

    goto :goto_0

    .line 1316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
