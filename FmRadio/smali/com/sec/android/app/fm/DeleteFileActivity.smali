.class public Lcom/sec/android/app/fm/DeleteFileActivity;
.super Lcom/sec/android/app/fm/RecordedFileListActivity;
.source "DeleteFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/DeleteFileActivity$DeleteFileThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckBoxSelectAll:Landroid/widget/CheckBox;

.field private mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDialogDeleteConfirm:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressThreadHandler:Landroid/os/Handler;

.field private mSelectAll:Landroid/view/View;

.field private mSelectedItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/sec/android/app/fm/DeleteFileActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/DeleteFileActivity$1;-><init>(Lcom/sec/android/app/fm/DeleteFileActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressThreadHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/sec/android/app/fm/DeleteFileActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/DeleteFileActivity$2;-><init>(Lcom/sec/android/app/fm/DeleteFileActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/DeleteFileActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mCheckBoxSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/DeleteFileActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->refreshLayout()V

    return-void
.end method

.method private initSelectAllView()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "initSelectAllView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectAll:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectAll:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mCheckBoxSelectAll:Landroid/widget/CheckBox;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectAll:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/fm/DeleteFileActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/DeleteFileActivity$3;-><init>(Lcom/sec/android/app/fm/DeleteFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    return-void
.end method

.method private refreshLayout()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 399
    sget-object v1, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    const-string v2, "refreshLayout() "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectAll:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mCheckBoxSelectAll:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->invalidateOptionsMenu()V

    .line 409
    return-void

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectAll:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected CheckboxReFresh()V
    .locals 8

    .prologue
    .line 458
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 459
    .local v3, refreshCheckItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 460
    .local v0, cursor:Landroid/database/Cursor;
    const-wide/16 v1, -0x1

    .line 461
    .local v1, id:J
    const/4 v5, 0x0

    .line 462
    .local v5, tag:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 463
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 464
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 465
    const-string v6, "_data"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 466
    iget-object v6, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 467
    .local v4, selected_data:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 468
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 475
    .end local v4           #selected_data:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 476
    iget-object v6, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 477
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 478
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-super {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->invalidateOptionsMenu()V

    .line 385
    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 386
    .local v0, selectalltext:Landroid/widget/TextView;
    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a00b4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/DeleteFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mDialogDeleteConfirm:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mDialogDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/DeleteFileActivity;->removeDialog(I)V

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mDialogDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 391
    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/DeleteFileActivity;->showDialog(I)V

    .line 394
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    invoke-super {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    sget-object v0, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->initSelectAllView()V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/DeleteFileActivity$4;

    iget-object v2, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/fm/DeleteFileActivity$4;-><init>(Lcom/sec/android/app/fm/DeleteFileActivity;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 236
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a00b4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 246
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 252
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 258
    sget-object v0, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreateDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    packed-switch p1, :pswitch_data_0

    .line 283
    invoke-super {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 262
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00b8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0021

    new-instance v2, Lcom/sec/android/app/fm/DeleteFileActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/DeleteFileActivity$6;-><init>(Lcom/sec/android/app/fm/DeleteFileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0020

    new-instance v2, Lcom/sec/android/app/fm/DeleteFileActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/DeleteFileActivity$5;-><init>(Lcom/sec/android/app/fm/DeleteFileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mDialogDeleteConfirm:Landroid/app/AlertDialog;

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mDialogDeleteConfirm:Landroid/app/AlertDialog;

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMediaScannerFinished()V
    .locals 2

    .prologue
    .line 289
    sget-object v0, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMediaScannerFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->CheckboxReFresh()V

    .line 292
    invoke-direct {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->refreshLayout()V

    .line 293
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 305
    sget-object v0, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaScannerStarted() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 319
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 308
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->showDialog(I)V

    goto :goto_0

    .line 311
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->finish()V

    goto :goto_0

    .line 315
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->finish()V

    goto :goto_0

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 325
    sget-object v1, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialog() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 338
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 339
    return-void

    .line 329
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 330
    const v1, 0x7f0a00b8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, message:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mDialogDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 332
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a00b9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/DeleteFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_1

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 343
    sget-object v4, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    const-string v5, "onPrepareOptionsMenu() "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 347
    const v4, 0x7f0a0021

    invoke-interface {p1, v3, v3, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 351
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_1

    .line 352
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 357
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 365
    iget-object v4, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mSelectedItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    move v1, v2

    .line 366
    .local v1, enabled:Z
    :goto_1
    const v4, 0x7f0a00a6

    invoke-interface {p1, v3, v2, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 369
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_3

    .line 370
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 376
    .end local v1           #enabled:Z
    :cond_0
    :goto_2
    return v2

    .line 354
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020134

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 365
    goto :goto_1

    .line 372
    .restart local v1       #enabled:Z
    :cond_3
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200d6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected setAdapter()V
    .locals 3

    .prologue
    .line 413
    sget-object v0, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "setAdapter()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Lcom/sec/android/app/fm/DeleteFileActivity$7;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/DeleteFileActivity;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/sec/android/app/fm/DeleteFileActivity$7;-><init>(Lcom/sec/android/app/fm/DeleteFileActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    return-void
.end method

.method protected setOnItemClickListener()V
    .locals 2

    .prologue
    .line 452
    sget-object v0, Lcom/sec/android/app/fm/DeleteFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "setOnItemClickListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileActivity;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/DeleteFileActivity;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 454
    return-void
.end method
