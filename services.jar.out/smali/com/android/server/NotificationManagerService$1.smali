.class Lcom/android/server/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/StatusBarManagerService$NotificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearAll()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService;->cancelAll()V

    .line 487
    return-void
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/16 v5, 0x42

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    #calls: Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 498
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/16 v4, 0x10

    const/16 v5, 0x40

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    #calls: Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 492
    return-void
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 9
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "uid"
    .parameter "initialPid"
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 540
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotification error pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; will crashApplication(uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    #calls: Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    .line 543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 545
    .local v7, ident:J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad notification posted from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p4, p5, p1, v1}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    return-void

    .line 548
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPanelRevealed()V
    .locals 6

    .prologue
    .line 501
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 503
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v3, v5}, Lcom/android/server/NotificationManagerService;->access$802(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 507
    .local v0, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$400(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 508
    .local v2, player:Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_0

    .line 509
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 513
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 523
    .end local v2           #player:Landroid/media/IRingtonePlayer;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v3, v5}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 526
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/os/SystemVibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/SystemVibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 528
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 532
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 533
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v3, v5}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 534
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    .line 535
    monitor-exit v4

    .line 536
    return-void

    .line 513
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 513
    :cond_2
    throw v3

    .line 535
    .end local v0           #identity:J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 528
    .restart local v0       #identity:J
    :catchall_2
    move-exception v3

    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 511
    :catch_0
    move-exception v3

    .line 513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public onSetDisabled(I)V
    .locals 6
    .parameter "status"

    .prologue
    .line 454
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v3, p1}, Lcom/android/server/NotificationManagerService;->access$302(Lcom/android/server/NotificationManagerService;I)I

    .line 456
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)I

    move-result v3

    const/high16 v5, 0x4

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    .line 458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 460
    .local v0, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$400(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 461
    .local v2, player:Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_0

    .line 462
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 475
    .end local v2           #player:Landroid/media/IRingtonePlayer;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 477
    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/os/SystemVibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/SystemVibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 479
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    .end local v0           #identity:J
    :cond_2
    monitor-exit v4

    .line 483
    return-void

    .line 466
    .restart local v0       #identity:J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 470
    iget-object v5, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v5}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 466
    :cond_3
    throw v3

    .line 482
    .end local v0           #identity:J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 479
    .restart local v0       #identity:J
    :catchall_2
    move-exception v3

    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 464
    :catch_0
    move-exception v3

    .line 466
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$1;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method
