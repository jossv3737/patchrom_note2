.class Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field mCurPos:I

.field final synthetic this$0:Lcom/android/OriginalSettings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/ManageApplications;)V
    .locals 1
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 487
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 488
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$000(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$000(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "position"

    .prologue
    .line 479
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$000(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 480
    .local v1, tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$100(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$200(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$300(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, root:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 482
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 492
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 511
    if-nez p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    iget v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 514
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 502
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 506
    iput p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    .line 507
    return-void
.end method
