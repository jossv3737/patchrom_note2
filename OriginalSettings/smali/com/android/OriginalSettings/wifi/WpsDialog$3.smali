.class Lcom/android/OriginalSettings/wifi/WpsDialog$3;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WpsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$3;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$3;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$3;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$3;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$300(Lcom/android/OriginalSettings/wifi/WpsDialog;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$3;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$300(Lcom/android/OriginalSettings/wifi/WpsDialog;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$3;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WpsDialog;->dismiss()V

    .line 180
    return-void
.end method
