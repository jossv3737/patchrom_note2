.class final Landroid/hardware/scontext/SContextService$EventPool;
.super Ljava/lang/Object;
.source "SContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventPool"
.end annotation


# static fields
.field static final POOL_SIZE:I = 0xa


# instance fields
.field events:[Landroid/hardware/scontext/SContextEvent;

.field mLockEventPool:Ljava/lang/Object;

.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method public constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 520
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$EventPool;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/SContextService$EventPool;->mLockEventPool:Ljava/lang/Object;

    .line 522
    new-array v1, v3, [Landroid/hardware/scontext/SContextEvent;

    iput-object v1, p0, Landroid/hardware/scontext/SContextService$EventPool;->events:[Landroid/hardware/scontext/SContextEvent;

    .line 524
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 525
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$EventPool;->events:[Landroid/hardware/scontext/SContextEvent;

    new-instance v2, Landroid/hardware/scontext/SContextEvent;

    invoke-direct {v2}, Landroid/hardware/scontext/SContextEvent;-><init>()V

    aput-object v2, v1, v0

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method


# virtual methods
.method public obtain()Landroid/hardware/scontext/SContextEvent;
    .locals 5

    .prologue
    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, scontextEvent:Landroid/hardware/scontext/SContextEvent;
    iget-object v3, p0, Landroid/hardware/scontext/SContextService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v3

    .line 532
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 533
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$EventPool;->events:[Landroid/hardware/scontext/SContextEvent;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 534
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$EventPool;->events:[Landroid/hardware/scontext/SContextEvent;

    aget-object v1, v2, v0

    .line 535
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$EventPool;->events:[Landroid/hardware/scontext/SContextEvent;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 539
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    if-nez v1, :cond_1

    .line 541
    new-instance v1, Landroid/hardware/scontext/SContextEvent;

    .end local v1           #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    invoke-direct {v1}, Landroid/hardware/scontext/SContextEvent;-><init>()V

    .line 543
    .restart local v1       #scontextEvent:Landroid/hardware/scontext/SContextEvent;
    :cond_1
    return-object v1

    .line 532
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public recycle(Landroid/hardware/scontext/SContextEvent;)V
    .locals 3
    .parameter "scontextEvent"

    .prologue
    .line 547
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$EventPool;->mLockEventPool:Ljava/lang/Object;

    monitor-enter v2

    .line 548
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 549
    :try_start_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$EventPool;->events:[Landroid/hardware/scontext/SContextEvent;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 550
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$EventPool;->events:[Landroid/hardware/scontext/SContextEvent;

    aput-object p1, v1, v0

    .line 554
    :cond_0
    monitor-exit v2

    .line 555
    return-void

    .line 548
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
