.class public Lcom/android/OriginalSettings/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAvailableRecognizersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

.field private mParent:Landroid/preference/PreferenceGroup;

.field private mRecognizerPref:Landroid/preference/ListPreference;

.field private mRecognizerSettingsPref:Landroid/preference/Preference;

.field private mSettingsPref:Landroid/preference/PreferenceScreen;

.field private final mTtsEngines:Landroid/speech/tts/TtsEngines;

.field private mTtsSettingsPref:Landroid/preference/Preference;

.field private mVoiceCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    .line 74
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    .line 75
    return-void
.end method

.method private populateOrRemovePreferences()V
    .locals 4

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->populateOrRemoveRecognizerPrefs()Z

    move-result v0

    .line 103
    .local v0, hasRecognizerPrefs:Z
    invoke-direct {p0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->populateOrRemoveTtsPrefs()Z

    move-result v1

    .line 104
    .local v1, hasTtsPrefs:Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    :cond_0
    return-void
.end method

.method private populateOrRemoveRecognizerPrefs()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.RecognitionService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, availableRecognitionServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 119
    .local v2, numAvailable:I
    if-nez v2, :cond_0

    .line 120
    iget-object v6, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    iget-object v6, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :goto_0
    return v5

    .line 125
    :cond_0
    if-ne v2, v6, :cond_2

    .line 128
    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 132
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, recognizerComponent:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v5, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "voice_recognition_service"

    invoke-static {v5, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, currentSetting:Ljava/lang/String;
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    const-string v5, "VoiceInputOutputSettings"

    const-string v7, "no recognition service set"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    .end local v1           #currentSetting:Ljava/lang/String;
    .end local v3           #recognizerComponent:Ljava/lang/String;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_1
    move v5, v6

    .line 154
    goto :goto_0

    .line 145
    .restart local v1       #currentSetting:Ljava/lang/String;
    .restart local v3       #recognizerComponent:Ljava/lang/String;
    .restart local v4       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v1           #currentSetting:Ljava/lang/String;
    .end local v3           #recognizerComponent:Ljava/lang/String;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->populateRecognizerPreference(Ljava/util/List;)V

    goto :goto_1
.end method

.method private populateOrRemoveTtsPrefs()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private populateRecognizerPreference(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, recognizers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 168
    .local v5, size:I
    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 169
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v6, v5, [Ljava/lang/CharSequence;

    .line 172
    .local v6, values:[Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voice_recognition_service"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, currentSetting:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 179
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 180
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, recognizerComponent:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v2

    .line 187
    aput-object v3, v6, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v3           #recognizerComponent:Ljava/lang/String;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 191
    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 193
    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 194
    iget-object v7, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private updateSettingsLink(Ljava/lang/String;)V
    .locals 14
    .parameter "currentSetting"

    .prologue
    .line 200
    iget-object v11, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 201
    .local v2, currentRecognizer:Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 202
    .local v9, si:Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    .line 203
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    const/4 v8, 0x0

    .line 205
    .local v8, settingsActivity:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v11}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.speech"

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 207
    if-nez v6, :cond_1

    .line 208
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No android.speech meta-data for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 233
    :catch_0
    move-exception v3

    .line 234
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v11, "VoiceInputOutputSettings"

    const-string v12, "error parsing recognition service meta-data"

    invoke-static {v11, v12, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 243
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_0
    if-nez v8, :cond_6

    .line 245
    const-string v11, "VoiceInputOutputSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no recognizer settings available for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v11, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 247
    iget-object v11, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :goto_1
    return-void

    .line 212
    :cond_1
    :try_start_2
    iget-object v11, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v11}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    .line 215
    .local v7, res:Landroid/content/res/Resources;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 219
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, type:I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 222
    :cond_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, nodeName:Ljava/lang/String;
    const-string v11, "recognition-service"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 224
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v12, "Meta-data does not start with recognition-service tag"

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 235
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v10           #type:I
    :catch_1
    move-exception v3

    .line 236
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    const-string v11, "VoiceInputOutputSettings"

    const-string v12, "error parsing recognition service meta-data"

    invoke-static {v11, v12, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 228
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v5       #nodeName:Ljava/lang/String;
    .restart local v7       #res:Landroid/content/res/Resources;
    .restart local v10       #type:I
    :cond_4
    :try_start_4
    sget-object v11, Lcom/android/internal/R$styleable;->RecognitionService:[I

    invoke-virtual {v7, v1, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 230
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 240
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 237
    .end local v0           #array:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v10           #type:I
    :catch_2
    move-exception v3

    .line 238
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v11, "VoiceInputOutputSettings"

    const-string v12, "error parsing recognition service meta-data"

    invoke-static {v11, v12, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v11

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw v11

    .line 249
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v4, i:Landroid/content/Intent;
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v11, v12, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 251
    iget-object v11, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 252
    iget-object v11, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v12}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    .line 80
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    const-string v1, "voice_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    .line 81
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    .line 82
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerSettingsPref:Landroid/preference/Preference;

    .line 83
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "tts_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/preference/Preference;

    .line 84
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "recognizer_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mAvailableRecognizersMap:Ljava/util/HashMap;

    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->populateOrRemovePreferences()V

    .line 92
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mSettingsPref:Landroid/preference/PreferenceScreen;

    const v1, 0x7f090127

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mRecognizerPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 258
    check-cast v0, Ljava/lang/String;

    .line 261
    .local v0, setting:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->mFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->updateSettingsLink(Ljava/lang/String;)V

    .line 268
    .end local v0           #setting:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
