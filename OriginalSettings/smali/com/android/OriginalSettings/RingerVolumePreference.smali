.class public Lcom/android/OriginalSettings/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mOpenRingerVolumeDialog:Z

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mVolume:Lcom/android/OriginalSettings/SoundSettings;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 108
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 126
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 90
    nop

    :array_0
    .array-data 0x4
        0xd7t 0x1t 0xbt 0x7ft
        0xdbt 0x1t 0xbt 0x7ft
        0xdft 0x1t 0xbt 0x7ft
        0xe3t 0x1t 0xbt 0x7ft
        0xe5t 0x1t 0xbt 0x7ft
        0xe8t 0x1t 0xbt 0x7ft
    .end array-data

    .line 99
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 108
    :array_2
    .array-data 0x4
        0xd6t 0x1t 0xbt 0x7ft
        0xdat 0x1t 0xbt 0x7ft
        0xdet 0x1t 0xbt 0x7ft
        0xe2t 0x1t 0xbt 0x7ft
        0xe4t 0x1t 0xbt 0x7ft
        0xe7t 0x1t 0xbt 0x7ft
    .end array-data

    .line 117
    :array_3
    .array-data 0x4
        0xdet 0x2t 0x8t 0x1t
        0xd7t 0x2t 0x8t 0x1t
        0xd3t 0x2t 0x8t 0x1t
        0xcft 0x2t 0x8t 0x1t
        0xdat 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
    .end array-data

    .line 126
    :array_4
    .array-data 0x4
        0xdct 0x2t 0x8t 0x1t
        0xd6t 0x2t 0x8t 0x1t
        0xd2t 0x2t 0x8t 0x1t
        0xcet 0x2t 0x8t 0x1t
        0xd9t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-boolean v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mOpenRingerVolumeDialog:Z

    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->isWidget:Ljava/lang/Boolean;

    .line 160
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 161
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 163
    new-instance v0, Lcom/android/OriginalSettings/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RingerVolumePreference$1;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 473
    new-instance v0, Lcom/android/OriginalSettings/RingerVolumePreference$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RingerVolumePreference$3;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setStreamType(I)V

    .line 214
    const v0, 0x7f0400a7

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 217
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 219
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/RingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/RingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 396
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 397
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 399
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 404
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 396
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    iput-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 411
    :cond_3
    return-void
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 317
    .local v2, mPm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 319
    .local v1, info_1:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 325
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    .line 320
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RingerVolumePreference"

    const-string v4, "Package name is not found"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 177
    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 178
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 180
    .local v1, muted:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 181
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 183
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x10802d8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 191
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 192
    .local v3, volume:I
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 193
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v2, v4, :cond_4

    if-eqz v1, :cond_4

    .line 194
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 176
    .end local v3           #volume:I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 196
    .restart local v3       #volume:I
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 200
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    .end local v3           #volume:I
    :cond_5
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 171
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setPositiveButtonText(I)V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public directVolume()V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Landroid/preference/VolumePreference;->onClick()V

    .line 462
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->isWidget:Ljava/lang/Boolean;

    .line 463
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 367
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 370
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 369
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 17
    .parameter "view"

    .prologue
    .line 231
    invoke-super/range {p0 .. p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 234
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v13, intentFilterVolume:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    sget-object v1, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 242
    sget-object v1, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v1, v1, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 243
    .local v4, seekBar:Landroid/widget/SeekBar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v4, v1, v11

    .line 244
    sget-object v1, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v1, v1, v11

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-object/from16 v16, v0

    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/OriginalSettings/RingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v1, v16, v11

    .line 241
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v2, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v11

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v2, v1, v11

    goto :goto_1

    .line 254
    .end local v4           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v11, v1, :cond_2

    .line 255
    sget-object v1, Lcom/android/OriginalSettings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v1, v1, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 256
    .local v7, checkbox:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v7, v1, v11

    .line 254
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 260
    .end local v7           #checkbox:Landroid/widget/ImageView;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 264
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 265
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    new-instance v1, Lcom/android/OriginalSettings/RingerVolumePreference$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/OriginalSettings/RingerVolumePreference$2;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    .end local v8           #filter:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 281
    const v12, 0x7f0b01d8

    .line 285
    .local v12, id:I
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 286
    .local v10, hideSection:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 287
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_4
    const-string v14, "com.sec.android.app.clockpackage"

    .line 291
    .local v14, mSamsungClockPackageName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 292
    .local v15, packag_label:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/OriginalSettings/RingerVolumePreference;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 294
    .local v9, forceRemoveAlarm:Ljava/lang/Boolean;
    if-nez v15, :cond_5

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 295
    :cond_5
    const v12, 0x7f0b01e0

    .line 296
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 297
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    const v12, 0x7f0b01e1

    .line 300
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 301
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_6
    const-string v1, "SKT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 304
    const v12, 0x7f0b01e6

    .line 305
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 306
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Settings_WaitToneVolumeDisable"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 309
    const v12, 0x7f0b01e6

    .line 310
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 311
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_8
    return-void

    .line 283
    .end local v9           #forceRemoveAlarm:Ljava/lang/Boolean;
    .end local v10           #hideSection:Landroid/view/View;
    .end local v12           #id:I
    .end local v14           #mSamsungClockPackageName:Ljava/lang/String;
    .end local v15           #packag_label:Ljava/lang/String;
    :cond_9
    const v12, 0x7f0b01dc

    .restart local v12       #id:I
    goto/16 :goto_3
.end method

.method protected onDialogClosed(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/4 v7, 0x0

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    if-nez p1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 346
    .local v4, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v4, :cond_0

    .line 347
    invoke-virtual {v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 348
    invoke-virtual {v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 345
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 339
    .end local v0           #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :catch_0
    move-exception v1

    .line 340
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "RingerVolumePreference"

    const-string v6, "onDialogClosed : mVolumeChangeReceiver is not registered."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 354
    invoke-direct {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->cleanup()V

    .line 355
    iput-boolean v7, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mOpenRingerVolumeDialog:Z

    .line 358
    iget-object v5, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 359
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->isWidget:Ljava/lang/Boolean;

    .line 360
    iget-object v5, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mVolume:Lcom/android/OriginalSettings/SoundSettings;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/SoundSettings;->finish()V

    .line 363
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 377
    .local v0, isdown:Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 383
    :sswitch_0
    return v1

    .end local v0           #isdown:Z
    :cond_0
    move v0, v2

    .line 376
    goto :goto_0

    .line 377
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 225
    const/high16 v0, 0x104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 227
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 442
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 457
    :cond_1
    return-void

    .line 448
    :cond_2
    check-cast p1, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    .line 449
    invoke-virtual {p1}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 450
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 451
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 453
    if-eqz v2, :cond_3

    .line 454
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 451
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 390
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 391
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 390
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 423
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 424
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 429
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 430
    .local v1, myState:Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 431
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 432
    iget-object v5, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 433
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 434
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 437
    goto :goto_0
.end method

.method public setObject(Lcom/android/OriginalSettings/SoundSettings;)V
    .locals 0
    .parameter "soundSettings"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mVolume:Lcom/android/OriginalSettings/SoundSettings;

    .line 467
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mOpenRingerVolumeDialog:Z

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mOpenRingerVolumeDialog:Z

    .line 417
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->showDialog(Landroid/os/Bundle;)V

    .line 419
    :cond_0
    return-void
.end method
