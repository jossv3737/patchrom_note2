.class Lcom/android/OriginalSettings/motion/MotionTutorialSettings$1;
.super Landroid/os/Handler;
.source "MotionTutorialSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/motion/MotionTutorialSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$1;->this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$1;->this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;

    #calls: Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->access$000(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
