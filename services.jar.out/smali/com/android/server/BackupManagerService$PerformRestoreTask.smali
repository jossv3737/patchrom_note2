.class Lcom/android/server/BackupManagerService$PerformRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;
    }
.end annotation


# instance fields
.field private mAgentPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

.field private mFilterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mNeedFullBackup:Z

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestorePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedStateName:Ljava/io/File;

.field private mStartRealtime:J

.field private mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "transport"
    .parameter "observer"
    .parameter "restoreSetToken"
    .parameter "targetPackage"
    .parameter "pmToken"
    .parameter "needFullBackup"
    .parameter "filterSet"

    .prologue
    .line 4259
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4260
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->INITIAL:Lcom/android/server/BackupManagerService$RestoreState;

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    .line 4261
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFinished:Z

    .line 4262
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    .line 4264
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 4265
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 4266
    iput-wide p4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    .line 4267
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 4268
    iput p7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    .line 4269
    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    .line 4271
    if-eqz p9, :cond_0

    .line 4272
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    .line 4273
    move-object/from16 v0, p9

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 4274
    .local v3, pkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4277
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    .line 4281
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4285
    :goto_1
    return-void

    .line 4282
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method agentCleanup()V
    .locals 3

    .prologue
    .line 4737
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4738
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4739
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4740
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 4755
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4759
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 4762
    :try_start_2
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 4770
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4772
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore complete, killing host process of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4785
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4786
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4787
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4788
    monitor-exit v1

    .line 4789
    return-void

    .line 4788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 4778
    :catch_0
    move-exception v0

    goto :goto_2

    .line 4739
    :catch_1
    move-exception v0

    goto :goto_1

    .line 4738
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method agentErrorCleanup()V
    .locals 2

    .prologue
    .line 4732
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 4733
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentCleanup()V

    .line 4734
    return-void
.end method

