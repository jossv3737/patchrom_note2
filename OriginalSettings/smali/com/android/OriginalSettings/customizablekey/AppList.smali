.class public Lcom/android/OriginalSettings/customizablekey/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/customizablekey/AppList$AlphaComparator;,
        Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;
    }
.end annotation


# instance fields
.field private mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/customizablekey/AppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/customizablekey/AppList;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 57
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "pressed_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->pressed_type:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    .line 60
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v6, LauncherIntent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 64
    .local v5, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    const v3, 0x7f040077

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;-><init>(Lcom/android/OriginalSettings/customizablekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    .line 66
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 67
    .local v8, list_view:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 73
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v2, result_intent:Landroid/content/Intent;
    const-string v4, "CustomizableKeyAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " app selected : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v4, "CustomizableKeyAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " app title : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v4, "selected_app"

    iget-object v3, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v4, "selected_app_title"

    iget-object v3, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, app:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mAppListAdapter:Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, app_title:Ljava/lang/String;
    const-string v3, "short"

    iget-object v4, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "short_press_app"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "short_press_app_title"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/AppList;->finish()V

    .line 92
    return-void

    .line 86
    :cond_1
    const-string v3, "long"

    iget-object v4, p0, Lcom/android/OriginalSettings/customizablekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "long_press_app"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    invoke-virtual {p0}, Lcom/android/OriginalSettings/customizablekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "long_press_app_title"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
