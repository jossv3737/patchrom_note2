.class Lcom/android/OriginalSettings/LocationSettings$10;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/LocationSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/OriginalSettings/LocationSettings$10;->this$0:Lcom/android/OriginalSettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 336
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings$10;->this$0:Lcom/android/OriginalSettings/LocationSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings$10;->this$0:Lcom/android/OriginalSettings/LocationSettings;

    #getter for: Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/LocationSettings;->access$100(Lcom/android/OriginalSettings/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 338
    return-void
.end method
