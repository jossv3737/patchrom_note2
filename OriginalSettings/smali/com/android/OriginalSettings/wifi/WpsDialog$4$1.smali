.class Lcom/android/OriginalSettings/wifi/WpsDialog$4$1;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WpsDialog$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/OriginalSettings/wifi/WpsDialog$4;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WpsDialog$4;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$4$1;->this$1:Lcom/android/OriginalSettings/wifi/WpsDialog$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WpsDialog$4$1;->this$1:Lcom/android/OriginalSettings/wifi/WpsDialog$4;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WpsDialog$4;->this$0:Lcom/android/OriginalSettings/wifi/WpsDialog;

    #getter for: Lcom/android/OriginalSettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WpsDialog;->access$400(Lcom/android/OriginalSettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 205
    return-void
.end method
