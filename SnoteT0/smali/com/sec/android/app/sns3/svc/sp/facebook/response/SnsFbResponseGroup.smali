.class public final Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;
.super Lcom/sec/android/app/sns3/svc/sp/SnsSpResponse;
.source "SnsFbResponseGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAdministrator:Ljava/lang/String;

.field public mBookmarkOrder:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mGroupID:Ljava/lang/String;

.field public mGroupName:Ljava/lang/String;

.field public mIcon:Ljava/lang/String;

.field public mLink:Ljava/lang/String;

.field public mNext:Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;

.field public mOwnerID:Ljava/lang/String;

.field public mOwnerName:Ljava/lang/String;

.field public mPrivacy:Ljava/lang/String;

.field public mUpdatedTime:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup$1;

    invoke-direct {v0}, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/sns3/svc/sp/SnsSpResponse;-><init>()V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/sns3/svc/sp/SnsSpResponse;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->readFromParcel(Landroid/os/Parcel;)V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mGroupID:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mVersion:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mIcon:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mGroupName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mOwnerID:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mOwnerName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mDescription:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mAdministrator:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mBookmarkOrder:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mLink:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mPrivacy:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mUpdatedTime:Ljava/lang/String;

    .line 112
    const-class v0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;

    iput-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mNext:Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;

    .line 113
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mGroupID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mOwnerID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mOwnerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mAdministrator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mBookmarkOrder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mPrivacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mUpdatedTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;->mNext:Lcom/sec/android/app/sns3/svc/sp/facebook/response/SnsFbResponseGroup;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    return-void
.end method
