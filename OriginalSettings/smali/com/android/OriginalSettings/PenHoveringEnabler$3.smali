.class Lcom/android/OriginalSettings/PenHoveringEnabler$3;
.super Ljava/lang/Object;
.source "PenHoveringEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/PenHoveringEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/PenHoveringEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/PenHoveringEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/OriginalSettings/PenHoveringEnabler$3;->this$0:Lcom/android/OriginalSettings/PenHoveringEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 201
    iget-object v1, p0, Lcom/android/OriginalSettings/PenHoveringEnabler$3;->this$0:Lcom/android/OriginalSettings/PenHoveringEnabler;

    #getter for: Lcom/android/OriginalSettings/PenHoveringEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/PenHoveringEnabler;->access$100(Lcom/android/OriginalSettings/PenHoveringEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/PenHoveringEnabler;->removeEnabledScreenReaderValue(Landroid/content/Context;)V

    .line 202
    iget-object v1, p0, Lcom/android/OriginalSettings/PenHoveringEnabler$3;->this$0:Lcom/android/OriginalSettings/PenHoveringEnabler;

    #getter for: Lcom/android/OriginalSettings/PenHoveringEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/PenHoveringEnabler;->access$100(Lcom/android/OriginalSettings/PenHoveringEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 203
    .local v0, state:I
    iget-object v1, p0, Lcom/android/OriginalSettings/PenHoveringEnabler$3;->this$0:Lcom/android/OriginalSettings/PenHoveringEnabler;

    #getter for: Lcom/android/OriginalSettings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/OriginalSettings/PenHoveringEnabler;->access$000(Lcom/android/OriginalSettings/PenHoveringEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/OriginalSettings/PenHoveringEnabler$3;->this$0:Lcom/android/OriginalSettings/PenHoveringEnabler;

    #getter for: Lcom/android/OriginalSettings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/OriginalSettings/PenHoveringEnabler;->access$000(Lcom/android/OriginalSettings/PenHoveringEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/OriginalSettings/PenHoveringEnabler$3;->this$0:Lcom/android/OriginalSettings/PenHoveringEnabler;

    #getter for: Lcom/android/OriginalSettings/PenHoveringEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/OriginalSettings/PenHoveringEnabler;->access$100(Lcom/android/OriginalSettings/PenHoveringEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    const-string v1, "PenHoveringEnabler"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method
