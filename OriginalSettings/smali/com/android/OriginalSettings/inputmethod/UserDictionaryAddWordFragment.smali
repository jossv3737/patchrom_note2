.class public Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# instance fields
.field private mContents:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 5

    .prologue
    .line 103
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 105
    .local v2, localesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0b0285

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 107
    .local v1, localeSpinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 109
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 110
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 71
    const/4 v1, 0x1

    const v2, 0x7f0907a3

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 73
    .local v0, actionItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 61
    const v0, 0x7f0400e6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 63
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 127
    .local v0, locale:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmiui/preference/BasePreferenceActivity;

    .line 129
    .local v1, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    new-instance v2, Lcom/android/OriginalSettings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmiui/preference/BasePreferenceActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 133
    .end local v1           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 147
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, args:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 88
    iput-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 118
    iget-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 99
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    .line 100
    return-void
.end method
