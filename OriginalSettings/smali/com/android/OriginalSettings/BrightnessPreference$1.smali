.class Lcom/android/OriginalSettings/BrightnessPreference$1;
.super Landroid/database/ContentObserver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/OriginalSettings/BrightnessPreference$1;->this$0:Lcom/android/OriginalSettings/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$1;->this$0:Lcom/android/OriginalSettings/BrightnessPreference;

    const/4 v1, -0x1

    #setter for: Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->access$002(Lcom/android/OriginalSettings/BrightnessPreference;I)I

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$1;->this$0:Lcom/android/OriginalSettings/BrightnessPreference;

    #calls: Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessChanged()V
    invoke-static {v0}, Lcom/android/OriginalSettings/BrightnessPreference;->access$100(Lcom/android/OriginalSettings/BrightnessPreference;)V

    .line 117
    return-void
.end method
