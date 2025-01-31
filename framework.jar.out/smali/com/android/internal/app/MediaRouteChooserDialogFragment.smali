.class public Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$1;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$VolumeSliderChangeListener;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteChooserDialog;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "android:MediaRouteChooserDialogFragment"

.field private static final ITEM_LAYOUTS:[I = null

.field private static final TAG:Ljava/lang/String; = "MediaRouteChooserDialogFragment"


# instance fields
.field private mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

.field final mCallback:Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

.field final mComparator:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;

.field private mExtendedSettingsListener:Landroid/view/View$OnClickListener;

.field private mIgnoreCallbackVolumeChanges:Z

.field private mIgnoreSliderVolumeChanges:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;

.field private mListView:Landroid/widget/ListView;

.field private mRouteTypes:I

.field mRouter:Landroid/media/MediaRouter;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumeSlider:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->ITEM_LAYOUTS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x9t 0x1t
        0x9et 0x0t 0x9t 0x1t
        0x9bt 0x0t 0x9t 0x1t
        0x9ct 0x0t 0x9t 0x1t
        0x9dt 0x0t 0x9t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mComparator:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;

    .line 84
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    .line 89
    const/4 v0, 0x1

    const v1, 0x103012e

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setStyle(II)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->ITEM_LAYOUTS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreCallbackVolumeChanges:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/app/MediaRouteChooserDialogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreCallbackVolumeChanges:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method changeVolume(I)V
    .locals 4
    .parameter "newValue"

    .prologue
    .line 149
    iget-boolean v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreSliderVolumeChanges:Z

    if-eqz v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 152
    .local v1, selectedRoute:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 153
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    .line 154
    .local v0, maxVolume:I
    const/4 v2, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 155
    invoke-virtual {v1, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    .line 100
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 191
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteChooserDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteChooserDialog;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 162
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 163
    const v3, 0x109009a

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, layout:Landroid/view/View;
    const v3, 0x102039a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeIcon:Landroid/widget/ImageView;

    .line 166
    const v3, 0x102039b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->updateVolume()V

    .line 168
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/internal/app/MediaRouteChooserDialogFragment$VolumeSliderChangeListener;

    invoke-direct {v4, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$VolumeSliderChangeListener;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 171
    const v3, 0x102039c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, extendedSettingsButton:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .end local v0           #extendedSettingsButton:Landroid/view/View;
    :cond_0
    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 177
    .local v2, list:Landroid/widget/ListView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 178
    new-instance v3, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-direct {v3, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    iput-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    iput-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;

    .line 182
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget v4, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 184
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->scrollToSelectedItem()V

    .line 186
    return-object v1
.end method

.method public onDetach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 105
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mLauncherListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mLauncherListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;

    invoke-interface {v0, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;->onDetached(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    if-eqz v0, :cond_1

    .line 109
    iput-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    .line 111
    :cond_1
    iput-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 113
    iput-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 197
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    .line 118
    return-void
.end method

.method public setLauncherListener(Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mLauncherListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;

    .line 94
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 0
    .parameter "types"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    .line 122
    return-void
.end method

.method updateVolume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 125
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    if-nez v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 128
    .local v0, selectedRoute:Landroid/media/MediaRouter$RouteInfo;
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x10802dc

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreSliderVolumeChanges:Z

    .line 134
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    if-nez v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 138
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 145
    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreSliderVolumeChanges:Z

    goto :goto_0

    .line 128
    :cond_1
    const v1, 0x108035f

    goto :goto_1

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 142
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2
.end method
