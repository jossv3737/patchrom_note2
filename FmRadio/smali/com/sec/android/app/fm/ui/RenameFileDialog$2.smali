.class Lcom/sec/android/app/fm/ui/RenameFileDialog$2;
.super Ljava/lang/Object;
.source "RenameFileDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/RenameFileDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 93
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$2;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
