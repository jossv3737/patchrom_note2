.class Lcom/android/server/PowerManagerService$DVFSLockList;
.super Ljava/util/ArrayList;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVFSLockList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/PowerManagerService$DVFSLock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4989
    iput-object p1, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4989
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method addLock(Lcom/android/server/PowerManagerService$DVFSLock;)V
    .locals 2
    .parameter "wl"

    .prologue
    .line 4993
    iget-object v1, p1, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 4994
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4995
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;->add(Ljava/lang/Object;)Z

    .line 4997
    :cond_0
    return-void
.end method

.method dumpDVFSLockList()V
    .locals 10

    .prologue
    .line 5105
    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;

    move-result-object v3

    monitor-enter v3

    .line 5106
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 5107
    .local v0, N:I
    if-nez v0, :cond_0

    .line 5108
    monitor-exit v3

    .line 5133
    :goto_0
    return-void

    .line 5111
    :cond_0
    const-string v2, "PowerManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MAX_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 5113
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 5114
    const-string v4, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5118
    :cond_2
    const-string v2, "PowerManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MIN_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 5120
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 5121
    const-string v4, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5126
    :cond_4
    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$10800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5127
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMaxLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$10800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    :cond_5
    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$10900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 5130
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMinLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$10900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :cond_6
    monitor-exit v3

    goto/16 :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getIndex(Landroid/os/IBinder;)I
    .locals 3
    .parameter "binder"

    .prologue
    .line 5011
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 5012
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5013
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 5017
    .end local v1           #i:I
    :goto_1
    return v1

    .line 5012
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5017
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method getMaxOfMinLock()Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 8

    .prologue
    .line 5021
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 5022
    .local v0, N:I
    const/4 v3, -0x1

    .line 5023
    .local v3, indexMaxFrequency:I
    const/4 v4, -0x1

    .line 5027
    .local v4, maxFrequency:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5028
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 5029
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    .line 5033
    .local v1, frequency:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 5034
    move v4, v1

    .line 5035
    move v3, v2

    .line 5027
    .end local v1           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5038
    .restart local v1       #frequency:I
    :cond_1
    if-le v1, v4, :cond_0

    .line 5039
    move v4, v1

    .line 5040
    move v3, v2

    goto :goto_1

    .line 5046
    .end local v1           #frequency:I
    :cond_2
    if-ltz v3, :cond_3

    .line 5047
    invoke-virtual {p0, v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 5059
    .local v5, maxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :goto_2
    return-object v5

    .line 5053
    .end local v5           #maxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #maxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    goto :goto_2
.end method

.method getMinOfMaxLock()Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 8

    .prologue
    .line 5063
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 5064
    .local v0, N:I
    const/4 v3, -0x1

    .line 5065
    .local v3, indexMinFrequency:I
    const/4 v4, -0x1

    .line 5069
    .local v4, minFrequency:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5070
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 5071
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    .line 5075
    .local v1, frequency:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 5076
    move v4, v1

    .line 5077
    move v3, v2

    .line 5069
    .end local v1           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5080
    .restart local v1       #frequency:I
    :cond_1
    if-ge v1, v4, :cond_0

    .line 5081
    move v4, v1

    .line 5082
    move v3, v2

    goto :goto_1

    .line 5088
    .end local v1           #frequency:I
    :cond_2
    if-ltz v3, :cond_3

    .line 5089
    invoke-virtual {p0, v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 5101
    .local v5, minOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :goto_2
    return-object v5

    .line 5095
    .end local v5           #minOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #minOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    goto :goto_2
.end method

.method removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 2
    .parameter "binder"

    .prologue
    .line 5001
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 5002
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 5003
    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService$DVFSLockList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 5005
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
