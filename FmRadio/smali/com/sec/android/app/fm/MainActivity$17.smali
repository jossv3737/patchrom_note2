.class Lcom/sec/android/app/fm/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 7078
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$17;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 7082
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 7084
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$17;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->startAllChannelActivity()V
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$3100(Lcom/sec/android/app/fm/MainActivity;)V

    .line 7086
    return-void
.end method
