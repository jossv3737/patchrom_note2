.class Lcom/android/OriginalSettings/OwnerInfoSettings$4;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/OwnerInfoSettings;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/OriginalSettings/OwnerInfoSettings$4;->this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/OriginalSettings/OwnerInfoSettings$4;->this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;

    #getter for: Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/OwnerInfoSettings;->access$000(Lcom/android/OriginalSettings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 106
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/OriginalSettings/OwnerInfoSettings$4;->this$0:Lcom/android/OriginalSettings/OwnerInfoSettings;

    #getter for: Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/OwnerInfoSettings;->access$000(Lcom/android/OriginalSettings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 107
    return-void
.end method
