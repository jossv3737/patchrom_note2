.class Lcom/infraware/common/UxDocEditorBase$9;
.super Ljava/lang/Object;
.source "UxDocEditorBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/UxDocEditorBase;->showIme(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/UxDocEditorBase;


# direct methods
.method constructor <init>(Lcom/infraware/common/UxDocEditorBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/UxDocEditorBase$9;->this$0:Lcom/infraware/common/UxDocEditorBase;

    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/infraware/common/UxDocEditorBase$9;->this$0:Lcom/infraware/common/UxDocEditorBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxDocEditorBase;->showIme(Z)V

    .line 1262
    return-void
.end method
