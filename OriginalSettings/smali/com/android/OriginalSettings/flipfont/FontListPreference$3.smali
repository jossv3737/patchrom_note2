.class Lcom/android/OriginalSettings/flipfont/FontListPreference$3;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/flipfont/FontListPreference;->loadFontThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 257
    :try_start_0
    const-string v1, "FontListPreference"

    const-string v2, ">>>>>>>>>>>>>>>Runnable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #getter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    invoke-static {v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$000(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    new-instance v2, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #getter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$200(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$002(Lcom/android/OriginalSettings/flipfont/FontListPreference;Lcom/android/OriginalSettings/flipfont/FontListAdapter;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 260
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #getter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    invoke-static {v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$000(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #getter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    invoke-static {v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$000(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #getter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$000(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #getter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    invoke-static {v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$000(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #getter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    invoke-static {v3}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$000(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #getter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$300(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    const-string v1, "FontListPreference"

    const-string v2, "EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #getter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$300(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