.method beginRestore()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 4322
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 4325
    iput v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4329
    const/16 v4, 0xb0e

    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4333
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    .line 4337
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v4, v4, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-nez v4, :cond_0

    .line 4338
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 4339
    .local v2, omPackage:Landroid/content/pm/PackageInfo;
    const-string v4, "@pm@"

    iput-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4340
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4344
    .end local v2           #omPackage:Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    .line 4345
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_4

    .line 4348
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    if-eqz v4, :cond_2

    .line 4349
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 4350
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 4351
    .local v3, pkg:Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFilterSet:Ljava/util/HashSet;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4352
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4349
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4362
    .end local v1           #i:I
    .end local v3           #pkg:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4369
    :goto_1
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 4373
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4386
    :cond_3
    :goto_2
    iput v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4387
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->DOWNLOAD_DATA:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4388
    :goto_3
    return-void

    .line 4365
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 4379
    :catch_0
    move-exception v0

    .line 4381
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v5, "Error communicating with transport for restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_3

    .line 4374
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4375
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "BackupManagerService"

    const-string v5, "Restore observer died at restoreStarting"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4376
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method downloadRestoreData()V
    .locals 8

    .prologue
    const/16 v7, 0xb0f

    const/4 v6, 0x0

    .line 4399
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-wide v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mRestorePackages:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4401
    iget v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    if-eqz v1, :cond_0

    .line 4402
    const-string v1, "BackupManagerService"

    const-string v2, "Error starting restore operation"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    const/16 v1, 0xb0f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4404
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4425
    :goto_0
    return-void

    .line 4407
    :catch_0
    move-exception v0

    .line 4408
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error communicating with transport for restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4410
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4411
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0

    .line 4417
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v1, v1, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-nez v1, :cond_1

    .line 4418
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->PM_METADATA:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0

    .line 4422
    :cond_1
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 4291
    sget-object v0, Lcom/android/server/BackupManagerService$4;->$SwitchMap$com$android$server$BackupManagerService$RestoreState:[I

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$RestoreState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4316
    :goto_0
    return-void

    .line 4293
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->beginRestore()V

    goto :goto_0

    .line 4297
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->downloadRestoreData()V

    goto :goto_0

    .line 4301
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->restorePmMetadata()V

    goto :goto_0

    .line 4305
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->restoreNextAgent()V

    goto :goto_0

    .line 4309
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->finalizeRestore()V

    .line 4313
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mFinished:Z

    goto :goto_0

    .line 4311
    :cond_0
    const-string v0, "BackupManagerService"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    .locals 3
    .parameter "nextState"

    .prologue
    .line 4821
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentState:Lcom/android/server/BackupManagerService$RestoreState;

    .line 4822
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4823
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4824
    return-void
.end method

.method finalizeRestore()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x3

    .line 4610
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4618
    :goto_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v2, :cond_0

    .line 4620
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    invoke-interface {v2, v3}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4629
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    if-eqz v2, :cond_1

    .line 4630
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v3}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 4631
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    iput-wide v3, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 4632
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 4637
    :cond_1
    iget v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    if-lez v2, :cond_2

    .line 4640
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    iget v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4645
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 4646
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v6, v3, v4}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4650
    const-string v2, "BackupManagerService"

    const-string v3, "Restore complete."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4651
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4654
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v2, :cond_3

    .line 4655
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v2, v5}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;I)V

    .line 4658
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.backup.service.available"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4659
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4661
    return-void

    .line 4611
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 4612
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error finishing restore"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4614
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v2, v5}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;I)V

    goto :goto_0

    .line 4621
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4622
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v3, "Restore observer died at restoreFinished"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4641
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public handleTimeout()V
    .locals 4

    .prologue
    .line 4810
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout restoring application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "restore timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4814
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentErrorCleanup()V

    .line 4815
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4816
    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V
    .locals 9
    .parameter "app"
    .parameter "appVersionCode"
    .parameter "agent"
    .parameter "needFullBackup"

    .prologue
    const/4 v8, 0x0

    .line 4667
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4668
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4670
    .local v7, packageName:Ljava/lang/String;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateOneRestore packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 4675
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v0, :cond_0

    .line 4676
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mAdminPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mSavedStateName:Ljava/io/File;

    .line 4677
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mAdminPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    .line 4684
    :goto_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v4

    .line 4687
    .local v4, token:I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c00

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 4692
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v0, v1}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4695
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting restore data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    const/16 v0, 0xb0f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4697
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4698
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4699
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4726
    :goto_1
    return-void

    .line 4679
    .end local v4           #token:I
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mSavedStateName:Ljava/io/File;

    .line 4680
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    goto :goto_0

    .line 4704
    .restart local v4       #token:I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4705
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 4708
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewStateName:Ljava/io/File;

    const/high16 v1, 0x3c00

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 4714
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v4, v1, v2, p0}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 4715
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v0, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object v0, p3

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4716
    :catch_0
    move-exception v6

    .line 4717
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to call app for restore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4718
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v8

    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4719
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentErrorCleanup()V

    .line 4724
    sget-object v0, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_1
.end method

.method public operationComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4794
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    .line 4795
    .local v0, size:I
    const/16 v1, 0xb11

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4797
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentCleanup()V

    .line 4800
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v1, v1, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v1, :cond_0

    .line 4801
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v1, v5}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;I)V

    .line 4804
    :cond_0
    sget-object v1, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4805
    return-void
.end method

