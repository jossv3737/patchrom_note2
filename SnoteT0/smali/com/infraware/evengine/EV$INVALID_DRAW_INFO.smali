.class public Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "INVALID_DRAW_INFO"
.end annotation


# instance fields
.field public bInvalidFlag:I

.field public nBottom:I

.field public nLeft:I

.field public nRight:I

.field public nTop:I

.field final synthetic this$0:Lcom/infraware/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/evengine/EV;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;->this$0:Lcom/infraware/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;->bInvalidFlag:I

    iput v0, p0, Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;->nBottom:I

    iput v0, p0, Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;->nTop:I

    iput v0, p0, Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;->nRight:I

    iput v0, p0, Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;->nLeft:I

    .line 638
    return-void
.end method
