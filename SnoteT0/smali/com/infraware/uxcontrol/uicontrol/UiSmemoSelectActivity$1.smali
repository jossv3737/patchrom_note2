.class Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity$1;
.super Landroid/os/Handler;
.source "UiSmemoSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity;

    .line 493
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity;

    #calls: Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity;->doAction()V
    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity;->access$0(Lcom/infraware/uxcontrol/uicontrol/UiSmemoSelectActivity;)V

    .line 498
    return-void
.end method
