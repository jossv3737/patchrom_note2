.class Lcom/android/OriginalSettings/InformationTicker$6;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/InformationTicker;->showNotiOfChargesDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/InformationTicker;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/InformationTicker;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/OriginalSettings/InformationTicker$6;->this$0:Lcom/android/OriginalSettings/InformationTicker;

    iput-object p2, p0, Lcom/android/OriginalSettings/InformationTicker$6;->val$layout:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 681
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker$6;->val$layout:Landroid/view/View;

    const v4, 0x7f0b00c4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 682
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    iget-object v3, p0, Lcom/android/OriginalSettings/InformationTicker$6;->this$0:Lcom/android/OriginalSettings/InformationTicker;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings.fb_noti_of_charges"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 684
    .local v2, fbNotiChargesPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 685
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "FBDoNotShowDialog"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 686
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 688
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #fbNotiChargesPrefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
