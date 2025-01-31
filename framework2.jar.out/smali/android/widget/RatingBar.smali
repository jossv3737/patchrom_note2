.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private mNumStars:I

.field private mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private mProgressOnStartTracking:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    const v0, 0x101007c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    const/high16 v8, -0x4080

    const/4 v4, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 91
    sget-object v6, Lcom/android/internal/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v6, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, a:Landroid/content/res/TypedArray;
    iget v6, p0, Landroid/widget/RatingBar;->mNumStars:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 94
    .local v1, numStars:I
    const/4 v6, 0x3

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-nez v7, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 95
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 96
    .local v2, rating:F
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 97
    .local v3, stepSize:F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    if-lez v1, :cond_1

    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-eq v1, v4, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 103
    :cond_1
    cmpl-float v4, v3, v9

    if-ltz v4, :cond_3

    .line 104
    invoke-virtual {p0, v3}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 109
    :goto_0
    cmpl-float v4, v2, v9

    if-ltz v4, :cond_2

    .line 110
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 115
    :cond_2
    const v4, 0x3f8ccccd

    iput v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 116
    return-void

    .line 106
    :cond_3
    const/high16 v4, 0x3f00

    invoke-virtual {p0, v4}, Landroid/widget/RatingBar;->setStepSize(F)V

    goto :goto_0
.end method

.method private getProgressPerStar()F
    .locals 2

    .prologue
    const/high16 v0, 0x3f80

    .line 239
    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-lez v1, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 242
    :cond_0
    return v0
.end method

.method private updateSecondaryProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    .line 274
    .local v1, ratio:F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 275
    int-to-float v3, p1

    div-float v0, v3, v1

    .line 276
    .local v0, progressInStars:F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    float-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .line 277
    .local v2, secondaryProgress:I
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    .line 279
    .end local v0           #progressInStars:F
    .end local v2           #secondaryProgress:I
    :cond_0
    return-void
.end method


# virtual methods
.method dispatchRatingChange(Z)V
    .locals 2
    .parameter "fromUser"

    .prologue
    .line 317
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 321
    :cond_0
    return-void
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object v0
.end method

.method public getNumStars()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    return v0
.end method

.method public getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-object v0
.end method

.method public getRating()F
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getStepSize()F
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isIndicator()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 335
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 336
    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 342
    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method onKeyChange()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 314
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 285
    iget-object v1, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    mul-int v0, v1, v2

    .line 289
    .local v0, width:I
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/RatingBar;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .end local v0           #width:I
    :cond_0
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method onProgressRefresh(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 254
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 257
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/RatingBar;->updateSecondaryProgress(I)V

    .line 259
    if-nez p2, :cond_0

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 263
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    .line 298
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 299
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 305
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    if-eq v0, v1, :cond_0

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method public setIsIndicator(Z)V
    .locals 3
    .parameter "isIndicator"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 153
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setFocusable(Z)V

    .line 154
    return-void

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0

    :cond_1
    move v1, v2

    .line 153
    goto :goto_1
.end method

.method public declared-synchronized setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 326
    monitor-enter p0

    if-gtz p1, :cond_0

    .line 331
    :goto_0
    monitor-exit p0

    return-void

    .line 330
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNumStars(I)V
    .locals 0
    .parameter "numStars"

    .prologue
    .line 173
    if-gtz p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    iput p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 180
    invoke-virtual {p0}, Landroid/widget/RatingBar;->requestLayout()V

    goto :goto_0
.end method

.method public setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 132
    iput-object p1, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 133
    return-void
.end method

.method public setRating(F)V
    .locals 1
    .parameter "rating"

    .prologue
    .line 197
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 198
    return-void
.end method

.method public setStepSize(F)V
    .locals 4
    .parameter "stepSize"

    .prologue
    .line 216
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    iget v2, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v2, v2

    div-float v0, v2, p1

    .line 221
    .local v0, newMax:F
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 222
    .local v1, newProgress:I
    float-to-int v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    .line 223
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    goto :goto_0
.end method
