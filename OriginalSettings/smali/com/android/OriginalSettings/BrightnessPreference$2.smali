.class Lcom/android/OriginalSettings/BrightnessPreference$2;
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
    .line 120
    iput-object p1, p0, Lcom/android/OriginalSettings/BrightnessPreference$2;->this$0:Lcom/android/OriginalSettings/BrightnessPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$2;->this$0:Lcom/android/OriginalSettings/BrightnessPreference;

    #calls: Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessModeChanged()V
    invoke-static {v0}, Lcom/android/OriginalSettings/BrightnessPreference;->access$200(Lcom/android/OriginalSettings/BrightnessPreference;)V

    .line 124
    return-void
.end method
