.class Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;
.super Landroid/os/Handler;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    #setter for: Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z
    invoke-static {v0, v3}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$102(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;Z)Z

    .line 92
    invoke-static {}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    #getter for: Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$300(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    #calls: Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->removeBTPreference()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$400(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    .line 95
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    #getter for: Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$500(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->setProgress(Z)V

    .line 96
    const/16 v0, 0x1e1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    #calls: Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->addBTPreference()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$600(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    .line 101
    const/16 v0, 0x1e2

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    #getter for: Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$500(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->setProgress(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    #setter for: Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z
    invoke-static {v0, v4}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$102(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;Z)Z

    .line 108
    invoke-static {}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    #getter for: Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->access$300(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1e0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
