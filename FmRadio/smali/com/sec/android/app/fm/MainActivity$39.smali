.class Lcom/sec/android/app/fm/MainActivity$39;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12852
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$39;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 12862
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$39;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$7800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 12864
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$39;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$7800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12868
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 12856
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 12854
    return-void
.end method
