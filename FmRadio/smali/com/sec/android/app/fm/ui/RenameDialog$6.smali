.class Lcom/sec/android/app/fm/ui/RenameDialog$6;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/RenameDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/RenameDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$100(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$200(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$100(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 218
    :cond_0
    return-void
.end method
