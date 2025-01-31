.class public Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGPSIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;
    }
.end annotation


# static fields
.field public static final GPS_CONNECTED:I = 0x0

.field public static final GPS_CONNECTING:I = 0x2

.field private static final GPS_CONNECTING_CNT:I = 0x2

.field public static final GPS_DISCONNECTED:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "TwGLGPSIndicator"


# instance fields
.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 5
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    .line 41
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020068

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 42
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020067

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 43
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020064

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 44
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020065

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method private StartGPSAnimation()V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StopGPSAnimation()V

    .line 95
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x384

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 97
    return-void
.end method

.method private StopGPSAnimation()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StopGPSAnimation()V

    .line 110
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 111
    return-void
.end method

.method public setGPS(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x4

    .line 52
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StopGPSAnimation()V

    .line 59
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 62
    :pswitch_0
    const-string v1, "TwGLGPSIndicator"

    const-string v2, "setGPS = GPS_CONNECT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 65
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 86
    .end local v0           #i:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v1, "TwGLGPSIndicator"

    const-string v2, "setGPS = GPS_DISCONNECT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x2

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 74
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 76
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 80
    .end local v0           #i:I
    :pswitch_2
    const-string v1, "TwGLGPSIndicator"

    const-string v2, "setGPS = GPS_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StartGPSAnimation()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
