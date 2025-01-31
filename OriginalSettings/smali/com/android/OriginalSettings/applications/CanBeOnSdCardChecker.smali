.class final Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# instance fields
.field mInstallLocation:I

.field final mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->mPm:Landroid/content/pm/IPackageManager;

    .line 93
    return-void
.end method


# virtual methods
.method check(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x2

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, canBe:Z
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 107
    const/4 v0, 0x1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 110
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eq v1, v3, :cond_2

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-nez v1, :cond_3

    .line 112
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :cond_3
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 115
    iget v1, p0, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->mInstallLocation:I

    if-ne v1, v3, :cond_0

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method

.method init()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->mInstallLocation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "CanBeOnSdCardChecker"

    const-string v2, "Is Package Manager running?"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
