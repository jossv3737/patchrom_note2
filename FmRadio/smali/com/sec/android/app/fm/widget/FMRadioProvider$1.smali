.class Lcom/sec/android/app/fm/widget/FMRadioProvider$1;
.super Lcom/samsung/media/fmradio/FMEventListener;
.source "FMRadioProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/widget/FMRadioProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/widget/FMRadioProvider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/widget/FMRadioProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider$1;->this$0:Lcom/sec/android/app/fm/widget/FMRadioProvider;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public earPhoneConnected()V
    .locals 0

    .prologue
    .line 420
    invoke-super {p0}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneConnected()V

    .line 421
    return-void
.end method

.method public earPhoneDisconnected()V
    .locals 0

    .prologue
    .line 426
    invoke-super {p0}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneDisconnected()V

    .line 427
    return-void
.end method

.method public onAFReceived(J)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 432
    invoke-super {p0, p1, p2}, Lcom/samsung/media/fmradio/FMEventListener;->onAFReceived(J)V

    .line 433
    return-void
.end method

.method public onAFStarted()V
    .locals 0

    .prologue
    .line 438
    invoke-super {p0}, Lcom/samsung/media/fmradio/FMEventListener;->onAFStarted()V

    .line 439
    return-void
.end method

.method public onChannelFound(J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 444
    invoke-super {p0, p1, p2}, Lcom/samsung/media/fmradio/FMEventListener;->onChannelFound(J)V

    .line 445
    return-void
.end method

.method public onOff(I)V
    .locals 1
    .parameter "reasonCode"

    .prologue
    .line 450
    invoke-super {p0, p1}, Lcom/samsung/media/fmradio/FMEventListener;->onOff(I)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider$1;->this$0:Lcom/sec/android/app/fm/widget/FMRadioProvider;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->refreshWidget()V

    .line 452
    return-void
.end method

.method public onOn()V
    .locals 6

    .prologue
    .line 456
    invoke-super {p0}, Lcom/samsung/media/fmradio/FMEventListener;->onOn()V

    .line 459
    invoke-static {}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "test"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 460
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "test"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 463
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider$1;->this$0:Lcom/sec/android/app/fm/widget/FMRadioProvider;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->refreshWidget()V

    .line 475
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 468
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public onRDSDisabled()V
    .locals 0

    .prologue
    .line 480
    invoke-super {p0}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSDisabled()V

    .line 481
    return-void
.end method

.method public onRDSEnabled()V
    .locals 0

    .prologue
    .line 486
    invoke-super {p0}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSEnabled()V

    .line 487
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    .line 493
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public onScanFinished([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 499
    invoke-super {p0, p1}, Lcom/samsung/media/fmradio/FMEventListener;->onScanFinished([J)V

    .line 500
    return-void
.end method

.method public onScanStarted()V
    .locals 0

    .prologue
    .line 505
    invoke-super {p0}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStarted()V

    .line 506
    return-void
.end method

.method public onScanStopped([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 511
    invoke-super {p0, p1}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStopped([J)V

    .line 512
    return-void
.end method

.method public onTune(J)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 517
    invoke-super {p0, p1, p2}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/fm/widget/FMRadioProvider$1;->this$0:Lcom/sec/android/app/fm/widget/FMRadioProvider;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/widget/FMRadioProvider;->refreshWidget()V

    .line 519
    return-void
.end method