.method restoreNextAgent()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 4492
    :try_start_0
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v7

    .line 4494
    .local v7, packageName:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 4495
    const-string v8, "BackupManagerService"

    const-string v9, "Error getting next restore package"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    const/16 v8, 0xb0f

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4497
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4604
    .end local v7           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 4499
    .restart local v7       #packageName:Ljava/lang/String;
    :cond_0
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4500
    const-string v8, "BackupManagerService"

    const-string v9, "No next package, finishing restore"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStartRealtime:J

    sub-long/2addr v8, v10

    long-to-int v5, v8

    .line 4502
    .local v5, millis:I
    const/16 v8, 0xb12

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4503
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4599
    .end local v5           #millis:I
    .end local v7           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4600
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "BackupManagerService"

    const-string v9, "Unable to fetch restore data from transport"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    iput v12, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4602
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0

    .line 4507
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v7       #packageName:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_2

    .line 4509
    :try_start_2
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I

    invoke-interface {v8, v9, v7}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4517
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 4518
    .local v4, metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :try_start_3
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v8, v8, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-eqz v8, :cond_3

    .line 4519
    new-instance v8, Lcom/android/server/PackageManagerBackupAgent;

    iget-object v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    .line 4520
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    iget-object v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget v9, v9, Lcom/android/server/BackupManagerService;->mEdmRestoreAppVersionCode:I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mEdmRestoreAppSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/PackageManagerBackupAgent;->getNewMetada(I[Landroid/content/pm/Signature;)Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-result-object v4

    .line 4525
    :goto_2
    if-nez v4, :cond_4

    .line 4526
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4527
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    const-string v11, "Package metadata missing"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4529
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 4510
    .end local v4           #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :catch_1
    move-exception v1

    .line 4511
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v8, "BackupManagerService"

    const-string v9, "Restore observer died in onUpdate"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_1

    .line 4522
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v4       #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :cond_3
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v8, v7}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    goto :goto_2

    .line 4535
    :cond_4
    const/16 v2, 0x40

    .line 4536
    .local v2, flags:I
    :try_start_4
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    .line 4545
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_5
    iget v8, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    iget v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v8, v9, :cond_6

    .line 4549
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x2

    and-int/2addr v8, v9

    if-nez v8, :cond_5

    .line 4551
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > installed version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4553
    .local v3, message:Ljava/lang/String;
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4556
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 4537
    .end local v3           #message:Ljava/lang/String;
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v1

    .line 4538
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "BackupManagerService"

    const-string v9, "Invalid package restoring data"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4539
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    const-string v11, "Package missing on device"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4541
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 4559
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_5
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > installed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but restoreAnyVersion"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    :cond_6
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->signatures:[Landroid/content/pm/Signature;

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v8, v9, v6}, Lcom/android/server/BackupManagerService;->access$2100(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 4566
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature mismatch restoring "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    const-string v11, "Signature mismatch"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4569
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 4573
    :cond_7
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " restore version ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] is compatible with installed version ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 4582
    .local v0, agent:Landroid/app/IBackupAgent;
    if-nez v0, :cond_8

    .line 4583
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t find backup agent for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    const/16 v8, 0xb10

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    const-string v11, "Restore agent missing"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4586
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 4592
    :cond_8
    :try_start_6
    iget v8, v4, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    iget-boolean v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    invoke-virtual {p0, v6, v8, v0, v9}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V

    .line 4593
    iget v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mCount:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 4594
    :catch_3
    move-exception v1

    .line 4595
    .local v1, e:Ljava/lang/Exception;
    :try_start_7
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error when attempting restore: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4596
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->agentErrorCleanup()V

    .line 4597
    sget-object v8, Lcom/android/server/BackupManagerService$RestoreState;->RUNNING_QUEUE:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v8}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method restorePmMetadata()V
    .locals 12

    .prologue
    const/16 v11, 0xb0f

    const/16 v10, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4429
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v3

    .line 4430
    .local v3, packageName:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 4431
    const-string v4, "BackupManagerService"

    const-string v5, "Error getting first restore package"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4432
    const/16 v4, 0xb0f

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4433
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4434
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    .line 4488
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4436
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4437
    const-string v4, "BackupManagerService"

    const-string v5, "No restore data available"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStartRealtime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 4439
    .local v1, millis:I
    const/16 v4, 0xb12

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4440
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4441
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4477
    .end local v1           #millis:I
    .end local v3           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4478
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BackupManagerService"

    const-string v5, "Error communicating with transport for restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v11, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4480
    iput v9, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4481
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v10, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4482
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto :goto_0

    .line 4443
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "@pm@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4444
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected restore data for \"@pm@\", found only \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    const/16 v4, 0xb10

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "@pm@"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Package manager data missing"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4448
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V

    goto/16 :goto_0

    .line 4453
    :cond_3
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 4454
    .local v2, omPackage:Landroid/content/pm/PackageInfo;
    const-string v4, "@pm@"

    iput-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4455
    new-instance v4, Lcom/android/server/PackageManagerBackupAgent;

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mAgentPackages:Ljava/util/List;

    invoke-direct {v4, v5, v6}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    .line 4457
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V

    .line 4468
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmAgent:Lcom/android/server/PackageManagerBackupAgent;

    invoke-virtual {v4}, Lcom/android/server/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4469
    const-string v4, "BackupManagerService"

    const-string v5, "No restore metadata available, so not restoring settings"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    const/16 v4, 0xb10

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "@pm@"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Package manager restore metadata missing"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4472
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStatus:I

    .line 4473
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, p0}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4474
    sget-object v4, Lcom/android/server/BackupManagerService$RestoreState;->FINAL:Lcom/android/server/BackupManagerService$RestoreState;

    invoke-virtual {p0, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->executeNextState(Lcom/android/server/BackupManagerService$RestoreState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
