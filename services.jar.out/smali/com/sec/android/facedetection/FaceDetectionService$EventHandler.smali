.class Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
.super Landroid/os/Handler;
.source "FaceDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

.field final synthetic this$0:Lcom/sec/android/facedetection/FaceDetectionService;


# direct methods
.method public constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/facedetection/FaceDetectionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "f"
    .parameter "l"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    .line 122
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    iput-object p2, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const-wide/16 v9, 0xbb8

    const/4 v7, 0x3

    const/4 v3, 0x1

    .line 128
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    const-string v4, "FaceDetectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v3, v3, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 248
    return-void

    .line 138
    :pswitch_0
    :try_start_0
    const-string v4, "FaceDetectionService"

    const-string v5, "open()"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    const/4 v5, 0x1

    const/16 v6, 0xa

    iget-object v7, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;
    invoke-static {v7}, Lcom/sec/android/facedetection/FaceDetectionService;->access$100(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/HandlerThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/seccamera/SecCamera;->open(IILandroid/os/Looper;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v5

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4, v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$002(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;

    .line 140
    const-string v4, "FaceDetectionService"

    const-string v5, "open() x"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 147
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 148
    .local v0, cameraInfo:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 149
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget v5, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->orientation:I

    rsub-int v5, v5, 0x168

    rem-int/lit16 v5, v5, 0x168

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I
    invoke-static {v4, v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$202(Lcom/sec/android/facedetection/FaceDetectionService;I)I

    .line 150
    const-string v4, "FaceDetectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Faces need to be rotated counter clock-wise "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I
    invoke-static {v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$200(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " degree."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    .line 152
    .local v2, mParam:Lcom/sec/android/seccamera/SecCamera$Parameters;
    const/16 v4, 0x7530

    const/16 v5, 0x7530

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewFpsRange(II)V

    .line 153
    const-string v4, "intelligent-mode"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 154
    const-string v4, "vtmode"

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 155
    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/sec/android/seccamera/SecCamera$Size;

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v6}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x140

    const/16 v8, 0x140

    invoke-direct {v5, v6, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Size;-><init>(Lcom/sec/android/seccamera/SecCamera;II)V

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    const-string v4, "FaceDetectionService"

    const-string v5, "Front Camera Support 320, 320 preview"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v4, 0x140

    const/16 v5, 0x140

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 160
    :cond_0
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 161
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V

    .line 162
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->mOwner:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 163
    const-string v4, "FaceDetectionService"

    const-string v5, "StartPreview()"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V

    .line 165
    const-string v4, "FaceDetectionService"

    const-string v5, "StartPreview() X"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v4, "FaceDetectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage signal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .end local v0           #cameraInfo:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .end local v2           #mParam:Lcom/sec/android/seccamera/SecCamera$Parameters;
    :goto_2
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v3, v3, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto/16 :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "FaceDetectionService"

    const-string v5, "Unable to open Camera"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 175
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "FaceDetectionService"

    const-string v5, "Something goes wrong!!! Retry!"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$300(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 179
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$300(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v4

    invoke-virtual {v4, v3, v9, v10}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 170
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    const-string v4, "FaceDetectionService"

    const-string v5, "Retry! START_CAMERA!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$300(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 172
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$300(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    move-result-object v4

    const/4 v5, 0x1

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 187
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 190
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 191
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 198
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3, v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$002(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;

    .line 200
    const-string v3, "FaceDetectionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage signal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v3, v3, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto/16 :goto_0

    .line 193
    :catch_2
    move-exception v1

    .line 195
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "FaceDetectionService"

    const-string v4, "Something goes wrong!!! Ignore."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 208
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 211
    :try_start_5
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 212
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I
    invoke-static {v5}, Lcom/sec/android/facedetection/FaceDetectionService;->access$400(Lcom/sec/android/facedetection/FaceDetectionService;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/seccamera/SecCamera;->sendFaceDetectionHint(I)V

    .line 213
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v4}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v7, :cond_5

    :goto_4
    invoke-virtual {v4, v3}, Lcom/sec/android/seccamera/SecCamera;->startFaceDetectionSW_ForFaceService(Z)V

    .line 216
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v3, v3, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v4, 0x3b9aca00

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    const-string v3, "FaceDetectionService"

    const-string v4, "START_FD_XXX_EYE failed. No Callback."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 224
    :cond_3
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v3, v3, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    :goto_5
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 228
    :cond_4
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v3, v3, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto/16 :goto_0

    .line 213
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 218
    :catch_3
    move-exception v1

    .line 220
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "FaceDetectionService"

    const-string v4, "START_FD_XXX_EYE failed."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v3, v3, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    goto :goto_5

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v4, v4, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 233
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 236
    :try_start_7
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/sec/android/facedetection/FaceDetectionService;->access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->stopFaceDetection()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 244
    :cond_6
    :goto_6
    iget-object v3, p0, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    iget-object v3, v3, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto/16 :goto_0

    .line 238
    :catch_4
    move-exception v1

    .line 240
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "FaceDetectionService"

    const-string v4, "STOP_FD failed."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
